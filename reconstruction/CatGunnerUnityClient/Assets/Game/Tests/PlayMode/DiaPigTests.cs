using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;

public sealed class DiaPigTests
{
    private string folder;
    private GameClient client;
    private StandaloneInputModule module;
    private ForestFeedbackMouseFixture mouse;
    private bool background;
    private static readonly DateTime Epoch=new DateTime(2026,10,11,0,0,0,DateTimeKind.Utc);
    private static string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports",name));
    private void Configure(Scene s,LoadSceneMode mode)
    {
        if(s.name!="GameClient")return;
        s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;
        folder=Path.Combine(Application.temporaryCachePath,"DiaPig-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Configure;
        yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();
        client=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;
        module=EventSystem.current.GetComponent<StandaloneInputModule>();mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        if(module!=null)module.inputOverride=null;
        yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;
        if(Directory.Exists(folder))Directory.Delete(folder,true);Application.runInBackground=background;Time.timeScale=1;
    }
    private IEnumerator Click(Button b)
    {
        Assert.That(b.gameObject.activeInHierarchy&&b.interactable,Is.True,b.name);Canvas.ForceUpdateCanvases();var r=(RectTransform)b.transform;
        mouse.Position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(r.rect.center));
        var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
        Assert.That(hits,Is.Not.Empty);Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(b),b.name);
        mouse.Down=false;mouse.Up=false;mouse.Held=false;yield return null;
        mouse.Down=true;mouse.Held=true;yield return null;
        mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
    }
    [UnityTest] public IEnumerator OriginalHudOpensLockedPageAndClosesWithRealInputWithoutGrant()
    {
        var pig=client.DiamondPig;Assert.That(pig,Is.Not.Null);Assert.That(pig.Dia_Max,Is.EqualTo(500));Assert.That(pig.Fill,Is.Not.Null);
        var ui=pig.diapig_ui;var before=SaveArchive.Encode(client.State);
        var hud=client.Tutorial.DisableOnTutorial.Single(g=>g!=null&&g.name=="DiaPig_Btn").GetComponent<Button>();yield return Click(hud);
        var entrance=ui.GetComponentsInChildren<BounceStart>(true).Single(b=>b.name=="Panel");
        Assert.That(entrance.time,Is.LessThan(entrance._upSizeTime));
        yield return new WaitForSeconds(entrance._upSizeTime+.05f);Assert.That(entrance.transform.localScale,Is.EqualTo(Vector3.one));
        Assert.That(Cat_manager.is_Shoot_Mute,Is.True);
        Assert.That(ui.gameObject.activeInHierarchy,Is.True);Assert.That(ui.Locked_obj.activeSelf,Is.True);Assert.That(ui.Unlock_obj.activeSelf,Is.False);
        Assert.That(ui.Descrip_obj_Init.activeSelf,Is.True);Assert.That(ui.Descrip_obj.activeSelf,Is.False);
        Assert.That(ui.Count_txt.text,Is.EqualTo("0<size=30>/500"));Assert.That(ui.DiaValue_txt.text,Is.EqualTo("+0"));
        var purchases=ui.GetComponentsInChildren<LocalPurchaseButton>(true);
        Assert.That(purchases.Select(b=>b.ProductId),Does.Contain("remove_all_ads"));
        Assert.That(purchases.Where(b=>b.ProductId=="remove_all_ads").All(b=>b.Button.interactable),Is.True);
        Assert.That(ui.Remove_Ads_All_obj.activeSelf,Is.True);Assert.That(ui.Remove_Ads_Forced_obj.activeSelf,Is.False);
        ScreenCapture.CaptureScreenshot(Report("visual/diapig-original-locked-page-gpu.png"));yield return new WaitForSeconds(.2f);
        pig.Dia_Get();ui.Get_Dia();Assert.That(SaveArchive.Encode(client.State),Is.EqualTo(before));
        var close=ui.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn");yield return Click(close);
        Assert.That(ui.gameObject.activeSelf,Is.False);yield return Click(hud);yield return new WaitForSeconds(entrance._upSizeTime+.05f);yield return Click(close);Assert.That(ui.gameObject.activeSelf,Is.False);
        ScreenCapture.CaptureScreenshot(Report("visual/diapig-return-forest-gpu.png"));yield return new WaitForSeconds(.2f);
    }
    [UnityTest] public IEnumerator LockedSaveKeepsCountAndTimestampAcrossColdReloadAndCannotClaim()
    {
        var data=new DiaPigSave{Dia_Now=321,LastTickTime=Epoch.ToString("o")};client.State.diaPig=data;client.DiamondPig.Init(data);client.SaveNow();
        var before=new SaveArchive(folder).Load();int dia=before.Dia,ledger=before._getDia;
        Assert.That(before.diaPig.LastTickTime,Is.EqualTo(data.LastTickTime));
        yield return TestSceneLoader.LoadAsync("TargetPreview");yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();
        client=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;
        Assert.That(client.DiamondPig.Dia_Now,Is.EqualTo(321));Assert.That(client.DiamondPig.Fill.fillAmount,Is.EqualTo(321f/500));
        Assert.That(client.DiamondPig.IsUnlocked,Is.False);client.DiamondPig.Dia_Get();client.SaveNow();
        var after=new SaveArchive(folder).Load();Assert.That(after.diaPig.Dia_Now,Is.EqualTo(321));Assert.That(after.diaPig.LastTickTime,Is.EqualTo(data.LastTickTime));
        Assert.That(after.Dia,Is.EqualTo(dia));Assert.That(after._getDia,Is.EqualTo(ledger));
    }
    [UnityTest] public IEnumerator ModeEntryClosesPigAndReturnsToUsableForest()
    {
        var ui=client.DiamondPig.diapig_ui;ui.gameObject.SetActive(true);client.SpeedRun.Game_Enter();Assert.That(ui.gameObject.activeSelf,Is.False);
        Assert.That(client.Mode,Is.EqualTo(1));client.SpeedRun.Game_Exit();float deadline=Time.realtimeSinceStartup+15;while((client.Mode!=0||client.IsTransitioning)&&Time.realtimeSinceStartup<deadline)yield return null;Assert.That(client.Mode,Is.Zero);
        Assert.That(client.DiamondPig.IsUnlocked,Is.False);
    }
    [UnityTest] public IEnumerator NativeRemoveAdsFlagsUnlockProductionAndUpgradeRateImmediately()
    {
        Assert.That(client.DiamondPig.IsUnlocked,Is.False);
        Assert.That(client.LocalStore.Request("remove_forced_ads"),Is.True);yield return null;yield return null;
        Assert.That(client.DiamondPig.IsUnlocked,Is.True,"original remove-forced-ads flag must unlock the production pig");
        Assert.That(client.DiamondPig.TickAmount,Is.EqualTo(1));
        Assert.That(client.DiamondPig.diapig_ui.Remove_Ads_All_obj.activeSelf,Is.True);Assert.That(client.DiamondPig.diapig_ui.Remove_Ads_Forced_obj.activeSelf,Is.False);
        var references=client.DiamondPig.GetSaveData().LastTickTime;client.DiamondPig.Bind(client);Assert.That(client.DiamondPig.GetSaveData().LastTickTime,Is.EqualTo(references));
        Assert.That(client.LocalStore.Request("remove_all_ads"),Is.True);yield return null;yield return null;
        Assert.That(client.DiamondPig.TickAmount,Is.EqualTo(2));
        Assert.That(client.DiamondPig.diapig_ui.Remove_Ads_All_obj.activeSelf,Is.True);Assert.That(client.DiamondPig.diapig_ui.Remove_Ads_Forced_obj.activeSelf,Is.True);
        PreparePigPage();yield return new WaitForSeconds(.5f);ScreenCapture.CaptureScreenshot(Report("visual/diapig-entitlements-both-owned-gpu.png"));yield return new WaitForSeconds(.2f);
    }
    void PreparePigPage()
    {
        client.DailyLogin.Close();client.Tutorial.SetCleared();
        UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include)?.gameObject.SetActive(false);
        client.DiamondPig.diapig_ui.gameObject.SetActive(true);client.DiamondPig.diapig_ui.transform.SetAsLastSibling();
    }
    Button ClaimButton()=>client.DiamondPig.diapig_ui.Unlock_obj.GetComponentsInChildren<Button>(true).Single(b=>Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(i=>b.onClick.GetPersistentMethodName(i)=="Dia_Get" && b.onClick.GetPersistentTarget(i)==client.DiamondPig));
    [UnityTest] public IEnumerator OriginalAllAdsButtonUnlocksAndClaimButtonPersistsWithoutDuplicateReward()
    {
        PreparePigPage();yield return new WaitForSeconds(.5f);
        var ui=client.DiamondPig.diapig_ui;
        var purchase=ui.GetComponentsInChildren<LocalPurchaseButton>(true).Single(b=>b.ProductId=="remove_all_ads");
        yield return Click(purchase.Button);yield return null;yield return null;
        Assert.That(client.DiamondPig.IsUnlocked,Is.True);Assert.That(client.DiamondPig.TickAmount,Is.EqualTo(1));
        Assert.That(ui.Locked_obj.activeSelf,Is.False);Assert.That(ui.Unlock_obj.activeSelf,Is.True);
        Assert.That(ui.Remove_Ads_All_obj.activeSelf,Is.False);Assert.That(ui.Remove_Ads_Forced_obj.activeSelf,Is.True);
        Assert.That(ui.Descrip_obj.activeSelf,Is.True);Assert.That(ui.Descrip_obj_Init.activeSelf,Is.False);Assert.That(ui.DiaValue_txt.text,Is.EqualTo("+1"));
        var seed=new DiaPigSave{Dia_Now=123,LastTickTime=DateTime.UtcNow.ToString("o")};client.DiamondPig.Init(seed);PreparePigPage();yield return new WaitForSeconds(.5f);
        ScreenCapture.CaptureScreenshot(Report("visual/diapig-entitlements-all-owned-gpu.png"));yield return new WaitForSeconds(.2f);
        int dia=client.State.Dia,ledger=client.State._getDia;yield return Click(ClaimButton());
        Assert.That(client.State.Dia,Is.EqualTo(dia+123));Assert.That(client.State._getDia,Is.EqualTo(ledger+369));
        Assert.That(client.DiamondPig.Dia_Now,Is.Zero);Assert.That(client.DiamondPig.Fill.fillAmount,Is.Zero);
        yield return Click(ClaimButton());Assert.That(client.State.Dia,Is.EqualTo(dia+123));
        var saved=new SaveArchive(folder).Load();Assert.That(saved.diaPig.Dia_Now,Is.Zero);Assert.That(saved.diaPig.LastTickTime,Is.EqualTo(seed.LastTickTime));
        Assert.That(saved.PurchaseHistory,Is.Empty);Assert.That(saved.ProcessedTxnIds,Is.Empty);Assert.That(saved.PurchaseCount,Is.Zero);
        ScreenCapture.CaptureScreenshot(Report("visual/diapig-entitlements-claimed-gpu.png"));yield return new WaitForSeconds(.2f);
        yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;
        Assert.That(client.DiamondPig.TickAmount,Is.EqualTo(1));Assert.That(client.DiamondPig.Dia_Now,Is.Zero);Assert.That(client.State.Dia,Is.EqualTo(dia+123));
        Assert.That(client.LocalStore.Model.Recorded("remove_all_ads"),Is.True);
    }
    [UnityTest] public IEnumerator ActualRealtimeMinuteAccumulatesAndSavesUnclaimedFundsAcrossColdReload()
    {
        client.DailyLogin.Close();client.Tutorial.SetCleared();
        Assert.That(client.LocalStore.Request("remove_forced_ads"),Is.True);yield return null;yield return null;
        int dia=client.State.Dia;float started=Time.realtimeSinceStartup;
        float deadline=started+67;while(client.DiamondPig.Dia_Now==0&&Time.realtimeSinceStartup<deadline)yield return null;
        Assert.That(Time.realtimeSinceStartup-started,Is.GreaterThan(55),"real monotonic clock, not Time.timeScale");
        Assert.That(client.DiamondPig.Dia_Now,Is.EqualTo(1));Assert.That(client.State.Dia,Is.EqualTo(dia),"accumulation must not auto-claim");
        Assert.That(client.DiamondPig.Fill.fillAmount,Is.EqualTo(1f/500));
        client.SaveNow();var saved=new SaveArchive(folder).Load();Assert.That(saved.diaPig.Dia_Now,Is.EqualTo(1));
        PreparePigPage();yield return new WaitForSeconds(.5f);Assert.That(client.DiamondPig.diapig_ui.CoolTime_txt.text,Does.EndWith("s"));
        ScreenCapture.CaptureScreenshot(Report("visual/diapig-entitlements-realtime-minute-gpu.png"));yield return new WaitForSeconds(.2f);
        yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;
        Assert.That(client.DiamondPig.Dia_Now,Is.EqualTo(1));Assert.That(client.State.Dia,Is.EqualTo(dia));
        Assert.That(client.DiamondPig.TickAmount,Is.EqualTo(1));Assert.That(client.DiamondPig.GetSaveData().LastTickTime,Is.EqualTo(saved.diaPig.LastTickTime));
    }
    [UnityTest] public IEnumerator CancellationAndDisabledLocalSimulationCannotUnlockOrClaimStoredCount()
    {
        Assert.That(client.LocalStore.Request("remove_all_ads"),Is.True);client.LocalStore.Cancel();yield return null;
        Assert.That(client.State.Is_Remove_AD_All,Is.False);Assert.That(client.DiamondPig.IsUnlocked,Is.False);
        Assert.That(client.LocalStore.Request("remove_all_ads"),Is.True);yield return null;yield return null;
        client.DiamondPig.Init(new DiaPigSave{Dia_Now=500,LastTickTime=DateTime.UtcNow.ToString("o")});client.SaveNow();int dia=client.State.Dia;
        client.OfflinePurchaseSimulation=false;yield return null;client.DiamondPig.Dia_Get();client.SaveNow();
        Assert.That(client.DiamondPig.IsUnlocked,Is.False);Assert.That(client.State.Dia,Is.EqualTo(dia));Assert.That(new SaveArchive(folder).Load().diaPig.Dia_Now,Is.EqualTo(500));
        Assert.That(client.LocalStore.Request("remove_forced_ads"),Is.False);
        client.OfflinePurchaseSimulation=true;yield return null;Assert.That(client.DiamondPig.IsUnlocked,Is.True);client.DiamondPig.Dia_Get();
        Assert.That(client.State.Dia,Is.EqualTo(dia+500));Assert.That(client.DiamondPig.GetSecondsUntilNextTick(),Is.InRange(59,60));client.DiamondPig.Dia_Get();Assert.That(client.State.Dia,Is.EqualTo(dia+500));
    }
    [UnityTest] public IEnumerator DynamicNativeRateKeepsExistingCountClockReferencesAndMinuteRemainder()
    {
        var counter=new DiaPigCounter(500,1);counter.Init(null,Epoch,10);counter.Tick(Epoch.AddSeconds(75),85);
        Assert.That(counter.Count,Is.EqualTo(1));counter.SetTickAmount(2);
        Assert.That(counter.LastTickUtc,Is.EqualTo(Epoch.AddSeconds(60)));Assert.That(counter.LastTickMono,Is.EqualTo(70));Assert.That(counter.SecondsUntilNextTick(85),Is.EqualTo(45));
        counter.Tick(Epoch.AddSeconds(120),130);Assert.That(counter.Count,Is.EqualTo(3));
        Assert.Throws<ArgumentOutOfRangeException>(()=>counter.SetTickAmount(3));yield return null;
    }
    [UnityTest] public IEnumerator MinuteTicksKeepRemainderAndUseSlowerClock()
    {
        foreach(int amount in new[]{1,2})
        {
            var c=new DiaPigCounter(500,amount);c.Init(null,Epoch,10);
            c.Tick(Epoch.AddSeconds(59.99),69.99);Assert.That(c.Count,Is.Zero);Assert.That(c.SecondsUntilNextTick(69.99),Is.EqualTo(1));
            c.Tick(Epoch.AddSeconds(125),135);Assert.That(c.Count,Is.EqualTo(2*amount));Assert.That(c.LastTickUtc,Is.EqualTo(Epoch.AddSeconds(120)));Assert.That(c.LastTickMono,Is.EqualTo(130));Assert.That(c.SecondsUntilNextTick(135),Is.EqualTo(55));
            c.Tick(Epoch.AddSeconds(185),140);Assert.That(c.Count,Is.EqualTo(2*amount),"wall clock alone cannot award another minute");
        }
        yield return null;
    }
    [UnityTest] public IEnumerator PartialClaimKeepsRemainderFullClaimResetsClockAndDiamondLedger()
    {
        var c=new DiaPigCounter(500,2);c.Init(null,Epoch,0);c.Tick(Epoch.AddSeconds(125),125);
        var isolated=new SaveData();int count=c.Claim(Epoch.AddSeconds(125),125);DiamondReward.Apply(isolated,count);
        Assert.That(count,Is.EqualTo(4));Assert.That(isolated.Dia,Is.EqualTo(4));Assert.That(isolated._getDia,Is.EqualTo(12));
        Assert.That(c.Claim(Epoch.AddSeconds(125),125),Is.Zero);Assert.That(c.SecondsUntilNextTick(125),Is.EqualTo(55));
        c.Tick(Epoch.AddSeconds(15125),15125);Assert.That(c.Count,Is.EqualTo(500));Assert.That(c.SecondsUntilNextTick(15125),Is.Zero);
        Assert.That(c.Claim(Epoch.AddSeconds(15200),15200),Is.EqualTo(500));Assert.That(c.LastTickUtc,Is.EqualTo(Epoch.AddSeconds(15200)));Assert.That(c.SecondsUntilNextTick(15200),Is.EqualTo(60));
        yield return null;
    }
    [UnityTest] public IEnumerator InvalidFutureAndRollbackClocksResetWithoutWallOnlyCatchup()
    {
        var c=new DiaPigCounter(500,1);c.Init(new DiaPigSave{Dia_Now=7,LastTickTime="invalid"},Epoch,10);Assert.That(c.LastTickUtc,Is.EqualTo(Epoch));
        c.Init(new DiaPigSave{Dia_Now=7,LastTickTime=Epoch.AddDays(1).ToString("o")},Epoch,10);Assert.That(c.LastTickUtc,Is.EqualTo(Epoch));
        c.Tick(Epoch.AddDays(1),11);Assert.That(c.Count,Is.EqualTo(7),"trusted catch-up provider unavailable");
        c.Tick(Epoch.AddSeconds(-1),12);Assert.That(c.LastTickUtc,Is.EqualTo(Epoch.AddSeconds(-1)));Assert.That(c.LastTickMono,Is.EqualTo(12));Assert.That(c.Count,Is.EqualTo(7));
        var saved=c.GetSaveData();Assert.That(DateTime.Parse(saved.LastTickTime,null,System.Globalization.DateTimeStyles.RoundtripKind).Kind,Is.EqualTo(DateTimeKind.Utc));yield return null;
    }
    [UnityTest] public IEnumerator LockedCounterNeverAccumulatesOrConsumesExistingFunds()
    {
        var c=new DiaPigCounter(500,0);c.Init(new DiaPigSave{Dia_Now=123,LastTickTime=Epoch.ToString("o")},Epoch,0);
        c.Tick(Epoch.AddDays(2),172800);Assert.That(c.Count,Is.EqualTo(123));Assert.That(c.Claim(Epoch.AddDays(2),172800),Is.Zero);Assert.That(c.Count,Is.EqualTo(123));Assert.That(c.SecondsUntilNextTick(172800),Is.Zero);yield return null;
    }
}
