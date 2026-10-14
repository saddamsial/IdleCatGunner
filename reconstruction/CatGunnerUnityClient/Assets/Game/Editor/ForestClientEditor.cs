using System;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public static class ForestClientEditor
{
    public const string ScenePath="Assets/Game/Scenes/GameClient.unity";
    [MenuItem("Game/Open playable forest client")]
    public static void Open()=>EditorSceneManager.OpenScene(ScenePath);
    public static void Create()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("Create only in EditMode");
        if(File.Exists(ScenePath))throw new InvalidOperationException("Preserve existing recovered client scene");
        var scene=EditorSceneManager.OpenScene("Assets/Game/Scenes/Forest.unity");
        if(!EditorSceneManager.SaveScene(scene,ScenePath,true))throw new IOException("Client scene copy failed");
        scene=EditorSceneManager.OpenScene(ScenePath);
        foreach(var bridge in UnityEngine.Object.FindObjectsByType<ForestRuntimeAcceptance>(FindObjectsInactive.Include))UnityEngine.Object.DestroyImmediate(bridge);
        var hud=EditorSceneManager.OpenScene("Assets/Game/Scenes/ForestHUD.unity",OpenSceneMode.Additive);
        var objects=hud.GetRootGameObjects().SelectMany(root=>root.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();
        var map=objects.ToDictionary(go=>(long)GlobalObjectId.GetGlobalObjectIdSlow(go).targetObjectId);
        foreach(var root in hud.GetRootGameObjects())SceneManager.MoveGameObjectToScene(root,scene);
        EditorSceneManager.CloseScene(hud,true);SceneManager.SetActiveScene(scene);
        var manager=UnityEngine.Object.FindFirstObjectByType<Tree_manager>();
        var cat=UnityEngine.Object.FindObjectsByType<Cat>(FindObjectsInactive.Include).Single(c=>!c.is_AI);
        var client=manager.gameObject.AddComponent<GameClient>();
        client.Forest=manager;client.Hero=cat;
        client.Slider=map[947].GetComponent<GameSlider>();
        client.WinUI=map[1095];client.FailUI=map[746];client.LoadingUI=map[308];
        client.UpgradePanels=objects.SelectMany(go=>go.GetComponents<Upgrade_Ingame>()).OrderBy(p=>p.type).ToArray();
        client.Currency=map[36876].GetComponent<Currency>();
        client.UpgradeAnimations=new[]{map[38821],map[5572],map[5571]};
        manager.gameSlider=client.Slider;manager.GameWin_UI=client.WinUI;manager.GameFail_UI=client.FailUI;manager.Loading_obj=client.LoadingUI;
        manager.GameSkip_UI=map[755];manager.SpeedBuff_obj=map[1372];
        foreach(var go in new[]{client.WinUI,client.FailUI,client.LoadingUI,manager.GameSkip_UI,manager.SpeedBuff_obj}.Concat(client.UpgradeAnimations))go.SetActive(false);
        if(client.UpgradePanels.Length!=3 || client.UpgradePanels.Any(p=>p.Fill==null||p.Lv_txt==null||p.Price_txt==null||p.Value_txt==null))throw new InvalidOperationException("Original upgrade reference incomplete");
        // Keep exact original persistent Touch callbacks; no duplicate listener is added.
        foreach(var panel in client.UpgradePanels)
        {
            var button=panel.GetComponent<Button>();
            if(button==null || button.onClick.GetPersistentEventCount()!=1 || button.onClick.GetPersistentTarget(0)!=panel || button.onClick.GetPersistentMethodName(0)!="Touch")
                throw new InvalidOperationException("Original upgrade button route incomplete: "+panel.type);
        }
        if(UnityEngine.Object.FindAnyObjectByType<Sound_manager>()==null)
        {
            var audioScene=EditorSceneManager.OpenScene("Assets/Game/Scenes/Settings.unity",OpenSceneMode.Additive);
            var original=audioScene.GetRootGameObjects().SelectMany(go=>go.GetComponentsInChildren<Sound_manager>(true)).Single();
            var copy=UnityEngine.Object.Instantiate(original.gameObject);copy.name=original.name;
            SceneManager.MoveGameObjectToScene(copy,scene);EditorSceneManager.CloseScene(audioScene,true);
        }
        SceneManager.SetActiveScene(scene);
        GameProjectEditor.RepairSettingsSlice();
        GameProjectEditor.RebuildSceneDynamicFonts();
        EnsureInputModule();
        EditorSceneManager.MarkSceneDirty(scene);
        if(!EditorSceneManager.SaveScene(scene))throw new IOException("Client scene save failed");
        EditorBuildSettings.scenes=new[]{new EditorBuildSettingsScene(ScenePath,true)}.Concat(EditorBuildSettings.scenes.Where(s=>s.path!=ScenePath)).ToArray();
        AssetDatabase.SaveAssets();GameProjectEditor.SetPortraitGameView();
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,"forest-client-scene-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
            scene=scene.path,original_hud_objects=objects.Length,upgrade_panels=client.UpgradePanels.Select(p=>new{p.name,p.type,button_callback="original persistent Touch"}),
            client_objects=scene.GetRootGameObjects().Sum(go=>go.GetComponentsInChildren<Transform>(true).Length),
            original_forest_scene_preserved=true,initial_equipment=new[]{0,-1,-1},local_save="GameClient-vc257/NoSaveFile.json",
            runtime_validation="pending",full_client_restored=false},Newtonsoft.Json.Formatting.Indented));
    }
    public static void ScheduleCreate()=>EditorApplication.delayCall+=Create;
    public static void EnsureInputModule()
    {
        var systems=UnityEngine.Object.FindObjectsByType<UnityEngine.EventSystems.EventSystem>(FindObjectsInactive.Include);
        if(systems.Length!=1)throw new InvalidOperationException("Playable scene requires one EventSystem");
        // This project uses activeInputHandler=0. Preserve any existing module.
        if(systems[0].GetComponents<UnityEngine.EventSystems.BaseInputModule>().Length==0)
            systems[0].gameObject.AddComponent<UnityEngine.EventSystems.StandaloneInputModule>();
    }
    public static void RepairProgressReferences()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("Repair only in EditMode");
        var scene=EditorSceneManager.OpenScene(ScenePath);
        var client=UnityEngine.Object.FindFirstObjectByType<GameClient>();
        if(client.Slider.Time_Fill!=null || client.Slider.Value_Fill!=null)throw new InvalidOperationException("Progress references already present");
        var progress=EditorSceneManager.OpenScene("Assets/Game/Scenes/ForestProgress.unity",OpenSceneMode.Additive);
        var objects=progress.GetRootGameObjects().SelectMany(root=>root.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();
        var map=objects.ToDictionary(go=>(long)GlobalObjectId.GetGlobalObjectIdSlow(go).targetObjectId);
        foreach(var root in progress.GetRootGameObjects())SceneManager.MoveGameObjectToScene(root,scene);
        EditorSceneManager.CloseScene(progress,true);SceneManager.SetActiveScene(scene);
        client.Slider.Value_Fill=map[795].GetComponent<SlicedFilledImage>();client.Slider.Time_Fill=map[57].GetComponent<SlicedFilledImage>();
        client.Slider.Value_txt=map[1290].GetComponent<TMPro.TextMeshProUGUI>();
        if(client.Slider.Value_Fill==null || client.Slider.Time_Fill==null || client.Slider.Value_txt==null)throw new InvalidOperationException("Original progress dependency incomplete");
        GameProjectEditor.RepairSettingsSlice();GameProjectEditor.RebuildSceneDynamicFonts();
        EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);
        var paths=AssetDatabase.FindAssets("t:Scene",new[]{"Assets/Game/Scenes"}).Select(AssetDatabase.GUIDToAssetPath);
        EditorBuildSettings.scenes=new[]{ScenePath}.Concat(paths.Where(p=>p!=ScenePath)).Select(p=>new EditorBuildSettingsScene(p,true)).ToArray();
        AssetDatabase.SaveAssets();
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,"forest-client-progress-reference-repair.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
            scene=scene.path,original_roots=new[]{795,57,1290},time_fill_component=123014,value_fill_component=123917,value_text_component=117282,
            supplementary_objects=objects.Length,build_scene_paths=EditorBuildSettings.scenes.Select(s=>s.path)},Newtonsoft.Json.Formatting.Indented));
    }
    public static void MergeSharedOriginalCanvas()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("Merge only in EditMode");
        var scene=EditorSceneManager.OpenScene(ScenePath);
        var client=UnityEngine.Object.FindFirstObjectByType<GameClient>();
        var canonical=client.Slider.GetComponentInParent<Canvas>();
        var canvases=scene.GetRootGameObjects().SelectMany(go=>go.GetComponentsInChildren<Canvas>(true)).ToArray();
        if(canvases.Length!=3)throw new InvalidOperationException("Expected the three isolated copies of original Canvas866");
        var panels=client.UpgradePanels.Select(p=>p.transform as RectTransform).ToArray();
        Canvas.ForceUpdateCanvases();
        var positions=panels.Select(p=>RectTransformUtility.WorldToScreenPoint(null,p.TransformPoint(p.rect.center))).ToArray();
        foreach(var canvas in canvases.Where(c=>c!=canonical))
        {
            MergeAncestors(canonical.transform,canvas.transform);
            UnityEngine.Object.DestroyImmediate(canvas.gameObject);
        }
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var orders=Newtonsoft.Json.Linq.JArray.Parse(File.ReadAllText(Path.Combine(reports,"original-client-ui-sibling-order.json")));
        foreach(var order in orders)
        {
            var parent=canonical.GetComponentsInChildren<Transform>(true).SingleOrDefault(t=>t.name==(string)order["parent"]);
            if(parent==null)continue;
            var rank=order["children"].ToDictionary(x=>(string)x["name"],x=>(int)x["sibling"]);
            foreach(var child in parent.Cast<Transform>().OrderBy(t=>rank.TryGetValue(t.name,out int i)?i:int.MaxValue).ToArray())child.SetAsLastSibling();
        }
        Canvas.ForceUpdateCanvases();
        var after=panels.Select(p=>RectTransformUtility.WorldToScreenPoint(null,p.TransformPoint(p.rect.center))).ToArray();
        if(positions.Zip(after,(a,b)=>Vector2.Distance(a,b)).Any(d=>d>.01f))throw new InvalidOperationException("Merge changed original panel positions");
        EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);AssetDatabase.SaveAssets();
        File.WriteAllText(Path.Combine(reports,"forest-client-canvas-merge.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
            scene=scene.path,canvas_count_before=3,canvas_count_after=1,original_canvas=866,original_safearea=415,
            original_safearea_order="Floating Joystick(0), Main_UI(1), Ingame(7)",
            original_anchors_and_panel_positions_preserved=true,
            game_objects=scene.GetRootGameObjects().Sum(go=>go.GetComponentsInChildren<Transform>(true).Length),
            reason="Separate acceptance-scene Canvas copies gave the input Canvas higher renderOrder and blocked upgrade touches. Restore shared original ancestry and sibling order.",
            runtime_raycast_validation="pending"},Newtonsoft.Json.Formatting.Indented));
    }
    private static void MergeAncestors(Transform target,Transform source)
    {
        foreach(var child in source.Cast<Transform>().ToArray())
        {
            var matches=target.Cast<Transform>().Where(t=>t.name==child.name).ToArray();
            if(matches.Length>1)throw new InvalidOperationException("Ambiguous original ancestor "+child.name);
            if(matches.Length==1)
            {
                if(child.name!="SafeArea" && child.name!="Main_UI")throw new InvalidOperationException("Unexpected overlapping branch "+child.name);
                MergeAncestors(matches[0],child);UnityEngine.Object.DestroyImmediate(child.gameObject);
            }
            else
            {
                var rect=child as RectTransform;
                if(rect==null){child.SetParent(target,false);continue;}
                var min=rect.anchorMin;var max=rect.anchorMax;var pivot=rect.pivot;var size=rect.sizeDelta;var position=rect.anchoredPosition3D;
                var scale=rect.localScale;var rotation=rect.localRotation;
                rect.SetParent(target,false);rect.anchorMin=min;rect.anchorMax=max;rect.pivot=pivot;rect.sizeDelta=size;
                rect.anchoredPosition3D=position;rect.localScale=scale;rect.localRotation=rotation;
            }
        }
    }
}
