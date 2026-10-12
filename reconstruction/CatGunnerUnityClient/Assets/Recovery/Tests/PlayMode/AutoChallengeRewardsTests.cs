using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;

public sealed class AutoChallengeRewardsTests
{
    string folder; RecoveryForestClient c; bool background;
    void Independent(Scene scene, LoadSceneMode mode)
    {
        if (scene.name == "RecoveredClient")
            scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride = folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background = Application.runInBackground; Application.runInBackground = true;
        folder = Path.Combine(Application.temporaryCachePath, "ChallengeAuto-" + Guid.NewGuid().ToString("N"));
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
    void FullRemoval() => Assert.That(c.LocalStore.Model.Apply("remove_all_ads"), Is.True);
    void Equip() { c.State.Owned_Gun_list[0] = 20; Assert.That(c.Inventory.Equip(0, 0), Is.True); }
    void StopCombat() { foreach (var cat in c.Team.Cat_list) cat.GetComponent<ForestCombatAcceptance>().enabled = false; }
    IEnumerator EnterMine()
    {
        c.MineMode.Game_Enter(); float deadline = Time.realtimeSinceStartup + 20;
        while (c.MineMode.Entering && Time.realtimeSinceStartup < deadline) yield return null;
        Assert.That(c.MineMode.Playing, Is.True);
    }
    IEnumerator EnterSpeed()
    {
        c.SpeedRun.Game_Enter(); float deadline = Time.realtimeSinceStartup + 20;
        while (c.SpeedRun.Entering && Time.realtimeSinceStartup < deadline) yield return null;
        Assert.That(c.SpeedRun.Playing, Is.True);
    }
    IEnumerator FirstMonsterClear()
    {
        Equip(); int nextLevel = (c.MonsterMode.Lv_Now + 1) % 5; c.MonsterMode.Game_Enter(); float deadline = Time.realtimeSinceStartup + 70;
        while (!c.MonsterMode.Clearing && (c.MonsterMode.Entering || c.MonsterMode.Playing) && Time.realtimeSinceStartup < deadline) yield return null;
        Assert.That(c.MonsterMode.Clearing, Is.True, "Actual automatic projectile first clear; no injected kills");
        Assert.That(c.MonsterMode.Lv_Now, Is.EqualTo(nextLevel));
    }
    static string Report(string name) => Path.GetFullPath(Path.Combine(Application.dataPath,
        "../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports", name));
    IEnumerator Capture(string name)
    {
        yield return new WaitForSeconds(1.7f);
        ScreenCapture.CaptureScreenshot(Report("visual/challenge-auto-" + name + "-gpu.png"));
        yield return new WaitForSeconds(.2f);
    }
    IEnumerator Click(GameObject go)
    {
        var button = go.GetComponent<Button>(); Assert.That(button.interactable && go.activeInHierarchy, Is.True);
        Canvas.ForceUpdateCanvases(); var module = EventSystem.current.GetComponent<StandaloneInputModule>();
        var mouse = module.gameObject.AddComponent<ForestFeedbackMouseFixture>(); module.inputOverride = mouse;
        try
        {
            var rect = (RectTransform)go.transform;
            mouse.Position = RectTransformUtility.WorldToScreenPoint(null, rect.TransformPoint(rect.rect.center));
            var evt = new PointerEventData(EventSystem.current) { position = mouse.Position };
            var hits = new List<RaycastResult>(); EventSystem.current.RaycastAll(evt, hits);
            Assert.That(hits.FirstOrDefault().gameObject?.GetComponentInParent<Button>(), Is.SameAs(button),
                string.Join("|", hits.Take(5).Select(h => h.gameObject.name)));
            mouse.Down = mouse.Held = true; yield return null;
            mouse.Down = mouse.Held = false; mouse.Up = true; yield return null;
            mouse.Up = false; yield return null;
        }
        finally { module.inputOverride = null; UnityEngine.Object.Destroy(mouse); }
    }
    [UnityTest] public IEnumerator FullRemovalMineSettlementCreditsOriginalFourTimes()
    {
        FullRemoval(); StopCombat(); yield return EnterMine(); var m = c.MineMode; int dia = c.State.Dia;
        m.Dia_Score = 73; m.Game_End(); Assert.That(m.Reward_Value, Is.EqualTo(7));
        Assert.That(c.State.Dia - dia, Is.EqualTo(28), "Native Mine.Reward_Panel_Reload uses base reward*4");
        Assert.That(m.Best_Reward, Is.EqualTo(7)); Assert.That(m.Bonus_txt.text, Is.EqualTo("28"));
        Assert.That(m.NoAds_Btn_obj.activeSelf, Is.True); Assert.That(m.Bonus_Btn_obj.activeSelf || m.Skip_obj.activeSelf, Is.False);
        m.Game_End(); m.Bonus_AD_Show(); yield return null; yield return null;
        Assert.That(c.State.Dia - dia, Is.EqualTo(28)); Assert.That(c.RewardedAds.CompletedWatches, Is.Zero);
    }
    [UnityTest] public IEnumerator NaturalSpeedRunVictoryCredits120AndOriginalNoAdsButtonReturnsToForest()
    {
        FullRemoval(); Equip(); int dia = c.State.Dia, forest = c.Forest.Stage_Now;
        yield return EnterSpeed(); var m = c.SpeedRun; float deadline = Time.realtimeSinceStartup + 60;
        while (m.Playing && Time.realtimeSinceStartup < deadline) yield return null;
        Assert.That(m.GameWin_UI.activeInHierarchy, Is.True, "Original Gun20 actual automatic projectiles; no injected tree damage");
        Assert.That(c.State.Dia - dia, Is.EqualTo(120)); Assert.That(c.State.SpeedRun_Stage_Now, Is.EqualTo(1));
        Assert.That(c.Hero.joystick.Direction, Is.EqualTo(Vector2.zero));
        Assert.That(m.NoAds_Btn_obj.activeSelf, Is.True); Assert.That(m.Bonus_Btn_obj.activeSelf || m.Skip_obj.activeSelf, Is.False);
        m.Game_Win(); m.Bonus_AD_Show(); yield return null; Assert.That(c.State.Dia - dia, Is.EqualTo(120));
        Assert.That(c.RewardedAds.CompletedWatches, Is.Zero); yield return Capture("speedrun-result");
        File.WriteAllText(Report("challenge-auto-speedrun-observation.json"), JsonUtility.ToJson(new Observation {
            kind = "speedrun", baseReward = 30, granted = c.State.Dia - dia, remaining = m.GameTime_Now,
            stage = c.State.SpeedRun_Stage_Now, fixture = "Independent original Gun20; actual automatic projectiles, zero joystick, natural20-tree victory; no injected damage or early Game_Win"
        }, true));
        Assert.That(m.NoAds_Btn_obj.GetComponent<Button>().onClick.GetPersistentMethodName(0), Is.EqualTo("Game_Exit"));
        yield return Click(m.NoAds_Btn_obj); yield return new WaitForSeconds(1.8f);
        Assert.That(c.Mode, Is.Zero); Assert.That(c.Forest.Stage_Now, Is.EqualTo(forest));
        Assert.That(m.Map_obj.activeSelf || m.GameWin_UI.activeSelf, Is.False);
    }
    [UnityTest] public IEnumerator NaturalMineTimerKeepsTicketBestAndPlusPackFloorWhileCreditingFourTimes()
    {
        FullRemoval(); Assert.That(c.LocalStore.Model.Apply("catgunner_pluspack_1"), Is.True); Equip();
        int dia = c.State.Dia, mission = c.State.Mission_PlayMine_Value;
        yield return EnterMine(); var m = c.MineMode; float began = Time.realtimeSinceStartup, deadline = began + 70;
        while (m.Playing && Time.realtimeSinceStartup < deadline) yield return null;
        Assert.That(m.GameEnd_UI.activeInHierarchy, Is.True); Assert.That(m.GameTime_Now, Is.LessThanOrEqualTo(0));
        Assert.That(m.Dia_Score, Is.GreaterThan(9)); Assert.That(m.Best_Reward, Is.EqualTo(m.Dia_Score / 10));
        Assert.That(m.Reward_Value, Is.EqualTo((int)((m.Dia_Score / 10) * 1.5f)));
        Assert.That(c.State.Dia - dia, Is.EqualTo(m.Reward_Value * 4));
        Assert.That(c.State.TicketUse_Count, Is.EqualTo(1)); Assert.That(c.State.Mission_PlayMine_Value, Is.EqualTo(mission + 1));
        Assert.That(c.Hero.joystick.Direction, Is.EqualTo(Vector2.zero));
        m.Game_End(); m.Bonus_Get(); Assert.That(c.State.Dia - dia, Is.EqualTo(m.Reward_Value * 4));
        yield return Capture("mine-result");
        File.WriteAllText(Report("challenge-auto-mine-observation.json"), JsonUtility.ToJson(new Observation {
            kind = "mine", baseReward = m.Dia_Score / 10, plusReward = m.Reward_Value,
            granted = c.State.Dia - dia, score = m.Dia_Score, remaining = m.GameTime_Now,
            seconds = Time.realtimeSinceStartup - began,
            fixture = "Independent Gun20 actual automatic mining, natural60s timer, one ticket; no injected score/damage/end/time, local full removal and PlusPack1"
        }, true));
        yield return Click(m.NoAds_Btn_obj); yield return new WaitForSeconds(1.8f); Assert.That(c.Mode, Is.Zero);
        Assert.That(c.RewardedAds.CompletedWatches, Is.Zero);
    }
    [UnityTest] public IEnumerator NaturalMonsterClearPaysDoublePerLevelAndOriginalNoAdsExitDoesNotPayAgain()
    {
        FullRemoval(); Assert.That(c.LocalStore.Model.Apply("catgunner_pluspack_1"), Is.True);
        int coins = c.State.PetCoin; yield return FirstMonsterClear(); var m = c.MonsterMode;
        Assert.That(m.PetCoin_Accum, Is.EqualTo(60)); Assert.That(c.State.PetCoin - coins, Is.EqualTo(120));
        m.LevelClear(); Assert.That(c.State.PetCoin - coins, Is.EqualTo(120));
        m.Game_GiveUp(); m.GameEnd_Panel_Reload();
        Assert.That(m.Reward_txt.text, Is.EqualTo("60")); Assert.That(m.Bonus_txt.text, Is.EqualTo("120"));
        Assert.That(m.NoAds_Btn_obj.activeSelf, Is.True); Assert.That(m.Bonus_Btn_obj.activeSelf || m.Skip_obj.activeSelf, Is.False);
        m.Bonus_AD_Show(); yield return null; yield return null; Assert.That(c.State.PetCoin - coins, Is.EqualTo(120));
        Assert.That(c.RewardedAds.CompletedWatches, Is.Zero); yield return Capture("monster-result");
        File.WriteAllText(Report("challenge-auto-monster-observation.json"), JsonUtility.ToJson(new Observation {
            kind = "monster", baseReward = 30, plusReward = m.PetCoin_Accum, granted = c.State.PetCoin - coins,
            stage = m.Lv_Now, fixture = "Independent Gun20 actual automatic first-level clear; no injected damage/kills/clear, give-up after natural clear; double paid per level, base accumulation retained"
        }, true));
        yield return Click(m.NoAds_Btn_obj); yield return new WaitForSeconds(1.8f);
        Assert.That(c.Mode, Is.Zero); Assert.That(c.State.PetCoin - coins, Is.EqualTo(120));
    }
    [UnityTest] public IEnumerator ForcedRemovalUsesOrdinarySpeedRewardAndOneLocalAdCompletesFourTimes()
    {
        Assert.That(c.LocalStore.Model.Apply("remove_forced_ads"), Is.True); StopCombat(); yield return EnterSpeed();
        var m = c.SpeedRun; int dia = c.State.Dia; m.Game_Win();
        Assert.That(c.State.Dia - dia, Is.EqualTo(30)); Assert.That(m.NoAds_Btn_obj.activeSelf, Is.False);
        Assert.That(m.Bonus_Btn_obj.activeSelf && m.Skip_obj.activeSelf, Is.True);
        m.Bonus_AD_Show(); c.RewardedAds.Cancel(); yield return null;
        Assert.That(c.State.Dia - dia, Is.EqualTo(30)); Assert.That(c.RewardedAds.CompletedWatches, Is.Zero);
        m.Bonus_AD_Show(); m.Bonus_AD_Show(); yield return null; yield return null;
        Assert.That(c.State.Dia - dia, Is.EqualTo(120)); Assert.That(c.RewardedAds.CompletedWatches, Is.EqualTo(1));
        m.Bonus_Get(); Assert.That(c.State.Dia - dia, Is.EqualTo(120));
    }
    [UnityTest] public IEnumerator DisabledPurchaseSimulationKeepsOrdinaryMineSettlementAndAdFlow()
    {
        FullRemoval(); c.OfflinePurchaseSimulation = false; StopCombat(); yield return EnterMine();
        var m = c.MineMode; int dia = c.State.Dia; m.Dia_Score = 73; m.Game_End();
        Assert.That(c.State.Dia - dia, Is.EqualTo(7)); Assert.That(m.NoAds_Btn_obj.activeSelf, Is.False);
        c.RewardedAds.Enabled = false; m.Bonus_AD_Show(); yield return null; Assert.That(c.State.Dia - dia, Is.EqualTo(7));
        c.RewardedAds.Enabled = true; m.Bonus_AD_Show(); yield return null; yield return null;
        Assert.That(c.State.Dia - dia, Is.EqualTo(28)); Assert.That(c.RewardedAds.CompletedWatches, Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator SpeedTimeoutWithFullRemovalDoesNotGrantVictoryOrAdvance()
    {
        FullRemoval(); StopCombat(); yield return EnterSpeed(); var m = c.SpeedRun; int dia = c.State.Dia;
        m.GameTime_Now = 0; yield return null; yield return null;
        Assert.That(m.GameFail_UI.activeInHierarchy, Is.True); Assert.That(c.State.Dia, Is.EqualTo(dia));
        Assert.That(c.State.SpeedRun_Stage_Now, Is.Zero); m.Game_Win(); m.Bonus_Get();
        Assert.That(c.State.Dia, Is.EqualTo(dia)); m.Game_Exit(); yield return new WaitForSeconds(1.8f);
        Assert.That(c.Mode, Is.Zero);
    }
    [UnityTest] public IEnumerator ZeroMineRewardAndRepeatedEndKeepWalletBestAndTicketUnchanged()
    {
        FullRemoval(); StopCombat(); yield return EnterMine(); var m = c.MineMode; int dia = c.State.Dia;
        m.Dia_Score = 9; m.Game_End(); m.Game_End(); m.Bonus_Get();
        Assert.That(c.State.Dia, Is.EqualTo(dia)); Assert.That(m.Best_Reward, Is.Zero);
        Assert.That(c.State.TicketUse_Count, Is.EqualTo(1)); Assert.That(m.Reward_Value, Is.Zero);
        Assert.That(m.NoAds_Btn_obj.activeSelf, Is.True); m.Game_Exit(); yield return new WaitForSeconds(1.8f);
        Assert.That(c.Mode, Is.Zero);
    }
    [UnityTest] public IEnumerator OrdinaryMonsterRewardUsesOneAdAndClosedResultsRejectLateCallbacks()
    {
        Assert.That(c.LocalStore.Model.Apply("remove_forced_ads"), Is.True); int coins = c.State.PetCoin;
        yield return FirstMonsterClear(); var m = c.MonsterMode; Assert.That(c.State.PetCoin - coins, Is.EqualTo(30));
        m.Game_GiveUp(); Assert.That(m.NoAds_Btn_obj.activeSelf, Is.False);
        m.Bonus_AD_Show(); m.Bonus_AD_Show(); yield return null; yield return null;
        Assert.That(c.State.PetCoin - coins, Is.EqualTo(60)); Assert.That(c.RewardedAds.CompletedWatches, Is.EqualTo(1));
        yield return new WaitForSeconds(1.8f); ForestRuntimeAcceptance.IsGaming = false;
        yield return FirstMonsterClear(); m.Game_GiveUp(); int credited = c.State.PetCoin;
        m.Bonus_AD_Show(); m.Game_Exit(); yield return null; yield return null;
        Assert.That(c.State.PetCoin, Is.EqualTo(credited)); Assert.That(c.RewardedAds.CompletedWatches, Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator ColdReloadKeepsLocalEntitlementProgressAndWalletWithoutReplayingResults()
    {
        FullRemoval(); StopCombat(); yield return EnterSpeed(); int dia = c.State.Dia; c.SpeedRun.Game_Win(); c.SaveNow();
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");
        yield return SceneManager.LoadSceneAsync("RecoveredClient"); yield return ClientStartupWait.Ready();
        c = RecoveryForestClient.Instance; ForestRuntimeAcceptance.IsGaming = false;
        Assert.That(c.State.Dia, Is.EqualTo(dia + 120)); Assert.That(c.State.SpeedRun_Stage_Now, Is.EqualTo(1));
        Assert.That(c.LocalStore.Model.Recorded("remove_all_ads"), Is.True);
        Assert.That(c.State.PurchaseHistory, Is.Empty); Assert.That(c.State.ProcessedTxnIds, Is.Empty);
        Assert.That(c.SpeedRun.GameWin_UI.activeSelf || c.MineMode.GameEnd_UI.activeSelf || c.MonsterMode.GameEnd_UI.activeSelf, Is.False);
        StopCombat(); yield return EnterMine(); c.MineMode.Dia_Score = 73; c.MineMode.Game_End();
        Assert.That(c.State.Dia, Is.EqualTo(dia + 148));
    }
    [Serializable] sealed class Observation
    { public string kind, fixture; public int baseReward, plusReward, granted, score, stage; public float remaining, seconds; }
}
