using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using UnityEngine;
using UnityEngine.SceneManagement;
using CatGunner.Runtime;

public static class CaptureWaveRadius
{
    static string Dir=>"/Volumes/ZHITAI_1T/IdleCatGunner/art/maps/wave-radius-v1";
    public static object Main()
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||!Application.isPlaying||
            !UnityEditor.SessionState.GetString("CatGunner.Recovery.TestHostFolder","").Contains("WaveRadius"))throw new Exception("Isolated Play required");
        var host=new GameObject("Wave radius capture host");UnityEngine.Object.DontDestroyOnLoad(host);
        var runner=host.AddComponent<PenguinSceneryFacing>();runner.enabled=false;runner.StartCoroutine(Run(host));return "Capturing five substages at one shared camera scale";
    }
    static IEnumerator Run(GameObject host)
    {
        yield return SceneManager.LoadSceneAsync("GameClient");
        var c=GameClient.Instance;
        while(!c.ReadyForPlay||!c.GetComponent<PenguinPlaytestPolish>().Ready)yield return null;
        ForestRuntimeAcceptance.IsGaming=false;c.Tutorial.SetCleared();c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Offline.offlinePanelUI.gameObject.SetActive(false);
        foreach(var cat in c.Team.Cat_list)
        {
            if(cat==null)continue;
            if(cat.TryGetComponent<ForestCombatAcceptance>(out var combat))combat.enabled=false;
            if(cat.TryGetComponent<ForestMovementAcceptance>(out var movement))movement.enabled=false;
            if(cat.rb!=null)cat.rb.linearVelocity=Vector3.zero;
        }
        var main=Camera.main;var go=new GameObject("Wave radius overview camera");var cam=go.AddComponent<Camera>();cam.CopyFrom(main);cam.enabled=false;
        cam.orthographicSize=105;cam.aspect=1;cam.farClipPlane=1000;cam.transform.rotation=main.transform.rotation;
        cam.transform.position=c.Forest.CircularMap.Center-cam.transform.forward*350;
        var rt=new RenderTexture(900,900,24);cam.targetTexture=rt;
        var rows=new List<object>();
        try
        {
            for(int wave=0;wave<5;wave++)
            {
                c.Forest.Stage_Now=0;c.Forest.Level_Now=wave;c.Forest.Map_Batch();yield return null;
                string file="stage-1-"+(wave+1)+".png";cam.Render();var previous=RenderTexture.active;RenderTexture.active=rt;
                var texture=new Texture2D(rt.width,rt.height,TextureFormat.RGB24,false);
                try{texture.ReadPixels(new Rect(0,0,rt.width,rt.height),0,0);texture.Apply();File.WriteAllBytes(Path.Combine(Dir,file),texture.EncodeToPNG());}
                finally{RenderTexture.active=previous;UnityEngine.Object.Destroy(texture);}
                rows.Add(new{stage="1-"+(wave+1),trees=c.Forest.TreeCount_Max,radius=c.Forest.CircularMap.Radius,image=file});
            }
            File.WriteAllText(Path.Combine(Dir,"preview.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
                success=true,source="Actual Unity GPU render, identical overview camera scale for each substage",isolatedSave=c.SaveFolderOverride,
                maximumRadius=100,rows,polarSceneryCount=UnityEngine.Object.FindObjectsByType<Transform>(FindObjectsInactive.Include).Count(t=>t.name.StartsWith("Polar scenery ")),deviceVerified=false},Newtonsoft.Json.Formatting.Indented));
        }
        finally{cam.targetTexture=null;rt.Release();UnityEngine.Object.Destroy(rt);UnityEngine.Object.Destroy(go);UnityEngine.Object.Destroy(host);}
    }
}
