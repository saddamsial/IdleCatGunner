using System;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
public static class SkinClientEditor
{
    public static void ScheduleIntegrate()=>EditorApplication.delayCall+=Integrate;
    public static void Integrate()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);
        var client=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>();
        if(client.Skins!=null)throw new InvalidOperationException("Skin already integrated; preserve scene");
        var canvas=client.Slider.GetComponentInParent<Canvas>();
        var slice=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredSkin.unity",OpenSceneMode.Additive);
        var objects=slice.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();
        var map=objects.ToDictionary(g=>(long)GlobalObjectId.GetGlobalObjectIdSlow(g).targetObjectId);
        var skin=map[480].GetComponent<Skin_manager>();
        foreach(var root in slice.GetRootGameObjects())SceneManager.MoveGameObjectToScene(root,scene);
        EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
        Merge(canvas.transform,map[866].transform);UnityEngine.Object.DestroyImmediate(map[866]);client.Skins=skin;
        var rendererMap=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<SpriteRenderer>(true)).ToDictionary(r=>(long)GlobalObjectId.GetGlobalObjectIdSlow(r).targetObjectId);
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var refs=Newtonsoft.Json.Linq.JObject.Parse(File.ReadAllText(Path.Combine(reports,"original-skin-client-contract.json")))["cat_renderers"];
        foreach(var cat in client.Team.Cat_list)
        {
            long id=(long)GlobalObjectId.GetGlobalObjectIdSlow(cat.gameObject).targetObjectId;
            var row=refs.Single(r=>(long)r["gameObject"]==id);
            cat.skin_spriteRenderer=rendererMap[(long)row["skin_renderer"]];cat.hand_spriteRenderer=rendererMap[(long)row["hand_renderer"]];EditorUtility.SetDirty(cat);
        }
        if(skin.Skin_list.Length!=25||skin.Skin_sprites.Length!=25||skin.Skin_Bone_sprites.Length!=25||skin.Skin_Colors.Length!=25||skin.Skin_item_list.Length!=25||skin.Skin_sprites.Any(s=>s==null)||skin.Skin_Bone_sprites.Any(s=>s==null))throw new InvalidOperationException("Original skin resources incomplete");
        skin.Skin_List_UI.SetActive(false);skin.skin_info_ui.gameObject.SetActive(false);
        // Reuse the original shared font assets already rebuilt by prior recovery.
        // The star fallback embeds its atlas and must not enter the original PNG rebuilder.
        RecoveryEditor.RepairSettingsSlice();
        FinalizeIntegratedScene();
    }
    public static void FinalizeIntegratedScene()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.GetActiveScene();var client=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>();var skin=client.Skins;
        if(skin==null||skin.Skin_item_list.Length!=25||client.Team.Cat_list.Any(c=>c.skin_spriteRenderer==null||c.hand_spriteRenderer==null))throw new InvalidOperationException("Skin integration incomplete");
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var shader=Shader.Find("TextMeshPro/Sprite");
        foreach(var text in skin.GetComponentsInChildren<TMPro.TMP_Text>(true))if(text.spriteAsset!=null){text.spriteAsset.material.shader=shader;text.spriteAsset.material.SetTexture("_MainTex",text.spriteAsset.spriteSheet);EditorUtility.SetDirty(text.spriteAsset.material);}
        int missing=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)));
        if(missing!=0)throw new InvalidOperationException("Missing scene script after skin integration");
        EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Skin scene save failed");AssetDatabase.SaveAssets();
        File.WriteAllText(Path.Combine(reports,"skin-client-scene-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new {scene=scene.path,sourceObjects=271,gameObjects=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Length),canvasCount=UnityEngine.Object.FindObjectsByType<Canvas>(FindObjectsInactive.Include).Length,missingScripts=missing,skinCount=25,ordinaryCats=client.Team.Cat_list.Length,originalRendererIds=client.Team.Cat_list.Select(c=>new {cat=GlobalObjectId.GetGlobalObjectIdSlow(c).targetObjectId,body=GlobalObjectId.GetGlobalObjectIdSlow(c.skin_spriteRenderer).targetObjectId,hand=GlobalObjectId.GetGlobalObjectIdSlow(c.hand_spriteRenderer).targetObjectId}).ToArray(),runtimeValidation="pending"},Newtonsoft.Json.Formatting.Indented));
    }
    private static void Merge(Transform target,Transform source)
    {
        foreach(var child in source.Cast<Transform>().ToArray())
        {
            var matches=target.Cast<Transform>().Where(t=>t.name==child.name).ToArray();if(matches.Length>1)throw new InvalidOperationException("Ambiguous original ancestor "+child.name);
            if(matches.Length==1){if(!new[]{"SafeArea","Main_UI","Btn_list","Left_Menu","Right_Menu","UI_manager","Contents_UI","Gun_manager"}.Contains(child.name))throw new InvalidOperationException("Unexpected overlapping branch "+child.name);Merge(matches[0],child);UnityEngine.Object.DestroyImmediate(child.gameObject);}
            else{var rect=child as RectTransform;if(rect==null){child.SetParent(target,false);continue;}var min=rect.anchorMin;var max=rect.anchorMax;var pivot=rect.pivot;var size=rect.sizeDelta;var pos=rect.anchoredPosition3D;var scale=rect.localScale;var rotation=rect.localRotation;rect.SetParent(target,false);rect.anchorMin=min;rect.anchorMax=max;rect.pivot=pivot;rect.sizeDelta=size;rect.anchoredPosition3D=pos;rect.localScale=scale;rect.localRotation=rotation;}
        }
    }
}
