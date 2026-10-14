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
public sealed class RelicTests
{
    private static void Independent(Scene s,LoadSceneMode mode)
    {
        if(s.name!="GameClient")return;
        var c=s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();c.Persist=false;
        foreach(var cat in c.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;
    }
    private static void Click(Button b)
    {
        Assert.That(b.gameObject.activeInHierarchy&&b.interactable,Is.True,b.name);Canvas.ForceUpdateCanvases();var r=(RectTransform)b.transform;
        var e=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(r.rect.center))};
        var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(e,hits);Assert.That(hits.Count,Is.GreaterThan(0));
        Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(b),string.Join(" | ",hits.Take(6).Select(h=>h.gameObject.name+"/"+h.gameObject.transform.parent.name)));
        ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,e,ExecuteEvents.pointerClickHandler);
    }
    private static string Reports=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));

 [Test] public void NativeRowsDecimalTierOrderAndSpecialTotalsMatchShippedTables()
 {
  var s=new SaveData();var m=new RelicProgression(s);var cat=m.Catalogue;
  Assert.That(cat.Rows.Select(v=>(int)v.Type),Is.EqualTo(new[]{0,1,2,11,12,3,4,5,10,12,6,7,8,9,12}));
  Assert.That(cat.Rows.Select(v=>(int)v.Core_Type),Is.EqualTo(Enumerable.Range(0,15).Select(i=>i/5)));Assert.That(cat.Damage_Balance.Length,Is.EqualTo(300));
  Assert.That((cat.LevelFormat,cat.CountFormat,cat.MaxText),Is.EqualTo(("Lv.{0}","{0}/{1}","Max")));
  Assert.That(new[]{m.Percent(0).PlainInteger(),m.Percent(1).PlainInteger(),m.Percent(2).PlainInteger()},Is.EqualTo(new[]{"100","100","100"}));
  for(int i=0;i<15;i++)s.Relics[i].is_Unlock=true;
  Assert.That(new[]{m.Percent(0).PlainInteger(),m.Percent(1).PlainInteger(),m.Percent(2).PlainInteger()},Is.EqualTo(new[]{"122","122","122"}));
  Assert.That((m.Special(Relic_Type.MoveSpeed),m.Special(Relic_Type.Offline),m.Special(Relic_Type.Rebirth),m.Special(Relic_Type.Skip)),Is.EqualTo((2,10,105,6)));
  s.Relics[1].Lv=13;Assert.That(RelicRules.Value(m.Row(1),cat).PlainInteger(),Is.EqualTo("135"));
  var r=m.Row(0);r.Lv=299;Assert.That(RelicRules.Value(r,cat).PlainInteger(),Is.EqualTo("132000000"));r.Lv=300;Assert.Throws<NotSupportedException>(()=>RelicRules.Value(r,cat));
  Assert.That(RebirthProgression.Reward(2,0,105).ToString(),Is.EqualTo("33203e-2"));
 }
 [Test] public void CoreDrawUnlockDuplicateUpgradeAndCandidateMaxFallbackRespectNativeGates()
 {
  var s=new SaveData{Adventure_Currency_Core=new[]{61,20,0,40},Dia=71,PetCoin=17,StarGem=23};var ranges=new List<(int,int)>();
  var m=new RelicProgression(s,(a,b)=>{ranges.Add((a,b));return 0;});Assert.That(m.Draw(Core_Type.Forest,3),Is.EqualTo(new[]{0,0,0}));
  Assert.That((s.Relics[0].Lv,s.Relics[0].Count,s.Relics[0].is_Unlock),Is.EqualTo((0,2,true)));Assert.That(s.Adventure_Currency_Core,Is.EqualTo(new[]{1,20,0,40}));
  Assert.That(m.Upgrade(0),Is.True);Assert.That((s.Relics[0].Lv,s.Relics[0].Count),Is.EqualTo((1,0)));Assert.That(m.Percent(0).PlainInteger(),Is.EqualTo("110"));
  Assert.That(m.Upgrade(0),Is.False);Assert.That(m.Draw(Core_Type.Forest,1),Is.Empty);Assert.That(m.Draw(Core_Type.Tundra,0),Is.Empty);
  Assert.That(m.Draw(Core_Type.Desert,1),Is.EqualTo(new[]{5}));Assert.That(m.Draw(Core_Type.ALL,2),Is.EqualTo(new[]{0,0}));Assert.That(ranges,Does.Contain((0,15)));
  Assert.That((s.Dia,s.PetCoin,s.StarGem),Is.EqualTo((71,17,23)));Assert.That(m.Candidates(Core_Type.Tundra),Is.EqualTo(new[]{10,11,12,13,14}));
  s.Relics[13].Lv=50;Assert.That(m.Candidates(Core_Type.Tundra),Is.EqualTo(new[]{10,11,12,14}));
  // Explicit native selector-only fixture. Unsupported table-Lv300 is not admitted by save validation or value calculation.
  for(int i=10;i<15;i++)s.Relics[i].Lv=RelicRules.MaxLevel(m.Catalogue.Rows[i].Type);Assert.That(m.Candidates(Core_Type.Tundra),Is.EqualTo(new[]{10,11,12,13,14}));
 }
 [Test] public void InvalidWalletProfileOverflowAndMissingFinalTableRowPreserveBeforeMutation()
 {
  var s=new SaveData();var m=new RelicProgression(s);Assert.That(s.Relics.Length,Is.EqualTo(15));Assert.That(s.Adventure_Currency_Core,Is.EqualTo(new int[4]));
  s.Relics[0].is_Unlock=true;s.Relics[0].Lv=299;s.Relics[0].Count=70;Assert.That(m.Upgrade(0),Is.False);Assert.That((s.Relics[0].Lv,s.Relics[0].Count),Is.EqualTo((299,70)));
  var invalid=new SaveData{Relics=new[]{new RelicSave()},Adventure_Currency_Core=new[]{73,0,0,0}};Assert.Throws<InvalidOperationException>(()=>RelicRules.ValidateState(invalid));Assert.That(invalid.Adventure_Currency_Core[0],Is.EqualTo(73));
  var unsupported=new SaveData{Relics=s.Relics,Adventure_Currency_Core=new[]{73,0,0,0}};s.Relics[0].Lv=300;Assert.Throws<InvalidOperationException>(()=>RelicRules.ValidateState(unsupported));Assert.That(s.Relics[0].Lv,Is.EqualTo(300));
  var wallet=new SaveData{Adventure_Currency_Core=new[]{1,-1,0,0}};Assert.Throws<InvalidOperationException>(()=>RelicRules.ValidateState(wallet));Assert.That(wallet.Relics,Is.Null);
  var over=new SaveData{Adventure_Currency_Core=new[]{20,0,0,0}};var om=new RelicProgression(over,(a,b)=>0);over.Relics[0].is_Unlock=true;over.Relics[0].Count=int.MaxValue;Assert.Throws<OverflowException>(()=>om.Draw(Core_Type.Forest,1));Assert.That(over.Adventure_Currency_Core[0],Is.EqualTo(20));Assert.That(over.Relics[0].Count,Is.EqualTo(int.MaxValue));
 }
 [UnityTest, Category("ContentNavigationExtra")] public IEnumerator OriginalEntrySingleDrawDetailsAndUpgradeUseActualPointerRaycasts()
 {
  SceneManager.sceneLoaded+=Independent;
  try
  {
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;ContentNavigationFixture.Unlock(c,Content_Type.Adventure);yield return null;var m=c.Relics;Assert.That(m.Relic_Item_List.Length,Is.EqualTo(15));
   Click(UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="Adventure_Btn"));yield return new WaitForSeconds(.2f);Click(c.Adventure.LocalTabs.Btn_list[1].GetComponent<Button>());yield return new WaitForSeconds(.4f);
   Directory.CreateDirectory(Path.Combine(Reports,"visual"));ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/relic-menu-test-gpu.png"));yield return new WaitForSeconds(.2f);
   Assert.That(m.LocalRelicMenu.activeInHierarchy,Is.True);var down=m.relic_DownPanel;var draw=down.Draw_Relic_Btn_list.Single(b=>!b.is_Max);Click(draw.GetComponent<Button>());Assert.That(m.relic_draw_panel.gameObject.activeSelf,Is.False);Assert.That(c.State.Adventure_Currency_Core,Is.EqualTo(new int[4]));
   c.State.Adventure_Currency_Core[0]=20;down.UI_Reload();Click(draw.GetComponent<Button>());Assert.That(c.State.Adventure_Currency_Core[0],Is.Zero);Assert.That(m.Relic_list.Count(r=>r.is_Unlock),Is.EqualTo(1));
   var popup=m.relic_draw_panel;Assert.That(popup.IsDrawing,Is.True);Assert.That(popup.Close_Btn.activeSelf,Is.False);yield return new WaitForSeconds(.7f);Assert.That(popup.Close_Btn.activeSelf,Is.True);
   Directory.CreateDirectory(Path.Combine(Reports,"visual"));ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/relic-single-test-gpu.png"));yield return new WaitForSeconds(.2f);
   var info=popup.Relic_Item_Single.Info;Click(popup.Relic_Item_Single.GetComponent<Button>());yield return new WaitForSeconds(.4f);var detail=m.relic_info_ui;Assert.That(detail.Info,Is.SameAs(info));Assert.That(detail.Lv_txt.text,Is.EqualTo("Lv.1"));Assert.That(detail.Count_txt.text,Is.EqualTo("0/2"));
   Click(detail.Upgrade_Btn_img.GetComponentInParent<Button>());Assert.That(info.Lv,Is.Zero);
   int index=Array.IndexOf(m.Relic_list,info);c.State.Relics[index].Count=2;m.UI_Reload();detail.Reload(info);Click(detail.Upgrade_Btn_img.GetComponentInParent<Button>());Assert.That((info.Lv,info.Count),Is.EqualTo((1,0)));Assert.That(detail.Count_txt.text,Is.EqualTo("0/4"));
   ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/relic-upgrade-test-gpu.png"));yield return new WaitForSeconds(.2f);
   Click(detail.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));Click(popup.Close_Btn.GetComponentInChildren<Button>(true));Click(m.LocalRelicMenu.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));Assert.That(m.LocalRelicMenu.activeSelf,Is.False);
  }
  finally{SceneManager.sceneLoaded-=Independent;}
  yield return SceneManager.LoadSceneAsync("TargetPreview");
 }
 [UnityTest] public IEnumerator MaxBatchDrawHasCeilingPagesNativeRevealDelaysAndRealArrowNavigation()
 {
  SceneManager.sceneLoaded+=Independent;
  try
  {
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;var m=c.Relics;m.Open();yield return new WaitForSeconds(.4f);
   var down=m.relic_DownPanel;Click(down.DrawMode_Btn_list[3].GetComponent<Button>());Assert.That(down.currentCoreType,Is.EqualTo(Core_Type.ALL));Assert.That(down.Draw_Percent_txt_list.All(t=>t.text=="33%"),Is.True);
   c.State.Adventure_Currency_Core[3]=263;down.UI_Reload();var draw=down.Draw_Relic_Btn_list.Single(b=>b.is_Max);Assert.That(draw.DrawCount,Is.EqualTo(13));Assert.That(draw.Price_txt.text,Is.EqualTo("260"));
   Click(draw.GetComponent<Button>());var popup=m.relic_draw_panel;Assert.That(popup.PageCount,Is.EqualTo(2));popup.OnClick_Right();Assert.That(popup.Page,Is.Zero);Assert.That(c.State.Adventure_Currency_Core[3],Is.EqualTo(3));
   yield return new WaitForSeconds(2.3f);Assert.That(popup.IsDrawing,Is.False);Assert.That(popup.Page,Is.EqualTo(1));Assert.That(popup.Relic_Item_obj_List.Count(g=>g.activeSelf),Is.EqualTo(1));
   ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/relic-last-page-test-gpu.png"));yield return new WaitForSeconds(.2f);
   Click(popup.Left_Btn.GetComponent<Button>());Assert.That(popup.Page,Is.Zero);Assert.That(popup.Relic_Item_obj_List.Count(g=>g.activeSelf),Is.EqualTo(12));Assert.That(popup.Left_Btn.activeSelf,Is.False);
   yield return new WaitForSeconds(.4f);ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/relic-first-page-test-gpu.png"));yield return new WaitForSeconds(.2f);Click(popup.Right_Btn.GetComponent<Button>());Assert.That(popup.Page,Is.EqualTo(1));Assert.That(popup.Right_Btn.activeSelf,Is.False);
   Click(popup.Close_Btn.GetComponentInChildren<Button>(true));m.Close();
  }
  finally{SceneManager.sceneLoaded-=Independent;}
  yield return SceneManager.LoadSceneAsync("TargetPreview");
 }
 [UnityTest] public IEnumerator IndependentSaveReloadRebirthAndRaidRetainRelicsCoresAndDecimalBonuses()
 {
  string folder=Path.Combine(Path.GetTempPath(),"catgunner-relic-profile-"+Guid.NewGuid().ToString("N"));
  UnityEngine.Events.UnityAction<Scene,LoadSceneMode> isolated=(s,mode)=>{Independent(s,mode);if(s.name=="GameClient"){var c=s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();c.Persist=true;c.SaveFolderOverride=folder;}};
  SceneManager.sceneLoaded+=isolated;
  try
  {
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;c.State.Adventure_Currency_Core[3]=43;
   foreach(int i in new[]{0,3,5,10,13})c.State.Relics[i].is_Unlock=true;c.State.Relics[0].Count=2;c.Relics.Upgrade(0);c.Relics.Close();c.SaveNow();
   yield return SceneManager.LoadSceneAsync("TargetPreview");yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;c=GameClient.Instance;
   Assert.That(c.Hero.Damage_str,Is.EqualTo("110"));Assert.That(c.Hero.moveSpeed,Is.EqualTo(15.3f).Within(.001f));Assert.That(c.State.Adventure_Currency_Core[3],Is.EqualTo(43));Assert.That(c.State.Relics[0].Lv,Is.EqualTo(1));Assert.That(c.Rebirth.RewardPercent,Is.EqualTo(105));
   c.Forest.Stage_Now=2;Assert.That(c.RebirthNow(),Is.True);Assert.That(c.State.Ruby.Value.ToString(),Is.EqualTo("33203e-2"));Assert.That(c.Hero.Damage_str,Is.EqualTo("110"));Assert.That(c.State.Relics.Count(r=>r.is_Unlock),Is.EqualTo(5));
   var raid=c.RaidMode;raid.Now=()=>new DateTime(2024,1,1);c.State.Owned_Gun_list[0]=30;raid.Panel_Open();raid.Gun_UnSelect(1);raid.Game_Enter_Normal();yield return new WaitForSeconds(2.15f);
   var expected=raid.Raid_Damage_return(30).Value.Percent(new DecimalAmount(110)).DiscardFraction();Assert.That(c.Hero.Damage.Value.CompareTo(expected),Is.Zero);raid.Game_Exit();yield return new WaitForSeconds(1.85f);Assert.That(c.Hero.Damage_str,Is.EqualTo("110"));c.Persist=false;
  }
  finally{SceneManager.sceneLoaded-=isolated;}
  yield return SceneManager.LoadSceneAsync("TargetPreview");Directory.Delete(folder,true);
 }
 [UnityTest] public IEnumerator UnlockedRelicsChangeNaturalProjectilesCriticalBalanceAndMoneyDrop()
 {
  SceneManager.sceneLoaded+=Independent;
  try
  {
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;foreach(int i in new[]{0,5,10,13})c.State.Relics[i].is_Unlock=true;c.Relics.Value_Reload();c.Relics.Close();
   Assert.That(c.Hero.Damage_str,Is.EqualTo("105"));Assert.That(c.Hero.CriDmg_str,Is.EqualTo("137"));Assert.That(c.Hero.moveSpeed,Is.EqualTo(15.3f).Within(.001f));
   var trees=c.Forest.Map_obj.GetComponentsInChildren<Tree>(false);var tree=trees.First(t=>t!=c.Forest.Boss_tree&&t.enemy.Health_Max.Value.CompareTo(new DecimalAmount(250))==0);foreach(var t in trees)if(t!=tree)t.gameObject.SetActive(false);
   tree.transform.position=c.Hero.transform.position+new Vector3(0,0,12);Physics.SyncTransforms();c.Hero.ClearNearObj();c.Hero.ClearAutoTarget();var money=c.State.Money.Value;var reward=tree.enemy.Money.Value.Percent(new DecimalAmount(105));int hits=0;
   Action<Vector3,string,bool> observed=(pos,text,cri)=>{hits++;Assert.That(text,Is.EqualTo("105"));Assert.That(cri,Is.False);};ForestDamageDispatch.DamageTextPending+=observed;
   try{c.Hero.GetComponent<ForestCombatAcceptance>().enabled=true;for(int i=0;i<260&&tree.gameObject.activeSelf;i++)yield return new WaitForFixedUpdate();Assert.That(tree.gameObject.activeSelf,Is.False);Assert.That(hits,Is.EqualTo(3));Assert.That(c.State.Money.Value.CompareTo(money+reward),Is.Zero);
   File.WriteAllText(Path.Combine(Reports,"relic-projectile-observation.json"),"{\"hits\":3,\"damage\":\"105\",\"criticalDamage\":\"137\",\"reward\":\""+reward.ToString()+"\",\"fixture\":\"Independent original Gun0/tree250HP, unlockedLv0 rows; position only, natural targeting/projectiles/drop\"}");}
   finally{ForestDamageDispatch.DamageTextPending-=observed;}
  }
  finally{SceneManager.sceneLoaded-=Independent;}
  yield return SceneManager.LoadSceneAsync("TargetPreview");
 }
}
