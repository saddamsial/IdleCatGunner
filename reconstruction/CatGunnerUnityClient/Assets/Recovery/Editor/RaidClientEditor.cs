using System;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
public static class RaidClientEditor
{
    public static void Integrate()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);var client=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>();
        if(client.RaidMode!=null)throw new InvalidOperationException("Raid already integrated; preserve scene");
        var canonical=client.Slider.GetComponentInParent<Canvas>();
        var slice=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredRaid.unity",OpenSceneMode.Additive);
        var objects=slice.GetRootGameObjects().SelectMany(root=>root.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();
        var map=objects.ToDictionary(go=>(long)GlobalObjectId.GetGlobalObjectIdSlow(go).targetObjectId);
        var mode=map[141].GetComponent<Raid_manager>();
        foreach(var root in slice.GetRootGameObjects())SceneManager.MoveGameObjectToScene(root,scene);
        EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
        Merge(canonical.transform,map[866].transform);UnityEngine.Object.DestroyImmediate(map[866]);
        client.RaidMode=mode;mode.ModeHUD=map[1879];mode.StartPanel=map[2159];mode.Ingame_Upgrade_UI_obj=client.UpgradePanels[0].transform.parent.gameObject;
        foreach(var id in new long[]{1879,2159})map[id].SetActive(false);mode.Map_obj.SetActive(false);
        Bind(map[595].GetComponent<Button>(),mode.Panel_Open);
        foreach(var button in objects.Where(g=>g!=null).SelectMany(g=>g.GetComponents<Button>()))
            for(int i=0;i<button.onClick.GetPersistentEventCount();i++)
            {var target=button.onClick.GetPersistentTarget(i);if(target==null||target.GetType().GetMethod(button.onClick.GetPersistentMethodName(i))==null)button.interactable=false;}
        Bind(mode.raidStart_ui.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"),mode.Panel_Close);
        foreach(var close in mode.gunSelect_panel.GetComponentsInChildren<Button>(true).Where(b=>b.name=="Close_Btn"))Bind(close,mode.gunSelect_panel.Close);
        Gun_manager.DisableButton(mode.raidStart_ui.Enter_AD_obj);Gun_manager.DisableButton(mode.raidStart_ui.Enter_IAP_obj);
        RecoveryEditor.RepairSettingsSlice();RecoveryEditor.RebuildSceneDynamicFonts();
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var orders=Newtonsoft.Json.Linq.JArray.Parse(File.ReadAllText(Path.Combine(reports,"original-client-ui-sibling-order.json")));
        foreach(var order in orders)
        {var parent=canonical.GetComponentsInChildren<Transform>(true).SingleOrDefault(t=>t.name==(string)order["parent"]);if(parent==null)continue;var rank=order["children"].ToDictionary(x=>(string)x["name"],x=>(int)x["sibling"]);foreach(var child in parent.Cast<Transform>().OrderBy(t=>rank.TryGetValue(t.name,out int i)?i:int.MaxValue).ToArray())child.SetAsLastSibling();}
        if(mode._boss==null||mode._boss.enemy._type!=5||mode._boss.Skin_obj.Length!=5||mode.raidStart_ui.Gun_Slot_list.Length!=3||mode.ingame_ui.HP_Fill==null||mode.ingame_ui.Time_Fill==null||mode.gunSelect_panel.item_list.Any(i=>i==null||i.gun_item_demo==null)||mode.raidStart_ui.Boss_Sprites.Any(s=>s==null))throw new InvalidOperationException("Original Raid dependencies incomplete");
        var materialReport=new System.Collections.Generic.List<string>();ForestBulletEditor.RepairRenderers(mode.Map_obj.GetComponentsInChildren<ParticleSystemRenderer>(true),materialReport);
        var spriteMaterial=AssetDatabase.GetBuiltinExtraResource<Material>("Sprites-Default.mat");
        foreach(var renderer in objects.Where(g=>g!=null).SelectMany(g=>g.GetComponents<SpriteRenderer>()))
        {materialReport.Add(renderer.name+" original "+AssetDatabase.GetAssetPath(renderer.sharedMaterial)+" -> public Sprites-Default compatibility");renderer.sharedMaterial=spriteMaterial;}
        File.WriteAllLines(Path.Combine(reports,"raid-material-compatibility.txt"),materialReport);
        EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Raid scene save failed");AssetDatabase.SaveAssets();
        File.WriteAllText(Path.Combine(reports,"raid-client-scene-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
            scene=scene.path,original_objects=objects.Length,game_objects=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Length),
            canvas_count=UnityEngine.Object.FindObjectsByType<Canvas>(FindObjectsInactive.Include).Length,boss_skins=5,loadout_slots=3,gun_popup_items=mode.gunSelect_panel.item_list.Length,
            excluded="SDK rewards, paid time bonus, helper purchases, online rankings, trusted time service, Raid missions and star upgrades",runtime_validation="pending"},Newtonsoft.Json.Formatting.Indented));
    }
    private static void Bind(Button button,UnityEngine.Events.UnityAction action)
    {while(button.onClick.GetPersistentEventCount()>0)UnityEditor.Events.UnityEventTools.RemovePersistentListener(button.onClick,0);UnityEditor.Events.UnityEventTools.AddPersistentListener(button.onClick,action);button.interactable=true;}
    private static void Merge(Transform target,Transform source)
    {
        foreach(var child in source.Cast<Transform>().ToArray())
        {
            var matches=target.Cast<Transform>().Where(t=>t.name==child.name).ToArray();if(matches.Length>1)throw new InvalidOperationException("Ambiguous original ancestor "+child.name);
            if(matches.Length==1){if(!new[]{"SafeArea","Main_UI","Btn_list","Left_Menu","Right_Menu","UI_manager","Contents_UI"}.Contains(child.name))throw new InvalidOperationException("Unexpected overlapping branch "+child.name);Merge(matches[0],child);UnityEngine.Object.DestroyImmediate(child.gameObject);}
            else{var rect=child as RectTransform;if(rect==null){child.SetParent(target,false);continue;}var min=rect.anchorMin;var max=rect.anchorMax;var pivot=rect.pivot;var size=rect.sizeDelta;var pos=rect.anchoredPosition3D;var scale=rect.localScale;var rotation=rect.localRotation;rect.SetParent(target,false);rect.anchorMin=min;rect.anchorMax=max;rect.pivot=pivot;rect.sizeDelta=size;rect.anchoredPosition3D=pos;rect.localScale=scale;rect.localRotation=rotation;}
        }
    }
}
