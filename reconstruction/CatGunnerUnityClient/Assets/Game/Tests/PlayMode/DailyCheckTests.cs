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

public sealed class DailyCheckTests
{
    private string folder;
    private GameClient client;
    private DailyCheck daily;
    private StandaloneInputModule module;
    private ForestFeedbackMouseFixture mouse;
    private bool background;
    private DateTime today;
    private bool disableStartup;
    private static readonly DateTime Epoch = new DateTime(2026, 10, 11);
    private static string Report(string name) => Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports",name));
    private void Configure(Scene s, LoadSceneMode mode)
    {
        if(s.name!="GameClient")return;
        var c=s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();
        c.SaveFolderOverride=folder;c.DailyLogin.LocalToday=()=>today;if(disableStartup)c.enabled=false;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        disableStartup=false;background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;today=Epoch;
        folder=Path.Combine(Application.temporaryCachePath,"DailyCheck-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Configure;
        yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();
        client=GameClient.Instance;daily=client.DailyLogin;ForestRuntimeAcceptance.IsGaming=false;
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
    private IEnumerator Entrance()
    {
        var bounce=daily.DailyCheck_Panel_obj.GetComponentsInChildren<BounceStart>(true).Single();
        yield return new WaitForSeconds(bounce._upSizeTime+.05f);
    }
    private Button Hud()=>client.Tutorial.DisableOnTutorial.Single(g=>g!=null&&g.name=="DailyCheck_Btn").GetComponent<Button>();
    [UnityTest] public IEnumerator SourceHudRealDayClickWalletMarkersCloseReopenAndReload()
    {
        Assert.That(daily.DiaReward_list,Is.EqualTo(new[]{70,200,400,600,800,1000,1500}));
        int before=client.State.Dia,ledger=client.State._getDia;yield return Click(Hud());yield return Entrance();
        var popupWallet=daily.GetComponentsInChildren<Currency>(true).Single();Assert.That(popupWallet.Dia_txt.text,Is.EqualTo(before.ToString()));
        Assert.That(daily.Reward_list.Select(r=>r.Date),Is.EqualTo(Enumerable.Range(0,7)));
        Assert.That(daily.Reward_list[0].Getable_obj.activeSelf,Is.True,"day="+daily.CheckNum+", total="+daily.TotalCheckNum+", last="+daily.LastCheck_Date.ToString("o")+", today="+daily.LocalToday().ToString("o")+", marker="+daily.Reward_list[0].Getable_obj.name+", status="+daily.CheckStatus_return(0)+", panel="+daily.DailyCheck_Panel_obj.activeSelf);Assert.That(daily.Reward_list[0].transform.GetSiblingIndex(),Is.EqualTo(6));
        // Source DailyCheck has no Mute_Panel; opening it does not mute shooting SFX.
        Assert.That(Cat_manager.is_Shoot_Mute,Is.False);
        ScreenCapture.CaptureScreenshot(Report("visual/daily-check-original-before-claim-gpu.png"));yield return new WaitForSeconds(.15f);
        yield return Click(daily.Reward_list[0].GetComponent<Button>());
        Assert.That(client.State.Dia,Is.EqualTo(before+70));Assert.That(client.State._getDia,Is.EqualTo(ledger+210));
        Assert.That(client.Currency.Dia_txt.text,Is.EqualTo(client.State.Dia.ToString()));
        Assert.That(popupWallet.Dia_txt.text,Is.EqualTo(client.State.Dia.ToString()));
        Assert.That(daily.CheckNum,Is.EqualTo(1));Assert.That(daily.TotalCheckNum,Is.EqualTo(1));Assert.That(daily.LastCheck_Date,Is.EqualTo(today));
        Assert.That(daily.Reward_list[0].Geted_obj.activeSelf,Is.True);Assert.That(daily.Reward_list.All(r=>!r.Getable_obj.activeSelf),Is.True);
        Assert.That(daily.LastRequestedDiamondParticles,Is.EqualTo(8));
        // Already claimed and future days remain clickable but native Dont rejects them.
        daily.DailyReward_Get(0);daily.DailyReward_Get(1);Assert.That(client.State.Dia,Is.EqualTo(before+70));
        ScreenCapture.CaptureScreenshot(Report("visual/daily-check-original-after-claim-gpu.png"));yield return new WaitForSeconds(.15f);
        var close=daily.DailyCheck_Panel_obj.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn");
        yield return Click(close);Assert.That(daily.DailyCheck_Panel_obj.activeSelf,Is.False);Assert.That(Cat_manager.is_Shoot_Mute,Is.False);
        client.AwardDiamonds(1);
        yield return Click(Hud());yield return Entrance();Assert.That(popupWallet.Dia_txt.text,Is.EqualTo(client.State.Dia.ToString()));yield return Click(close);
        client.SaveNow();var saved=new SaveArchive(folder).Load();Assert.That(saved.CheckNum,Is.EqualTo(1));Assert.That(saved.TotalCheckNum,Is.EqualTo(1));
        yield return TestSceneLoader.LoadAsync("TargetPreview");yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();
        client=GameClient.Instance;daily=client.DailyLogin;ForestRuntimeAcceptance.IsGaming=false;
        Assert.That(daily.CheckNum,Is.EqualTo(1));Assert.That(daily.TotalCheckNum,Is.EqualTo(1));Assert.That(daily.is_DateChange(),Is.False);
        daily.UI_reload();daily.DailyReward_Get(1);Assert.That(client.State.Dia,Is.EqualTo(saved.Dia));Assert.That(client.State._getDia,Is.EqualTo(saved._getDia));
    }
    [UnityTest] public IEnumerator SevenDaysCycleResetsOnlyOnNextDayUiAndCannotSkip()
    {
        int before=client.State.Dia,ledger=client.State._getDia;
        for(int i=0;i<7;i++)
        {
            today=Epoch.AddDays(i);daily.UI_reload();Assert.That(daily.CheckStatus_return(i),Is.EqualTo(DailyCheck_status.Getable));
            int dia=client.State.Dia;daily.DailyReward_Get((i+1)%7);Assert.That(client.State.Dia,Is.EqualTo(dia));
            daily.DailyReward_Get(i);daily.DailyReward_Get(i);Assert.That(client.State.Dia,Is.EqualTo(dia+daily.DiaReward_list[i]));
            Assert.That(daily.CheckNum,Is.EqualTo(i+1));
        }
        Assert.That(client.State.Dia,Is.EqualTo(before+4570));Assert.That(client.State._getDia,Is.EqualTo(ledger+13710));Assert.That(daily.TotalCheckNum,Is.EqualTo(7));
        daily.UI_reload();Assert.That(daily.CheckNum,Is.EqualTo(7));Assert.That(daily.Reward_list.All(r=>r.Geted_obj.activeSelf),Is.True);
        today=today.AddDays(1);Assert.That(daily.CheckNum,Is.EqualTo(7));Assert.That(daily.is_GetAble(0),Is.False);
        daily.UI_reload();Assert.That(daily.CheckNum,Is.Zero);Assert.That(daily.TotalCheckNum,Is.EqualTo(7));daily.DailyReward_Get(0);
        Assert.That(daily.TotalCheckNum,Is.EqualTo(8));Assert.That(client.State.Dia,Is.EqualTo(before+4640));
        yield return null;
    }
    [UnityTest] public IEnumerator PopupWaitsForTutorialShowsOnceAndDoesNotAutoAward()
    {
        // Reload a genuinely uncleared independent profile, with production auto-show enabled.
        client.State.TutorialCleared=false;client.State.Upgrade_Lv[0]=0;client.SaveNow();
        var archive=new SaveArchive(folder);var s=archive.Load();s.TutorialCleared=false;archive.AllowSave();archive.Save(s);
        yield return TestSceneLoader.LoadAsync("TargetPreview");yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready(false);
        client=GameClient.Instance;daily=client.DailyLogin;ForestRuntimeAcceptance.IsGaming=false;daily.AutoShow=true;
        Assert.That(daily.DailyCheck_Panel_obj.activeSelf,Is.False);Assert.That(daily.ShownThisSession,Is.False);int before=client.State.Dia;
        client.Tutorial.SetCleared();yield return null;yield return null;
        Assert.That(daily.DailyCheck_Panel_obj.activeSelf,Is.True);Assert.That(daily.ShownThisSession,Is.True);Assert.That(client.State.Dia,Is.EqualTo(before));
        daily.Close();daily.Try_Show();Assert.That(daily.DailyCheck_Panel_obj.activeSelf,Is.False);
    }
    [UnityTest] public IEnumerator FutureLocalDateDeniesClaimAndModeEntryClosesPanel()
    {
        int before=client.State.Dia;daily.LastCheck_Date=today.AddDays(1);daily.UI_reload();daily.DailyReward_Get(0);
        Assert.That(daily.Reward_list.All(r=>!r.Getable_obj.activeSelf),Is.True);Assert.That(client.State.Dia,Is.EqualTo(before));
        client.SpeedRun.Game_Enter();Assert.That(daily.DailyCheck_Panel_obj.activeSelf,Is.False);Assert.That(client.Mode,Is.EqualTo(1));
        client.SpeedRun.Game_Exit();float deadline=Time.realtimeSinceStartup+15;while((client.Mode!=0||client.IsTransitioning)&&Time.realtimeSinceStartup<deadline)yield return null;Assert.That(client.Mode,Is.Zero);
    }
    [UnityTest] public IEnumerator InvalidStoredProfileCannotOverwriteMainOrBackup()
    {
        client.SaveNow();yield return TestSceneLoader.LoadAsync("TargetPreview");
        var archive=new SaveArchive(folder);var bad=archive.Load();bad.CheckNum=8;archive.AllowSave();archive.Save(bad);archive.Save(bad);
        string main=File.ReadAllText(archive.MainPath),backup=File.ReadAllText(archive.BackupPath);disableStartup=true;
        yield return TestSceneLoader.LoadAsync("GameClient");client=GameClient.Instance;
        Assert.Throws<InvalidOperationException>(()=>client.Initialize());client.SaveNow();yield return new WaitForSecondsRealtime(5.2f);
        Assert.That(client.ReadyForPlay,Is.False);Assert.That(File.ReadAllText(archive.MainPath),Is.EqualTo(main));Assert.That(File.ReadAllText(archive.BackupPath),Is.EqualTo(backup));
    }
    [UnityTest] public IEnumerator InvalidCountersAndDateRejectBeforeProfileMutation()
    {
        foreach(var bad in new[]{new SaveData{CheckNum=-1},new SaveData{CheckNum=8},new SaveData{TotalCheckNum=-1},new SaveData{LastCheck_Date="bad-date"}})
        {
            string before=SaveArchive.Encode(bad);Assert.Throws<InvalidOperationException>(()=>DailyCheck.ValidateState(bad));Assert.That(SaveArchive.Encode(bad),Is.EqualTo(before));
        }
        yield return null;
    }
}
