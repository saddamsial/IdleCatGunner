using System;
using System.IO;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEditor;
using UnityEditor.SceneManagement;
using CatGunner.Runtime;

public static class PreviewRaisedSnowStage
{
    static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/maps/raised-snow-stage");
    public static string Prepare()
    {
        if(Application.isPlaying)throw new InvalidOperationException("Stop Play first.");
        EditorSceneManager.OpenScene("Assets/Game/Scenes/GameClient.unity");
        var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
        SessionState.SetString("CatGunner.Recovery.TestHostFolder",Path.Combine(Application.temporaryCachePath,"RaisedSnowPreview-"+Guid.NewGuid().ToString("N")));
        c.Persist=false;EditorUtility.SetDirty(c);
        return "Isolated raised snow preview prepared; saved scene unchanged.";
    }
    public static string Capture()
    {
        var c=GameClient.Instance;
        if(!Application.isPlaying||c.Persist||c.SaveFolderOverride==null||!c.SaveFolderOverride.Contains("RaisedSnowPreview"))throw new InvalidOperationException("Isolated preview required.");
        Directory.CreateDirectory(Dir);c.StartCoroutine(Run(c));return "Recording actual bounded camera and joystick movement.";
    }
    static void Render(Camera cam,string path)
    {
        cam.Render();var previous=RenderTexture.active;RenderTexture.active=cam.targetTexture;
        var texture=new Texture2D(cam.targetTexture.width,cam.targetTexture.height,TextureFormat.RGB24,false);
        texture.ReadPixels(new Rect(0,0,texture.width,texture.height),0,0);texture.Apply();File.WriteAllBytes(path,texture.EncodeToPNG());
        RenderTexture.active=previous;UnityEngine.Object.Destroy(texture);
    }
    static IEnumerator Run(GameClient c)
    {
        while(!c.ReadyForPlay)yield return null;
        c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Tutorial.SetCleared();
        if(c.Offline.offlinePanelUI!=null)c.Offline.offlinePanelUI.gameObject.SetActive(false);
        yield return new WaitForSeconds(1);yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,"gameplay.png"));
        ForestRuntimeAcceptance.IsGaming=false;c.Forest.Stage_Now=0;c.Forest.Level_Now=4;c.Forest.Map_Batch();
        var main=Camera.main;var center=c.Forest.CircularMap.Center;
        var go=new GameObject("Raised snow overview camera");var overview=go.AddComponent<Camera>();overview.CopyFrom(main);overview.enabled=false;
        overview.aspect=1;overview.orthographicSize=115;overview.farClipPlane=1000;overview.transform.rotation=main.transform.rotation;
        overview.transform.position=center-overview.transform.forward*350;
        var rt=new RenderTexture(900,900,24);overview.targetTexture=rt;Render(overview,Path.Combine(Dir,"overview.png"));
        overview.targetTexture=null;rt.Release();UnityEngine.Object.Destroy(rt);UnityEngine.Object.Destroy(go);
        c.GameStart();c.Hero.AutoMove=false;
        foreach(var cat in c.Team.Cat_list)
        {var combat=cat.GetComponent<ForestCombatAcceptance>();if(combat!=null)combat.EnableTargeting=false;}
        var direction=main.transform.right;direction.y=0;direction.Normalize();c.Hero.Warp(center+direction*78);
        yield return new WaitForSeconds(.4f);
        var joystick=c.Hero.joystick;
        var pointer=new PointerEventData(EventSystem.current){position=new Vector2(Screen.width*.5f,Screen.height*.5f)};
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.pointerDownHandler);
        var background=(RectTransform)typeof(Joystick).GetField("background",BindingFlags.Instance|BindingFlags.NonPublic).GetValue(joystick);
        var canvas=joystick.GetComponentInParent<Canvas>();
        pointer.position=RectTransformUtility.WorldToScreenPoint(null,background.position)+Vector2.right*background.sizeDelta.x*canvas.scaleFactor*.6f;
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.dragHandler);
        var positions=new List<object>();var rig=main.GetComponentInParent<Follow>();
        for(int i=0;i<44;i++)
        {
            if(i==22)ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.pointerUpHandler);
            yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,"camera-"+i.ToString("00")+".png"));
            positions.Add(new{frame=i,hero=c.Hero.transform.position.ToString("F3"),radius=Vector3.Distance(c.Hero.transform.position,center),cameraRig=rig.transform.position.ToString("F3"),viewport=main.WorldToViewportPoint(c.Hero.transform.position+Vector3.up*4.5f).ToString("F3")});
            yield return new WaitForSeconds(.15f);
        }
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.pointerUpHandler);
        File.Copy(Path.Combine(Dir,"camera-20.png"),Path.Combine(Dir,"edge-gameplay.png"),true);
        File.WriteAllText(Path.Combine(Dir,"preview.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
            source="Unity GPU Game view plus separate overview camera",radius=c.Forest.CircularMap.Radius,playerRadius=c.Forest.CircularMap.Radius-c.Forest.CircularMap.MovementPadding,
            height=c.Forest.GetComponent<CircularSnowTerrain>().WallHeight,footprintLifetime=c.Forest.GetComponent<SnowFootprintTrail>().Lifetime,
            fixture="Isolated profile. Overview at wave 4. Actual game camera and native joystick pointer events: outward motion from radius 78 for 3.3 seconds, then release and footprint fade. Targeting disabled only during camera recording.",
            isolatedSave=c.SaveFolderOverride,positions},Newtonsoft.Json.Formatting.Indented));
    }
    public static string Restore()
    {
        if(Application.isPlaying)throw new InvalidOperationException("Stop Play first.");
        EditorSceneManager.OpenScene("Assets/Game/Scenes/GameClient.unity");SessionState.EraseString("CatGunner.Recovery.TestHostFolder");
        return "Saved raised snow scene restored and temporary test-host override cleared.";
    }
}
