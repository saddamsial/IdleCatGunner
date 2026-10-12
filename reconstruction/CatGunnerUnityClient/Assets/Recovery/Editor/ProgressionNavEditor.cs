using System;
using System.Linq;
using UnityEditor;
using UnityEditor.Events;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using CatGunner.Recovery;
public static class ProgressionNavEditor
{
    public static void Integrate()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);var client=UnityEngine.Object.FindFirstObjectByType<RecoveryForestClient>();
        var canonical=client.Slider.GetComponentInParent<Canvas>();
        if(canonical.GetComponentsInChildren<Button>(true).Any(b=>b.name.Trim()=="Pet_Btn"))throw new InvalidOperationException("Progression navigation already restored");
        var slice=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredProgressionNav.unity",OpenSceneMode.Additive);
        var map=slice.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToDictionary(g=>(long)GlobalObjectId.GetGlobalObjectIdSlow(g).targetObjectId);
        foreach(var root in slice.GetRootGameObjects())SceneManager.MoveGameObjectToScene(root,scene);EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
        ProgressionClientEditor.Merge(canonical.transform,map[866].transform);UnityEngine.Object.DestroyImmediate(map[866]);
        Bind(map[1777].GetComponent<Button>(),client.PetUI.Panel_Open);Bind(map[1482].GetComponent<Button>(),client.RebirthUI.Panel_Open);Bind(map[492].GetComponent<Button>(),client.MissionUI.Panel_Open);
        RecoveryEditor.RepairSettingsSlice();RecoveryEditor.RebuildSceneDynamicFonts();
        EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);AssetDatabase.SaveAssets();
    }
    private static void Bind(Button button,UnityEngine.Events.UnityAction open)
    {while(button.onClick.GetPersistentEventCount()>0)UnityEventTools.RemovePersistentListener(button.onClick,0);UnityEventTools.AddPersistentListener(button.onClick,open);button.interactable=true;}
}
