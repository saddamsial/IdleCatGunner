using System;
using System.IO;
using System.Linq;
using System.Collections;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using CatGunner.Recovery;

public static class PreviewCircularStage
{
    static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/maps/circular-stage");
    public static string Prepare()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("Stop Play first.");
        var scene=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");
        var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);
        c.SaveFolderOverride=Path.Combine(Application.temporaryCachePath,"CircularStagePreview-"+Guid.NewGuid().ToString("N"));
        SessionState.SetString("CircularStagePreview.PreviousHost",SessionState.GetString("CatGunner.Recovery.TestHostFolder",string.Empty));
        SessionState.SetBool("CircularStagePreview.Active",true);
        SessionState.SetString("CatGunner.Recovery.TestHostFolder",c.SaveFolderOverride);
        c.Persist=false;EditorUtility.SetDirty(c);
        return "Isolated circular-stage preview prepared. Scene remains unsaved.";
    }
    public static string Capture()
    {
        var c=RecoveryForestClient.Instance;
        if(!Application.isPlaying||c.Persist||string.IsNullOrEmpty(c.SaveFolderOverride)||!(c.SaveFolderOverride.Contains("CircularStagePreview")||c.SaveFolderOverride.Contains("PenguinPreview")))throw new InvalidOperationException("Isolated preview required.");
        Directory.CreateDirectory(Dir);c.StartCoroutine(Run(c));return "Capturing ordinary gameplay and full circular terrain.";
    }
    static IEnumerator Run(RecoveryForestClient c)
    {
        while(!c.ReadyForPlay)yield return null;
        c.DailyLogin.AutoShow=false;c.Tutorial.SetCleared();c.DailyLogin.Close();
        if(c.Offline.offlinePanelUI!=null)c.Offline.offlinePanelUI.gameObject.SetActive(false);
        yield return new WaitForSeconds(3);
        yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,"gameplay.png"));
        ForestRuntimeAcceptance.IsGaming=false;
        c.Forest.Stage_Now=0;c.Forest.Level_Now=4;c.Forest.Map_Batch();
        var original=Camera.main;
        var go=new GameObject("Circular map preview camera");var cam=go.AddComponent<Camera>();cam.CopyFrom(original);
        cam.orthographic=true;cam.orthographicSize=140;cam.aspect=1;cam.transform.rotation=original.transform.rotation;
        var center=c.Forest.Map_obj.transform.position;
        cam.transform.position=center-cam.transform.forward*350;cam.farClipPlane=1000;
        // Camera-only terrain view keeps the native game camera and HUD intact.
        var rt=new RenderTexture(1100,1100,24);cam.targetTexture=rt;cam.Render();
        var previous=RenderTexture.active;RenderTexture.active=rt;
        var tex=new Texture2D(rt.width,rt.height,TextureFormat.RGB24,false);tex.ReadPixels(new Rect(0,0,rt.width,rt.height),0,0);tex.Apply();
        File.WriteAllBytes(Path.Combine(Dir,"overview.png"),tex.EncodeToPNG());RenderTexture.active=previous;
        UnityEngine.Object.Destroy(tex);cam.targetTexture=null;rt.Release();UnityEngine.Object.Destroy(rt);UnityEngine.Object.Destroy(go);
        File.WriteAllText(Path.Combine(Dir,"preview.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{source="Unity GPU Game view and camera render",radius=c.Forest.CircularMap.Radius,mineRadius=c.MineMode.outerRadius,ice=c.Forest.TreeCount_Max,isolatedSave=c.SaveFolderOverride},Newtonsoft.Json.Formatting.Indented));
    }
    public static string Restore()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("Stop Play first.");
        EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");
        if(SessionState.GetBool("CircularStagePreview.Active",false))
        {
            SessionState.SetString("CatGunner.Recovery.TestHostFolder",SessionState.GetString("CircularStagePreview.PreviousHost",string.Empty));
            SessionState.SetBool("CircularStagePreview.Active",false);
        }
        return "Saved circular ordinary stage restored; isolated preview discarded.";
    }
}
