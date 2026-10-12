using System;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.Events;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public static class ContentUnlockClientEditor
{
    private static GameObject Resolve(Scene scene,JArray path)
    {
        Transform current=null;
        foreach(JObject node in path)
        {
            var candidates=current==null?scene.GetRootGameObjects().Select(g=>g.transform):current.Cast<Transform>();
            current=candidates.Where(t=>t.name==(string)node["name"]).Skip((int)node["ordinal"]).FirstOrDefault();
            if(current==null)return null;
        }
        return current?.gameObject;
    }
    public static void Integrate()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=SceneManager.GetActiveScene();
        if(scene.path!=ForestClientEditor.ScenePath||scene.isDirty)throw new InvalidOperationException("Open clean normal client scene");
        var data=JObject.Parse(File.ReadAllText("Assets/Recovery/Editor/OriginalContentUnlock.json"));
        var row=(JObject)data["rows"][0];var path=(JArray)row["path"];
        var go=Resolve(scene,path);
        if(go==null)
        {
            var parent=Resolve(scene,new JArray(path.Take(path.Count-1)));if(parent==null)throw new InvalidOperationException("Missing original UI_manager");
            go=new GameObject((string)data["managerObject"]["m_Name"],typeof(RectTransform));go.layer=(int)data["managerObject"]["m_Layer"];go.transform.SetParent(parent.transform,false);
            var source=data["managerTransform"];var rect=(RectTransform)go.transform;
            Vector2 V(JToken v)=>new Vector2((float)v["x"],(float)v["y"]);
            rect.anchorMin=V(source["m_AnchorMin"]);rect.anchorMax=V(source["m_AnchorMax"]);rect.pivot=V(source["m_Pivot"]);rect.sizeDelta=V(source["m_SizeDelta"]);rect.anchoredPosition=V(source["m_AnchoredPosition"]);
            var rotation=source["m_LocalRotation"];rect.localRotation=new Quaternion((float)rotation["x"],(float)rotation["y"],(float)rotation["z"],(float)rotation["w"]);
            var scale=source["m_LocalScale"];rect.localScale=new Vector3((float)scale["x"],(float)scale["y"],(float)scale["z"]);
        }
        var manager=go.GetComponent<Contents_Unlock_manager>()??go.AddComponent<Contents_Unlock_manager>();
        manager.Content_list=((JArray)row["fields"]["Content_list"]).Select(token=>new Content_Info{Type=(Content_Type)(int)token["Type"],Btn_obj=Resolve(scene,(JArray)data["references"][(string)token["Btn_obj"]["fileID"]]),Locked_obj=Resolve(scene,(JArray)data["references"][(string)token["Locked_obj"]["fileID"]])}).ToArray();
        if(manager.Content_list.Any(info=>info.Btn_obj==null||info.Locked_obj==null))throw new InvalidOperationException("Missing original content Button/lock references");
        UnityEngine.Events.UnityAction[] callbacks={manager.Content_Btn_Rebirth,manager.Content_Btn_Mine,manager.Content_Btn_Fish,manager.Content_Btn_Boss,manager.Content_Btn_Pet,manager.Content_Btn_Monster,manager.Content_Btn_Adventure,manager.Content_Btn_Raid};
        foreach(var info in manager.Content_list)
        {
            var button=info.Btn_obj.GetComponent<Button>();if(button==null)throw new InvalidOperationException("Missing original Button");
            while(button.onClick.GetPersistentEventCount()>0)UnityEventTools.RemovePersistentListener(button.onClick,0);
            UnityEventTools.AddPersistentListener(button.onClick,callbacks[(int)info.Type]);button.interactable=true;EditorUtility.SetDirty(button);
        }
        var client=UnityEngine.Object.FindFirstObjectByType<RecoveryForestClient>();client.ContentUnlock=manager;
        EditorUtility.SetDirty(manager);EditorUtility.SetDirty(client);EditorSceneManager.MarkSceneDirty(scene);
        if(!EditorSceneManager.SaveScene(scene))throw new IOException("Content scene save failed");
        var all=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).ToArray();
        var report=new {scene=scene.path,original_manager_go=(int)row["originalGo"],original_manager_component=(int)row["originalComponent"],content_rows=manager.Content_list.Select(x=>new{type=x.Type.ToString(),button=x.Btn_obj.name,locked=x.Locked_obj.name,method=x.Btn_obj.GetComponent<Button>().onClick.GetPersistentMethodName(0)}).ToArray(),objects=all.Length,missingScripts=all.Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)),adapter="RecoveryForestClient binds manager; missing tutorial manager remains absent, no tutorial completion record changed; existing local controllers own enabled panel lifecycle"};
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/content-unlock-scene-restoration.json")),Newtonsoft.Json.JsonConvert.SerializeObject(report,Newtonsoft.Json.Formatting.Indented));
    }
}
