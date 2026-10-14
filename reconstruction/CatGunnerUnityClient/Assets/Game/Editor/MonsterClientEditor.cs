using System;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
public static class MonsterClientEditor
{
    public static void Integrate()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);var client=UnityEngine.Object.FindAnyObjectByType<GameClient>();
        if(client.MonsterMode!=null)throw new InvalidOperationException("Monster already integrated; preserve scene");
        var canonical=client.Slider.GetComponentInParent<Canvas>();
        var slice=EditorSceneManager.OpenScene("Assets/Game/Scenes/Monster.unity",OpenSceneMode.Additive);
        var objects=slice.GetRootGameObjects().SelectMany(root=>root.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();
        var map=objects.ToDictionary(go=>(long)GlobalObjectId.GetGlobalObjectIdSlow(go).targetObjectId);
        var mode=map[11].GetComponent<Monster_manager>();
        foreach(var root in slice.GetRootGameObjects())SceneManager.MoveGameObjectToScene(root,scene);
        EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
        Merge(canonical.transform,map[866].transform);UnityEngine.Object.DestroyImmediate(map[866]);
        client.MonsterMode=mode;mode.ModeHUD=map[1993];mode.StartPanel=map[705];mode.Ingame_Upgrade_UI_obj=client.UpgradePanels[0].transform.parent.gameObject;
        foreach(var id in new long[]{1993,705})map[id].SetActive(false);
        mode.Map_obj.SetActive(false);
        var nav=map[885].GetComponent<Button>();
        while(nav.onClick.GetPersistentEventCount()>0)UnityEditor.Events.UnityEventTools.RemovePersistentListener(nav.onClick,0);
        UnityEditor.Events.UnityEventTools.AddPersistentListener(nav.onClick,mode.StartPanel_Open);nav.interactable=true;
        foreach(var button in objects.Where(g=>g!=null).SelectMany(g=>g.GetComponents<Button>()))
            for(int i=0;i<button.onClick.GetPersistentEventCount();i++)if(button.onClick.GetPersistentTarget(i)==null)button.interactable=false;
        GameProjectEditor.RepairSettingsSlice();GameProjectEditor.RebuildSceneDynamicFonts();
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var orders=Newtonsoft.Json.Linq.JArray.Parse(File.ReadAllText(Path.Combine(reports,"original-client-ui-sibling-order.json")));
        foreach(var order in orders)
        {var parent=canonical.GetComponentsInChildren<Transform>(true).SingleOrDefault(t=>t.name==(string)order["parent"]);if(parent==null)continue;var rank=order["children"].ToDictionary(x=>(string)x["name"],x=>(int)x["sibling"]);foreach(var child in parent.Cast<Transform>().OrderBy(t=>rank.TryGetValue(t.name,out int i)?i:int.MaxValue).ToArray())child.SetAsLastSibling();}
        if(mode.NonSpawned_Monster.Count!=240||mode.NonSpawned_Monster.Any(o=>o==null||o._spriteRenderer==null||o.FX_Spawn_trans==null||o.rb==null||o.enemy._type!=3||o.enemy.Slider==null||o.enemy.Slider.Fill==null||o.GetComponentsInChildren<EnemyColl>(true).Length==0)||mode.Monster_sprites.Length!=20||mode.Health_Balance.Length!=2000||mode.monster_game_slider==null||mode.HP_Disc==null)throw new InvalidOperationException("Original monster dependencies incomplete");
        var slime=map[363].GetComponent<Particle_Polling>();if(slime==null||slime.Particle_index!=2||slime._particleSystem.Length!=1)throw new InvalidOperationException("Original slime dependency incomplete");
        var materialReport=new System.Collections.Generic.List<string>();ForestBulletEditor.RepairRenderers(slime.GetComponentsInChildren<ParticleSystemRenderer>(true),materialReport);
        var spriteMaterial=AssetDatabase.GetBuiltinExtraResource<Material>("Sprites-Default.mat");
        var healthMaterial=AssetDatabase.LoadAssetAtPath<Material>("Assets/Game/ForestHealthFill.mat");
        if(healthMaterial==null)healthMaterial=AssetDatabase.FindAssets("t:Material").Select(g=>AssetDatabase.LoadAssetAtPath<Material>(AssetDatabase.GUIDToAssetPath(g))).First(m=>m.shader!=null&&m.shader.name=="Game/ForestHealthFill");
        foreach(var renderer in objects.Where(g=>g!=null).SelectMany(g=>g.GetComponents<SpriteRenderer>()))
        {materialReport.Add(renderer.name+" original "+AssetDatabase.GetAssetPath(renderer.sharedMaterial)+" -> compatibility sprite/fill; GPU MonsterBounce pending");renderer.sharedMaterial=renderer.GetComponent<SpriteFill>()!=null?healthMaterial:spriteMaterial;}
        foreach(var disc in mode.Map_obj.GetComponentsInChildren<Shapes.Disc>(true)){var renderer=disc.GetComponent<MeshRenderer>();if(renderer!=null)renderer.sharedMaterial=spriteMaterial;}
        var close=mode.monster_start_ui.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn");while(close.onClick.GetPersistentEventCount()>0)UnityEditor.Events.UnityEventTools.RemovePersistentListener(close.onClick,0);UnityEditor.Events.UnityEventTools.AddPersistentListener(close.onClick,mode.StartPanel_Close);close.interactable=true;
        File.WriteAllLines(Path.Combine(reports,"monster-material-compatibility.txt"),materialReport);
        EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Progression scene save failed");AssetDatabase.SaveAssets();
        File.WriteAllText(Path.Combine(reports,"monster-client-scene-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
            scene=scene.path,original_objects=objects.Length,game_objects=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Length),
            canvas_count=UnityEngine.Object.FindObjectsByType<Canvas>(FindObjectsInactive.Include).Length,
            monster_pool=240,health_cache=2000,levels_per_wave=5,normal_clear_petcoin=30,source_hp_max=mode.HP_Max,
            excluded="SDK rewards, paid auto/sweep, online rankings, commercial Shapes and GPU MonsterBounce shader",runtime_validation="pending"},Newtonsoft.Json.Formatting.Indented));
    }
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
