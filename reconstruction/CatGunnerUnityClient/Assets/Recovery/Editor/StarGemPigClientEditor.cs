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
public static class StarGemPigClientEditor
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
        var data=JObject.Parse(File.ReadAllText("Assets/Recovery/Editor/OriginalStarGemPig.json"));
        var types=new[]{typeof(StarGem_Pig),typeof(StarGem_Pig_UI),typeof(StarGem_Pig_HUD)};
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
                var field=t.GetField(f.Name,BindingFlags.Public|BindingFlags.Instance);if(field==null)throw new InvalidOperationException("Schema field missing: "+f.Name);
                field.SetValue(owner,typeof(UnityEngine.Object).IsAssignableFrom(field.FieldType)?Reference(f.Value,field.FieldType):f.Value.ToObject(field.FieldType));
            }
            EditorUtility.SetDirty(owner);
        }
        var client=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single();
        client.StarGemPig=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<StarGem_Pig>(true)).Single();client.StarGemPig.pig_ui.gameObject.SetActive(false);
        foreach(var row in data["buttons"])
        {
            var button=Resolve(scene,(JArray)row["path"]).GetComponent<Button>();var type=types.Single(t=>t.Name==(string)row["type"]);
            var owner=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren(type,true)).Single();var action=(UnityEngine.Events.UnityAction)Delegate.CreateDelegate(typeof(UnityEngine.Events.UnityAction),owner,type.GetMethod((string)row["method"]));
            for(int i=button.onClick.GetPersistentEventCount()-1;i>=0;i--)if(button.onClick.GetPersistentMethodName(i)==(string)row["method"]||button.onClick.GetPersistentTarget(i) is RecoveryLocalPurchaseButton)UnityEventTools.RemovePersistentListener(button.onClick,i);
            UnityEventTools.AddPersistentListener(button.onClick,action);button.interactable=true;EditorUtility.SetDirty(button);
        }
        EditorUtility.SetDirty(client);EditorSceneManager.MarkSceneDirty(scene);
        // Release only the old driven StepUp rect while saving, through the existing Editor repair.
        RaidHelperClientEditor.RestoreExistingRectSerialization(true);
        var all=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).ToArray();
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/stargem-pig-scene-restoration.json")),Newtonsoft.Json.JsonConvert.SerializeObject(new{objects=all.Length,missingScripts=all.Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)),newObjects=0,controllers=data["rows"],buttons=data["buttons"]},Newtonsoft.Json.Formatting.Indented));
    }
}
