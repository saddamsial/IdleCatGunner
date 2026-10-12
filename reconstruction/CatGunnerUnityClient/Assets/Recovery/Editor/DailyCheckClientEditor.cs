using System;
using System.IO;
using System.Linq;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public static class DailyCheckClientEditor
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
        var data = JObject.Parse(File.ReadAllText("Assets/Recovery/Editor/OriginalDailyCheck.json"));
        var paths = data["rows"].ToDictionary(r => (int)r["originalGo"], r => (JArray)r["path"]);
        var roots = data["roots"].Select(r => (int)r).ToArray();
        if (roots.Any(r => Resolve(scene, paths[r]) != null)) throw new InvalidOperationException("Already integrated; do not duplicate");
        if (roots.Any(r => Resolve(scene, new JArray(paths[r].Take(paths[r].Count - 1))) == null)) throw new InvalidOperationException("Original parent missing");
        var slice = EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredDailyCheckSource.unity", OpenSceneMode.Additive);
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
        var daily = Resolve(scene, paths[28531]).GetComponent<DailyCheck>();
        // All cross-branch references now point at the moved original objects.
        if (daily.Reward_list.Length != 7 || !daily.DiaReward_list.SequenceEqual(new[]{70,200,400,600,800,1000,1500}) || daily.DailyCheck_Panel_obj == null) throw new InvalidOperationException("Original dependencies missing");
        var client = UnityEngine.Object.FindAnyObjectByType<CatGunner.Recovery.RecoveryForestClient>(FindObjectsInactive.Include);
        client.DailyLogin = daily;
        var disabled = new System.Collections.Generic.List<string>();
        foreach (var button in roots.SelectMany(id => Resolve(scene, paths[id]).GetComponentsInChildren<Button>(true)))
        {
            for (int i = 0; i < button.onClick.GetPersistentEventCount(); i++)
            {
                var target = button.onClick.GetPersistentTarget(i); string method = button.onClick.GetPersistentMethodName(i);
                if (target == null || target.GetType().GetMethods().All(m => m.Name != method)) { button.interactable = false; disabled.Add(button.name + ": " + method); }
            }
        }
        foreach (int root in roots)
        {
            var order = (JArray)data["parentOrders"][root.ToString()];
            var rank = order.Select((n,i)=>new{name=(string)n,index=i}).GroupBy(x=>x.name).ToDictionary(g=>g.Key,g=>g.First().index);
            foreach(var child in Resolve(scene,paths[root]).transform.parent.Cast<Transform>().OrderBy(t=>rank.TryGetValue(t.name,out int i)?i:int.MaxValue).ToArray())child.SetAsLastSibling();
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
        daily.DailyCheck_Panel_obj.SetActive(false);
        // Keep source affiliate artwork, disable its external/payout branch.
        if(daily.Coupang_Panel!=null)daily.Coupang_Panel.SetActive(false);
        if(daily.Coupang_hud_obj!=null)daily.Coupang_hud_obj.SetActive(false);
        EditorUtility.SetDirty(client);EditorUtility.SetDirty(tutorial);EditorSceneManager.MarkSceneDirty(scene);
        if(!EditorSceneManager.SaveScene(scene))throw new IOException("Save failed");
        var all=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).ToArray();
        var report=new{scene=scene.path,objects=all.Length,newObjects=roots.Sum(r=>Resolve(scene,paths[r]).GetComponentsInChildren<Transform>(true).Length),missingScripts=all.Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)),disabledUnsupported=disabled,connectedTutorialReferences=tutorial.DisableOnTutorial.Count(g=>g!=null),trustedDateProviderAvailable=false};
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/daily-check-scene-restoration.json")),Newtonsoft.Json.JsonConvert.SerializeObject(report,Newtonsoft.Json.Formatting.Indented));
    }
}
