using System;
using System.IO;
using System.Linq;
using System.Reflection;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.Events;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using CatGunner.Runtime;

public static class StepUpClientEditor
{
    static GameObject Resolve(Scene scene, JArray path)
    {
        Transform current = null;
        foreach (JObject node in path)
        {
            var candidates = current == null ? scene.GetRootGameObjects().Select(g => g.transform) : current.Cast<Transform>();
            current = candidates.Where(t => t.name == (string)node["name"]).Skip((int)node["ordinal"]).FirstOrDefault();
            if (current == null) return null;
        }
        return current?.gameObject;
    }
    public static void RepairFallbackMaterials(StepUp offer)
    {
        var shader = Shader.Find("TextMeshPro/Distance Field");
        if (shader == null) throw new InvalidOperationException("Official TMP shader missing");
        var visited = new System.Collections.Generic.HashSet<TMPro.TMP_FontAsset>();
        void Repair(TMPro.TMP_FontAsset font)
        {
            if (font == null || !visited.Add(font)) return;
            if (font.material == null || font.atlasTexture == null) throw new InvalidOperationException("Font atlas missing: " + font.name);
            if (font.material.shader != shader)
            {
                font.material.shader = shader;
                font.material.SetTexture("_MainTex", font.atlasTexture);
                EditorUtility.SetDirty(font.material);
            }
            if (font.fallbackFontAssetTable != null) foreach (var fallback in font.fallbackFontAssetTable) Repair(fallback);
        }
        foreach (var text in offer.popup.GetComponentsInChildren<TMPro.TMP_Text>(true).Concat(new[] { offer.stepup_banner.Sale_txt })) Repair(text.font);
        AssetDatabase.SaveAssets();
    }
    public static void RepairChineseTextFonts(StepUp offer)
    {
        // Coherent atlas and metrics from the original package's Noto Sans SC face.
        // The shipped JP fallback has incompatible glyph metrics in this Editor.
        var font = AssetDatabase.LoadAssetAtPath<TMPro.TMP_FontAsset>("Assets/Game/Resources/StarChineseFallback.asset");
        if (font == null || font.sourceFontFile == null) throw new InvalidOperationException("Original Chinese face missing");
        var text = StepUpText.Catalogue;
        var glyphs = string.Join("", new[] { 0, 3, 4 }.SelectMany(i => new[] { text.StepLocked[i], text.SaleValue[i] })) + "0123456789";
        if (!font.TryAddCharacters(glyphs, out string missing)) throw new InvalidOperationException("Chinese face missing glyphs: " + missing);
        const string materialPath = "Assets/Game/Resources/StepUpChineseOutline.mat";
        var material = AssetDatabase.LoadAssetAtPath<Material>(materialPath);
        if (material == null)
        {
            material = new Material(font.material) { name = "StepUpChineseOutline" };
            var original = offer.popup.StepUp_Item_list[1].Locked_txt.fontSharedMaterial;
            foreach (var property in new[] { "_FaceColor", "_OutlineColor" }) if (original.HasProperty(property)) material.SetColor(property, original.GetColor(property));
            foreach (var property in new[] { "_OutlineWidth", "_OutlineSoftness", "_FaceDilate" }) if (original.HasProperty(property)) material.SetFloat(property, original.GetFloat(property));
            AssetDatabase.CreateAsset(material, materialPath);
        }
        material.shader = Shader.Find("TextMeshPro/Distance Field"); material.SetTexture("_MainTex", font.atlasTexture);
        foreach (var target in offer.popup.StepUp_Item_list.Select(i => i.Locked_txt).Concat(new[] { offer.stepup_banner.Sale_txt }))
        { target.font = font; target.fontSharedMaterial = material; EditorUtility.SetDirty(target); }
        EditorUtility.SetDirty(font); EditorUtility.SetDirty(material); AssetDatabase.SaveAssets();
    }
    public static void RepairIntegratedChineseText()
    {
        if (EditorApplication.isPlaying || EditorApplication.isCompiling) throw new InvalidOperationException("Stable EditMode required");
        var scene = SceneManager.GetActiveScene();
        if (scene.path != ForestClientEditor.ScenePath || scene.isDirty) throw new InvalidOperationException("Clean normal scene required");
        RepairChineseTextFonts(UnityEngine.Object.FindAnyObjectByType<StepUp>(FindObjectsInactive.Include));
        RestoreExistingRectSerialization(true);
    }
    public static void RepairIntegratedScene()
    {
        if (EditorApplication.isPlaying || EditorApplication.isCompiling) throw new InvalidOperationException("Stable EditMode required");
        var scene = SceneManager.GetActiveScene();
        if (scene.path != ForestClientEditor.ScenePath || scene.isDirty) throw new InvalidOperationException("Clean normal scene required");
        string reports = Path.GetFullPath(Path.Combine(Application.dataPath, "../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var rows = JArray.Parse(File.ReadAllText(Path.Combine(reports, "stepup-parent-repair-input.json")));
        string sceneGuid = AssetDatabase.AssetPathToGUID(scene.path);
        Transform ById(string id)
        {
            if (!GlobalObjectId.TryParse("GlobalObjectId_V1-2-" + sceneGuid + "-" + id + "-0", out var identifier)) throw new InvalidOperationException("Bad identity");
            return GlobalObjectId.GlobalObjectIdentifierToObjectSlow(identifier) as Transform ?? throw new InvalidOperationException("Transform missing: " + id);
        }
        foreach (var row in rows)
        {
            var parent = ById((string)row["parentId"]); int index = 0;
            foreach (var id in row["children"])
            {
                var child = ById((string)id); if (child.parent != parent) throw new InvalidOperationException("Unexpected parent");
                child.SetSiblingIndex(index++);
            }
        }
        var offer = UnityEngine.Object.FindAnyObjectByType<StepUp>(FindObjectsInactive.Include);
        var data = JObject.Parse(File.ReadAllText("Assets/Game/Editor/StepUp.json"));
        foreach (var pair in new[] { (id: "1235", added: offer.transform), (id: "2208", added: offer.stepup_hud.transform.parent) })
        {
            var order = (JArray)data["parentOrders"][pair.id];
            var rank = order.Select((n, i) => new { name = (string)n, index = i }).GroupBy(x => x.name).ToDictionary(g => g.Key, g => g.First().index);
            int insertion = pair.added.parent.Cast<Transform>().Count(t => t != pair.added && rank.TryGetValue(t.name, out int i) && i < rank[pair.added.name]);
            pair.added.SetSiblingIndex(insertion);
        }
        RepairFallbackMaterials(offer); EditorSceneManager.MarkSceneDirty(scene);
        if (!EditorSceneManager.SaveScene(scene)) throw new IOException("Scene save failed");
        File.WriteAllText(Path.Combine(reports, "stepup-scoped-editor-repair.json"), Newtonsoft.Json.JsonConvert.SerializeObject(new { oldOrderRestored = true, shader = "TextMeshPro/Distance Field", dirty = scene.isDirty }, Newtonsoft.Json.Formatting.Indented));
    }
    public static void RestoreExistingRectSerialization(bool allowDirty = false)
    {
        if (EditorApplication.isPlaying || EditorApplication.isCompiling) throw new InvalidOperationException("Stable EditMode required");
        var scene = SceneManager.GetActiveScene();
        if (scene.path != ForestClientEditor.ScenePath || (scene.isDirty && !allowDirty)) throw new InvalidOperationException("Clean normal scene required");
        string reports = Path.GetFullPath(Path.Combine(Application.dataPath, "../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var rows = JArray.Parse(File.ReadAllText(Path.Combine(reports, "stepup-rect-repair-input.json")));
        string guid = AssetDatabase.AssetPathToGUID(scene.path);
        foreach (var row in rows)
        {
            if (!GlobalObjectId.TryParse("GlobalObjectId_V1-2-" + guid + "-" + (string)row["id"] + "-0", out var identifier)) throw new InvalidOperationException("Bad identity");
            var rect = GlobalObjectId.GlobalObjectIdentifierToObjectSlow(identifier) as RectTransform ?? throw new InvalidOperationException("Rect missing");
            var serialized = new SerializedObject(rect);
            foreach (var property in ((JObject)row["properties"]).Properties())
            {
                var field = serialized.FindProperty(property.Name); var value = property.Value;
                if (field.propertyType == SerializedPropertyType.Vector2) field.vector2Value = new Vector2((float)value["x"], (float)value["y"]);
                else if (field.propertyType == SerializedPropertyType.Vector3) field.vector3Value = new Vector3((float)value["x"], (float)value["y"], (float)value["z"]);
                else if (field.propertyType == SerializedPropertyType.Quaternion) field.quaternionValue = new Quaternion((float)value["x"], (float)value["y"], (float)value["z"], (float)value["w"]);
                else throw new InvalidOperationException("Unexpected property: " + property.Name);
            }
            serialized.ApplyModifiedPropertiesWithoutUndo();
        }
        EditorSceneManager.MarkSceneDirty(scene);
        if (!EditorSceneManager.SaveScene(scene)) throw new IOException("Scene save failed");
        File.WriteAllText(Path.Combine(reports, "stepup-rect-serialization-repair.json"), Newtonsoft.Json.JsonConvert.SerializeObject(new { restoredRectTransforms = rows.Count, editorApiOnly = true, dirty = scene.isDirty }, Newtonsoft.Json.Formatting.Indented));
    }
    public static void Integrate()
    {
        if (EditorApplication.isPlaying || EditorApplication.isCompiling) throw new InvalidOperationException("Stable EditMode required");
        var scene = SceneManager.GetActiveScene();
        if (scene.path != ForestClientEditor.ScenePath || scene.isDirty) throw new InvalidOperationException("Clean normal scene required");
        var data = JObject.Parse(File.ReadAllText("Assets/Game/Editor/StepUp.json"));
        var paths = data["rows"].ToDictionary(r => (int)r["originalGo"], r => (JArray)r["path"]);
        var roots = data["roots"].Select(r => (int)r).ToArray();
        if (roots.Any(r => Resolve(scene, paths[r]) != null)) throw new InvalidOperationException("Already integrated; do not duplicate");
        if (roots.Any(r => Resolve(scene, new JArray(paths[r].Take(paths[r].Count - 1))) == null)) throw new InvalidOperationException("Original parent missing");
        var slice = EditorSceneManager.OpenScene("Assets/Game/Scenes/StepUpSource.unity", OpenSceneMode.Additive);
        try
        {
            foreach (int id in roots)
            {
                var source = Resolve(slice, paths[id]); var parent = Resolve(scene, new JArray(paths[id].Take(paths[id].Count - 1)));
                source.transform.SetParent(null, false); SceneManager.MoveGameObjectToScene(source, scene); source.transform.SetParent(parent.transform, false);
            }
        }
        finally { EditorSceneManager.CloseScene(slice, true); SceneManager.SetActiveScene(scene); }
        var manifest = JObject.Parse(File.ReadAllText("Assets/Game/Editor/StepUpFields.json"));
        var refs = (JObject)manifest["references"];
        var types = new[] { typeof(StepUp), typeof(StepUp_Banner), typeof(StepUp_Hud), typeof(StepUp_popup), typeof(StepUp_Item_UI), typeof(Gun_Item_Demo) };
        foreach (var row in manifest["rows"])
        {
            var type = types.Single(t => t.Name == (string)row["type"]); var go = Resolve(scene, (JArray)row["path"]);
            if (go == null) throw new InvalidOperationException("Original field owner missing " + type.Name);
            if (go.GetComponent(type) == null) go.AddComponent(type);
        }
        UnityEngine.Object Reference(JToken token, Type type)
        {
            string id = (string)token["fileID"]; if (id == "0") return null;
            var go = Resolve(scene, (JArray)refs[id]); if (go == null) throw new InvalidOperationException("Original reference missing " + id);
            var value = type == typeof(GameObject) ? (UnityEngine.Object)go : go.GetComponent(type);
            if (value == null) throw new InvalidOperationException("Original reference component missing " + type.Name + " " + id);
            return value;
        }
        foreach (var row in manifest["rows"])
        {
            var type = types.Single(t => t.Name == (string)row["type"]); var component = Resolve(scene, (JArray)row["path"]).GetComponent(type);
            foreach (var property in ((JObject)row["fields"]).Properties())
            {
                var field = type.GetField(property.Name, BindingFlags.Public | BindingFlags.Instance);
                if (field == null) throw new InvalidOperationException("Restored field missing " + type.Name + "." + property.Name);
                object value;
                if (field.FieldType.IsArray)
                {
                    var array = (JArray)property.Value; var element = field.FieldType.GetElementType(); var result = Array.CreateInstance(element, array.Count);
                    for (int i = 0; i < array.Count; i++) result.SetValue(Reference(array[i], element), i); value = result;
                }
                else if (typeof(UnityEngine.Object).IsAssignableFrom(field.FieldType)) value = Reference(property.Value, field.FieldType);
                else value = property.Value.ToObject(field.FieldType);
                field.SetValue(component, value);
            }
            EditorUtility.SetDirty(component);
        }
        var offer = UnityEngine.Object.FindAnyObjectByType<StepUp>(FindObjectsInactive.Include);
        var bannerButton = offer.stepup_banner.transform.Find("Panel").GetComponent<Button>();
        void BindClick(Button button, UnityEngine.Events.UnityAction action)
        {
            for (int i = button.onClick.GetPersistentEventCount() - 1; i >= 0; i--)
                if (button.onClick.GetPersistentMethodName(i) == "OnClick") UnityEventTools.RemovePersistentListener(button.onClick, i);
            UnityEventTools.AddPersistentListener(button.onClick, action); button.interactable = true; EditorUtility.SetDirty(button);
        }
        BindClick(bannerButton, offer.stepup_banner.OnClick);
        BindClick(offer.stepup_hud.GetComponent<Button>(), offer.stepup_hud.OnClick);
        foreach (var item in offer.popup.StepUp_Item_list) BindClick(item.GetComponent<Button>(), item.OnClick);
        // Restore only the original missing demo's touch callback.
        var demoButton = offer.stepup_banner.gun_item.GetComponent<Button>();
        for (int i = demoButton.onClick.GetPersistentEventCount() - 1; i >= 0; i--)
            if (demoButton.onClick.GetPersistentMethodName(i) == "Touch") UnityEventTools.RemovePersistentListener(demoButton.onClick, i);
        UnityEventTools.AddPersistentListener(demoButton.onClick, offer.stepup_banner.gun_item.Touch); EditorUtility.SetDirty(demoButton);
        foreach (int root in roots)
        {
            var order = (JArray)data["parentOrders"][root.ToString()];
            var rank = order.Select((n, i) => new { name = (string)n, index = i }).GroupBy(x => x.name).ToDictionary(g => g.Key, g => g.First().index);
            var added = Resolve(scene, paths[root]).transform;
            int addedRank = rank[added.name];
            int insertion = added.parent.Cast<Transform>().Count(t => t != added && rank.TryGetValue(t.name, out int i) && i < addedRank);
            added.SetSiblingIndex(insertion);
        }
        var client = scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<GameClient>(true)).Single();
        var tutorial = client.Tutorial; var td = JObject.Parse(File.ReadAllText("Assets/Game/Editor/Tutorial.json"));
        var original = td["rows"].Single(r => (int)r["originalGo"] == 758); var tutorialRefs = (JObject)td["references"];
        for (int i = 0; i < tutorial.DisableOnTutorial.Length; i++)
            if (tutorial.DisableOnTutorial[i] == null && tutorialRefs[(string)original["fields"]["DisableOnTutorial"][i]["fileID"]] is JArray path)
                tutorial.DisableOnTutorial[i] = Resolve(scene, path);
        EditorUtility.SetDirty(tutorial);
        offer.popup.gameObject.SetActive(false); offer.stepup_hud.gameObject.SetActive(false);
        RepairFallbackMaterials(offer); RepairChineseTextFonts(offer);
        GameProjectEditor.RebuildSceneDynamicFonts(); EditorSceneManager.MarkSceneDirty(scene);
        if (!EditorSceneManager.SaveScene(scene)) throw new IOException("Scene save failed");
        var all = scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<Transform>(true)).ToArray();
        var report = new { scene = scene.path, objects = all.Length, newObjects = roots.Sum(r => Resolve(scene, paths[r]).GetComponentsInChildren<Transform>(true).Length),
            missingScripts = all.Sum(t => GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)), originalComponents = manifest["rows"].Count(),
            tutorialReferences = tutorial.DisableOnTutorial.Count(g => g != null), localPaymentsOnly = true };
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath, "../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/stepup-scene-restoration.json")),
            Newtonsoft.Json.JsonConvert.SerializeObject(report, Newtonsoft.Json.Formatting.Indented));
    }
}
