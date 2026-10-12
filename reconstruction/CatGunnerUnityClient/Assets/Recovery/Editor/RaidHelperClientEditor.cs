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
using CatGunner.Recovery;
public static class RaidHelperClientEditor
{
    static GameObject Resolve(Scene scene,JArray path)
    {
        Transform current=null;
        foreach(var n in path){var candidates=current==null?scene.GetRootGameObjects().Select(g=>g.transform):current.Cast<Transform>();current=candidates.Where(t=>t.name==(string)n["name"]).Skip((int)n["ordinal"]).FirstOrDefault();if(current==null)return null;}
        return current.gameObject;
    }
    public static void Restore()
    {
        var scene=SceneManager.GetActiveScene();if(EditorApplication.isPlaying||EditorApplication.isCompiling||scene.isDirty||scene.path!=ForestClientEditor.ScenePath)throw new InvalidOperationException("Clean recovered EditMode required");
        var data=JObject.Parse(File.ReadAllText("Assets/Recovery/Editor/OriginalRaidHelper.json"));var helperPath=(JArray)data["helperPath"];
        if(Resolve(scene,helperPath)!=null)throw new InvalidOperationException("Already integrated");
        var parent=Resolve(scene,new JArray(helperPath.Take(helperPath.Count-1)));if(parent==null)throw new InvalidOperationException("Original cat manager missing");
        var slice=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredRaidHelperSource.unity",OpenSceneMode.Additive);
        try{var source=Resolve(slice,helperPath);source.transform.SetParent(null,false);SceneManager.MoveGameObjectToScene(source,scene);source.transform.SetParent(parent.transform,false);}
        finally{EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);}
        var types=new[]{typeof(Raid_HelperSlot),typeof(Raid_Helper_Purchase_Popup),typeof(Gun_Item_Demo)};
        foreach(var row in data["rows"]){var t=types.Single(t=>t.Name==(string)row["type"]);var go=Resolve(scene,(JArray)row["path"]);if(go==null)throw new InvalidOperationException("Original UI object missing");if(go.GetComponent(t)==null)go.AddComponent(t);}
        UnityEngine.Object Reference(JToken token,Type type)
        {
            string id=(string)token["fileID"];if(id=="0")return null;var go=Resolve(scene,(JArray)data["references"][id]);if(go==null)throw new InvalidOperationException("Reference GO missing: "+id);
            var result=type==typeof(GameObject)?(UnityEngine.Object)go:go.GetComponent(type);if(result==null)throw new InvalidOperationException("Reference component missing: "+id+" "+type.Name);return result;
        }
        foreach(var row in data["rows"])
        {
            var t=types.Single(t=>t.Name==(string)row["type"]);var owner=Resolve(scene,(JArray)row["path"]).GetComponent(t);
            foreach(var f in ((JObject)row["fields"]).Properties())
            {
                var field=t.GetField(f.Name,BindingFlags.Public|BindingFlags.Instance);if(field==null)throw new InvalidOperationException("Schema field missing: "+f.Name);object value;
                if(field.FieldType.IsArray){var array=(JArray)f.Value;var element=field.FieldType.GetElementType();var result=Array.CreateInstance(element,array.Count);for(int i=0;i<array.Count;i++)result.SetValue(Reference(array[i],element),i);value=result;}
                else if(typeof(UnityEngine.Object).IsAssignableFrom(field.FieldType))value=Reference(f.Value,field.FieldType);
                else value=f.Value.ToObject(field.FieldType);field.SetValue(owner,value);
            }
            EditorUtility.SetDirty(owner);
        }
        var client=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single();
        var helper=Resolve(scene,helperPath).GetComponent<Cat>();if(helper==null||helper.Gun_list.Length!=65||helper.Gun_list.Any(g=>g==null||g.Shoot_trans==null||g.Shoot_particle==null))throw new InvalidOperationException("Original helper gun closure incomplete");
        helper.joystick=client.Hero.joystick;client.Team.Helper_Cat=helper;helper.gameObject.SetActive(false);
        var bridge=helper.gameObject.AddComponent<ForestCombatAcceptance>();bridge.LoadPackageEquipment=false;bridge.EnableTargeting=true;
        client.RaidMode.helperSlot=UnityEngine.Object.FindAnyObjectByType<Raid_HelperSlot>(FindObjectsInactive.Include);
        var logs=new System.Collections.Generic.List<string>();var sprite=AssetDatabase.GetBuiltinExtraResource<Material>("Sprites-Default.mat");
        foreach(var renderer in helper.GetComponentsInChildren<Renderer>(true))
        {
            if(renderer is SpriteRenderer){renderer.sharedMaterial=sprite;continue;}
            if(renderer is ParticleSystemRenderer pr){var materials=pr.sharedMaterials;for(int i=0;i<materials.Length;i++)if(materials[i]==null)materials[i]=materials.FirstOrDefault(m=>m!=null)??sprite;pr.sharedMaterials=materials;ForestBulletEditor.RepairRenderers(new[]{pr},logs);}
        }
        foreach(var row in data["buttons"])
        {
            var button=Resolve(scene,(JArray)row["path"]).GetComponent<Button>();var type=types.Single(t=>t.Name==(string)row["type"]);var owner=UnityEngine.Object.FindAnyObjectByType(type,FindObjectsInactive.Include) as Component;
            var method=type.GetMethod((string)row["method"]);var action=(UnityEngine.Events.UnityAction)Delegate.CreateDelegate(typeof(UnityEngine.Events.UnityAction),owner,method);
            for(int i=button.onClick.GetPersistentEventCount()-1;i>=0;i--)if(button.onClick.GetPersistentMethodName(i)==(string)row["method"]||button.onClick.GetPersistentTarget(i) is RecoveryLocalPurchaseButton)UnityEventTools.RemovePersistentListener(button.onClick,i);
            UnityEventTools.AddPersistentListener(button.onClick,action);button.interactable=true;EditorUtility.SetDirty(button);
        }
        EditorUtility.SetDirty(helper);EditorUtility.SetDirty(bridge);EditorUtility.SetDirty(client.Team);EditorUtility.SetDirty(client.RaidMode);
        RestoreSupportedBuiltinParticles();AssetDatabase.SaveAssets();EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Helper scene save failed");
        var all=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).ToArray();
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/raid-helper-scene-restoration.json")),Newtonsoft.Json.JsonConvert.SerializeObject(new{objects=all.Length,newObjects=helper.GetComponentsInChildren<Transform>(true).Length,missingScripts=all.Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)),guns=helper.Gun_list.Length,buttons=data["buttons"],materials=logs},Newtonsoft.Json.Formatting.Indented));
    }
    public static void RestoreExistingRectSerialization(bool allowDirty = false)
    {
        if (EditorApplication.isPlaying || EditorApplication.isCompiling) throw new InvalidOperationException("Stable EditMode required");
        var scene = SceneManager.GetActiveScene();
        if (scene.path != ForestClientEditor.ScenePath || (scene.isDirty && !allowDirty)) throw new InvalidOperationException("Clean normal scene required");
        string reports = Path.GetFullPath(Path.Combine(Application.dataPath, "../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var rows = JArray.Parse(File.ReadAllText(Path.Combine(reports, "raid-helper-rect-repair-input.json")));
        string guid = AssetDatabase.AssetPathToGUID(scene.path);
        // Release only the existing StepUp rect's transient Editor layout tracker while serializing.
        // Otherwise Unity substitutes zero for its three driven fields despite the saved original values.
        var stepUp=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RectTransform>(true)).Single(r=>r.name=="StepUp_obj");
        var layout=stepUp.parent.GetComponent<LayoutGroup>();
        if(layout!=null&&stepUp.drivenByObject==layout)
        {
            var trackerField=typeof(LayoutGroup).GetField("m_Tracker",BindingFlags.NonPublic|BindingFlags.Instance);
            var rectFlags=typeof(RectTransform).GetProperty("drivenProperties",BindingFlags.Public|BindingFlags.NonPublic|BindingFlags.Instance);
            if(rectFlags==null)throw new InvalidOperationException("Editor rect tracker schema unavailable");
            var siblings=stepUp.parent.Cast<Transform>().OfType<RectTransform>().Where(r=>r.drivenByObject==layout&&r!=stepUp).Select(r=>new{rect=r,flags=(DrivenTransformProperties)rectFlags.GetValue(r)}).ToArray();
            var tracker=(DrivenRectTransformTracker)trackerField.GetValue(layout);tracker.Clear();
            foreach(var sibling in siblings)tracker.Add(layout,sibling.rect,sibling.flags);trackerField.SetValue(layout,tracker);
        }

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
        LayoutRebuilder.ForceRebuildLayoutImmediate(stepUp.parent as RectTransform);
        File.WriteAllText(Path.Combine(reports, "raid-helper-rect-serialization-repair.json"), Newtonsoft.Json.JsonConvert.SerializeObject(new { restoredRectTransforms = rows.Count, editorApiOnly = true, dirty = scene.isDirty }, Newtonsoft.Json.Formatting.Indented));
    }
    public static void RestoreSupportedBuiltinParticles()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");var scene=SceneManager.GetActiveScene();var helper=UnityEngine.Object.FindAnyObjectByType<Cat_manager>(FindObjectsInactive.Include).Helper_Cat;var changes=new System.Collections.Generic.List<object>();
        var pool=UnityEngine.Object.FindAnyObjectByType<Polling_manager>(FindObjectsInactive.Include);
        var projectileRenderers=pool.Polling_List[0].Objects.SelectMany(g=>g.GetComponent<Bullet>().Skin_particles.Skip(50).Take(5)).SelectMany(p=>p.GetComponentsInChildren<ParticleSystemRenderer>(true));
        foreach(var renderer in helper.GetComponentsInChildren<ParticleSystemRenderer>(true).Concat(projectileRenderers).Distinct())
        {
            var materials=renderer.sharedMaterials;bool changed=false;
            for(int i=0;i<materials.Length;i++)
            {
                var current=materials[i];if(current==null||current.shader.name!="Recovery/OriginalParticleCompatibility")continue;
                string path=AssetDatabase.GUIDToAssetPath(current.name);if(string.IsNullOrEmpty(path))continue;var original=AssetDatabase.LoadAssetAtPath<Material>(path);
                if(original==null||original.shader==null||!original.shader.isSupported||original.shader.name=="Hidden/InternalErrorShader"||original.shader.name!="Mobile/Particles/Alpha Blended")continue;
                materials[i]=original;changed=true;changes.Add(new{renderer=renderer.name,id=GlobalObjectId.GetGlobalObjectIdSlow(renderer).ToString(),source=path,shader=original.shader.name});
            }
            if(changed){renderer.sharedMaterials=materials;EditorUtility.SetDirty(renderer);}
        }
        EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("FX scene save failed");
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/raid-helper-builtin-particles.json")),Newtonsoft.Json.JsonConvert.SerializeObject(new{changes,originalMaterialsUntouched=true,reason="Builtin Mobile/Particles/Alpha Blended uses fixed transparency; stale unused Standard blend properties must not become the replacement blend."},Newtonsoft.Json.Formatting.Indented));
    }
}
