using System;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;

public static class InventoryClientEditor
{
    public static void Integrate()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);
        var client=UnityEngine.Object.FindFirstObjectByType<RecoveryForestClient>();
        if(client.Guns!=null)throw new InvalidOperationException("Inventory already integrated; preserve scene");
        var canonical=client.Slider.GetComponentInParent<Canvas>();
        var slice=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredInventory.unity",OpenSceneMode.Additive);
        var objects=slice.GetRootGameObjects().SelectMany(root=>root.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();
        var map=objects.ToDictionary(go=>(long)GlobalObjectId.GetGlobalObjectIdSlow(go).targetObjectId);
        var guns=map[111].GetComponent<Gun_manager>();var team=map[446].GetComponent<Cat_manager>();
        foreach(var root in slice.GetRootGameObjects())SceneManager.MoveGameObjectToScene(root,scene);
        EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
        var incoming=map[866].GetComponent<Canvas>();
        Merge(canonical.transform,incoming.transform);UnityEngine.Object.DestroyImmediate(incoming.gameObject);
        client.Guns=guns;client.Team=team;team.Cat_list[0]=client.Hero;
        // The acceptance hero and exact original AI branches now share the
        // serialized manager root; no paid Helper_Cat is imported or enabled.
        var oldParent=client.Hero.transform.parent;
        if(oldParent!=null&&oldParent.name==team.name&&oldParent.GetComponents<Component>().Length==1)
        {foreach(var child in oldParent.Cast<Transform>().ToArray())child.SetParent(team.transform,true);UnityEngine.Object.DestroyImmediate(oldParent.gameObject);}
        foreach(var cat in team.Cat_list)
        {
            if(cat==null)throw new InvalidOperationException("Original ordinary team dependency missing");
            cat.joystick=client.Hero.joystick;
            var bridge=cat.GetComponent<ForestCombatAcceptance>()??cat.gameObject.AddComponent<ForestCombatAcceptance>();
            bridge.LoadPackageEquipment=false;bridge.EnableTargeting=true;
            if(cat.is_AI)cat.gameObject.SetActive(false);
        }
        map[1558].SetActive(false);map[995].SetActive(false);map[20203].SetActive(false);
        RecoveryEditor.RepairSettingsSlice();RecoveryEditor.RebuildSceneDynamicFonts();
        // Original SafeArea ordering is significant for real pointer raycasts.
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var orders=Newtonsoft.Json.Linq.JArray.Parse(File.ReadAllText(Path.Combine(reports,"original-client-ui-sibling-order.json")));
        foreach(var order in orders)
        {
            var parent=canonical.GetComponentsInChildren<Transform>(true).SingleOrDefault(t=>t.name==(string)order["parent"]);if(parent==null)continue;
            var rank=order["children"].ToDictionary(x=>(string)x["name"],x=>(int)x["sibling"]);
            foreach(var child in parent.Cast<Transform>().OrderBy(t=>rank.TryGetValue(t.name,out int i)?i:int.MaxValue).ToArray())child.SetAsLastSibling();
        }
        if(guns.Gun_sprites.Length!=65||guns.Gun_Slot_List.Length!=3||guns.gunItemList.Gun_Item_Pool.Length!=16||team.Cat_list.Length!=3)
            throw new InvalidOperationException("Original inventory/team arrays incomplete");
        EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Inventory scene save failed");AssetDatabase.SaveAssets();
        File.WriteAllText(Path.Combine(reports,"inventory-client-scene-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
            scene=scene.path,source_roots=new[]{1558,995,20203,624,15237,15239},objects=objects.Length,
            game_objects=scene.GetRootGameObjects().Sum(root=>root.GetComponentsInChildren<Transform>(true).Length),
            canvases=UnityEngine.Object.FindObjectsByType<Canvas>(FindObjectsInactive.Include).Length,
            gun_sprites=65,inventory_slots=16,equipment_slots=3,ordinary_cats=3,
            unavailable="ad rewards, star upgrades, safe storage unlock and paid auto-merge",runtime_validation="pending"},Newtonsoft.Json.Formatting.Indented));
    }
    public static void ScheduleIntegrate()=>EditorApplication.delayCall+=Integrate;
    private static void Merge(Transform target,Transform source)
    {
        foreach(var child in source.Cast<Transform>().ToArray())
        {
            var matches=target.Cast<Transform>().Where(t=>t.name==child.name).ToArray();
            if(matches.Length>1)throw new InvalidOperationException("Ambiguous original ancestor "+child.name);
            if(matches.Length==1)
            {if(child.name!="SafeArea"&&child.name!="Main_UI"&&child.name!="Btn_list"&&child.name!="Left_Menu")throw new InvalidOperationException("Unexpected overlapping branch "+child.name);Merge(matches[0],child);UnityEngine.Object.DestroyImmediate(child.gameObject);}
            else
            {
                var r=child as RectTransform;if(r==null){child.SetParent(target,false);continue;}
                var min=r.anchorMin;var max=r.anchorMax;var pivot=r.pivot;var size=r.sizeDelta;var pos=r.anchoredPosition3D;var scale=r.localScale;var rotation=r.localRotation;
                r.SetParent(target,false);r.anchorMin=min;r.anchorMax=max;r.pivot=pivot;r.sizeDelta=size;r.anchoredPosition3D=pos;r.localScale=scale;r.localRotation=rotation;
            }
        }
    }
}
