using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.EventSystems;
using UnityEngine.TestTools;
using UnityEngine.UI;

public sealed class PlayableClientTests
{
    static SaveData Profile()=>new SaveData{Selected_items=new[]{0,-1,-1},Gun_Collect=new bool[65],Upgrade_Lv=new int[3],Star_Slot_Lv=new int[3]};
    [Test] public void NativeDailyFirstRewardIs70WhileNewWalletIsZero()
    {Assert.That(Profile().Dia,Is.Zero);}
    [Test] public void SeasonBootstrapStaysZeroThenManualCappedResetClearsBothTracksAndCounters()
    {
        var s=Profile();var now=new DateTime(2026,1,31,12,0,0);var m=new Missions(s,ProgressionCatalogue.Load(),new GunInventory(s,(a,b)=>a),()=>now);
        Assert.That(m.ReloadSeason(),Is.True);Assert.That(s.Mission_Season_Num,Is.Zero);Assert.That(m.Reward(0).value,Is.EqualTo(200));
        s.Mission_Reward_Lv=25;s.Mission_Reward_Exp=45;s.Mission_TreeCount_Value=999;s.Mission_is_Vip=s.Mission_is_Luxury=true;Array.Fill(s.NormalReward_Get,true);Array.Fill(s.EpicReward_Get,true);Array.Fill(s.Mission_ExpGet,true);Array.Fill(s.Mission_ExpGet_Luxury,true);
        int dia=s.Dia;m.ResetSeason(true);Assert.That(s.Mission_Season_Num,Is.EqualTo(1));Assert.That(s.Mission_Reward_Lv+s.Mission_Reward_Exp+s.Mission_TreeCount_Value,Is.Zero);Assert.That(s.NormalReward_Get.Concat(s.EpicReward_Get).Concat(s.Mission_ExpGet).Concat(s.Mission_ExpGet_Luxury),Is.All.False);Assert.That(s.Mission_is_Vip||s.Mission_is_Luxury,Is.False);Assert.That(DateTime.Parse(s.Mission_SeasonEnd_Date),Is.EqualTo(new DateTime(2026,2,28,12,0,0)));Assert.That(s.Dia,Is.EqualTo(dia));
    }
    [Test] public void SeasonExpiryUsesDateBoundaryAndReloadCannotIncrementTwice()
    {
        var s=Profile();var now=new DateTime(2026,10,10,9,0,0);var m=new Missions(s,ProgressionCatalogue.Load(),new GunInventory(s,(a,b)=>a),()=>now);m.ReloadSeason();
        now=new DateTime(2026,11,10,0,0,0);Assert.That(m.SeasonClosed,Is.True);Assert.That(m.ReloadSeason(),Is.True);Assert.That(s.Mission_Season_Num,Is.EqualTo(1));Assert.That(m.ReloadSeason(),Is.False);Assert.That(s.Mission_Season_Num,Is.EqualTo(1));
    }
    [Test] public void DailyAdInventoryRetainsProgressionDayCapacityAndCurrencyGates()
    {
        var s=Profile();var g=new GunInventory(s,(a,b)=>a);var now=new DateTime(2026,10,11);Assert.That(g.DrawDailyAd(now),Is.EqualTo(-1));s.Stage_Value_Max=30;Assert.That(g.DrawDailyAd(now),Is.EqualTo(5));Assert.That(g.DrawDailyAd(now),Is.EqualTo(-1));Assert.That(g.DrawDailyAd(now.AddDays(1)),Is.EqualTo(5));Assert.That(s.Dia+s._useDia+s.Gacha_Draw_Count,Is.Zero);
        var p=new PetInventory(s,ProgressionCatalogue.Load());Assert.That(p.DrawDailyAd(now),Is.EqualTo(-1));s.Lv_Now=1;Assert.That(p.DrawDailyAd(now),Is.EqualTo(1));Assert.That(p.DrawDailyAd(now),Is.EqualTo(-1));Assert.That(s.PetCoin,Is.Zero);
    }
    [Test] public void OfflineTimeUses30SecondMinimum8HourCapAndRejectsInvalidOrFutureTime()
    {
        var now=new DateTime(2026,10,11,0,0,0,DateTimeKind.Utc);
        foreach(var last in new[]{null,"bad",now.AddSeconds(1).ToString("O"),now.AddSeconds(-29).ToString("O")})Assert.That(OfflineSimulation.ComputeElapsed(last,now,28800,out _,out _),Is.False);
        Assert.That(OfflineSimulation.ComputeElapsed(now.AddHours(-10).ToString("O"),now,28800,out var elapsed,out var absent),Is.True);Assert.That(elapsed,Is.EqualTo(28800));Assert.That(absent,Is.EqualTo(36000));
    }
    static BalanceCatalogue FakeBalance()=>new BalanceCatalogue{Power_balance=Enumerable.Range(0,10001).Select(_=>CurrencyAmount.FromValue(new DecimalAmount(100))).ToArray(),Money_balance=Enumerable.Range(0,10001).Select(_=>CurrencyAmount.FromValue(new DecimalAmount(100))).ToArray(),Speed_balance=Enumerable.Repeat(100,10001).ToArray(),Price_balance=Enumerable.Range(0,10001).Select(_=>CurrencyAmount.FromValue(new DecimalAmount(1000000))).ToArray(),Stage_Health_Balance=Enumerable.Range(0,5000).Select(_=>CurrencyAmount.FromValue(new DecimalAmount(10))).ToArray(),Stage_Money_Balance=Enumerable.Range(0,5000).Select(_=>CurrencyAmount.FromValue(new DecimalAmount(10))).ToArray()};
    [Test] public void OfflineNativeFarmHasIndependentKnownOracleAndDoesNotAdvanceFrontier()
    {
        var s=Profile();var b=FakeBalance();var e=new EquipmentCatalogue{Gun_list=new[]{new Gun_Info{Damage=CurrencyAmount.FromValue(new DecimalAmount(5)),AtkSpeed=.5f,type=GunType.SINGLE}}};OfflineResult result=null;
        var info=OfflineSimulation.CalculateClear(s,s.Upgrade_Lv,0,0,b,e,new OfflineModifiers());Assert.That(info.Seconds,Is.EqualTo(30).Within(.0001));Assert.That(info.KillsPerSecond,Is.EqualTo(1));
        var run=OfflineSimulation.Run(s,30,30,b,e,new OfflineModifiers(),r=>result=r);while(run.MoveNext()){}Assert.That(result.StageNow,Is.Zero);Assert.That(result.LevelNow,Is.Zero);Assert.That(result.StageValueMax,Is.Zero);Assert.That(result.MoneyAccumFinal.PlainInteger(),Is.EqualTo("348"));Assert.That(s.Money.Value.PlainInteger(),Is.EqualTo("0"));
        OfflineSimulation.Apply(s,result);Assert.That(s.Money_Accum.Value.PlainInteger(),Is.EqualTo("348"));
    }
    [Test] public void OfflineSimulationUsesSelectedWeaponKindsTraversalAndStageTimeLimit()
    {
        var s=Profile();var b=FakeBalance();var e=new EquipmentCatalogue{Gun_list=new[]{new Gun_Info{Damage=CurrencyAmount.FromValue(new DecimalAmount(100)),AtkSpeed=.1f,type=GunType.LASER}}};
        var clear=OfflineSimulation.CalculateClear(s,s.Upgrade_Lv,0,0,b,e,new OfflineModifiers());Assert.That(clear.KillsPerSecond,Is.EqualTo(100).Within(.001));Assert.That(clear.Seconds,Is.EqualTo(1.5).Within(.001));
        s.Selected_items[0]=-1;var impossible=OfflineSimulation.CalculateClear(s,s.Upgrade_Lv,0,0,b,e,new OfflineModifiers());Assert.That(float.IsPositiveInfinity(impossible.Seconds),Is.True);Assert.That(impossible.KillsPerSecond,Is.Zero);
    }
    string folder;GameClient c;bool background;
    void Configure(Scene s,LoadSceneMode mode){if(s.name=="GameClient")s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
    IEnumerator Load()
    {background=Application.runInBackground;Application.runInBackground=true;folder=Path.Combine(Application.temporaryCachePath,"PlayableRecovery-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Configure;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();c=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;c.DailyLogin.Close();Assert.That(c.DailyLogin.DiaReward_list[0],Is.EqualTo(70));}
    [UnityTearDown] public IEnumerator Cleanup(){if(c!=null)c.RewardedAds.Cancel();yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;if(folder!=null&&Directory.Exists(folder))Directory.Delete(folder,true);if(folder!=null)Application.runInBackground=background;folder=null;c=null;Time.timeScale=1;}
    static Button BoundButton(UnityEngine.Object owner,string name)=>UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(i=>b.onClick.GetPersistentTarget(i)==owner&&b.onClick.GetPersistentMethodName(i)==name));
    void Capture(string name)=>ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/playtest-fixes-"+name+"-gpu.png")));
    static IEnumerator Click(Button button)
    {
        yield return null;float deadline=Time.realtimeSinceStartup+4;while(!button.gameObject.activeInHierarchy&&Time.realtimeSinceStartup<deadline)yield return null;yield return new WaitForSeconds(.35f);Canvas.ForceUpdateCanvases();Assert.That(button.gameObject.activeInHierarchy&&button.interactable,Is.True,button.name);
        var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        var r=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(r.rect.center));var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
        Assert.That(hits.Count,Is.GreaterThan(0));Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(button),"Top hit: "+hits[0].gameObject.name);
        yield return null;mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;module.inputOverride=null;UnityEngine.Object.Destroy(mouse);
    }
    [UnityTest] public IEnumerator Real100DiamondButtonShowsInsufficientBalanceThenSpawnsWeaponAndColdSaves()
    {
        yield return Load();c.Tutorial.enabled=false;c.State.TutorialCleared=true;c.Tutorial.SetCleared();yield return Click(UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(x=>x.name=="Gun_Btn"));var b=BoundButton(c.Guns,"DrawRandom_Normal");
        c.State.Dia=70;c.NotifyTutorialCurrencyChanged();int count=c.State.Owned_Gun_list.Count(x=>x>=0);yield return Click(b);Assert.That(c.State.Dia,Is.EqualTo(70));Assert.That(c.State.Owned_Gun_list.Count(x=>x>=0),Is.EqualTo(count));Assert.That(c.Guns.LastDrawMessage,Does.Contain("100"));Assert.That(c.StarUpgrades.popup.FeedbackAlert.gameObject.activeSelf,Is.True);yield return null;Capture("insufficient-diamonds");yield return null;
        c.State.Dia=100;c.NotifyTutorialCurrencyChanged();yield return Click(b);Assert.That(c.State.Dia,Is.Zero);Assert.That(c.State.Owned_Gun_list.Count(x=>x>=0),Is.EqualTo(count+1));Assert.That(c.State.Gacha_Draw_Count,Is.EqualTo(1));c.SaveNow();Assert.That(new SaveArchive(folder).Load().Owned_Gun_list,Is.EqualTo(c.State.Owned_Gun_list));
    }
    [UnityTest] public IEnumerator AdSimulationSupportsDailyGunAndFishButCancelsDisabledOrRepeatedCallbacks()
    {
        yield return Load();c.State.Stage_Value_Max=c.Forest.Stage_Value_Max=30;c.Guns.ReloadGunUI();c.Guns.AD_Draw_Btn_Click();c.Guns.AD_Draw_Btn_Click();yield return null;yield return null;Assert.That(c.State.Owned_Gun_list.Count(x=>x>=5&&x<10),Is.EqualTo(1));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));c.Guns.AD_Draw_Btn_Click();yield return null;Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));
        c.Fish.fish_ui_obj.SetActive(true);c.State.FreeGachaCount=3;int count=c.State.FishInventory.Count;c.Fish.FreeGacha();yield return null;yield return null;Assert.That(c.State.FreeGachaCount,Is.EqualTo(4));Assert.That(c.State.FishInventory.Count,Is.EqualTo(count+1));c.Fish.new_fish_ui.gameObject.SetActive(false);c.Fish.FreeGacha();c.RewardedAds.Cancel();yield return null;Assert.That(c.State.FreeGachaCount,Is.EqualTo(4));
        c.RewardedAds.Enabled=false;c.Fish.FreeGacha();yield return null;Assert.That(c.State.FreeGachaCount,Is.EqualTo(4));Assert.That(c.State.Is_Remove_AD_All||c.State.Is_Buff_Pack||c.State.Mission_is_Vip,Is.False);
    }
    [UnityTest] public IEnumerator SpeedRunOriginalRewardAdGivesBonusOnceAndAllChallengeMaterialsRender()
    {
        yield return Load();foreach(var root in new[]{c.SpeedRun.Map_obj,c.BossMode.Map_obj,c.MonsterMode.Map_obj,c.RaidMode.Map_obj})foreach(var r in root.GetComponentsInChildren<Renderer>(true))foreach(var m in r.sharedMaterials)Assert.That(m!=null&&m.shader!=null&&m.shader.isSupported&&m.shader.name!="Hidden/InternalErrorShader",Is.True,r.name);
        c.SpeedRun.Game_Enter();while(c.SpeedRun.Entering)yield return null;yield return new WaitForSeconds(.25f);Capture("speedrun");yield return null;c.SpeedRun.Game_Win();int dia=c.State.Dia;yield return Click(c.SpeedRun.Bonus_Btn_obj.GetComponent<Button>());c.SpeedRun.Bonus_AD_Show();yield return null;yield return null;Assert.That(c.State.Dia,Is.EqualTo(dia+90));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));c.SpeedRun.Bonus_Get();Assert.That(c.State.Dia,Is.EqualTo(dia+90));
    }
    [UnityTest] public IEnumerator StartupOfflinePanelCommitsOnceAndColdReloadDoesNotAwardAgain()
    {
        yield return Load();c.State.LastSaveTime=DateTime.UtcNow.AddMinutes(-5).ToString("O");var archive=new SaveArchive(folder);archive.AllowSave();archive.Save(c.State);c.Persist=false;
        yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();c=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;Assert.That(c.Offline.LastResult,Is.Not.Null);Assert.That(c.Offline.offlinePanelUI.gameObject.activeSelf,Is.True);Assert.That(c.Offline.LastResult.ElapsedSeconds,Is.GreaterThanOrEqualTo(300));Assert.That(c.Currency.Money_txt.text,Is.EqualTo(c.State.Money.Value.PlainInteger()));foreach(var panel in c.UpgradePanels)Assert.That(panel.Lv_txt.text,Is.EqualTo("Lv."+c.State.Upgrade_Lv[panel.type]));Assert.That(new SaveArchive(folder).Load().LastSaveTime,Is.Not.Empty);yield return null;Capture("offline-result");yield return null;yield return Click(c.Offline.offlinePanelUI.GetComponentsInChildren<Button>(true).Single());Assert.That(c.Offline.offlinePanelUI.gameObject.activeSelf,Is.False);
        yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();c=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;Assert.That(c.Offline.LastResult,Is.Null);
    }
    [UnityTest] public IEnumerator BossBonusRealClickAdds300OnceAndRendersGround()
    {
        yield return Load();c.BossMode.Game_Enter();while(c.BossMode.Entering)yield return null;Capture("boss");yield return null;c.BossMode.Game_Win();int dia=c.State.Dia;
        yield return Click(c.BossMode.Bonus_Btn_obj.GetComponent<Button>());Assert.That(c.State.Dia,Is.EqualTo(dia+300));c.BossMode.Bonus_Get();Assert.That(c.State.Dia,Is.EqualTo(dia+300));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator MonsterBonusAddsAccumulatedCoinOnceAndRendersGround()
    {
        yield return Load();c.MonsterMode.Game_Enter();while(c.MonsterMode.Entering)yield return null;Capture("monster");yield return null;c.MonsterMode.PetCoin_Accum=60;c.MonsterMode.Game_GiveUp();int coins=c.State.PetCoin;
        yield return Click(c.MonsterMode.Bonus_Btn_obj.GetComponent<Button>());Assert.That(c.State.PetCoin,Is.EqualTo(coins+60));c.MonsterMode.Bonus_Get();Assert.That(c.State.PetCoin,Is.EqualTo(coins+60));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator MineBonusAddsThreeTimesBaseOnce()
    {
        yield return Load();c.MineMode.Game_Enter();while(c.MineMode.Entering)yield return null;c.MineMode.Dia_Score=10;c.MineMode.Game_End();int dia=c.State.Dia;int reward=c.MineMode.Reward_Value;Assert.That(reward,Is.GreaterThan(0));
        yield return Click(c.MineMode.Bonus_Btn_obj.GetComponent<Button>());Assert.That(c.State.Dia,Is.EqualTo(dia+reward*3));c.MineMode.Bonus_Get();Assert.That(c.State.Dia,Is.EqualTo(dia+reward*3));
    }
    [UnityTest] public IEnumerator RaidAdEntryUsesOneAdditionalDailyEntryWithoutChangingFreeQuota()
    {
        yield return Load();c.RaidMode.Panel_Open();c.State.Raid_Free_Use_Count=c.RaidMode.Free_Use_Count=2;c.RaidMode.raidStart_ui.Reload_Entry();
        yield return Click(c.RaidMode.raidStart_ui.Enter_AD_obj.GetComponent<Button>());Assert.That(c.State.Raid_AD_Enter_Used,Is.True);Assert.That(c.State.Raid_Free_Use_Count,Is.EqualTo(2));Assert.That(c.Mode,Is.EqualTo(5));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));c.RaidMode.AD_Enter_RewardGet();Assert.That(c.State.Raid_Free_Use_Count,Is.EqualTo(2));Assert.That(c.State.Raid_IAP_Enter_Used,Is.False);
    }
    [UnityTest] public IEnumerator FullSeasonConfirmButtonResetsClaimsCountersScrollAndColdSave()
    {
        yield return Load();var m=c.MissionUI;var state=c.State;state.Mission_Reward_Lv=25;state.Mission_Reward_Exp=10;state.Mission_TreeCount_Value=10;state.Mission_StageClear_Value=10;state.Mission_Rebirth_Value=10;state.Mission_PlayMine_Value=10;Array.Fill(state.NormalReward_Get,true);Array.Fill(state.EpicReward_Get,true);Array.Fill(state.Mission_ExpGet,true);Array.Fill(state.Mission_ExpGet_Luxury,true);int season=state.Mission_Season_Num;
        m.Panel_Open();yield return new WaitForSeconds(.4f);yield return Click(m.NewSeason_Btn_obj.GetComponent<Button>());Assert.That(m.NewSeason_Panel_obj.activeSelf,Is.True);
        var confirm=m.NewSeason_Panel_obj.GetComponentsInChildren<Button>(true).Single(b=>Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(i=>b.onClick.GetPersistentMethodName(i)=="NewSeason_Start"));yield return Click(confirm);
        Assert.That(state.Mission_Season_Num,Is.EqualTo(season+1));Assert.That(state.Mission_Reward_Lv+state.Mission_Reward_Exp+state.Mission_TreeCount_Value+state.Mission_StageClear_Value+state.Mission_Rebirth_Value+state.Mission_PlayMine_Value,Is.Zero);Assert.That(state.NormalReward_Get.Concat(state.EpicReward_Get).Concat(state.Mission_ExpGet).Concat(state.Mission_ExpGet_Luxury),Is.All.False);Assert.That(m.NewSeason_Panel_obj.activeSelf||m.NewSeason_Panel_Forced_obj.activeSelf,Is.False);Assert.That(m.Reward_Scroll.horizontalNormalizedPosition,Is.Zero.Within(.001));Capture("new-season");yield return null;Assert.That(new SaveArchive(folder).Load().Mission_Season_Num,Is.EqualTo(season+1));
    }
    [UnityTest] public IEnumerator AdventureAdReduces30MinutesTwicePerDayAndColdPersists()
    {
        yield return Load();var m=c.Adventure;var now=new DateTime(2026,10,12,12,0,0);m.Now=()=>now;var type=(Map_Type)Enumerable.Range(0,3).First(i=>AdventureRules.OpenDay((Map_Type)i,now.DayOfWeek));c.State.Owned_Pet_list[0]=0;
        Assert.That(m.Progression.Start(type,0,new[]{Dispatch_Pet.Owned(0)}),Is.True);m.Open();m.adventure_panel_ui.Map_Info_List_Reload(type);yield return null;var row=m.adventure_panel_ui.Adventure_Map_Info_list[0];var map=m.Progression.Map(type,0);var before=AdventureRules.ParseDate(map.Enter_dateTime);
        yield return Click(row.AD_Btn_obj.GetComponent<Button>());Assert.That(AdventureRules.ParseDate(map.Enter_dateTime),Is.EqualTo(before.AddMinutes(-30)));Assert.That(c.State.Adventure_AD_Reduce_UseCount,Is.EqualTo(1));
        yield return Click(row.AD_Btn_obj.GetComponent<Button>());Assert.That(AdventureRules.ParseDate(map.Enter_dateTime),Is.EqualTo(before.AddMinutes(-60)));Assert.That(m.AD_Reduce_Able_return(type,0),Is.False);m.AD_Reduce_Request(type,0);yield return null;Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(2));Assert.That(new SaveArchive(folder).Load().Adventure_AD_Reduce_UseCount,Is.EqualTo(2));
        now=now.AddDays(1);map.Enter_dateTime=now.ToString("O");Assert.That(m.AD_Reduce_Able_return(type,0),Is.True);Assert.That(c.State.Adventure_AD_Reduce_UseCount,Is.Zero);
    }

}
