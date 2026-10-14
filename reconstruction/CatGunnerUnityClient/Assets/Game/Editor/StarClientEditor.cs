using System;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
public static class StarClientEditor
{
    public static void Integrate()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);
        var client=UnityEngine.Object.FindAnyObjectByType<GameClient>();
        if(client.StarUpgrades!=null)throw new InvalidOperationException("Stars already integrated; preserve scene");
        var canvas=client.Slider.GetComponentInParent<Canvas>();
        var slice=EditorSceneManager.OpenScene("Assets/Game/Scenes/Star.unity",OpenSceneMode.Additive);
        var objects=slice.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();
        var map=objects.ToDictionary(g=>(long)GlobalObjectId.GetGlobalObjectIdSlow(g).targetObjectId);
        var stars=map[1201].GetComponent<StarUpgrade_manager>();
        foreach(var root in slice.GetRootGameObjects())SceneManager.MoveGameObjectToScene(root,scene);
        EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
        Merge(canvas.transform,map[866].transform);UnityEngine.Object.DestroyImmediate(map[866]);
        client.StarUpgrades=stars;
        stars.popup.FeedbackAlert=map[12041].GetComponent<Alert>();
        stars.popup.success_particle=map[237].AddComponent<StarSuccessFeedback>();
        stars.popup.success_particle.Button=stars.popup.Upgrade_Btn_img;
        foreach(var b in stars.popup.GetComponentsInChildren<Button>(true).Where(b=>b.name=="Close_Btn"))Bind(b,stars.popup.Close);
        stars.popup.gameObject.SetActive(false);stars.popup.FeedbackAlert.gameObject.SetActive(false);
        GameProjectEditor.RepairSettingsSlice();GameProjectEditor.RebuildSceneDynamicFonts();
        if(stars.SlotCount!=3||stars.popup.SlotNum_txt==null||stars.popup.Upgrade_Btn_img==null||stars.popup.StarGem_txt==null||stars.popup.UpgradeBtn_Colors.Length!=2||stars.popup.UpgradePrice_Colors.Length!=2||stars.popup.FeedbackAlert.txt==null)
            throw new InvalidOperationException("Original star popup dependencies incomplete");
        int missing=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)));
        if(missing!=0)throw new InvalidOperationException("Star integration has missing scripts");
        EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Star scene save failed");AssetDatabase.SaveAssets();
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,"star-client-scene-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new {
            scene=scene.path,sourceObjects=objects.Length,gameObjects=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Length),canvasCount=UnityEngine.Object.FindObjectsByType<Canvas>(FindObjectsInactive.Include).Length,missingScripts=missing,
            starSlots=stars.SlotCount,originalAlertAnimator=stars.popup.FeedbackAlert.GetComponent<Animator>()!=null,localSuccessFeedback="Original button pulse adapter; commercial ParticleImage pending",runtimeValidation="pending"},Newtonsoft.Json.Formatting.Indented));
    }
    public static void RepairDisplay()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);
        var popup=UnityEngine.Object.FindAnyObjectByType<StarUpgrade_manager>().popup;
        const string fontPath="Assets/Game/Resources/StarChineseFallback.asset";
        var fallback=AssetDatabase.LoadAssetAtPath<TMPro.TMP_FontAsset>(fontPath);
        if(fallback==null)
        {
            var source=AssetDatabase.LoadAssetAtPath<Font>("Assets/Font/NotoSansSC-Bold.ttf");
            if(source==null)throw new InvalidOperationException("Original Chinese face missing");
            fallback=TMPro.TMP_FontAsset.CreateFontAsset(source);fallback.name="StarChineseFallback";
            string glyphs="强化槽位强化成功！强化失败..强化石不足123";
            if(!fallback.TryAddCharacters(glyphs,out string missing))throw new InvalidOperationException("Original Chinese face misses "+missing);
            AssetDatabase.CreateAsset(fallback,fontPath);AssetDatabase.AddObjectToAsset(fallback.material,fallback);
            foreach(var texture in fallback.atlasTextures)AssetDatabase.AddObjectToAsset(texture,fallback);
        }
        fallback.material.shader=Shader.Find("TextMeshPro/Distance Field");fallback.material.SetTexture("_MainTex",fallback.atlasTexture);EditorUtility.SetDirty(fallback.material);
        foreach(var font in new[]{popup.SlotNum_txt.font,popup.FeedbackAlert.txt.font}.Distinct())
        {
            if(font.fallbackFontAssetTable==null)font.fallbackFontAssetTable=new System.Collections.Generic.List<TMPro.TMP_FontAsset>();
            if(!font.fallbackFontAssetTable.Contains(fallback))font.fallbackFontAssetTable.Add(fallback);
            EditorUtility.SetDirty(font);
        }
        // TMP fallback submesh inherited an incompatible original outline variant.
        // Use the same original-package Chinese face directly for this dynamic title.
        popup.SlotNum_txt.font=fallback;popup.SlotNum_txt.fontSharedMaterial=fallback.material;
        var shader=Shader.Find("TextMeshPro/Sprite");if(shader==null)throw new InvalidOperationException("Official TMP sprite shader missing");
        var sprites=UnityEngine.Object.FindObjectsByType<TMPro.TMP_Text>(FindObjectsInactive.Include).Select(t=>t.spriteAsset).Where(s=>s!=null).Distinct().ToArray();
        foreach(var sprite in sprites)
        {
            if(sprite.spriteSheet==null)throw new InvalidOperationException("Original currency texture missing");
            sprite.material.shader=shader;sprite.material.SetTexture("_MainTex",sprite.spriteSheet);EditorUtility.SetDirty(sprite.material);
        }
        AssetDatabase.SaveAssets();EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,"star-display-compatibility.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new {fontPath,sourceFace="Original package NotoSansSC-Bold.ttf",fallbackGlyphs=fallback.characterTable.Count,spriteAssets=sprites.Select(s=>AssetDatabase.GetAssetPath(s)).ToArray(),shader=shader.name,scope="Original textures and font faces; local TMP fallback/material compatibility, full localization pending"},Newtonsoft.Json.Formatting.Indented));
    }
    private static void Bind(Button button,UnityEngine.Events.UnityAction action)
    {while(button.onClick.GetPersistentEventCount()>0)UnityEditor.Events.UnityEventTools.RemovePersistentListener(button.onClick,0);UnityEditor.Events.UnityEventTools.AddPersistentListener(button.onClick,action);button.interactable=true;}
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
