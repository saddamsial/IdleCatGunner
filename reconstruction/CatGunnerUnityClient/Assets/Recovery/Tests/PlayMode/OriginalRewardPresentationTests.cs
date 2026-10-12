using System;
using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using System.Collections.Generic;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class OriginalRewardPresentationTests
{
    string folder; RecoveryForestClient client; bool background;
    void Configure(Scene s,LoadSceneMode mode){if(s.name=="RecoveredClient")s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup(){background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"RewardPresentation-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Configure;yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();client=RecoveryForestClient.Instance;ForestRuntimeAcceptance.IsGaming=false;client.DailyLogin.LocalToday=()=>new DateTime(2026,10,12);}
    [UnityTearDown] public IEnumerator Cleanup(){Time.timeScale=1;yield return SceneManager.LoadSceneAsync("RecoveredTarget");SceneManager.sceneLoaded-=Configure;if(Directory.Exists(folder))Directory.Delete(folder,true);Application.runInBackground=background;}
    [UnityTest] public IEnumerator EligibleGlowRotatesOnScaledTimeAndResetsOnReopen()
    {
        var daily=client.DailyLogin;daily.UI_reload();yield return new WaitForSeconds(.3f);
        var glow=daily.Reward_list[0].Getable_obj.transform.Find("Glow");Assert.That(glow,Is.Not.Null);float before=glow.eulerAngles.z;yield return new WaitForSeconds(.25f);
        Assert.That(Mathf.Abs(Mathf.DeltaAngle(before,glow.eulerAngles.z)),Is.InRange(6f,12f));
        Time.timeScale=0;float paused=glow.eulerAngles.z;yield return new WaitForSecondsRealtime(.2f);Assert.That(Mathf.DeltaAngle(paused,glow.eulerAngles.z),Is.EqualTo(0).Within(.01f));Time.timeScale=1;
        daily.Close();daily.UI_reload();yield return null;Assert.That(Mathf.Abs(Mathf.DeltaAngle(211.49263f,glow.eulerAngles.z)),Is.LessThan(20f));
        daily.DailyReward_Get(0);Assert.That(daily.Reward_list.All(r=>!r.Getable_obj.activeSelf),Is.True);
    }
    [UnityTest] public IEnumerator PigBannerGlowRotatesWithoutGrantingPurchase()
    {
        var pig=UnityEngine.Object.FindAnyObjectByType<DiaPig_UI>(FindObjectsInactive.Include);pig.gameObject.SetActive(true);yield return new WaitForSeconds(.4f);
        var glow=pig.GetComponentsInChildren<RecoveryRewardRotation>(true).Single(t=>t.OriginalComponent==132270).transform;float before=glow.eulerAngles.z;int dia=client.State.Dia;yield return new WaitForSeconds(.25f);
        Assert.That(Mathf.Abs(Mathf.DeltaAngle(before,glow.eulerAngles.z)),Is.InRange(18f,35f));Assert.That(client.State.Dia,Is.EqualTo(dia));Assert.That(DiaPig.instance.IsUnlocked,Is.False);pig.gameObject.SetActive(false);
    }
    [UnityTest] public IEnumerator RealClaimEmitsEightOriginalDiamondsAndArrivalDoesNotGrantAgain()
    {
        var daily=client.DailyLogin;daily.UI_reload();yield return new WaitForSeconds(.4f);
        var fx=Dia_Attraction.instance._diaFx;int before=client.State.Dia,ledger=client.State._getDia;
        Assert.That(fx.OriginalSprite,Is.Not.Null);Assert.That(fx.raycastTarget,Is.False);Assert.That(fx.Size,Is.EqualTo(60));Assert.That(fx.Radius,Is.EqualTo(50));
        var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        var b=daily.Reward_list[0].GetComponent<Button>();Canvas.ForceUpdateCanvases();var rect=(RectTransform)b.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));
        var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);Assert.That(hits.First().gameObject.GetComponentInParent<Button>(),Is.SameAs(b));
        yield return null;mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;module.inputOverride=null;
        Assert.That(fx.Emitted,Is.EqualTo(8));Assert.That(fx.LiveCount,Is.GreaterThan(0));Assert.That(client.State.Dia,Is.EqualTo(before+70));Assert.That(client.State._getDia,Is.EqualTo(ledger+210));
        daily.DailyReward_Get(0);Assert.That(fx.Emitted,Is.EqualTo(8));
        ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/reward-diamonds-flight-gpu.png")));
        yield return new WaitForSeconds(.42f);
        ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/reward-diamonds-attraction-gpu.png")));
        float deadline=Time.realtimeSinceStartup+2;bool sawBounce=false;var target=daily.GetComponentsInChildren<Dia_Attraction_Target>(true).Single();
        while(fx.LiveCount>0&&Time.realtimeSinceStartup<deadline){sawBounce|=target._bounce.Bouncing;yield return null;}
        sawBounce|=target._bounce.Bouncing;Assert.That(sawBounce,Is.True);Assert.That(fx.Finished,Is.EqualTo(8));Assert.That(fx.LiveCount,Is.Zero);Assert.That(client.State.Dia,Is.EqualTo(before+70));
        yield return new WaitForSeconds(.3f);Assert.That(target._bounce.Bouncing,Is.False);Assert.That(target._bounce.transform.localScale,Is.EqualTo(Vector3.one));
        // Still clickable after eight arrivals, with no particle graphic blocking it.
        Canvas.ForceUpdateCanvases();hits.Clear();var close=daily.DailyCheck_Panel_obj.GetComponentsInChildren<Button>(true).Single(x=>x.name=="Close_Btn");rect=(RectTransform)close.transform;
        EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center))},hits);Assert.That(hits.First().gameObject.GetComponentInParent<Button>(),Is.SameAs(close));daily.Close();
    }
    [UnityTest] public IEnumerator TargetStackAndClosingDuringFlightKeepWalletStable()
    {
        var a=Dia_Attraction.instance;var daily=client.DailyLogin;daily.UI_reload();yield return null;var target=daily.GetComponentsInChildren<Dia_Attraction_Target>(true).Single();Assert.That(a.Target_list.Last(),Is.SameAs(target));
        int dia=client.State.Dia;daily.DailyReward_Get(0);Assert.That(a._diaFx.Emitted,Is.EqualTo(8));daily.Close();Assert.That(a.Target_list.Contains(target),Is.False);
        var remaining=a.Target_list.Count==0?null:a.Target_list.Last().transform;Assert.That(a._diaFx.Attractor,Is.SameAs(remaining));
        Time.timeScale=0;int finished=a._diaFx.Finished;yield return new WaitForSecondsRealtime(.15f);Assert.That(a._diaFx.Finished,Is.EqualTo(finished));Time.timeScale=1;yield return new WaitForSeconds(1.1f);
        Assert.That(a._diaFx.Finished,Is.EqualTo(8));Assert.That(client.State.Dia,Is.EqualTo(dia+70));
        for(int i=0;i<3;i++){daily.UI_reload();yield return null;Assert.That(a.Target_list.Count(t=>t==target),Is.EqualTo(1));daily.Close();yield return null;Assert.That(a.Target_list.Contains(target),Is.False);}
    }
    [UnityTest] public IEnumerator OriginalBounceRestartsTimeAndRestoresScale()
    {
        client.DailyLogin.UI_reload();yield return null;var b=client.DailyLogin.GetComponentsInChildren<Dia_Attraction_Target>(true).Single()._bounce;
        b.Bounce_Start();yield return new WaitForSeconds(.08f);Assert.That(b.transform.localScale.x,Is.InRange(.89f,.99f));b.Bounce_Start();Assert.That(b.time,Is.Zero);
        yield return new WaitForSeconds(.11f);Assert.That(b.Bouncing,Is.True);yield return new WaitForSeconds(.14f);Assert.That(b.Bouncing,Is.False);Assert.That(b.transform.localScale,Is.EqualTo(Vector3.one));
        b.Size_reload_Fit(new Vector3(2,3,1));b.Bounce_Start();yield return new WaitForSeconds(.3f);Assert.That(b.transform.localScale,Is.EqualTo(new Vector3(2,3,1)));b.Size_reload_Fit(Vector3.one);
    }

    [Test] public void VelocityAndVortexAreAppliedBeforeAttraction()
    {
        var advance=typeof(RecoveryDiamondParticles).GetMethod("AdvancePosition");Assert.That(advance,Is.Not.Null,"Original enabled velocity/vortex modules must be implemented");
        var go=new GameObject("IsolatedParticleMotion",typeof(RectTransform));go.SetActive(false);
        try
        {
            var fx=go.AddComponent<RecoveryDiamondParticles>();fx.SpeedCurve=AnimationCurve.Constant(0,1,1);
            typeof(RecoveryDiamondParticles).GetField("VelocityYCurve").SetValue(fx,AnimationCurve.Constant(0,1,1));typeof(RecoveryDiamondParticles).GetField("VelocityYMultiplier").SetValue(fx,1f);
            typeof(RecoveryDiamondParticles).GetField("VortexCurve").SetValue(fx,AnimationCurve.Constant(0,1,1));typeof(RecoveryDiamondParticles).GetField("VortexMultiplier").SetValue(fx,1f);
            var actual=(Vector2)advance.Invoke(fx,new object[]{new Vector2(10,0),new Vector2(2,0),.5f,.1f});
            Assert.That(actual.x,Is.EqualTo(27.80773f).Within(.001f));Assert.That(actual.y,Is.EqualTo(15.05753f).Within(.001f));
        }
        finally{UnityEngine.Object.DestroyImmediate(go);}
    }

}
