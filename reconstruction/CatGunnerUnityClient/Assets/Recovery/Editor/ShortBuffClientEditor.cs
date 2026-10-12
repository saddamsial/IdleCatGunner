using System;
using System.IO;
using System.Linq;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public static class ShortBuffClientEditor
{
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
        var data = JObject.Parse(File.ReadAllText("Assets/Recovery/Editor/OriginalShortBuff.json"));
        var paths = data["rows"].ToDictionary(r => (int)r["originalGo"], r => (JArray)r["path"]);
        var roots = data["roots"].Select(r => (int)r).ToArray();
        if (roots.Any(r => Resolve(scene, paths[r]) != null)) throw new InvalidOperationException("Already integrated; do not duplicate");
        if (roots.Any(r => Resolve(scene, new JArray(paths[r].Take(paths[r].Count - 1))) == null)) throw new InvalidOperationException("Original parent missing");
        var slice = EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredShortBuffSource.unity", OpenSceneMode.Additive);
        try
        {
            foreach (int id in roots)
            {
                var root = Resolve(slice, paths[id]);
                var parent = Resolve(scene, new JArray(paths[id].Take(paths[id].Count - 1)));
                root.transform.SetParent(null, false); SceneManager.MoveGameObjectToScene(root, scene); root.transform.SetParent(parent.transform, false);
            }
        }
        finally { EditorSceneManager.CloseScene(slice, true); SceneManager.SetActiveScene(scene); }
        var manager=Resolve(scene,paths[715]).GetComponent<Buff_manager>();
        var client=UnityEngine.Object.FindAnyObjectByType<CatGunner.Recovery.RecoveryForestClient>(FindObjectsInactive.Include);
        if(client.Buffs!=null)throw new InvalidOperationException("Buff owner already assigned");client.Buffs=manager;
        var disabled=new System.Collections.Generic.List<string>();
        foreach(var button in roots.SelectMany(id=>Resolve(scene,paths[id]).GetComponentsInChildren<Button>(true)))
        {
            // Restored GameObject.SetActive events retain their original serialized targets.
            for(int i=0;i<button.onClick.GetPersistentEventCount();i++)
            {
                var target=button.onClick.GetPersistentTarget(i);string method=button.onClick.GetPersistentMethodName(i);
                if(target==null||target.GetType().GetMethods().All(m=>m.Name!=method)){button.interactable=false;disabled.Add(button.name+": "+method);}
            }
        }
        foreach(var panel in manager.GetComponentsInChildren<Buff_Panel>(true))
        {
            if(panel.Fill==null||panel.BuffTime_txt==null||panel.Explain_txt==null||panel.AD_Btn_obj==null||panel.Active_obj==null||panel.NonActive_obj==null||panel.NormalBuff_obj==null||panel.SuperBuff_obj==null)throw new InvalidOperationException("Original Buff panel reference missing");
            var button=panel.AD_Btn_obj.GetComponent<Button>();
            if(button.onClick.GetPersistentEventCount()!=1||button.onClick.GetPersistentMethodName(0)!="AD_Watch"||button.onClick.GetPersistentTarget(0)!=panel)throw new InvalidOperationException("Original Buff ad callback missing");button.interactable=true;
        }
        if(manager.Buff_Menu_Btn==null||manager.SuperBuff_Active_obj==null||manager.SuperBuff_NonActive_obj==null)throw new InvalidOperationException("Original Buff manager reference missing");
        // Original placement-14 callbacks target Mine_Start_UI.AD_SpeedBuff_Watch. SDK execution is local.
        var mine=client.MineMode.mineStart_ui;
        foreach(var go in new[]{mine.AD_SpeedBuff_obj,mine.AD_SpeedBuff_obj_Auto})
        {
            var button=go.GetComponent<Button>();
            if(button.onClick.GetPersistentMethodName(0)!="AD_SpeedBuff_Watch")throw new InvalidOperationException("Original mine callback missing");
            button.interactable=true;EditorUtility.SetDirty(button);
        }
        foreach (int root in roots)
        {
            var order = (JArray)data["parentOrders"][root.ToString()];
            var rank = order.Select((n,i)=>new{name=(string)n,index=i}).GroupBy(x=>x.name).ToDictionary(g=>g.Key,g=>g.First().index);
            var added=Resolve(scene,paths[root]).transform;int insertion=added.parent.Cast<Transform>().Count(t=>t!=added&&rank.TryGetValue(t.name,out int i)&&i<rank[added.name]);added.SetSiblingIndex(insertion);
        }
        var tutorial=client.Tutorial;
        var td=JObject.Parse(File.ReadAllText("Assets/Recovery/Editor/OriginalTutorial.json"));
        var tr=td["rows"].Single(r=>(int)r["originalGo"]==758);var refs=(JObject)td["references"];
        for(int i=0;i<tutorial.DisableOnTutorial.Length;i++)
        {
            if(tutorial.DisableOnTutorial[i]!=null)continue;
            var control=Resolve(scene,(JArray)refs[(string)tr["fields"]["DisableOnTutorial"][i]["fileID"]]);
            if(control!=null)tutorial.DisableOnTutorial[i]=control;
        }
        manager.transform.Find("Buff_UI").gameObject.SetActive(false);RecoveryEditor.RebuildSceneDynamicFonts();
        EditorUtility.SetDirty(client);EditorUtility.SetDirty(manager);EditorUtility.SetDirty(tutorial);EditorSceneManager.MarkSceneDirty(scene);
        if(!EditorSceneManager.SaveScene(scene))throw new IOException("Save failed");
        var all=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).ToArray();
        var report=new{scene=scene.path,objects=all.Length,newObjects=roots.Sum(r=>Resolve(scene,paths[r]).GetComponentsInChildren<Transform>(true).Length),missingScripts=all.Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)),disabledUnsupported=disabled,connectedTutorialReferences=tutorial.DisableOnTutorial.Count(g=>g!=null),rewardSeconds=300,maximumSeconds=900,productionPurchaseAvailable=false};
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/short-buff-scene-restoration.json")),Newtonsoft.Json.JsonConvert.SerializeObject(report,Newtonsoft.Json.Formatting.Indented));
    }
}
