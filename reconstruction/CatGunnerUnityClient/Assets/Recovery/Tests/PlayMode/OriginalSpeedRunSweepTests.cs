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

public sealed class OriginalSpeedRunSweepTests
{
    string folder; RecoveryForestClient c; bool background;
    SpeedRun_manager M => c.SpeedRun;
    void Independent(Scene scene, LoadSceneMode mode)
    {
        if (scene.name == "RecoveredClient") scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride = folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background = Application.runInBackground; Application.runInBackground = true;
        folder = Path.Combine(Application.temporaryCachePath, "SpeedRunSweep-" + Guid.NewGuid().ToString("N"));
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
    void Powered()
    {
        Assert.That(c.LocalStore.Model.Apply("catgunner_pluspack_2"), Is.True);
        c.State.Owned_Gun_list[0] = 20; Assert.That(c.Inventory.Equip(0, 0), Is.True);
        M.StartPanel_Open();
    }
    [UnityTest] public IEnumerator OriginalSweepEntranceCompletesStageAndPaysThirtyOnce()
    {
        Powered(); int dia = c.State.Dia; int forest = c.Forest.Stage_Now;
        M.Start_UI.Game_Sweep(); yield return null;
        Assert.That(M.Stage_Now, Is.EqualTo(1)); Assert.That(c.State.Dia, Is.EqualTo(dia + 30));
        Assert.That(M.GameSweep_UI.activeInHierarchy, Is.True); Assert.That(c.Mode, Is.Zero);
        M.Game_Sweep(); Assert.That(c.State.Dia, Is.EqualTo(dia + 30));
        M.Sweep_Close(); Assert.That(c.Forest.Stage_Now, Is.EqualTo(forest));
    }
    static string Report(string name) => Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports",name));
    IEnumerator Capture(string name){yield return new WaitForSeconds(1.7f);ScreenCapture.CaptureScreenshot(Report("visual/speedrun-sweep-"+name+"-gpu.png"));yield return new WaitForSeconds(.2f);}
    Button SweepButton => M.Start_UI.Auto_obj.GetComponentsInChildren<Button>(true).Single(b=>Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(i=>b.onClick.GetPersistentMethodName(i)=="Game_Sweep"));
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
    [UnityTest] public IEnumerator OriginalButtonsGrantThirtyThenNinetyAndColdReloadDoesNotReplayResult()
    {
        Powered();yield return new WaitForSeconds(.5f);int dia=c.State.Dia;
        Assert.That(M.Start_UI.Sweep_Active_obj.activeSelf,Is.True);yield return Click(SweepButton);
        Assert.That(M.SweepPending,Is.True);Assert.That(c.State.Dia,Is.EqualTo(dia+30));
        Assert.That(M.SweepBonus_Btn_obj.activeSelf&&M.SweepSkip_obj.activeSelf,Is.True);yield return Capture("base-result");
        Assert.That(M.SweepBonus_Btn_obj.GetComponent<Button>().onClick.GetPersistentMethodName(0),Is.EqualTo("Bonus_AD_Show"));
        yield return Click(M.SweepBonus_Btn_obj.GetComponent<Button>());yield return null;
        Assert.That(c.State.Dia,Is.EqualTo(dia+120));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));
        Assert.That(M.SweepPending||M.GameSweep_UI.activeSelf,Is.False);Assert.That(c.Mode,Is.Zero);
        c.SaveNow();yield return SceneManager.LoadSceneAsync("RecoveredTarget");yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();
        c=RecoveryForestClient.Instance;Assert.That((M.Stage_Now,c.State.Dia),Is.EqualTo((1,dia+120)));
        Assert.That(M.SweepPending||M.GameSweep_UI.activeSelf,Is.False);Assert.That(c.LocalStore.Model.Recorded("catgunner_pluspack_2"),Is.True);
    }
    [UnityTest] public IEnumerator AutoPackWeakPowerPercentAndSevenDayExpiryUseOriginalEntrance()
    {
        M.StartPanel_Open();yield return null;Assert.That(M.Start_UI.NonAuto_obj.activeSelf,Is.True);
        Assert.That(c.LocalStore.Model.Apply("catgunner_pluspack_2"),Is.True);M.Start_UI.Reload();yield return new WaitForSeconds(.5f);
        Assert.That(M.Start_UI.Auto_obj.activeSelf,Is.True);Assert.That(M.Start_UI.Sweep_NonActive_obj.activeSelf,Is.True);
        Assert.That(SweepButton.interactable,Is.False);Assert.That(M.Start_UI.Value_txt.text,Is.EqualTo(M.SweepValue_return()+"%"));
        Assert.That(M.Start_UI.Sweep_Fill.fillAmount,Is.EqualTo(M.SweepValue_return()/100f));int dia=c.State.Dia;M.Game_Sweep();Assert.That(c.State.Dia,Is.EqualTo(dia));
        yield return Capture("weak-power");c.State.PlusPack_Purchase_Dates[2]=DateTime.UtcNow.AddDays(-8).ToString("O");yield return new WaitForSeconds(.4f);
        Assert.That(M.Start_UI.NonAuto_obj.activeSelf,Is.True);Assert.That(M.Start_UI.Auto_obj.activeSelf,Is.False);
    }
    [UnityTest] public IEnumerator ForcedRemovalRemainsOrdinaryAndFullRemovalPays120WithoutPlusRewardMultiplier()
    {
        Powered();Assert.That(c.LocalStore.Model.Apply("remove_forced_ads"),Is.True);int dia=c.State.Dia;M.Game_Sweep();
        Assert.That(M.AutoReward,Is.False);Assert.That(c.State.Dia,Is.EqualTo(dia+30));M.Sweep_Close();
        Assert.That(c.LocalStore.Model.Apply("remove_all_ads"),Is.True);Assert.That(c.LocalStore.Model.Apply("catgunner_pluspack_1"),Is.True);
        M.Game_Sweep();Assert.That(c.State.Dia,Is.EqualTo(dia+150));Assert.That(M.SweepNoAds_Btn_obj.activeSelf,Is.True);
        Assert.That(M.SweepBonus_Btn_obj.activeSelf||M.SweepSkip_obj.activeSelf,Is.False);yield return Capture("automatic-result");
        yield return Click(M.SweepNoAds_Btn_obj.GetComponent<Button>());Assert.That(M.SweepPending||M.GameSweep_UI.activeSelf,Is.False);
        M.SweepBonus_Get();Assert.That(c.State.Dia,Is.EqualTo(dia+150));Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);
        Assert.That(c.State.PurchaseHistory,Is.Empty);Assert.That(c.State.ProcessedTxnIds,Is.Empty);
    }
    [UnityTest] public IEnumerator CancelDisableDuplicateAndOldResultCallbacksCannotPayAgain()
    {
        Powered();M.Game_Sweep();int dia=c.State.Dia;c.RewardedAds.Enabled=false;M.Bonus_AD_Show();yield return null;Assert.That(c.State.Dia,Is.EqualTo(dia));
        c.RewardedAds.Enabled=true;M.Bonus_AD_Show();M.Bonus_AD_Show();c.RewardedAds.Cancel();yield return null;Assert.That(c.State.Dia,Is.EqualTo(dia));
        M.Bonus_AD_Show();M.Sweep_Close();yield return null;yield return null;Assert.That(c.State.Dia,Is.EqualTo(dia));
        M.Game_Sweep();int second=c.State.Dia;M.Bonus_AD_Show();M.Bonus_AD_Show();yield return null;yield return null;
        Assert.That(c.State.Dia,Is.EqualTo(second+90));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));M.Bonus_Get();M.SweepBonus_Get();Assert.That(c.State.Dia,Is.EqualTo(second+90));
    }
    [UnityTest] public IEnumerator ForestUpgradesParticipateAndInactiveCatsDoNotContribute()
    {
        Powered();var initial=M.Power_SpeedRun_return();Assert.That(initial.Coefficient.Sign,Is.GreaterThan(0));
        c.State.Upgrade_Lv[0]=100;c.State.Upgrade_Lv[1]=100;c.Restart();ForestRuntimeAcceptance.IsGaming=false;
        Assert.That(M.Power_SpeedRun_return().CompareTo(initial),Is.GreaterThan(0));
        c.Hero.gameObject.SetActive(false);Assert.That(M.Power_SpeedRun_return().Coefficient.Sign,Is.Zero);c.Hero.gameObject.SetActive(true);yield return null;
    }
    [UnityTest] public IEnumerator DisabledSimulationAndUnverifiedNextStageRejectBeforeMutation()
    {
        Powered();c.OfflinePurchaseSimulation=false;int dia=c.State.Dia;M.Game_Sweep();Assert.That(M.Stage_Now,Is.Zero);Assert.That(c.State.Dia,Is.EqualTo(dia));
        c.OfflinePurchaseSimulation=true;M.Stage_Now=c.Forest.Stage_Health_Balance.Length;Assert.Throws<NotSupportedException>(()=>M.SweepRequiredPower_return(M.Stage_Now));
        // A high-power explicit fixture reaches the final cached stage; next-stage guard must precede mutation.
        M.Stage_Now=c.Forest.Stage_Health_Balance.Length-1;c.Hero.Damage=OriginalAmount.FromValue(new DecimalAmount(1,10000));c.Hero.CriDmg=c.Hero.Damage;
        Assert.Throws<NotSupportedException>(()=>M.Game_Sweep());Assert.That(c.State.SpeedRun_Stage_Now,Is.Zero);Assert.That(c.State.Dia,Is.EqualTo(dia));Assert.That(M.SweepPending,Is.False);M.Stage_Now=0;yield return null;
    }

}

public sealed class OriginalSpeedRunSweepRulesTests
{
    [Test] public void NativeHealthTreeCapAverageDegreeAndEffectiveSecondsAreRetained()
    {
        Assert.That(OriginalSpeedRunSweepRules.RequiredPower(new DecimalAmount(100),20).CompareTo(new DecimalAmount(16083,-2)),Is.Zero);
        Assert.That(OriginalSpeedRunSweepRules.RequiredPower(new DecimalAmount(100),190).CompareTo(new DecimalAmount(15279,-1)),Is.Zero);
        Assert.That(SpeedRun_manager.GetStageTreeCount(12),Is.EqualTo(190));
    }
    [Test] public void WeaponTargetsCriticalRoundingAndCentisecondsMatchNativeBranches()
    {
        CollectionAssert.AreEqual(new[]{1,7,5,3,5,5,10},Enumerable.Range(0,7).Select(i=>OriginalSpeedRunSweepRules.Targets((GunType)i,3)));
        Assert.That(OriginalSpeedRunSweepRules.Targets(GunType.SHOTGUN,0),Is.EqualTo(1));
        Assert.That(OriginalSpeedRunSweepRules.Power(new DecimalAmount(100),new DecimalAmount(200),.025f,.359f,GunType.LASER,0).CompareTo(OriginalBossSweepRules.Divide(new DecimalAmount(71400),35)),Is.Zero);
        Assert.That(OriginalSpeedRunSweepRules.Power(new DecimalAmount(100),new DecimalAmount(200),2f,.5f,GunType.SINGLE,0).CompareTo(new DecimalAmount(400)),Is.Zero);
        Assert.That(OriginalRaidRules.Precision(OriginalSpeedRunSweepRules.Power(new DecimalAmount(100),new DecimalAmount(200),0,.29f,GunType.SINGLE,0),5).Value.CompareTo(new DecimalAmount(34482,-2)),Is.Zero);
        Assert.That(OriginalSpeedRunSweepRules.Power(new DecimalAmount(100),new DecimalAmount(200),0,.001f,GunType.SINGLE,0).Coefficient.Sign,Is.Zero);
    }
}
