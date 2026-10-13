using System;
using System.IO;
using System.Linq;
using System.Collections;
using System.Reflection;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEditor;
using UnityEditor.SceneManagement;
using CatGunner.Recovery;

public static class PreviewSnowStage
{
    static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/maps/circular-stage-v2");
    public static string Prepare()
    {
        if(Application.isPlaying)throw new InvalidOperationException("Stop Play first.");
        EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");
        var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);
        string folder=Path.Combine(Application.temporaryCachePath,"SnowStagePreview-"+Guid.NewGuid().ToString("N"));
        SessionState.SetString("CatGunner.Recovery.TestHostFolder",folder);c.Persist=false;EditorUtility.SetDirty(c);
        return "Isolated snow and footprint preview prepared; no saved scene changes.";
    }
    public static string Capture()
    {
        var c=RecoveryForestClient.Instance;
        if(!Application.isPlaying||c.Persist||c.SaveFolderOverride==null||!c.SaveFolderOverride.Contains("SnowStagePreview"))throw new InvalidOperationException("Isolated preview required.");
        Directory.CreateDirectory(Dir);c.StartCoroutine(Run(c));return "Capturing snow arena and joystick-driven footprint fade cycle.";
    }
    static void Render(Camera cam,string path)
    {
        cam.Render();var previous=RenderTexture.active;RenderTexture.active=cam.targetTexture;
        var texture=new Texture2D(cam.targetTexture.width,cam.targetTexture.height,TextureFormat.RGB24,false);
        texture.ReadPixels(new Rect(0,0,texture.width,texture.height),0,0);texture.Apply();File.WriteAllBytes(path,texture.EncodeToPNG());
        RenderTexture.active=previous;UnityEngine.Object.Destroy(texture);
    }
    static IEnumerator Run(RecoveryForestClient c)
    {
        while(!c.ReadyForPlay)yield return null;
        c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Tutorial.SetCleared();
        if(c.Offline.offlinePanelUI!=null)c.Offline.offlinePanelUI.gameObject.SetActive(false);
        yield return new WaitForSeconds(1.5f);yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,"gameplay.png"));
        ForestRuntimeAcceptance.IsGaming=false;c.Forest.Stage_Now=0;c.Forest.Level_Now=4;c.Forest.Map_Batch();
        var original=Camera.main;var go=new GameObject("Snow preview camera");var cam=go.AddComponent<Camera>();cam.CopyFrom(original);cam.enabled=false;
        cam.orthographic=true;cam.aspect=1;cam.orthographicSize=115;cam.farClipPlane=1000;cam.transform.rotation=original.transform.rotation;
        var center=c.Forest.CircularMap.Center;cam.transform.position=center-cam.transform.forward*350;
        var rt=new RenderTexture(900,900,24);cam.targetTexture=rt;
        Render(cam,Path.Combine(Dir,"overview.png"));
        c.GameStart();c.Hero.AutoMove=false;
        foreach(var cat in c.Team.Cat_list)
        {var combat=cat.GetComponent<ForestCombatAcceptance>();if(combat!=null)combat.EnableTargeting=false;}
        c.Hero.Warp(center);
        cam.orthographicSize=11;cam.transform.position=center+cam.transform.right*4-cam.transform.forward*80;
        var joystick=c.Hero.joystick;
        var pointer=new PointerEventData(EventSystem.current){position=new Vector2(Screen.width*.5f,Screen.height*.5f)};
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.pointerDownHandler);
        var background=(RectTransform)typeof(Joystick).GetField("background",BindingFlags.Instance|BindingFlags.NonPublic).GetValue(joystick);
        var canvas=joystick.GetComponentInParent<Canvas>();
        pointer.position=RectTransformUtility.WorldToScreenPoint(null,background.position)+Vector2.right*background.sizeDelta.x*canvas.scaleFactor*.22f;
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.dragHandler);
        for(int i=0;i<34;i++)
        {
            if(i==8)ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.pointerUpHandler);
            yield return new WaitForEndOfFrame();Render(cam,Path.Combine(Dir,"footstep-"+i.ToString("00")+".png"));
            yield return new WaitForSeconds(.2f);
        }
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.pointerUpHandler);
        File.WriteAllText(Path.Combine(Dir,"preview.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
            source="Unity GPU Game view, terrain camera and continuous footprint camera frames",radius=c.Forest.CircularMap.Radius,
            mineRadius=c.MineMode.outerRadius,ice=c.Forest.TreeCount_Max,
            footprintLifetime=c.Forest.GetComponent<SnowFootprintTrail>().Lifetime,
            fixture="Isolated profile, overview at stage 0 wave 4; joystick pointer down/drag/up for 1.6 seconds, then idle through the footprint fade; attacks paused only for close-up.",
            isolatedSave=c.SaveFolderOverride},Newtonsoft.Json.Formatting.Indented));
        cam.targetTexture=null;rt.Release();UnityEngine.Object.Destroy(rt);UnityEngine.Object.Destroy(go);
    }
    public static string Restore()
    {
        if(Application.isPlaying)throw new InvalidOperationException("Stop Play first.");
        EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");
        SessionState.EraseString("CatGunner.Recovery.TestHostFolder");
        return "Saved snow arena restored; temporary test-host override cleared.";
    }
}
