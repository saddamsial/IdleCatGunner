using System;
using System.Collections;
using System.IO;
using System.Linq;
using UnityEditor;
using UnityEngine;
using CatGunner.Runtime;

public static class PreviewPenguin
{
    private static string Dir=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../art/reskin/penguin-expedition/batch-01-runtime/captures"));
    public static string Prepare()
    {
        Check();if(EditorApplication.isPlaying)throw new Exception("Stop Play first");
        Directory.CreateDirectory(Dir);SessionState.SetString("CatGunner.Recovery.TestHostFolder",Path.Combine(Path.GetTempPath(),"PenguinPreview-"+Guid.NewGuid().ToString("N")));
        GameProjectEditor.SetPortraitGameView();return "Isolated preview profile configured; normal save untouched.";
    }
    public static string Capture()
    {
        Check();var client=UnityEngine.Object.FindAnyObjectByType<GameClient>();
        client.StartCoroutine(Observe(client));return "Capturing actual gameplay and natural combat into "+Dir;
    }
    private static IEnumerator Observe(GameClient c)
    {
        float deadline=Time.realtimeSinceStartup+40;
        while(!c.ReadyForPlay&&Time.realtimeSinceStartup<deadline)yield return null;
        var theme=c.GetComponent<PenguinExpeditionTheme>();
        // Wait for visible on-screen combat rather than changing player position.
        int initial=c.Forest.TreeCount_Now;
        while(c.Forest.TreeCount_Now==initial&&Time.realtimeSinceStartup<deadline)yield return null;
        yield return new WaitForSeconds(.09f);
        yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,"gameplay-hit.png"));
        for(int i=0;i<30;i++)
        { yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,"frame-"+i.ToString("D2")+".png"));yield return new WaitForSeconds(.066f); }
        File.WriteAllText(Path.Combine(Dir,"observation.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{scene=c.gameObject.scene.path,penguin=c.Hero.skin_spriteRenderer.sprite.name,fractureEffects=false,trees=c.Forest.TreeCount_Now,rounds=c.RoundsStarted,save=c.SaveFolderOverride,input=c.Hero.joystick.Direction.ToString(),width=Screen.width,height=Screen.height,capture="Actual Editor Game view GPU frames; automatic combat; isolated profile; no stat/position overrides"},Newtonsoft.Json.Formatting.Indented));
    }
    public static string Finish()
    { Check();SessionState.EraseString("CatGunner.Recovery.TestHostFolder");return "Preview save override cleared; next ordinary Play uses the user's normal profile."; }
    private static void Check()
    { if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets")throw new Exception("Wrong project"); }
}
