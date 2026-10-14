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
public sealed class AdventureTests
{
 private static readonly DateTime Sunday=new DateTime(2024,1,7,12,0,0);
 private static string Reports=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
 private static AdventureProgression Model(out SaveData s,Func<DateTime> now=null)
 {s=new SaveData();new PetInventory(s,ProgressionCatalogue.Load());return new AdventureProgression(s,null,now??(()=>Sunday));}
 private static void Independent(Scene scene,LoadSceneMode mode)
 {
  if(scene.name!="GameClient")return;var c=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();c.Persist=false;foreach(var cat in c.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;
 }
 private static void Click(Button b,Vector2? localPoint=null)
 {
  Assert.That(b.gameObject.activeInHierarchy&&b.interactable,Is.True,b.name);Canvas.ForceUpdateCanvases();var r=(RectTransform)b.transform;
  var e=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(localPoint??r.rect.center))};Assert.That(e.position.x,Is.InRange(0f,(float)Screen.width));Assert.That(e.position.y,Is.InRange(0f,(float)Screen.height));var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(e,hits);
  Assert.That(hits.Count,Is.GreaterThan(0));Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(b),string.Join(" | ",hits.Take(8).Select(h=>h.gameObject.name)));
  ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,e,ExecuteEvents.pointerClickHandler);
 }
 private static Button ButtonIn(GameObject g,string method)=>g.GetComponentsInChildren<Button>(true).Single(b=>(method!="SetActive"||b.name=="Close_Btn")&&Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(i=>b.onClick.GetPersistentMethodName(i)==method));
 [Test] public void OriginalTablesWeekdaysLevelAndSlotGatesAreShippedValues()
 {
  var m=Model(out var s);Assert.That(m.Catalogue.DurationHours,Is.EqualTo(new[]{1,2,4,8,16}));Assert.That(m.Catalogue.UnlockLevels,Is.EqualTo(new[]{0,1,3,6,10}));Assert.That(m.Catalogue.ExpBalance,Is.EqualTo(new[]{10,60,100,130,180,230,280,340,400,470,550,630,720,820,920}));
  Assert.That(m.OpenSlots,Is.EqualTo(1));s.Adventure_Lv=2;Assert.That(m.OpenSlots,Is.EqualTo(2));s.Adventure_Lv=7;Assert.That(m.OpenSlots,Is.EqualTo(3));s.Adventure_Lv=0;Assert.That(m.Unlocked(0),Is.True);Assert.That(m.Unlocked(1),Is.False);
  Assert.That(m.CoreReward(new[]{4},0),Is.EqualTo(27));Assert.That(m.CoreReward(new[]{5},0),Is.EqualTo(30));Assert.That(m.CoreReward(new[]{0,5,9},4),Is.EqualTo(1408));Assert.That(m.ExpReward(3,4),Is.EqualTo(480));
  foreach(var t in new[]{Map_Type.Forest,Map_Type.Desert,Map_Type.Tundra}){var days=Enumerable.Range(0,7).Where(i=>AdventureRules.OpenDay(t,(DayOfWeek)i));Assert.That(days,Is.EqualTo(t==Map_Type.Forest?new[]{0,1,4}:t==Map_Type.Desert?new[]{0,2,5}:new[]{0,3,6}));}
 }
 [Test] public void TicketsUseFourHourIntervalsFractionalCarryFullCapAndBackwardClock()
 {
  DateTime now=Sunday;var m=Model(out var s,()=>now);s.Owned_Pet_list[0]=0;Assert.That(m.Start(Map_Type.Forest,0,new[]{Dispatch_Pet.Owned(0)}),Is.True);Assert.That(s.Adventure_Ticket_Now,Is.EqualTo(19));
  now=Sunday.AddHours(3).AddMinutes(59);Assert.That(m.RefreshTickets(),Is.False);now=Sunday.AddHours(4);Assert.That(m.RefreshTickets(),Is.True);Assert.That(s.Adventure_Ticket_Now,Is.EqualTo(20));Assert.That(AdventureRules.ParseDate(s.Adventure_LastTicketCharge_Date),Is.EqualTo(now));
  s.Adventure_Ticket_Now=7;s.Adventure_LastTicketCharge_Date=Sunday.ToString("O");now=Sunday.AddHours(9.5);m.RefreshTickets();Assert.That(s.Adventure_Ticket_Now,Is.EqualTo(9));Assert.That(m.TicketRemaining(),Is.EqualTo(TimeSpan.FromHours(2.5)));Assert.That(AdventureRules.ParseDate(s.Adventure_LastTicketCharge_Date),Is.EqualTo(Sunday.AddHours(8)));
  now=Sunday.AddHours(7);Assert.That(m.RefreshTickets(),Is.False);Assert.That(s.Adventure_Ticket_Now,Is.EqualTo(9));now=Sunday.AddDays(10);m.RefreshTickets();Assert.That(s.Adventure_Ticket_Now,Is.EqualTo(20));
  Assert.That(Adventure_Ticket_UI.Format_Cooltime(TimeSpan.FromSeconds(59)),Is.EqualTo("59s"));Assert.That(Adventure_Map_info_item.FormatDuration(TimeSpan.FromDays(2)),Is.EqualTo("48h 0m 0s"));
 }
 [Test] public void SelectionLocksPhysicalSlotsAndRejectsInvalidStartsWithoutTicketLoss()
 {
  var m=Model(out var s);s.Pet_Selected_items[0]=2;s.Owned_Pet_list[0]=8;s.Owned_Pet_list[1]=4;Assert.That(m.Best(),Is.EqualTo(new[]{Dispatch_Pet.Owned(0)}));
  Assert.That(m.Start(Map_Type.Forest,1,m.Best()),Is.False);Assert.That(s.Adventure_Ticket_Now,Is.EqualTo(20));Assert.That(m.Start(Map_Type.Forest,0,new[]{Dispatch_Pet.Owned(0),Dispatch_Pet.Owned(0),Dispatch_Pet.Owned(int.MaxValue)}),Is.True);Assert.That(s.Owned_Pet_LockGroup[0],Is.Zero);Assert.That(s.Adventure_Ticket_Now,Is.EqualTo(19));
  var inv=new PetInventory(s,ProgressionCatalogue.Load());Assert.That(inv.Equip(0,0),Is.False);Assert.That(inv.SwapOwned(0,1),Is.False);Assert.That(inv.Merge(0,1),Is.False);
  Assert.That(m.Start(Map_Type.Forest,0,new[]{Dispatch_Pet.Owned(1)}),Is.False);Assert.That(m.Cancel(Map_Type.Forest,0),Is.True);Assert.That(s.Owned_Pet_LockGroup[0],Is.EqualTo(-1));Assert.That(s.Adventure_Ticket_Now,Is.EqualTo(19));Assert.That(m.Cancel(Map_Type.Forest,0),Is.False);Assert.That(s.Adventure_Currency_Core,Is.EqualTo(new int[4]));
  m.Now=()=>Sunday.AddDays(2);Assert.That(m.Start(Map_Type.Forest,0,m.Best()),Is.False);Assert.That(m.Start(Map_Type.Desert,0,m.Best()),Is.True);Assert.That(s.Owned_Pet_LockGroup[0],Is.EqualTo(100));
 }
 [Test] public void ClaimUsesLiveGradesOnceUnlocksPetsAndLevelsToNativeCap()
 {
  DateTime now=Sunday;var m=Model(out var s,()=>now);s.Pet_Selected_items[0]=5;Assert.That(m.Start(Map_Type.Forest,0,new[]{Dispatch_Pet.Selected(0)}),Is.True);Assert.That(m.Claim(Map_Type.Forest,0),Is.False);now=Sunday.AddHours(1);Assert.That(m.Claim(Map_Type.Forest,0),Is.True);
  Assert.That((s.Adventure_Currency_Core[0],s.Adventure_Lv,s.Adventure_Exp,s.Selected_LockGroup[0]),Is.EqualTo((30,1,0,-1)));Assert.That(m.Unlocked(1),Is.True);Assert.That(m.Claim(Map_Type.Forest,0),Is.False);Assert.That(s.Adventure_Currency_Core[0],Is.EqualTo(30));
  s.Adventure_Lv=14;s.Adventure_Exp=919;Assert.That(m.Start(Map_Type.Tundra,4,new[]{Dispatch_Pet.Selected(0)}),Is.True);now=now.AddHours(16);Assert.That(m.Claim(Map_Type.Tundra,4),Is.True);Assert.That((s.Adventure_Lv,s.Adventure_Exp),Is.EqualTo((15,0)));Assert.That(s.Adventure_Currency_Core[2],Is.EqualTo(480));
 }
 [Test] public void MalformedMapDateLockAndRewardOverflowPreserveStateBeforeSettlement()
 {
  var bad=new SaveData{Adventure_Maps=new[]{new AdventureMapTypeSave()}};Assert.Throws<InvalidOperationException>(()=>AdventureRules.ValidateState(bad));Assert.That(bad.Adventure_Maps.Length,Is.EqualTo(1));
  var orphan=new SaveData{Owned_Pet_LockGroup=Enumerable.Repeat(-1,16).ToArray()};orphan.Owned_Pet_LockGroup[0]=0;Assert.Throws<InvalidOperationException>(()=>AdventureRules.ValidateState(orphan));Assert.That(orphan.Adventure_Maps,Is.Null);
  DateTime now=Sunday;var m=Model(out var s,()=>now);s.Owned_Pet_list[0]=0;Assert.That(m.Start(Map_Type.Forest,0,new[]{Dispatch_Pet.Owned(0)}),Is.True);now=now.AddHours(1);s.Adventure_Currency_Core[0]=int.MaxValue;Assert.Throws<OverflowException>(()=>m.Claim(Map_Type.Forest,0));Assert.That((s.Adventure_Currency_Core[0],s.Adventure_Lv,s.Owned_Pet_LockGroup[0],s.Adventure_Maps[0].maps[0].is_Enter),Is.EqualTo((int.MaxValue,0,0,true)));
  s.Adventure_Maps[0].maps[0].Enter_dateTime="bad";Assert.Throws<FormatException>(()=>AdventureRules.ValidateState(s));s.Adventure_Maps[0].maps[0].Enter_dateTime=Sunday.ToString("O");s.Adventure_Maps[0].maps[0].Dispatched_Pet_Slots=new[]{0};Assert.Throws<NotSupportedException>(()=>AdventureRules.ValidateState(s));
 }
 [UnityTest, Category("ContentNavigation")] public IEnumerator OriginalMapEnterPetChoiceClaimAndRelicDrawUseActualRaycasts()
 {
  SceneManager.sceneLoaded+=Independent;
  try{
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;ContentNavigationFixture.Unlock(c,Content_Type.Adventure);yield return null;var m=c.Adventure;DateTime now=Sunday;m.Now=()=>now;c.State.Owned_Pet_list[0]=0;c.State.Owned_Pet_list[1]=5;c.PetUI.Pet_Reload();
   Click(UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="Adventure_Btn"));yield return new WaitForSeconds(.4f);Assert.That(m.LocalTabs.currentNum,Is.Zero);Directory.CreateDirectory(Path.Combine(Reports,"visual"));ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/adventure-menu-test-gpu.png"));yield return new WaitForSeconds(.2f);
   var panel=m.adventure_panel_ui;Click(ButtonIn(panel.Adventure_Map_list[0].gameObject,"Map_List_Open"));yield return new WaitForSeconds(.35f);var first=panel.Adventure_Map_Info_list[0];Click(ButtonIn(first.EnterAble_obj,"Enter_Popup_Open"));yield return new WaitForSeconds(.35f);var enter=panel.Adventure_Enter_popup;Assert.That(enter.Selected,Is.EqualTo(new[]{Dispatch_Pet.Owned(1)}));
   Click(enter.Pet_Slot_list[0].GetComponent<Button>());Assert.That(enter.Selected.Count,Is.Zero);Click(enter.Pet_Slot_list[0].GetComponent<Button>());yield return new WaitForSeconds(.35f);Click(enter.petSelect_popup.Pet_Slot_list[3].GetComponent<Button>());Assert.That(enter.Selected,Is.EqualTo(new[]{Dispatch_Pet.Owned(0)}));
   Assert.That(enter.Pet_Slot_list[2].Locked_obj.GetComponentInChildren<TMPro.TextMeshProUGUI>(true).text,Is.EqualTo("Lv.8"));ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/adventure-enter-test-gpu.png"));yield return new WaitForSeconds(.2f);c.State.Adventure_Ticket_Now=0;c.State.Adventure_LastTicketCharge_Date=now.ToString("O");enter.Reload();Click(ButtonIn(enter.gameObject,"OnClick_AdventureStart"));Assert.That(c.State.Adventure_Maps[0].maps[0].is_Enter,Is.False);
   c.State.Adventure_Ticket_Now=20;enter.Reload();Click(ButtonIn(enter.gameObject,"OnClick_AdventureStart"));Assert.That(c.State.Adventure_Ticket_Now,Is.EqualTo(19));Assert.That(c.State.Owned_Pet_LockGroup[0],Is.Zero);Assert.That(c.Pets.Equip(0,0),Is.False);yield return new WaitForSeconds(.3f);
   now=now.AddHours(1);yield return new WaitForSeconds(1.2f);Assert.That(first.Finish_obj.activeSelf,Is.True);Click(ButtonIn(first.Finish_obj,"Reward_Get"));Assert.That(c.State.Adventure_Currency_Core[0],Is.EqualTo(20));var reward=panel.Adventure_Reward_popup;Assert.That(reward.Ready,Is.False);yield return new WaitForSeconds(2.2f);Assert.That(reward.Ready,Is.True);ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/adventure-reward-test-gpu.png"));yield return new WaitForSeconds(.2f);var exitRect=(RectTransform)reward.Exit_obj.transform;Click(reward.Exit_obj.GetComponent<Button>(),new Vector2(exitRect.rect.center.x,exitRect.rect.yMin+exitRect.rect.height*.08f));
   Assert.That((c.State.Adventure_Lv,c.State.Adventure_Exp,c.State.Owned_Pet_LockGroup[0]),Is.EqualTo((1,0,-1)));Click(ButtonIn(panel.Adventure_Maplist_popup,"SetActive"));yield return new WaitForSeconds(.2f);Click(m.LocalTabs.Btn_list[1].GetComponent<Button>());yield return new WaitForSeconds(.35f);Click(c.Relics.relic_DownPanel.Draw_Relic_Btn_list.Single(b=>!b.is_Max).GetComponent<Button>());Assert.That(c.State.Adventure_Currency_Core[0],Is.Zero);Assert.That(c.State.Relics.Count(r=>r.is_Unlock),Is.EqualTo(1));yield return new WaitForSeconds(.7f);Click(c.Relics.relic_draw_panel.Close_Btn.GetComponentInChildren<Button>(true));m.Close();
  }finally{SceneManager.sceneLoaded-=Independent;}
  yield return SceneManager.LoadSceneAsync("TargetPreview");
 }
 [UnityTest] public IEnumerator OriginalCancelAndClosedDayFinishKeepOtherDispatchesAndNoRefund()
 {
  SceneManager.sceneLoaded+=Independent;
  try{
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;var m=c.Adventure;m.Now=()=>Sunday;c.State.Pet_Selected_items[0]=4;c.State.Owned_Pet_list[0]=1;c.State.Adventure_Lv=1;
   Assert.That(m.Adventure_Start(Map_Type.Desert,0,new[]{Dispatch_Pet.Selected(0)}),Is.True);Assert.That(m.Adventure_Start(Map_Type.Forest,1,new[]{Dispatch_Pet.Owned(0)}),Is.True);m.Open();m.adventure_panel_ui.Map_Info_List_Reload(Map_Type.Forest);yield return new WaitForSeconds(.4f);var row=m.adventure_panel_ui.Adventure_Map_Info_list[1];Click(ButtonIn(row.Entered_obj,"Adventure_Cancel_onClick"));yield return new WaitForSeconds(.35f);var exit=m.adventure_exit_panel;ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/adventure-cancel-test-gpu.png"));yield return new WaitForSeconds(.2f);Click(ButtonIn(exit.gameObject,"Cancel"));Assert.That(c.State.Owned_Pet_LockGroup[0],Is.EqualTo(-1));Assert.That(c.State.Selected_LockGroup[0],Is.EqualTo(100));Assert.That(c.State.Adventure_Ticket_Now,Is.EqualTo(18));Assert.That(c.State.Adventure_Currency_Core,Is.EqualTo(new int[4]));
   m.Now=()=>Sunday.AddDays(1);m.adventure_panel_ui.Map_Info_List_Reload(Map_Type.Desert);yield return new WaitForSeconds(.3f);var first=m.adventure_panel_ui.Adventure_Map_Info_list[0];Assert.That(first.Finish_obj.activeSelf,Is.True);Click(ButtonIn(first.Finish_obj,"Reward_Get"));Assert.That(c.State.Adventure_Currency_Core[1],Is.EqualTo(27));Assert.That(c.State.Selected_LockGroup[0],Is.EqualTo(-1));m.Close();
  }finally{SceneManager.sceneLoaded-=Independent;}
  yield return SceneManager.LoadSceneAsync("TargetPreview");
 }
 [UnityTest] public IEnumerator IndependentProfileReloadRebirthAndRaidPreserveDispatchAndReturnPet()
 {
  string folder=Path.Combine(Path.GetTempPath(),"catgunner-adventure-save-"+Guid.NewGuid().ToString("N"));DateTime now=Sunday;
  UnityEngine.Events.UnityAction<Scene,LoadSceneMode> isolated=(s,mode)=>{Independent(s,mode);if(s.name=="GameClient"){var c=s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();c.Persist=true;c.SaveFolderOverride=folder;c.Adventure.Now=()=>now;}};
  SceneManager.sceneLoaded+=isolated;
  try{
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;c.State.Owned_Pet_list[0]=5;c.State.Pet_Selected_items[0]=2;c.State.Adventure_Lv=2;c.State.Adventure_Exp=12;Assert.That(c.Adventure.Adventure_Start(Map_Type.Tundra,1,new[]{Dispatch_Pet.Selected(0),Dispatch_Pet.Owned(0)}),Is.True);c.SaveNow();
   now=now.AddHours(1);yield return SceneManager.LoadSceneAsync("TargetPreview");yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;c=GameClient.Instance;Assert.That(c.Adventure.Progression.Remaining(Map_Type.Tundra,1),Is.EqualTo(TimeSpan.FromHours(1)));Assert.That(c.State.Selected_LockGroup[0],Is.EqualTo(201));Assert.That(c.State.Owned_Pet_LockGroup[0],Is.EqualTo(201));Assert.That(c.Pets.Unequip(0),Is.False);
   c.Forest.Stage_Now=2;Assert.That(c.RebirthNow(),Is.True);Assert.That(c.State.Adventure_Maps[2].maps[1].is_Enter,Is.True);Assert.That(c.State.Selected_LockGroup[0],Is.EqualTo(201));
   c.RaidMode.Now=()=>new DateTime(2024,1,1);c.State.Owned_Gun_list[0]=30;c.RaidMode.Panel_Open();c.RaidMode.Gun_UnSelect(1);c.RaidMode.Game_Enter_Normal();yield return new WaitForSeconds(2.15f);Assert.That(c.State.Owned_Pet_LockGroup[0],Is.EqualTo(201));c.RaidMode.Game_Exit();yield return new WaitForSeconds(1.85f);
   now=Sunday.AddHours(2);c.Adventure.Adventure_Reward_Get(Map_Type.Tundra,1);Assert.That((c.State.Adventure_Currency_Core[2],c.State.Adventure_Lv,c.State.Adventure_Exp),Is.EqualTo((108,2,52)));Assert.That(c.State.Owned_Pet_LockGroup[0],Is.EqualTo(-1));Assert.That(c.State.Selected_LockGroup[0],Is.EqualTo(-1));c.SaveNow();c.Adventure.Close();
   yield return SceneManager.LoadSceneAsync("TargetPreview");yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;c=GameClient.Instance;Assert.That(c.State.Adventure_Currency_Core[2],Is.EqualTo(108));Assert.That(c.State.Adventure_Maps[2].maps[1].is_Enter,Is.False);Assert.That(c.State.Pet_Selected_items[0],Is.EqualTo(2));c.Persist=false;
  }finally{SceneManager.sceneLoaded-=isolated;}
  yield return SceneManager.LoadSceneAsync("TargetPreview");Directory.Delete(folder,true);
 }
}
