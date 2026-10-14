using System;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
public static class SpeedRunClientEditor
{
    public static void Integrate()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);var client=UnityEngine.Object.FindFirstObjectByType<GameClient>();
        if(client.SpeedRun!=null)throw new InvalidOperationException("Progression already integrated; preserve scene");
        var canonical=client.Slider.GetComponentInParent<Canvas>();
        var slice=EditorSceneManager.OpenScene("Assets/Game/Scenes/SpeedRun.unity",OpenSceneMode.Additive);
        var objects=slice.GetRootGameObjects().SelectMany(root=>root.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();
        var map=objects.ToDictionary(go=>(long)GlobalObjectId.GetGlobalObjectIdSlow(go).targetObjectId);
        var mode=map[1386].GetComponent<SpeedRun_manager>();
        foreach(var root in slice.GetRootGameObjects())SceneManager.MoveGameObjectToScene(root,scene);
        EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
        Merge(canonical.transform,map[866].transform);UnityEngine.Object.DestroyImmediate(map[866]);
        client.SpeedRun=mode;
        foreach(var id in new long[]{937,1457,2126,1640,448})map[id].SetActive(false);
        mode.Map_obj.SetActive(false);
        var nav=map[444].GetComponent<Button>();
        while(nav.onClick.GetPersistentEventCount()>0)UnityEditor.Events.UnityEventTools.RemovePersistentListener(nav.onClick,0);
        UnityEditor.Events.UnityEventTools.AddPersistentListener(nav.onClick,mode.StartPanel_Open);nav.interactable=true;
        foreach(var button in objects.Where(g=>g!=null).SelectMany(g=>g.GetComponents<Button>()))
            for(int i=0;i<button.onClick.GetPersistentEventCount();i++)if(button.onClick.GetPersistentTarget(i)==null)button.interactable=false;
        GameProjectEditor.RepairSettingsSlice();GameProjectEditor.RebuildSceneDynamicFonts();
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var orders=Newtonsoft.Json.Linq.JArray.Parse(File.ReadAllText(Path.Combine(reports,"original-client-ui-sibling-order.json")));
        foreach(var order in orders)
        {var parent=canonical.GetComponentsInChildren<Transform>(true).SingleOrDefault(t=>t.name==(string)order["parent"]);if(parent==null)continue;var rank=order["children"].ToDictionary(x=>(string)x["name"],x=>(int)x["sibling"]);foreach(var child in parent.Cast<Transform>().OrderBy(t=>rank.TryGetValue(t.name,out int i)?i:int.MaxValue).ToArray())child.SetAsLastSibling();}
        if(mode.Tree_list.Length!=190||mode.Tree_list.Any(t=>t==null||t.enemy==null||t.enemy._type!=1)||mode.gameSlider==null||mode.Ground_sprite==null)throw new InvalidOperationException("Original speed-run dependencies incomplete");
        EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Progression scene save failed");AssetDatabase.SaveAssets();
        File.WriteAllText(Path.Combine(reports,"speedrun-client-scene-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
            scene=scene.path,original_objects=objects.Length,game_objects=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Length),
            canvas_count=UnityEngine.Object.FindObjectsByType<Canvas>(FindObjectsInactive.Include).Length,
            speedrun_trees=190,time_max=60,normal_win_diamonds=30,
            excluded="SDK rewards, paid sweep, server result transport and beyond-cache stage precision",runtime_validation="pending"},Newtonsoft.Json.Formatting.Indented));
    }
    private static void Merge(Transform target,Transform source)
    {
        foreach(var child in source.Cast<Transform>().ToArray())
        {
            var matches=target.Cast<Transform>().Where(t=>t.name==child.name).ToArray();if(matches.Length>1)throw new InvalidOperationException("Ambiguous original ancestor "+child.name);
            if(matches.Length==1){if(!new[]{"SafeArea","Main_UI","Btn_list","Left_Menu","Right_Menu","UI_manager"}.Contains(child.name))throw new InvalidOperationException("Unexpected overlapping branch "+child.name);Merge(matches[0],child);UnityEngine.Object.DestroyImmediate(child.gameObject);}
            else{var rect=child as RectTransform;if(rect==null){child.SetParent(target,false);continue;}var min=rect.anchorMin;var max=rect.anchorMax;var pivot=rect.pivot;var size=rect.sizeDelta;var pos=rect.anchoredPosition3D;var scale=rect.localScale;var rotation=rect.localRotation;rect.SetParent(target,false);rect.anchorMin=min;rect.anchorMax=max;rect.pivot=pivot;rect.sizeDelta=size;rect.anchoredPosition3D=pos;rect.localScale=scale;rect.localRotation=rotation;}
        }
    }
}
