using System;
using System.IO;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using CatGunner.Recovery;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public sealed class OriginalMineSweepTests
{
    string folder; RecoveryForestClient c; bool background;
    Mine_manager M => c.MineMode;
    void Independent(Scene scene, LoadSceneMode mode)
    {
        if (scene.name == "RecoveredClient") scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride = folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background = Application.runInBackground; Application.runInBackground = true;
        folder = Path.Combine(Application.temporaryCachePath, "MineSweep-" + Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded += Independent;
        yield return SceneManager.LoadSceneAsync("RecoveredClient"); yield return ClientStartupWait.Ready();
        c = RecoveryForestClient.Instance; ForestRuntimeAcceptance.IsGaming = false;
        c.DailyLogin.Close(); c.Tutorial.SetCleared();
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        yield return SceneManager.LoadSceneAsync("RecoveredTarget"); SceneManager.sceneLoaded -= Independent;
        Time.timeScale = 1; Application.runInBackground = background;
        if (Directory.Exists(folder)) Directory.Delete(folder, true);
    }
    [UnityTest] public IEnumerator OriginalSweepConsumesTicketAndPaysBestRecord()
    {
        Assert.That(c.LocalStore.Model.Apply("catgunner_pluspack_2"),Is.True);
        M.Best_Reward=c.State.Best_Reward=7;M.StartPanel_Open();int dia=c.State.Dia;int mission=c.State.Mission_PlayMine_Value;
        M.Game_Sweep();yield return null;
        Assert.That(c.State.TicketUse_Count,Is.EqualTo(1));Assert.That(c.State.Dia,Is.EqualTo(dia+7));
        Assert.That(c.State.Mission_PlayMine_Value,Is.EqualTo(mission+1));Assert.That(M.GameSweep_UI.activeInHierarchy,Is.True);
    }

    void Ready(int best=7)
    {
        Assert.That(c.LocalStore.Model.Apply("catgunner_pluspack_2"),Is.True);
        M.Best_Reward=c.State.Best_Reward=best;M.StartPanel_Open();
    }
    static string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports",name));
    IEnumerator Capture(string name){yield return new WaitForSeconds(1.7f);ScreenCapture.CaptureScreenshot(Report("visual/mine-sweep-"+name+"-gpu.png"));yield return new WaitForSeconds(.2f);}
    Button SweepButton=>M.mineStart_ui.Auto_obj.GetComponentsInChildren<Button>(true).Single(b=>Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(i=>b.onClick.GetPersistentMethodName(i)=="Game_Sweep"));
    IEnumerator Click(Button b)
    {
        Assert.That(b.gameObject.activeInHierarchy&&b.interactable,Is.True,b.name);Canvas.ForceUpdateCanvases();
        var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        try
        {
            var rect=(RectTransform)b.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));
            var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
            Assert.That(hits.FirstOrDefault().gameObject?.GetComponentInParent<Button>(),Is.SameAs(b),string.Join("|",hits.Take(5).Select(h=>h.gameObject.name)));
            mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
        }
        finally{module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
    }
    [UnityTest] public IEnumerator BestRecordGatePurchaseExpiryAndLivePreviewUseOriginalPanels()
    {
        M.StartPanel_Open();yield return null;Assert.That(M.mineStart_ui.NonAuto_obj.activeSelf,Is.True);
        Assert.That(c.LocalStore.Model.Apply("catgunner_pluspack_2"),Is.True);M.mineStart_ui.Reload();Assert.That(M.is_SweepAble(),Is.False);
        int dia=c.State.Dia;M.Game_Sweep();Assert.That(c.State.TicketUse_Count,Is.Zero);Assert.That(c.State.Dia,Is.EqualTo(dia));
        M.Best_Reward=c.State.Best_Reward=7;yield return new WaitForSeconds(.4f);Assert.That(M.mineStart_ui.Auto_obj.activeSelf,Is.True);
        Assert.That(M.mineStart_ui.Value_txt.text,Is.EqualTo("<sprite=1>7"));Assert.That(M.is_SweepAble(),Is.True);
        // Mine uses a best-record gate; no cats or combat-power requirement participates.
        c.Hero.gameObject.SetActive(false);Assert.That(M.is_SweepAble(),Is.True);c.Hero.gameObject.SetActive(true);
        yield return Capture("entrance");c.State.PlusPack_Purchase_Dates[2]=DateTime.UtcNow.AddDays(-8).ToString("O");yield return new WaitForSeconds(.4f);
        Assert.That(M.mineStart_ui.NonAuto_obj.activeSelf,Is.True);Assert.That(M.mineStart_ui.Auto_obj.activeSelf,Is.False);
        M.Game_Sweep();Assert.That(c.State.TicketUse_Count,Is.Zero);Assert.That(c.State.Dia,Is.EqualTo(dia));
    }
    [UnityTest] public IEnumerator OriginalButtonsPayBaseThenThreeMoreAndColdReloadKeepsRecordAndTicket()
    {
        Ready();yield return new WaitForSeconds(.5f);int dia=c.State.Dia;int stage=c.Forest.Stage_Now,wave=c.Forest.Level_Now;
        yield return Click(SweepButton);Assert.That((c.State.TicketUse_Count,c.State.Dia,M.Best_Reward,c.Mode),Is.EqualTo((1,dia+7,7,0)));
        Assert.That(M.SweepReward_txt.text,Is.EqualTo("7"));Assert.That(M.SweepBonus_txt.text,Is.EqualTo("28"));yield return Capture("base-result");
        Assert.That(M.SweepBonus_Btn_obj.GetComponent<Button>().onClick.GetPersistentMethodName(0),Is.EqualTo("Bonus_AD_Show"));
        yield return Click(M.SweepBonus_Btn_obj.GetComponent<Button>());yield return null;
        Assert.That(c.State.Dia,Is.EqualTo(dia+28));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));Assert.That(M.SweepPending||M.GameSweep_UI.activeSelf,Is.False);
        Assert.That((c.Forest.Stage_Now,c.Forest.Level_Now),Is.EqualTo((stage,wave)));
        c.SaveNow();yield return SceneManager.LoadSceneAsync("RecoveredTarget");yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();
        c=RecoveryForestClient.Instance;ForestRuntimeAcceptance.IsGaming=false;c.DailyLogin.Close();c.Tutorial.SetCleared();
        Assert.That((c.State.TicketUse_Count,c.State.Dia,M.Best_Reward),Is.EqualTo((1,dia+28,7)));Assert.That(M.SweepPending||M.GameSweep_UI.activeSelf,Is.False);
        M.StartPanel_Open();M.Game_Sweep();Assert.That((c.State.TicketUse_Count,c.State.Dia),Is.EqualTo((2,dia+35)));
    }
    [UnityTest] public IEnumerator RewardPlusTruncationForcedRemovalAndFullRemovalUseHighestUnmultipliedRecord()
    {
        Ready(7);Assert.That(c.LocalStore.Model.Apply("catgunner_pluspack_1"),Is.True);Assert.That(c.LocalStore.Model.Apply("remove_forced_ads"),Is.True);
        int dia=c.State.Dia;Assert.That(M.SweepReward_return(),Is.EqualTo(10));M.Game_Sweep();Assert.That(c.State.Dia,Is.EqualTo(dia+10));Assert.That(M.AutoReward,Is.False);M.Sweep_Close();
        Assert.That(c.LocalStore.Model.Apply("remove_all_ads"),Is.True);yield return new WaitForSeconds(.4f);
        Assert.That(M.mineStart_ui.Value_txt.text,Is.EqualTo("<sprite=1>40"));c.RewardedAds.Enabled=false;M.Game_Sweep();Assert.That(c.State.Dia,Is.EqualTo(dia+50));
        Assert.That(M.SweepNoAds_Btn_obj.GetComponent<Button>().interactable,Is.True);
        Assert.That(M.SweepNoAds_Btn_obj.activeSelf,Is.True);Assert.That(M.SweepBonus_Btn_obj.activeSelf||M.SweepSkip_obj.activeSelf,Is.False);
        Assert.That(M.SweepReward_txt.text,Is.EqualTo("10"));Assert.That(M.SweepBonus_txt.text,Is.EqualTo("40"));yield return Capture("automatic-result");
        yield return Click(M.SweepNoAds_Btn_obj.GetComponent<Button>());M.Bonus_Get();M.SweepBonus_Get();
        Assert.That(c.State.Dia,Is.EqualTo(dia+50));Assert.That((M.Best_Reward,c.State.Best_Reward),Is.EqualTo((7,7)));
        Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);Assert.That(c.State.PurchaseHistory,Is.Empty);Assert.That(c.State.ProcessedTxnIds,Is.Empty);
    }
    [UnityTest] public IEnumerator TwoTicketsExhaustPurchasePanelAndSixTicketPackRespectLimits()
    {
        Ready();c.Forest.Stage_Value_Max=c.State.Stage_Value_Max=190;M.mineStart_ui.Reload();Assert.That(M.mineStart_ui.PlusPack_Banner_obj.activeSelf,Is.False);int dia=c.State.Dia,mission=c.State.Mission_PlayMine_Value;
        for(int i=0;i<2;i++){M.Game_Sweep();M.Sweep_Close();}M.Game_Sweep();
        Assert.That((c.State.TicketUse_Count,c.State.Dia,c.State.Mission_PlayMine_Value),Is.EqualTo((2,dia+14,mission+2)));
        Assert.That(M.MineTicket_Inapp_UI_obj.activeSelf,Is.True);Assert.That(M.mineStart_ui.TicketCount_txt.text,Is.EqualTo("0/2"));M.MineTicket_Inapp_UI_obj.SetActive(false);
        Assert.That(c.LocalStore.Model.Apply("mine_pack"),Is.True);M.mineStart_ui.Reload();Assert.That(M.mineStart_ui.PlusPack_Banner_obj.activeSelf,Is.True);
        M.MineTicket_Inapp_UI_obj.SetActive(true);M.mineStart_ui.Reload();Assert.That(M.mineStart_ui.PlusPack_Banner_obj.activeSelf,Is.False);M.MineTicket_Inapp_UI_obj.SetActive(false);
        for(int i=0;i<4;i++){M.Game_Sweep();M.Sweep_Close();}M.Game_Sweep();
        Assert.That((c.State.TicketUse_Count,c.State.Dia,c.State.Mission_PlayMine_Value),Is.EqualTo((6,dia+542,mission+6)));
        Assert.That(M.MineTicket_Inapp_UI_obj.activeSelf,Is.False);Assert.That(M.mineStart_ui.TicketCount_txt.text,Is.EqualTo("0/6"));yield return null;
    }
    [UnityTest] public IEnumerator DailyReloadModePageAndDisabledSimulationRejectBeforeAward()
    {
        Ready();var today=new DateTime(2026,10,11);M.Today=()=>today;c.State.TicketCharge_Date=today.ToString("O");c.State.TicketUse_Count=2;
        M.Game_Sweep();Assert.That(c.State.TicketUse_Count,Is.EqualTo(2));M.MineTicket_Inapp_UI_obj.SetActive(false);
        today=today.AddDays(1);int dia=c.State.Dia;M.Game_Sweep();Assert.That((c.State.TicketUse_Count,c.State.Dia),Is.EqualTo((1,dia+7)));M.Sweep_Close();
        today=today.AddDays(-2);M.Ticket_Reload();Assert.That(c.State.TicketUse_Count,Is.EqualTo(1));
        c.OfflinePurchaseSimulation=false;M.Game_Sweep();Assert.That(c.State.Dia,Is.EqualTo(dia+7));c.OfflinePurchaseSimulation=true;
        c.SuspendForestForMode(1);M.Game_Sweep();Assert.That(c.State.TicketUse_Count,Is.EqualTo(1));c.Restart();ForestRuntimeAcceptance.IsGaming=false;
        M.mineStart_ui.gameObject.SetActive(false);M.Game_Sweep();Assert.That(c.State.TicketUse_Count,Is.EqualTo(1));yield return null;
    }
    [UnityTest] public IEnumerator DisabledCancelledDuplicateAndStaleAdsCannotPayWrongResult()
    {
        Ready();M.Game_Sweep();int dia=c.State.Dia;c.RewardedAds.Enabled=false;M.Bonus_AD_Show();yield return null;Assert.That(c.State.Dia,Is.EqualTo(dia));
        c.RewardedAds.Enabled=true;M.Bonus_AD_Show();M.Bonus_AD_Show();c.RewardedAds.Cancel();yield return null;Assert.That(c.State.Dia,Is.EqualTo(dia));
        M.Bonus_AD_Show();M.Sweep_Close();M.Game_Sweep();Assert.That(M.SweepPending,Is.False);yield return null;yield return null;
        Assert.That(c.State.Dia,Is.EqualTo(dia));M.Game_Sweep();int second=c.State.Dia;Assert.That(M.SweepPending,Is.True);
        M.Bonus_AD_Show();M.Bonus_AD_Show();yield return null;yield return null;
        Assert.That(c.State.Dia,Is.EqualTo(second+21));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));
        M.Bonus_Get();M.SweepBonus_Get();M.Game_Sweep();Assert.That(c.State.Dia,Is.EqualTo(second+21));
    }
}
