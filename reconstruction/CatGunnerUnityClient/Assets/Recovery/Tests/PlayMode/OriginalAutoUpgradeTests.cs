using System;
using System.Collections;
using System.IO;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Linq;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using CatGunner.Recovery;

public sealed class OriginalAutoUpgradeTests
{
 string folder; bool background,disabledBefore; RecoveryForestClient c; AutoUpgrade_UI ui;
 void Independent(Scene scene,LoadSceneMode mode){if(scene.name=="RecoveredClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride=folder;}
 [UnitySetUp] public IEnumerator Setup(){folder=Path.Combine(Application.temporaryCachePath,"AutoUpgrade-"+Guid.NewGuid().ToString("N"));disabledBefore=Setting.is_AutoDisable;Setting.is_AutoDisable=false;background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;SceneManager.sceneLoaded+=Independent;yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();ForestRuntimeAcceptance.IsGaming=false;c=RecoveryForestClient.Instance;c.DailyLogin.Close();ui=c.AutoUpgrades.Panel;}
 [UnityTearDown] public IEnumerator Cleanup(){Time.timeScale=1;c?.RewardedAds.Cancel();yield return SceneManager.LoadSceneAsync("RecoveredTarget");Setting.is_AutoDisable=disabledBefore;SceneManager.sceneLoaded-=Independent;if(Directory.Exists(folder))Directory.Delete(folder,true);Application.runInBackground=background;}
 [UnityTest] public IEnumerator OriginalAutoUpgradeHudAndPopupArePresentForPlay()
 {
  var all=SceneManager.GetActiveScene().GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).ToArray();
  Assert.That(all.Any(t=>t.name=="Auto_Btn"),Is.True,"Original auto-upgrade HUD button has not yet been integrated");
  Assert.That(all.Any(t=>t.name=="AutoUpgrade_UI"),Is.True,"Original auto-upgrade popup has not yet been integrated");yield return null;
 }

 static Button Bound(UnityEngine.Object target,string method)=>UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(i=>b.onClick.GetPersistentTarget(i)==target&&b.onClick.GetPersistentMethodName(i)==method));
 static IEnumerator Click(Button button)
 {
  yield return new WaitForSeconds(.35f);Canvas.ForceUpdateCanvases();Assert.That(button.isActiveAndEnabled&&button.interactable,Is.True,button.name);
  var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
  try{
   var r=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(r.rect.center));var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
   Assert.That(hits.Count,Is.GreaterThan(0));Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(button),"Top hit: "+hits[0].gameObject.name);
   yield return null;mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
  }finally{module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
 }
 IEnumerator Open(){c.Tutorial.SetCleared();yield return Click(UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="Auto_Btn"));Assert.That(ui.isActiveAndEnabled,Is.True);}
 void Capture(string name)=>ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/auto-upgrade-"+name+"-gpu.png")));
 [UnityTest] public IEnumerator RealHudAdAndSwitchButtonsBuyNativeAffordableLowestLevelsAndSave()
 {
  yield return Open();yield return new WaitForSeconds(.4f);Capture("offer");yield return null;c.State.Money=OriginalAmount.FromValue(new DecimalAmount(500));c.NotifyTutorialCurrencyChanged();
  yield return Click(Bound(ui,"AutoUpgrade_AD_Click"));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));
  Assert.That(c.State.Upgrade_Lv,Is.EqualTo(new[]{3,2,2}));Assert.That(c.State.Money.Value.PlainInteger(),Is.EqualTo("51"));Assert.That(c.State.Money_Accum.Value.PlainInteger(),Is.EqualTo("0"));
  Assert.That(c.AutoUpgrades.Remaining,Is.InRange(597f,600f));Assert.That(ui.Purchase_obj.activeSelf,Is.True);Assert.That(ui.AD_Btn_obj.activeSelf,Is.False);Assert.That(c.State.Is_AutoUpgrade_Pack,Is.False);
  foreach(var p in c.UpgradePanels)Assert.That(p.Lv_txt.text,Is.EqualTo("Lv."+c.State.Upgrade_Lv[p.type]));yield return new WaitForSeconds(.4f);Capture("active");yield return null;
  c.SaveNow();var saved=new OriginalSaveArchive(folder).Load();Assert.That(saved.Upgrade_Lv,Is.EqualTo(new[]{3,2,2}));Assert.That(saved.AD_AutoUpgrade_RemainSec,Is.EqualTo(c.AutoUpgrades.Remaining).Within(.6));
  yield return Click(Bound(ui,"AutoUpgrade_Disable"));Assert.That(Setting.is_AutoDisable,Is.True);float before=c.AutoUpgrades.Remaining;
  c.State.Money=OriginalAmount.FromValue(new DecimalAmount(500));c.NotifyTutorialCurrencyChanged();yield return new WaitForSeconds(.15f);Assert.That(c.State.Upgrade_Lv,Is.EqualTo(new[]{3,2,2}));Assert.That(c.AutoUpgrades.Remaining,Is.LessThan(before));
  yield return Click(Bound(ui,"AutoUpgrade_Able"));Assert.That(Setting.is_AutoDisable,Is.False);Assert.That(c.State.Upgrade_Lv,Is.EqualTo(new[]{3,2,2}));
  c.NotifyTutorialCurrencyChanged();yield return null;yield return null;Assert.That(c.State.Upgrade_Lv,Is.EqualTo(new[]{4,4,3}));Assert.That(c.State.Money.Value.PlainInteger(),Is.EqualTo("48"));
 }
 [UnityTest] public IEnumerator LostRuntimeServicesCannotOverwriteLastGoodArchiveOrThrowOnStop()
 {
  c.SaveNow();var path=Path.Combine(folder,"NoSaveFile.json");string before=File.ReadAllText(path),stamp=c.State.LastSaveTime;int stage=c.State.Stage_Now;
  var flags=System.Reflection.BindingFlags.NonPublic|System.Reflection.BindingFlags.Instance;var field=typeof(RecoveryForestClient).GetField("archive",flags);var archive=field.GetValue(c);var inv=typeof(RecoveryForestClient).GetField("<Inventory>k__BackingField",flags);var inventory=inv.GetValue(c);
  try{field.SetValue(c,null);inv.SetValue(c,null);Assert.That(c.ReadyForPlay,Is.False);c.Forest.Stage_Now=stage+1;c.State.Money=OriginalAmount.FromValue(new DecimalAmount(500));c.SaveNow();Assert.That(c.State.Stage_Now,Is.EqualTo(stage));Assert.That(c.State.LastSaveTime,Is.EqualTo(stamp));Assert.That(c.Upgrade(0),Is.False);Assert.That(c.AutoUpgradeAll(),Is.False);Assert.That(File.ReadAllText(path),Is.EqualTo(before));c.SendMessage("OnDisable");Assert.That(File.ReadAllText(path),Is.EqualTo(before));}
  finally{field.SetValue(c,archive);inv.SetValue(c,inventory);c.Forest.Stage_Now=stage;}
  yield return null;
 }
 [UnityTest] public IEnumerator OriginalCloseButtonRestoresBatchSoundAndAllThreeUpgradeAnimations()
 {
  yield return Open();Setting.instance.is_SFX_Mute=false;
  var frames=(Dictionary<SfxType,int>)typeof(Sound_manager).GetField("lastPlayedFrame",System.Reflection.BindingFlags.NonPublic|System.Reflection.BindingFlags.Instance).GetValue(Sound_manager.instance);
  int before=frames.TryGetValue(SfxType.Upgrade,out var value)?value:-1;Assert.That(Cat_manager.is_Shoot_Mute,Is.True);
  c.State.Money=OriginalAmount.FromValue(new DecimalAmount(500));yield return Click(Bound(ui,"AutoUpgrade_AD_Click"));Assert.That(frames.TryGetValue(SfxType.Upgrade,out value)?value:-1,Is.EqualTo(before));
  yield return Click(ui.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));Assert.That(ui.gameObject.activeSelf,Is.False);Assert.That(Cat_manager.is_Shoot_Mute,Is.False);
  c.State.Money=OriginalAmount.FromValue(new DecimalAmount(500));c.NotifyTutorialCurrencyChanged();yield return null;yield return null;
  Assert.That(frames.ContainsKey(SfxType.Upgrade),Is.True);Assert.That(frames[SfxType.Upgrade],Is.GreaterThan(before));Assert.That(c.UpgradeAnimations.Length,Is.EqualTo(3));Assert.That(c.UpgradeAnimations.All(g=>g.activeSelf),Is.True);
 }
 [UnityTest] public IEnumerator ClosingOfferCancelsRewardAndRepeatedRequestsCannotDoubleGrant()
 {
  yield return Open();Assert.That(c.AutoUpgrades.RequestReward(),Is.True);Assert.That(c.AutoUpgrades.RequestReward(),Is.False);ui.gameObject.SetActive(false);yield return null;yield return null;
  Assert.That(c.AutoUpgrades.Active,Is.False);Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);Assert.That(c.State.Is_AutoUpgrade_Pack,Is.False);
  ui.gameObject.SetActive(true);ui.AutoUpgrade_AD_Click();ui.AutoUpgrade_AD_Click();yield return null;yield return null;Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));float time=c.AutoUpgrades.Remaining;ui.AutoUpgrade_AD_Click();yield return null;Assert.That(c.AutoUpgrades.Remaining,Is.LessThanOrEqualTo(time));
 }
 [UnityTest] public IEnumerator ScaledPauseExpirySameDayAndNextDayReloadUseOriginalVisibility()
 {
  yield return Open();ui.AutoUpgrade_AD_Click();yield return null;yield return null;Time.timeScale=0;float frozen=c.AutoUpgrades.Remaining;yield return new WaitForSecondsRealtime(.15f);Assert.That(c.AutoUpgrades.Remaining,Is.EqualTo(frozen));Time.timeScale=1;
  c.State.AD_AutoUpgrade_RemainSec=.001f;yield return null;yield return null;Assert.That(c.AutoUpgrades.Remaining,Is.Zero);Assert.That(ui.NonPurchase_obj.activeSelf,Is.True);Assert.That(ui.AD_Btn_obj.activeSelf,Is.False);Assert.That(ui.Shop_Btn_obj.activeSelf,Is.True);Assert.That(ui.Shop_Btn_obj.GetComponent<Button>().interactable,Is.True);
  Assert.That(new OriginalSaveArchive(folder).Load().AD_AutoUpgrade_RemainSec,Is.Zero);c.AutoUpgrades.Now=()=>DateTime.Now.AddDays(1);ui.gameObject.SetActive(false);ui.gameObject.SetActive(true);Assert.That(ui.AD_Btn_obj.activeSelf,Is.True);Assert.That(ui.Shop_Btn_obj.activeSelf,Is.False);ui.AutoUpgrade_AD_Click();yield return null;yield return null;Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(2));
 }
 [UnityTest] public IEnumerator ColdSceneReloadPreservesBudgetWithoutConsumingOfflineSeconds()
 {
  yield return Open();c.AutoUpgrades.Now=()=>new DateTime(2026,10,11);ui.AutoUpgrade_AD_Click();yield return null;yield return null;Time.timeScale=0;c.State.AD_AutoUpgrade_RemainSec=123.75f;c.SaveNow();
  yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();c=RecoveryForestClient.Instance;ui=c.AutoUpgrades.Panel;ForestRuntimeAcceptance.IsGaming=false;c.DailyLogin.Close();c.AutoUpgrades.Now=()=>new DateTime(2026,10,11);
  Assert.That(c.AutoUpgrades.Remaining,Is.EqualTo(123.75f));Assert.That(c.AutoUpgrades.Able,Is.False);Assert.That(c.AutoUpgrades.WatchedToday,Is.True);Assert.That(c.State.Is_AutoUpgrade_Pack,Is.False);Time.timeScale=1;
 }
 [UnityTest] public IEnumerator PaidStateSkipsAdAndKeepsTimedBudgetWithoutGrantingNewEntitlement()
 {
  c.State.Is_AutoUpgrade_Pack=true;c.State.AD_AutoUpgrade_RemainSec=18;yield return Open();Assert.That(c.AutoUpgrades.Able,Is.False);Assert.That(ui.AD_Btn_obj.activeSelf,Is.False);Assert.That(ui.Buff_Time_txt.gameObject.activeSelf,Is.False);
  float before=c.AutoUpgrades.Remaining;c.State.Money=OriginalAmount.FromValue(new DecimalAmount(500));c.NotifyTutorialCurrencyChanged();yield return null;yield return null;Assert.That(c.State.Upgrade_Lv,Is.EqualTo(new[]{3,2,2}));Assert.That(c.AutoUpgrades.Remaining,Is.EqualTo(before));Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);
 }
}

public sealed class OriginalAutoUpgradeRulesTests
{
 [TestCase(-1f,0f)][TestCase(901f,600f)][TestCase(float.NaN,0f)][TestCase(float.PositiveInfinity,600f)]
 public void NativeLoadClampsTimerAndNormalizesNullDate(float input,float expected){var s=new OriginalSaveData{AD_AutoUpgrade_RemainSec=input};OriginalAutoUpgradeRules.Load(s);Assert.That(s.AD_AutoUpgrade_RemainSec,Is.EqualTo(expected));Assert.That(s.AD_AutoUpgrade_LastDate,Is.Empty);}
 [Test] public void DayBoundaryRequiresInactiveBudgetAndNeverCreatesPackOwnership()
 {var now=new DateTime(2026,10,11,23,59,59);var s=new OriginalSaveData();Assert.That(OriginalAutoUpgradeRules.Able(s,now),Is.True);OriginalAutoUpgradeRules.Reward(s,now);Assert.That(s.AD_AutoUpgrade_LastDate,Is.EqualTo("20261011"));Assert.That(s.AD_AutoUpgrade_RemainSec,Is.EqualTo(600));Assert.That(s.Is_AutoUpgrade_Pack,Is.False);Assert.That(OriginalAutoUpgradeRules.Able(s,now.AddSeconds(2)),Is.False);s.AD_AutoUpgrade_RemainSec=0;Assert.That(OriginalAutoUpgradeRules.Able(s,now),Is.False);Assert.That(OriginalAutoUpgradeRules.Able(s,now.AddSeconds(2)),Is.True);}
 [Test] public void FrameCapAdPauseAndPaidBudgetAreNativeGates()
 {var s=new OriginalSaveData{AD_AutoUpgrade_RemainSec=10};OriginalAutoUpgradeRules.Tick(s,5,false);Assert.That(s.AD_AutoUpgrade_RemainSec,Is.EqualTo(9.5f));OriginalAutoUpgradeRules.Tick(s,.25f,true);Assert.That(s.AD_AutoUpgrade_RemainSec,Is.EqualTo(9.5f));s.Is_AutoUpgrade_Pack=true;OriginalAutoUpgradeRules.Tick(s,.25f,false);Assert.That(s.AD_AutoUpgrade_RemainSec,Is.EqualTo(9.5f));s.Is_AutoUpgrade_Pack=false;s.AD_AutoUpgrade_RemainSec=.1f;Assert.That(OriginalAutoUpgradeRules.Tick(s,.2f,false),Is.True);Assert.That(s.AD_AutoUpgrade_RemainSec,Is.Zero);}
 [TestCase(600f,"10:00")][TestCase(59.99f,"0:59")][TestCase(0f,"0:00")]
 public void ExactOriginalLiteralTruncatesTime(float value,string expected)=>Assert.That(OriginalAutoUpgradeRules.TimeStr(value),Is.EqualTo(expected));
}
