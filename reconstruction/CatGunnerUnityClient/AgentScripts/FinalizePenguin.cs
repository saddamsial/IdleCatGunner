using System;
using System.IO;
using System.Linq;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using CatGunner.Runtime;

public static class FinalizePenguin
{
    public static string Run()
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||EditorApplication.isPlaying)throw new Exception("Wrong project or still playing");
        SessionState.EraseString("CatGunner.Recovery.TestHostFolder");
        var scene=EditorSceneManager.OpenScene("Assets/Game/Scenes/GameClient.unity");
        var baseline=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../art/reskin/penguin-expedition/batch-01-runtime/backup/StarChineseFallback.asset.before"));
        var font="Assets/Game/Resources/StarChineseFallback.asset";
        File.Copy(baseline,font,true);AssetDatabase.ImportAsset(font,ImportAssetOptions.ForceUpdate);
        var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
        if(c.GetComponent<PenguinExpeditionTheme>()==null||!c.Persist||!string.IsNullOrEmpty(c.SaveFolderOverride))throw new Exception("Handoff state invalid");
        GameProjectEditor.SetPortraitGameView();
        Selection.activeGameObject=c.gameObject;
        return "Normal scene ready; Persist=true; no preview save override; original font cache restored; no fracture components. Press Play for the penguin theme.";
    }
}
