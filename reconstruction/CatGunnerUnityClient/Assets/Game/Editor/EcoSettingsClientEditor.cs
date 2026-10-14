using System;
using System.IO;
using System.Linq;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public static class EcoSettingsClientEditor
{
    public static void RestoreAnimations()
    {
        var scene = SceneManager.GetActiveScene();
        if (EditorApplication.isPlaying || scene.isDirty || scene.path != ForestClientEditor.ScenePath) throw new InvalidOperationException("Clean normal EditMode scene required");
        var data = JObject.Parse(File.ReadAllText("Assets/Game/Editor/EcoSettings.json"));
        foreach (var specification in new[] { new { go = 1759, scale = true, duration = 1f, target = new Vector3(1.05f, .85f, 1) }, new { go = 10263, scale = false, duration = 2f, target = new Vector3(0, 120, 0) } })
        {
            var path = (JArray)data["rows"].Single(r => (int)r["originalGo"] == specification.go)["path"];
            var go = Resolve(scene, path);
            if (go == null || go.GetComponent<CatGunner.Runtime.EcoTween>() != null) throw new InvalidOperationException("Original tween target missing/already restored");
            var rect = (RectTransform)go.transform;
            var tween = go.AddComponent<CatGunner.Runtime.EcoTween>();
            tween.Scale = specification.scale; tween.Duration = specification.duration;
            tween.From = specification.scale ? rect.localScale : rect.anchoredPosition3D; tween.To = specification.target;
            EditorUtility.SetDirty(tween);
        }
        EditorSceneManager.MarkSceneDirty(scene);
        if (!EditorSceneManager.SaveScene(scene)) throw new IOException("Animation save failed");
    }
    private static GameObject Resolve(Scene scene, JArray path)
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

    public static void Integrate()
    {
        if (EditorApplication.isPlaying || EditorApplication.isCompiling) throw new InvalidOperationException("Stable EditMode required");
        var scene = SceneManager.GetActiveScene();
        if (scene.path != ForestClientEditor.ScenePath || scene.isDirty) throw new InvalidOperationException("Clean normal client scene required");
        var data = JObject.Parse(File.ReadAllText("Assets/Game/Editor/EcoSettings.json"));
        var paths = data["rows"].ToDictionary(r => (int)r["originalGo"], r => (JArray)r["path"]);
        var roots = data["roots"].Select(r => (int)r).ToArray();
        if (roots.Any(r => Resolve(scene, paths[r]) != null)) throw new InvalidOperationException("Already integrated; do not duplicate original branches");
        if (roots.Any(r => Resolve(scene, new JArray(paths[r].Take(paths[r].Count - 1))) == null)) throw new InvalidOperationException("Original parent missing; no scene changes performed");
        var slice = EditorSceneManager.OpenScene("Assets/Game/Scenes/EcoSettingsSource.unity", OpenSceneMode.Additive);
        try
        {
            foreach (int id in roots)
            {
                var root = Resolve(slice, paths[id]);
                var parent = Resolve(scene, new JArray(paths[id].Take(paths[id].Count - 1)));
                if (root == null || parent == null) throw new InvalidOperationException("Original root/parent missing: " + id);
                root.transform.SetParent(null, false);
                SceneManager.MoveGameObjectToScene(root, scene);
                root.transform.SetParent(parent.transform, false);
            }
        }
        finally { EditorSceneManager.CloseScene(slice, true); SceneManager.SetActiveScene(scene); }
        GameObject Go(int id) => Resolve(scene, paths[id]);
        var settings = Go(9651).GetComponent<Setting>();
        settings.Camera_obj = Go(350);
        settings.EcoPanel_obj = Go(694);
        settings.EcoMode_Btn_img = Go(1069).GetComponent<Image>();
        settings.EcoCat_img = Go(1759).GetComponent<Image>();
        if (settings.Camera_obj == null || settings.EcoPanel_obj.GetComponent<Mute_Panel>() == null) throw new InvalidOperationException("Native eco dependency missing");
        var disabled = new System.Collections.Generic.List<string>();
        foreach (var button in roots.SelectMany(id => Go(id).GetComponentsInChildren<Button>(true)))
        {
            for (int i = 0; i < button.onClick.GetPersistentEventCount(); i++)
            {
                var target = button.onClick.GetPersistentTarget(i);
                string method = button.onClick.GetPersistentMethodName(i);
                if (target == null || target.GetType().GetMethod(method) == null)
                {
                    button.interactable = false;
                    disabled.Add(button.name + ": " + method);
                }
            }
        }
        // Original source order: eco mask precedes Btn_list, leaving the same button accessible.
        foreach (int root in roots)
        {
            var order = (JArray)data["parentOrders"][root.ToString()];
            var rank = order.Select((n, i) => new { name = (string)n, index = i }).GroupBy(x => x.name).ToDictionary(g => g.Key, g => g.First().index);
            foreach (var child in Go(root).transform.parent.Cast<Transform>().OrderBy(t => rank.TryGetValue(t.name, out int i) ? i : int.MaxValue).ToArray()) child.SetAsLastSibling();
        }
        // Reconnect only original onboarding references whose source controls now exist.
        var tutorial = UnityEngine.Object.FindAnyObjectByType<Tutorial_manager>(FindObjectsInactive.Include);
        var td = JObject.Parse(File.ReadAllText("Assets/Game/Editor/Tutorial.json"));
        var tr = td["rows"].Single(r => (int)r["originalGo"] == 758);
        var refs = (JObject)td["references"];
        for (int i = 0; i < tutorial.DisableOnTutorial.Length; i++)
        {
            if (tutorial.DisableOnTutorial[i] != null) continue;
            var path = (JArray)refs[(string)tr["fields"]["DisableOnTutorial"][i]["fileID"]];
            var control = Resolve(scene, path);
            if (control != null) tutorial.DisableOnTutorial[i] = control;
        }
        settings.EcoPanel_obj.SetActive(false); Go(3171).SetActive(false);
        EditorUtility.SetDirty(settings); EditorUtility.SetDirty(tutorial);
        EditorSceneManager.MarkSceneDirty(scene);
        if (!EditorSceneManager.SaveScene(scene)) throw new IOException("Scene save failed");
        AssetDatabase.SaveAssets();
        var all = scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<Transform>(true)).ToArray();
        var report = new { scene = scene.path, objects = all.Length, missingScripts = all.Sum(t => GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)),
            restoredRoots = roots, newObjects = roots.Sum(r => Go(r).GetComponentsInChildren<Transform>(true).Length), camera = settings.Camera_obj.name,
            ecoButton = settings.EcoMode_Btn_img.GetComponent<Button>().onClick.GetPersistentMethodName(0), disabledUnsupported = disabled,
            tutorialReferences = tutorial.DisableOnTutorial.Count(g => g != null), ecoStateIsSaved = false };
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath, "../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/eco-settings-scene-restoration.json")), Newtonsoft.Json.JsonConvert.SerializeObject(report, Newtonsoft.Json.Formatting.Indented));
    }
}
