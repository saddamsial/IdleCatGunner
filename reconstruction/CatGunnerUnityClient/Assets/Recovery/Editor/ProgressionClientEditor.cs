using System;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
public static class ProgressionClientEditor
{
    public static void Integrate()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);var client=UnityEngine.Object.FindFirstObjectByType<RecoveryForestClient>();
        if(client.PetUI!=null||client.MissionUI!=null||client.RebirthUI!=null)throw new InvalidOperationException("Progression already integrated; preserve scene");
        var canonical=client.Slider.GetComponentInParent<Canvas>();
        var slice=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredProgression.unity",OpenSceneMode.Additive);
        var objects=slice.GetRootGameObjects().SelectMany(root=>root.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();
        var map=objects.ToDictionary(go=>(long)GlobalObjectId.GetGlobalObjectIdSlow(go).targetObjectId);
        var pets=map[412].GetComponent<Pet_manager>();var missions=map[1146].GetComponent<Mission_manager>();var rebirth=map[1534].GetComponent<Rebirth_manager>();var followers=map[1440].GetComponent<Pet_Ingame_manager>();
        foreach(var root in slice.GetRootGameObjects())SceneManager.MoveGameObjectToScene(root,scene);
        EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
        Merge(canonical.transform,map[866].transform);UnityEngine.Object.DestroyImmediate(map[866]);
        client.PetUI=pets;client.MissionUI=missions;client.RebirthUI=rebirth;client.PetFollowers=followers;
        foreach(var id in new long[]{1352,1518,1311,1373,975,992})map[id].SetActive(false);
        foreach(var pet in followers.Pets)pet.gameObject.SetActive(false);
        foreach(var go in new[]{rebirth.rebirth_panel_ui.UpgradeRebirth_Popup_obj,rebirth.rebirth_panel_ui.UpgradeRebirth_IAP_Popup_obj,missions.NewSeason_Panel_obj,missions.NewSeason_Panel_Forced_obj,missions.Vip_Purchase_Panel_obj,missions.Luxury_Purchase_Panel_obj})if(go!=null)go.SetActive(false);
        // Do not leave dead commercial callbacks looking operational.
        foreach(var button in objects.Where(g=>g!=null).SelectMany(g=>g.GetComponents<Button>()))
            for(int i=0;i<button.onClick.GetPersistentEventCount();i++)if(button.onClick.GetPersistentTarget(i)==null)button.interactable=false;
        RecoveryEditor.RepairSettingsSlice();RecoveryEditor.RebuildSceneDynamicFonts();
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var orders=Newtonsoft.Json.Linq.JArray.Parse(File.ReadAllText(Path.Combine(reports,"original-client-ui-sibling-order.json")));
        foreach(var order in orders)
        {var parent=canonical.GetComponentsInChildren<Transform>(true).SingleOrDefault(t=>t.name==(string)order["parent"]);if(parent==null)continue;var rank=order["children"].ToDictionary(x=>(string)x["name"],x=>(int)x["sibling"]);foreach(var child in parent.Cast<Transform>().OrderBy(t=>rank.TryGetValue(t.name,out int i)?i:int.MaxValue).ToArray())child.SetAsLastSibling();}
        if(pets.Pet_Slot_List.Length!=3||pets.gunItemList.Pet_Item_Pool.Length!=16||missions.Mission_Item_UI_List.Length!=23||missions.Mission_Reward_Slot_List.Length!=25||followers.Pets.Length!=3)throw new InvalidOperationException("Original progression dependencies incomplete");
        EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Progression scene save failed");AssetDatabase.SaveAssets();
        File.WriteAllText(Path.Combine(reports,"progression-client-scene-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
            scene=scene.path,original_objects=objects.Length,game_objects=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Length),
            canvas_count=UnityEngine.Object.FindObjectsByType<Canvas>(FindObjectsInactive.Include).Length,
            mission_rows=23,reward_rows=25,pet_inventory=16,pet_equipped=3,rebirth_upgrades=3,
            excluded="SDK rewards and purchases, server time trust, pet dispatch, Spine pet animation (static original sprite fallback)",runtime_validation="pending"},Newtonsoft.Json.Formatting.Indented));
    }
    public static void Merge(Transform target,Transform source)
    {
        foreach(var child in source.Cast<Transform>().ToArray())
        {
            var matches=target.Cast<Transform>().Where(t=>t.name==child.name).ToArray();if(matches.Length>1)throw new InvalidOperationException("Ambiguous original ancestor "+child.name);
            if(matches.Length==1){if(!new[]{"SafeArea","Main_UI","Btn_list","Left_Menu","Right_Menu","UI_manager"}.Contains(child.name))throw new InvalidOperationException("Unexpected overlapping branch "+child.name);Merge(matches[0],child);UnityEngine.Object.DestroyImmediate(child.gameObject);}
            else{var rect=child as RectTransform;if(rect==null){child.SetParent(target,false);continue;}var min=rect.anchorMin;var max=rect.anchorMax;var pivot=rect.pivot;var size=rect.sizeDelta;var pos=rect.anchoredPosition3D;var scale=rect.localScale;var rotation=rect.localRotation;rect.SetParent(target,false);rect.anchorMin=min;rect.anchorMax=max;rect.pivot=pivot;rect.sizeDelta=size;rect.anchoredPosition3D=pos;rect.localScale=scale;rect.localRotation=rotation;}
        }
    }
}
