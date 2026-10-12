using System;
using System.IO;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using CatGunner.Recovery;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
public sealed class OriginalSafeTests
{
 private static OriginalSafeInventory Model(out OriginalSaveData state,out OriginalGunInventory guns)
 {
  state=new OriginalSaveData{Selected_items=new[]{0,-1,-1},Gun_Collect=(bool[])OriginalEquipmentCatalogue.Load().Gun_Collect.Clone()};
  guns=new OriginalGunInventory(state,(lo,hi)=>throw new Exception("Storage must not roll weapons"));return new OriginalSafeInventory(guns);
 }
 private static string Reports=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
 private static void Independent(Scene s,LoadSceneMode mode)
 {
  if(s.name!="RecoveredClient")return;var c=s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single();c.Persist=false;foreach(var cat in c.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;
 }
 private static void Click(Button b)
 {
  Assert.That(b.gameObject.activeInHierarchy&&b.interactable,Is.True,b.name);Canvas.ForceUpdateCanvases();var rect=(RectTransform)b.transform;
  var e=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center))};var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(e,hits);
  Assert.That(hits.Count,Is.GreaterThan(0),b.name);Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(b),string.Join(" | ",hits.Take(6).Select(h=>h.gameObject.name)));ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,e,ExecuteEvents.pointerClickHandler);
 }
 [Test] public void OriginalStageGateSixFreeSlotsAndSequentialDiamondPrices()
 {
  var m=Model(out var s,out var g);Assert.That(m.Unlocked,Is.False);s.Stage_Value_Max=389;Assert.That(m.Unlocked,Is.False);s.Stage_Value_Max=390;Assert.That(m.Unlocked,Is.True);Assert.That(m.OpenCount,Is.EqualTo(6));Assert.That(s.Safe_Gun_list,Is.EqualTo(Enumerable.Repeat(-1,16)));
  s.Dia=2750;Assert.That(m.Purchase(7),Is.False);for(int i=0;i<10;i++){Assert.That(m.NextPrice,Is.EqualTo(50*(i+1)));Assert.That(m.Purchase(i+6),Is.True);}
  Assert.That((m.OpenCount,s.Dia,s._useDia),Is.EqualTo((16,0,2750)));Assert.That(m.Purchase(16),Is.False);Assert.That(m.IsNext(16),Is.False);
 }
 [Test] public void DepositAndWithdrawPreserveDuplicatesCountsAndAutomaticPause()
 {
  var m=Model(out var s,out var g);s.Owned_Gun_list[5]=9;s.Owned_Gun_Pause[5]=true;Assert.That(m.Put(5),Is.EqualTo(-1));s.Stage_Value_Max=390;
  var counts=(int[])s.Weapon_Get_Counts.Clone();var collect=(bool[])s.Gun_Collect.Clone();
  Assert.That(m.Put(5,9),Is.Zero);Assert.That(s.Owned_Gun_list[5],Is.EqualTo(-1));Assert.That(s.Owned_Gun_Pause[5],Is.False);
  s.Owned_Gun_list[5]=9;Assert.That(m.Put(5),Is.EqualTo(1));Assert.That(m.GunCount,Is.EqualTo(2));Assert.That(m.TakeOut(1),Is.Zero);Assert.That(s.Owned_Gun_Pause[0],Is.True);Assert.That(s.Safe_Gun_list[0],Is.EqualTo(9));Assert.That(s.Safe_Gun_list[1],Is.EqualTo(-1));
  s.Owned_Gun_list[1]=5;Assert.That(g.Merge(0,1),Is.False);Assert.That(s.Weapon_Get_Counts,Is.EqualTo(counts));Assert.That(s.Gun_Collect,Is.EqualTo(collect));Assert.That(s.Gacha_Draw_Count,Is.Zero);
 }
 [Test] public void FullAdStaleInvalidAndInsufficientTransactionsAreAtomic()
 {
  var m=Model(out var s,out var g);s.Stage_Value_Max=390;s.Owned_Gun_list[0]=4;s.AD_Gun_SlotIndex=0;Assert.That(m.Put(0),Is.EqualTo(-1));s.AD_Gun_SlotIndex=-1;
  Assert.That(m.Put(0,3),Is.EqualTo(-1));for(int i=0;i<6;i++)s.Safe_Gun_list[i]=i;
  string before=OriginalSaveArchive.Encode(s);Assert.That(m.Put(0),Is.EqualTo(-1));Assert.That(m.Purchase(6),Is.False);Assert.That(m.Put(-1),Is.EqualTo(-1));Assert.That(m.TakeOut(16),Is.EqualTo(-1));Assert.That(OriginalSaveArchive.Encode(s),Is.EqualTo(before));
  Array.Fill(s.Owned_Gun_list,0);before=OriginalSaveArchive.Encode(s);Assert.That(m.TakeOut(0),Is.EqualTo(-1));Assert.That(OriginalSaveArchive.Encode(s),Is.EqualTo(before));
  s.Owned_Gun_list[3]=-1;s.Safe_Gun_list[15]=64;Assert.That(m.TakeOut(15),Is.EqualTo(3));Assert.That(s.Owned_Gun_Pause[3],Is.True); // Native allows a persisted closed slot.
 }
 [Test] public void LegacyExpansionAndMalformedProfilesPreserveInputBeforeMutation()
 {
  var m=Model(out var s,out var g);s.Safe_Gun_list=new[]{3,-1,3};s.Safe_Purchased_Count=2;m=new OriginalSafeInventory(g);Assert.That(s.Safe_Gun_list.Take(3),Is.EqualTo(new[]{3,-1,3}));Assert.That(s.Safe_Gun_list.Skip(3),Is.All.EqualTo(-1));
  var restored=OriginalSaveArchive.Decode(OriginalSaveArchive.Encode(s));Assert.That(restored.Safe_Gun_list,Is.EqualTo(s.Safe_Gun_list));Assert.That(restored.Safe_Purchased_Count,Is.EqualTo(2));
  s.Safe_Purchased_Count=11;var array=s.Safe_Gun_list;Assert.Throws<NotSupportedException>(()=>new OriginalSafeInventory(g));Assert.That(s.Safe_Purchased_Count,Is.EqualTo(11));Assert.That(s.Safe_Gun_list,Is.SameAs(array));
  s.Safe_Purchased_Count=0;s.Safe_Gun_list=new[]{65};Assert.Throws<NotSupportedException>(()=>new OriginalSafeInventory(g));Assert.That(s.Safe_Gun_list,Is.EqualTo(new[]{65}));
 }
 [UnityTest] public IEnumerator OriginalHudDragStoragePurchaseAndTakeOutUseRealRaycasts()
 {
  SceneManager.sceneLoaded+=Independent;
  try{
   yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();yield return null;var c=RecoveryForestClient.Instance;var m=c.Safe;Assert.That(m,Is.Not.Null);
   Click(UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="Gun_Btn"));yield return new WaitForSeconds(.35f);
   Click(m.safe_hud.GetComponent<Button>());Assert.That(m.safe_ui.gameObject.activeSelf,Is.False);Assert.That(m.safe_hud.Locked_obj.activeSelf,Is.True);
   c.Forest.Stage_Value_Max=390;c.State.Owned_Gun_list[7]=9;c.State.Owned_Gun_Pause[7]=true;c.Guns.ReloadGunUI();m.UI_Reload();
   var item=c.Guns.gunItemList.ActiveItems.Single();Canvas.ForceUpdateCanvases();var data=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,m.safe_hud.transform.position)};
   ExecuteEvents.Execute(item.gameObject,data,ExecuteEvents.beginDragHandler);Assert.That(m.safe_hud.Glow_obj.activeSelf,Is.True);ExecuteEvents.Execute(item.gameObject,data,ExecuteEvents.dragHandler);yield return new WaitForSecondsRealtime(.16f);Assert.That(m.safe_hud.transform.localScale.x,Is.EqualTo(m.safe_hud.HoverScale).Within(.001f));ExecuteEvents.Execute(item.gameObject,data,ExecuteEvents.endDragHandler);
   Assert.That((c.State.Owned_Gun_list[7],c.State.Safe_Gun_list[0],c.State.Owned_Gun_Pause[7]),Is.EqualTo((-1,9,false)));Assert.That(m.safe_hud.Glow_obj.activeSelf,Is.False);
   Click(m.safe_hud.GetComponent<Button>());yield return new WaitForSeconds(.35f);Assert.That(m.safe_ui.Slot_list.Count(s=>s.Current==Safe_Slot.State.Empty),Is.EqualTo(5));Assert.That(m.safe_ui.Slot_list[6].Price_txt.text,Is.EqualTo("<sprite=1>50"));
   c.State.Dia=49;Click(m.safe_ui.Slot_list[6].GetComponent<Button>());Assert.That(c.State.Safe_Purchased_Count,Is.Zero);c.State.Dia=150;Click(m.safe_ui.Slot_list[6].GetComponent<Button>());Assert.That((c.State.Safe_Purchased_Count,c.State.Dia),Is.EqualTo((1,100)));Assert.That(m.safe_ui.Slot_list[7].Price_txt.text,Is.EqualTo("<sprite=1>100"));
   Directory.CreateDirectory(Path.Combine(Reports,"visual"));ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/safe-storage-test-gpu.png"));yield return new WaitForSeconds(.2f);
   Click(m.safe_ui.Slot_list[0].gun_item.GetComponent<Button>());yield return new WaitForSeconds(.35f);var info=c.Guns.gun_info_ui;Assert.That(info.TakeOut_Btn_obj.activeSelf,Is.True);Assert.That(info.Pause_obj.activeSelf,Is.True);Assert.That(info.Unpause_Btn_obj.activeSelf,Is.False);
   ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/safe-detail-test-gpu.png"));yield return new WaitForSeconds(.2f);Array.Fill(c.State.Owned_Gun_list,0);Click(info.TakeOut_Btn_obj.GetComponent<Button>());Assert.That(info.gameObject.activeSelf,Is.True);Assert.That(c.State.Safe_Gun_list[0],Is.EqualTo(9));
   c.State.Owned_Gun_list[5]=-1;Click(info.TakeOut_Btn_obj.GetComponent<Button>());Assert.That(info.gameObject.activeSelf,Is.False);Assert.That((c.State.Owned_Gun_list[5],c.State.Owned_Gun_Pause[5],c.State.Safe_Gun_list[0]),Is.EqualTo((9,true,-1)));m.safe_ui.Close();
  }finally{SceneManager.sceneLoaded-=Independent;}
  yield return SceneManager.LoadSceneAsync("RecoveredTarget");
 }
 [UnityTest] public IEnumerator PauseGateAdStaleDetailsAndEquippedProtectionUseNativeContexts()
 {
  SceneManager.sceneLoaded+=Independent;
  try{
   yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();yield return null;var c=RecoveryForestClient.Instance;c.State.Owned_Gun_list[0]=0;c.State.Owned_Gun_list[1]=4;c.Guns.ReloadGunUI();var info=c.Guns.gun_info_ui;
   Click(UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="Gun_Btn"));yield return new WaitForSeconds(.35f);
   info.Show(0,1,0);yield return new WaitForSeconds(.35f);Assert.That(info.Pause_Btn_Locked_obj.activeSelf,Is.True);Click(info.Pause_Btn_Locked_obj.GetComponent<Button>());Assert.That(c.State.Owned_Gun_Pause[0],Is.False);c.Forest.Stage_Value_Max=390;info.Buttons_Reload();yield return null;Click(info.Pause_Btn_obj.GetComponent<Button>());Assert.That(c.Inventory.Merge(0,1),Is.False);yield return null;Click(info.Unpause_Btn_obj.GetComponent<Button>());Assert.That(c.State.Owned_Gun_Pause[0],Is.False);
   c.State.AD_Gun_SlotIndex=0;info.Show(0,1,0);Assert.That(info.Pause_Btn_obj.activeSelf,Is.False);info.onClick_Pause();Assert.That(c.State.Owned_Gun_Pause[0],Is.False);Assert.That(info.gameObject.activeSelf,Is.False);c.State.AD_Gun_SlotIndex=-1;
   info.Show(0,1,0);c.State.Owned_Gun_list[0]=3;info.onClick_Pause();Assert.That(c.State.Owned_Gun_Pause[0],Is.False);Assert.That(info.gameObject.activeSelf,Is.False);
   info.Show(c.State.Selected_items[0],2,0);info.onClick_Pause();Assert.That(c.State.Selected_Pause[0],Is.True);Assert.That(c.Team.Cat_list[0].gameObject.activeSelf,Is.True);info.onClick_Unpause();Assert.That(c.State.Selected_Pause[0],Is.False);
   c.State.Safe_Gun_list[0]=4;info.Show(4,3,0);c.State.Safe_Gun_list[0]=5;info.onClick_TakeOut();Assert.That(c.State.Safe_Gun_list[0],Is.EqualTo(5));Assert.That(info.gameObject.activeSelf,Is.False);
  }finally{SceneManager.sceneLoaded-=Independent;}
  yield return SceneManager.LoadSceneAsync("RecoveredTarget");
 }
 [UnityTest] public IEnumerator IndependentSaveReloadRebirthAndRaidRetainStoredGuns()
 {
  string folder=Path.Combine(Path.GetTempPath(),"catgunner-safe-"+Guid.NewGuid().ToString("N"));
  UnityEngine.Events.UnityAction<Scene,LoadSceneMode> configure=(s,mode)=>{Independent(s,mode);if(s.name=="RecoveredClient"){var c=s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single();c.Persist=true;c.SaveFolderOverride=folder;}};SceneManager.sceneLoaded+=configure;
  try{
   yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();yield return null;var c=RecoveryForestClient.Instance;c.Forest.Stage_Now=39;c.Forest.Stage_Value_Max=390;c.State.Owned_Gun_list[0]=30;c.State.Dia=50;Assert.That(c.Safe.Inventory.Purchase(6),Is.True);Assert.That(c.Safe.Put_From_Inventory(0),Is.Zero);c.SaveNow();
   yield return SceneManager.LoadSceneAsync("RecoveredTarget");yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();yield return null;c=RecoveryForestClient.Instance;Assert.That((c.State.Safe_Purchased_Count,c.State.Dia,c.State.Safe_Gun_list[0]),Is.EqualTo((1,0,30)));Assert.That(c.Safe.Is_Unlocked,Is.True);
   Assert.That(c.RebirthNow(),Is.True);Assert.That(c.Safe.Is_Unlocked,Is.True);Assert.That(c.State.Safe_Gun_list[0],Is.EqualTo(30));Assert.That(c.RaidMode.GunNum_By_Index(19),Is.EqualTo(30));Assert.That(c.Safe.Take_Out(0),Is.Zero);Assert.That(c.State.Owned_Gun_Pause[0],Is.True);c.SaveNow();
   yield return SceneManager.LoadSceneAsync("RecoveredTarget");yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();yield return null;c=RecoveryForestClient.Instance;Assert.That(c.State.Safe_Gun_list[0],Is.EqualTo(-1));Assert.That((c.State.Owned_Gun_list[0],c.State.Owned_Gun_Pause[0],c.State.Safe_Purchased_Count),Is.EqualTo((30,true,1)));c.Persist=false;
  }finally{SceneManager.sceneLoaded-=configure;}
  yield return SceneManager.LoadSceneAsync("RecoveredTarget");Directory.Delete(folder,true);
 }
}
