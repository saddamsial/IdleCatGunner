using System;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
public static class MineClientEditor
{
    public static void Integrate()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);var client=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>();
        if(client.MineMode!=null)throw new InvalidOperationException("Mine already integrated; preserve scene");
        var canonical=client.Slider.GetComponentInParent<Canvas>();
        var slice=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredMine.unity",OpenSceneMode.Additive);
        var objects=slice.GetRootGameObjects().SelectMany(root=>root.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();
        var map=objects.ToDictionary(go=>(long)GlobalObjectId.GetGlobalObjectIdSlow(go).targetObjectId);
        var mode=map[1526].GetComponent<Mine_manager>();
        foreach(var root in slice.GetRootGameObjects())SceneManager.MoveGameObjectToScene(root,scene);
        EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
        Merge(canonical.transform,map[866].transform);UnityEngine.Object.DestroyImmediate(map[866]);
        client.MineMode=mode;mode.ModeHUD=map[1165];mode.StartPanel=map[1895];mode.Ingame_Upgrade_UI_obj=client.UpgradePanels[0].transform.parent.gameObject;
        foreach(var id in new long[]{1165,1895,1406,1708,1076})map[id].SetActive(false);
        mode.Map_obj.SetActive(false);
        var nav=map[1231].GetComponent<Button>();
        while(nav.onClick.GetPersistentEventCount()>0)UnityEditor.Events.UnityEventTools.RemovePersistentListener(nav.onClick,0);
        UnityEditor.Events.UnityEventTools.AddPersistentListener(nav.onClick,mode.StartPanel_Open);nav.interactable=true;
        foreach(var button in objects.Where(g=>g!=null).SelectMany(g=>g.GetComponents<Button>()))
            for(int i=0;i<button.onClick.GetPersistentEventCount();i++)if(button.onClick.GetPersistentTarget(i)==null)button.interactable=false;
        RecoveryEditor.RepairSettingsSlice();RecoveryEditor.RebuildSceneDynamicFonts();
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var orders=Newtonsoft.Json.Linq.JArray.Parse(File.ReadAllText(Path.Combine(reports,"original-client-ui-sibling-order.json")));
        foreach(var order in orders)
        {var parent=canonical.GetComponentsInChildren<Transform>(true).SingleOrDefault(t=>t.name==(string)order["parent"]);if(parent==null)continue;var rank=order["children"].ToDictionary(x=>(string)x["name"],x=>(int)x["sibling"]);foreach(var child in parent.Cast<Transform>().OrderBy(t=>rank.TryGetValue(t.name,out int i)?i:int.MaxValue).ToArray())child.SetAsLastSibling();}
        if(mode.Ore_list.Length!=1000||mode.Ore_list.Any(o=>o==null||o.spriteRenderer==null||o.DustSpawn_trans==null||o.enemy._type!=4||o.enemy.Slider==null||o.enemy.Slider.Fill==null||o.GetComponentsInChildren<EnemyColl>(true).Length==0)||mode.Ore_sprites.Length!=2||mode.gameSlider==null)throw new InvalidOperationException("Original mine dependencies incomplete");
        var dust=map[562].GetComponent<Particle_Polling>();if(dust==null||dust.Particle_index!=1||dust._particleSystem.Length!=1)throw new InvalidOperationException("Original mine dust dependency incomplete");
        ForestBulletEditor.RepairRenderers(dust.GetComponentsInChildren<ParticleSystemRenderer>(true),new System.Collections.Generic.List<string>());
        EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Progression scene save failed");AssetDatabase.SaveAssets();
        File.WriteAllText(Path.Combine(reports,"mine-client-scene-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
            scene=scene.path,original_objects=objects.Length,game_objects=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Length),
            canvas_count=UnityEngine.Object.FindObjectsByType<Canvas>(FindObjectsInactive.Include).Length,
            ore_pool=1000,rare_cap=100,time_max=60,normal_ticket_max=2,score_per_diamond=10,
            excluded="SDK rewards, paid mine/sweep, server/anti-cheat clock and floating diamond text",runtime_validation="pending"},Newtonsoft.Json.Formatting.Indented));
    }
    public static void RepairDustMaterial()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);
        var dust=UnityEngine.Object.FindObjectsByType<Particle_Polling>(FindObjectsInactive.Include).Single(p=>p.Particle_index==1);
        var report=new System.Collections.Generic.List<string>();ForestBulletEditor.RepairRenderers(dust.GetComponentsInChildren<ParticleSystemRenderer>(true),report);
        EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);AssetDatabase.SaveAssets();
        File.WriteAllLines(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mine-dust-material-compatibility.txt")),report);
    }
    public static void RepairMapMaterials()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.GetActiveScene();
        if(scene.path!=ForestClientEditor.ScenePath)throw new InvalidOperationException("Open playable client first");
        var mine=UnityEngine.Object.FindAnyObjectByType<Mine_manager>(FindObjectsInactive.Include);
        var sprite=AssetDatabase.GetBuiltinExtraResource<Material>("Sprites-Default.mat");
        var fill=AssetDatabase.LoadAssetAtPath<Material>("Assets/Recovery/ForestHealthFill.mat");
        if(mine==null||sprite==null||fill==null||!sprite.shader.isSupported||!fill.shader.isSupported)
            throw new InvalidOperationException("Mine compatibility dependencies missing");
        var changes=new System.Collections.Generic.List<object>();
        foreach(var renderer in mine.Map_obj.GetComponentsInChildren<SpriteRenderer>(true))
        {
            var original=renderer.sharedMaterial;
            var replacement=renderer.GetComponent<SpriteFill>()!=null?fill:sprite;
            if(original==replacement)continue;
            if(original!=null&&original.shader!=null&&original.shader.isSupported)
                throw new InvalidOperationException("Preserve supported original mine material: "+original.name);
            if(renderer.sprite==null||renderer.sprite.texture==null)
                throw new InvalidOperationException("Original mine sprite missing: "+renderer.name);
            changes.Add(new{renderer=GlobalObjectId.GetGlobalObjectIdSlow(renderer).ToString(),renderer.name,
                original=AssetDatabase.GetAssetPath(original),replacement=AssetDatabase.GetAssetPath(replacement),
                sprite=AssetDatabase.GetAssetPath(renderer.sprite),texture=AssetDatabase.GetAssetPath(renderer.sprite.texture),
                drawMode=renderer.drawMode.ToString()});
            renderer.sharedMaterial=replacement;
        }
        EditorSceneManager.MarkSceneDirty(scene);
        if(!EditorSceneManager.SaveScene(scene))throw new IOException("Mine material scene save failed");
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mine-currency-material-compatibility.json")),
            Newtonsoft.Json.JsonConvert.SerializeObject(new{scene=scene.path,count=changes.Count,changes,
                boundary="Public built-in sprite and existing evidence-constrained red-channel health fill compatibility materials. Original sprite, texture, transform, draw mode and material assets preserved. Original URP shader parity is not claimed."},Newtonsoft.Json.Formatting.Indented));
    }
    public static void RestoreGroundTiling()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.GetActiveScene();
        if(scene.path!=ForestClientEditor.ScenePath)throw new InvalidOperationException("Open playable client first");
        var mine=UnityEngine.Object.FindAnyObjectByType<Mine_manager>(FindObjectsInactive.Include);
        var ground=mine.Map_obj.GetComponentsInChildren<SpriteRenderer>(true).Single(r=>r.name=="Ground (1)");
        var original=AssetDatabase.LoadAssetAtPath<Material>("Assets/Material/Floor 3.mat");
        var shader=Shader.Find("Recovery/MineGroundCompatibility");
        if(original==null||shader==null||!shader.isSupported)throw new InvalidOperationException("Original floor or compatibility shader missing");
        var saved=new SerializedObject(original).FindProperty("m_SavedProperties.m_TexEnvs");
        var texture=Enumerable.Range(0,saved.arraySize).Select(saved.GetArrayElementAtIndex).Single(p=>p.FindPropertyRelative("first").stringValue=="_MainTex");
        var scale=texture.FindPropertyRelative("second.m_Scale").vector2Value;
        var offset=texture.FindPropertyRelative("second.m_Offset").vector2Value;
        if(texture.FindPropertyRelative("second.m_Texture").objectReferenceValue!=null)throw new InvalidOperationException("Original floor uses per-renderer texture");
        const string path="Assets/Recovery/MineGroundCompatibility.mat";
        var material=AssetDatabase.LoadAssetAtPath<Material>(path);
        if(material==null){material=new Material(shader);AssetDatabase.CreateAsset(material,path);}
        material.mainTextureScale=scale;material.mainTextureOffset=offset;
        ground.sharedMaterial=material;EditorUtility.SetDirty(material);AssetDatabase.SaveAssets();
        EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Mine ground scene save failed");
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mine-currency-ground-tiling.json")),
            Newtonsoft.Json.JsonConvert.SerializeObject(new{original=AssetDatabase.GetAssetPath(original),replacement=path,
                renderer=GlobalObjectId.GetGlobalObjectIdSlow(ground).ToString(),sprite=AssetDatabase.GetAssetPath(ground.sprite),
                texture=AssetDatabase.GetAssetPath(ground.sprite.texture),scale=new{x=scale.x,y=scale.y},offset=new{x=offset.x,y=offset.y},
                boundary="Original serialized14x7.48 tiling applied through public UnitySprites adapter. Original URP source/pass parity remains pending."},Newtonsoft.Json.Formatting.Indented));
    }
    public static void RepairOreReferences()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);var client=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>();var target=client.MineMode;
        var input=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredMine.unity",OpenSceneMode.Additive);
        var original=input.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Mine_manager>(true)).Single();
        for(int i=0;i<target.Ore_list.Length;i++)
        {
            var src=original.Ore_list[i];var dst=target.Ore_list[i];
            dst.spriteRenderer=MatchingChild(src.transform,src.spriteRenderer.transform,dst.transform).GetComponent<SpriteRenderer>();
            dst.DustSpawn_trans=MatchingChild(src.transform,src.DustSpawn_trans,dst.transform);
            if(dst.spriteRenderer==null||dst.DustSpawn_trans==null)throw new InvalidOperationException("Original ore reference missing at "+i);
        }
        EditorSceneManager.CloseScene(input,true);SceneManager.SetActiveScene(scene);EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);AssetDatabase.SaveAssets();
    }
    private static Transform MatchingChild(Transform source,Transform reference,Transform target)
    {
        var indices=new System.Collections.Generic.Stack<int>();var cursor=reference;
        while(cursor!=source){if(cursor.parent==null)throw new InvalidOperationException("Original ore reference outside subtree");indices.Push(cursor.GetSiblingIndex());cursor=cursor.parent;}
        while(indices.Count>0)target=target.GetChild(indices.Pop());if(target.name!=reference.name)throw new InvalidOperationException("Original ore subtree mismatch");return target;
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
