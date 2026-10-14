using System;
using System.IO;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class FishAndAutoMergeTests
{
 private static readonly int[] Damage={4,12,36,110,320,970,2900,8700,26000,79000,240000,710000,2100000};
 private static readonly int[] Chance={1,2,6,16,39,98,100,100,100,100,100,100,100};
 private static readonly int[] Critical={8,20,50,120,310,780,2000,4900,12000,31000,76000,190000,480000};
 private static Fish_Info[] Catalogue()=>Enumerable.Range(0,13).Select(i=>new Fish_Info{Damage=Damage[i],CriPer=Chance[i],CriVal=Critical[i]}).ToArray();
 private static FishInventory Model(SaveData s=null,float roll=0)=>new FishInventory(s??new SaveData(),Catalogue(),()=>new DateTime(2026,10,10),()=>roll);
 [TestCase(0,0)][TestCase(59.99f,0)][TestCase(60,1)][TestCase(89.99f,1)][TestCase(90,2)][TestCase(100,0)]
 public void NativeRollThresholdsAndPremiumOffset(float roll,int grade){Assert.That(FishRules.Roll(roll,0,new float[]{60,30,10,0}),Is.EqualTo(grade));Assert.That(FishRules.Roll(roll,1,new float[]{60,30,10,0}),Is.EqualTo(grade+1));}
 [Test] public void ThreeDailyNoAdDrawsKeepAdRewardsUnavailableAndRolloverLocalDay()
 {var m=Model();for(int i=0;i<3;i++)Assert.That(m.Draw(false),Is.Zero);Assert.That(m.Draw(false),Is.EqualTo(-1));Assert.That(m.State.FreeGachaCount,Is.EqualTo(3));m.Now=()=>new DateTime(2026,10,11);Assert.That(m.Draw(false),Is.Zero);Assert.That(m.State.FreeGachaCount,Is.EqualTo(1));m.Now=()=>new DateTime(2026,10,9);Assert.That(m.Draw(false),Is.Zero);Assert.That(m.State.FreeGachaCount,Is.EqualTo(2));}
 [Test] public void DiamondDrawCapacityAndInsufficientWalletAreAtomic()
 {var s=new SaveData{Dia=199};var m=Model(s,90);Assert.That(m.Draw(true),Is.EqualTo(-1));Assert.That((s.Dia,s._useDia,s.FishInventory.Count),Is.EqualTo((199,0,0)));s.Dia=400;Assert.That(m.Draw(true),Is.EqualTo(3));Assert.That((s.Dia,s._useDia,s.FreeGachaCount),Is.EqualTo((200,200,0)));while(s.FishInventory.Count<20)s.FishInventory.Add(0);string before=SaveArchive.Encode(s);Assert.That(m.Draw(true),Is.EqualTo(-1));Assert.That(SaveArchive.Encode(s),Is.EqualTo(before));}
 [Test] public void NativeMergeRemovesHighIndexFirstAppendsAndAggregatesDuplicateBonuses()
 {var s=new SaveData{FishInventory=new List<int>{0,1,0,2,12,12}};var m=Model(s);Assert.That(m.Fuse(2,0),Is.EqualTo(1));Assert.That(s.FishInventory,Is.EqualTo(new[]{1,2,12,12,1}));Assert.That((m.Damage,m.CriticalChance,m.CriticalDamage),Is.EqualTo((4200060,210,960090)));string before=SaveArchive.Encode(s);Assert.That(m.Fuse(2,3),Is.EqualTo(-1));Assert.That(m.Fuse(0,1),Is.EqualTo(-1));Assert.That(m.Fuse(0,4,2,1),Is.EqualTo(-1));Assert.That(SaveArchive.Encode(s),Is.EqualTo(before));Assert.That(m.Delete(4,1),Is.True);Assert.That(m.Delete(0,0),Is.False);var reload=SaveArchive.Decode(SaveArchive.Encode(s));Assert.That(reload.FishInventory,Is.EqualTo(s.FishInventory));}
 [Test] public void InvalidFishStateNeverMutatesTheSuppliedProfile()
 {foreach(var list in new[]{new List<int>{-1},new List<int>{13},Enumerable.Repeat(0,21).ToList()}){var s=new SaveData{FishInventory=list};string before=SaveArchive.Encode(s);Assert.Throws<InvalidOperationException>(()=>Model(s));Assert.That(SaveArchive.Encode(s),Is.EqualTo(before));}var bad=new SaveData{FreeGachaCount=6};Assert.Throws<InvalidOperationException>(()=>Model(bad));}
 private static void Independent(Scene scene,LoadSceneMode mode){if(scene.name!="GameClient")return;var c=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();c.Persist=false;foreach(var cat in c.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;AutoMergeAccess.EntitlementProvider=null;}
 private static void Click(Button b)
 {Assert.That(b.gameObject.activeInHierarchy&&b.interactable,Is.True,b.name);Canvas.ForceUpdateCanvases();var rect=(RectTransform)b.transform;var e=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center))};var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(e,hits);Assert.That(hits.Count,Is.GreaterThan(0));Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(b),string.Join(" / ",hits.Take(5).Select(h=>h.gameObject.name)));ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,e,ExecuteEvents.pointerClickHandler);}
 private static Button Named(string name)=>UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include,FindObjectsSortMode.None).Single(b=>b.name.Trim()==name);
 [UnityTest, Category("ContentNavigation")] public IEnumerator FishEntranceDrawSwimmingDetailsMergeAndDeleteUseOriginalUI()
 {
  SceneManager.sceneLoaded+=Independent;
  try{
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;ContentNavigationFixture.Unlock(c,Content_Type.Fish);yield return null;var m=c.Fish;Assert.That(m,Is.Not.Null);Assert.That(m.Fish_info_list.Select(x=>x.Damage),Is.EqualTo(Damage));
   Click(Named("Fish_Btn"));yield return new WaitForSeconds(.4f);Assert.That(m.fish_ui_obj.activeInHierarchy,Is.True);m.Model.RandomPercent=()=>0;Click(m.AD_Gacha_Btn_obj);Assert.That(c.State.FishInventory,Is.EqualTo(new[]{0}));Assert.That(m.new_fish_ui.gameObject.activeSelf,Is.True);m.new_fish_ui.Close();
   var fish=m.fishTank.fishPool.Single(f=>f.isActive);Assert.That(fish.GetComponent<Canvas>().overrideSorting,Is.True);yield return new WaitForSeconds(.4f);Assert.That(fish.skinImage.gameObject.activeInHierarchy&&fish.skinImage.color.a>0,Is.True);Vector2 start=fish.GetPosition();yield return new WaitForSeconds(.3f);Assert.That(Vector2.Distance(start,fish.GetPosition()),Is.GreaterThan(.1f));
   var data=new PointerEventData(EventSystem.current);ExecuteEvents.Execute(fish.gameObject,data,ExecuteEvents.pointerDownHandler);yield return new WaitForSecondsRealtime(.12f);Assert.That(fish.transform.localScale.x,Is.EqualTo(.9f).Within(.01f));ExecuteEvents.Execute(fish.gameObject,data,ExecuteEvents.pointerUpHandler);yield return new WaitForSecondsRealtime(.2f);fish.SetPosition(Vector2.zero);var fishHits=new List<RaycastResult>();
   // Both native mirror directions must remain selectable. Random swim direction
   // previously hid the bug when GraphicRaycaster ignored reversed images.
   foreach(float facing in new[]{-1f,1f}){fish.FaceTowards(facing);Canvas.ForceUpdateCanvases();data.position=RectTransformUtility.WorldToScreenPoint(null,fish.transform.position);fishHits.Clear();EventSystem.current.RaycastAll(data,fishHits);Assert.That(fishHits.Count,Is.GreaterThan(0));Assert.That(fishHits.First().gameObject.GetComponentInParent<Fish_Item>(),Is.SameAs(fish),"facing="+facing+" hits="+string.Join(" | ",fishHits.Take(6).Select(h=>h.gameObject.name)));}ExecuteEvents.ExecuteHierarchy(fishHits.First().gameObject,data,ExecuteEvents.pointerClickHandler);yield return new WaitForSeconds(.35f);Assert.That(m.fish_info_ui.Current_Grade,Is.Zero);Click(m.fish_info_ui.RightBtn_obj.GetComponent<Button>());Assert.That(m.fish_info_ui.Current_Grade,Is.EqualTo(1));m.fish_info_ui.Close();
   Click(m.AD_Gacha_Btn_obj);m.new_fish_ui.Close();var pair=m.fishTank.fishPool.Where(f=>f.isActive).ToArray();pair[0].SetPosition(Vector2.zero);pair[1].SetPosition(new Vector2(10,0));
   Canvas.ForceUpdateCanvases();data.position=RectTransformUtility.WorldToScreenPoint(null,pair[1].transform.position);ExecuteEvents.Execute(pair[0].gameObject,data,ExecuteEvents.beginDragHandler);ExecuteEvents.Execute(pair[0].gameObject,data,ExecuteEvents.dragHandler);ExecuteEvents.Execute(pair[0].gameObject,data,ExecuteEvents.endDragHandler);Assert.That(c.State.FishInventory,Is.EqualTo(new[]{1}));Assert.That((m.GetTotalDamage(),c.Team.Cat_list[0].CriPer),Is.EqualTo((12,.02f)));m.new_fish_ui.Close();
   fish=m.fishTank.fishPool.Single(f=>f.isActive);var zone=Fish_DeleteZone.instance;data.position=RectTransformUtility.WorldToScreenPoint(null,zone.transform.position);ExecuteEvents.Execute(fish.gameObject,data,ExecuteEvents.beginDragHandler);ExecuteEvents.Execute(fish.gameObject,data,ExecuteEvents.dragHandler);ExecuteEvents.Execute(fish.gameObject,data,ExecuteEvents.endDragHandler);Assert.That(zone.deletePopup.gameObject.activeSelf,Is.True);zone.deletePopup.OnCancel();Assert.That(c.State.FishInventory,Is.EqualTo(new[]{1}));Assert.That(fish.isPendingDelete,Is.False);
   zone.deletePopup.Show(fish);zone.deletePopup.OnConfirm();Assert.That(c.State.FishInventory,Is.Empty);Assert.That(c.Team.Cat_list[0].CriPer,Is.Zero);
   Click(m.AD_Gacha_Btn_obj);m.new_fish_ui.Close();Assert.That(m.AD_Gacha_Btn_obj.interactable,Is.True,"Local ad variant allows the fourth and fifth daily draws");
   for(int expectedCount=4;expectedCount<=5;expectedCount++){int before=c.State.FishInventory.Count;Click(m.AD_Gacha_Btn_obj);yield return null;yield return null;Assert.That(c.State.FreeGachaCount,Is.EqualTo(expectedCount));Assert.That(c.State.FishInventory.Count,Is.EqualTo(before+1));m.new_fish_ui.Close();}
   Assert.That(m.AD_Gacha_Btn_obj.interactable,Is.False);int dailyLimitCount=c.State.FishInventory.Count;m.FreeGacha();yield return null;yield return null;Assert.That(c.State.FishInventory.Count,Is.EqualTo(dailyLimitCount));
   c.State.Dia=200;var draw=m.fish_ui_obj.GetComponentInChildren<Fish_Draw_Btn>(true);draw.Price_Reload();Click(draw.GetComponent<Button>());Assert.That((c.State.Dia,c.State._useDia),Is.EqualTo((0,200)));m.new_fish_ui.Close();
   int displayIndex=0;foreach(var displayedFish in m.fishTank.fishPool.Where(f=>f.isActive))displayedFish.SetPosition(new Vector2(displayIndex++==0?-180:180,0));yield return new WaitForSeconds(.4f);foreach(var visibleFish in m.fishTank.fishPool.Where(f=>f.isActive)){Assert.That(visibleFish.skinImage.enabled&&visibleFish.skinImage.gameObject.activeInHierarchy,Is.True);Assert.That(visibleFish.GetComponent<CanvasGroup>().alpha,Is.EqualTo(1));}File.WriteAllText("/tmp/catgunner-fish-visible.txt",string.Join("\n",m.fishTank.fishPool.Where(f=>f.isActive).Select(f=>"grade="+f.grade+" index="+f.inventoryIndex+" pos="+f.GetPosition()+" size="+f.skinImage.rectTransform.sizeDelta+" scale="+f.skinImage.transform.lossyScale+" order="+f.GetComponent<Canvas>().sortingOrder+" enabled="+f.skinImage.enabled)));string path=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/fish-tank-test-gpu.png"));ScreenCapture.CaptureScreenshot(path);yield return new WaitForSeconds(.2f);m.Close();Assert.That(m.fishTank.IsAutoMergeRunning,Is.False);
  }finally{SceneManager.sceneLoaded-=Independent;}yield return SceneManager.LoadSceneAsync("TargetPreview");
 }
 [UnityTest] public IEnumerator AutomaticGunMergeHonorsCollectionLimitPauseDragCancelAndUnavailableEntitlement()
 {
  SceneManager.sceneLoaded+=Independent;
  try{
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;c.State.Owned_Gun_list[0]=0;c.State.Owned_Gun_list[1]=4;c.State.Owned_Gun_list[2]=5;c.State.Owned_Gun_list[3]=9;c.Guns.ReloadGunUI();Click(Named("Gun_Btn"));yield return new WaitForSeconds(.4f);
   c.OfflineAutoMergePreview=false;var purchases=c.State.PurchaseHistory.ToArray();c.Guns.AutoMerge_Change();Assert.That(c.Guns.AutoMerge_Active,Is.False);Assert.That(c.State.PurchaseHistory,Is.EqualTo(purchases));
   c.OfflineAutoMergePreview=true;c.Guns.Set_AutoMerge(true);yield return new WaitForSecondsRealtime(.4f);Assert.That(c.Guns.gunItemList.ActiveItems.Count,Is.EqualTo(4)); // Initial collection has no higher grade: cap -1.
   c.State.Gun_Collect[10]=true;c.State.Owned_Gun_Pause[0]=true;c.State.Owned_Gun_Pause[2]=true;c.State.Owned_Gun_Pause[3]=true;c.Guns.ReloadGunUI();yield return new WaitForSecondsRealtime(.4f);Assert.That(c.Guns.gunItemList.ActiveItems.Count,Is.EqualTo(4));
   c.State.Owned_Gun_Pause[0]=false;c.Guns.ReloadGunUI();var item=c.Guns.gunItemList.ActiveItems.Single(i=>i.ListIndex==0);var e=new PointerEventData(EventSystem.current);ExecuteEvents.Execute(item.gameObject,e,ExecuteEvents.beginDragHandler);yield return new WaitForSecondsRealtime(.4f);Assert.That(c.Guns.gunItemList.ActiveItems.Count,Is.EqualTo(4));item.ResetDrag();
   yield return new WaitForSecondsRealtime(1f);Assert.That(c.State.Owned_Gun_list[0],Is.EqualTo(-1));Assert.That(c.State.Owned_Gun_list[1]/5,Is.EqualTo(1));Assert.That(c.State.Owned_Gun_list[2],Is.EqualTo(5));Assert.That(c.State.Owned_Gun_list[3],Is.EqualTo(9));
   c.Guns.newGun_ui.gameObject.SetActive(false);Click(c.Guns.Auto_Btn_obj.GetComponent<Button>());Assert.That(c.Guns.AutoMerge_Active,Is.False);Assert.That(c.Guns.gunItemList.ActiveItems.All(i=>!i.IsAutoMerging&&i.GetComponent<CanvasGroup>().blocksRaycasts),Is.True);
  }finally{SceneManager.sceneLoaded-=Independent;AutoMergeAccess.EntitlementProvider=null;}yield return SceneManager.LoadSceneAsync("TargetPreview");
 }
 [UnityTest, Category("ContentNavigation")] public IEnumerator FishAutoMergeSuspendsForDeleteAndClosingAndFinishesLowestGradeChain()
 {
  SceneManager.sceneLoaded+=Independent;
  try{
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();ContentNavigationFixture.Unlock(GameClient.Instance,Content_Type.Fish);yield return null;var m=GameClient.Instance.Fish;m.Inventory.AddRange(new[]{0,0,1,1});Click(Named("Fish_Btn"));yield return new WaitForSeconds(.4f);var fish=m.fishTank.fishPool.First(f=>f.isActive);fish.SetPosition(m.fishTank.TankRect.InverseTransformPoint(m.Auto_Btn_obj.transform.position));
   // Keep the original button-overlap raycast fixture, but place its equal-grade
   // peer far away. A random peer already within20 would fuse immediately even
   // with a10s move duration, so there would be no in-flight pair to inspect.
   var peer=m.fishTank.fishPool.First(f=>f.isActive&&f!=fish&&f.grade==fish.grade);var bounds=m.fishTank.TankRect.rect;
   var corners=new[]{new Vector2(bounds.xMin,bounds.yMin),new Vector2(bounds.xMin,bounds.yMax),new Vector2(bounds.xMax,bounds.yMin),new Vector2(bounds.xMax,bounds.yMax)};
   peer.SetPosition(corners.Select(peer.ClampToTank).OrderByDescending(p=>Vector2.Distance(p,fish.GetPosition())).First());Assert.That(Vector2.Distance(peer.GetPosition(),fish.GetPosition()),Is.GreaterThan(100));
   m.fishTank.AutoMerge_MoveDuration=10;Click(m.Auto_Btn_obj.GetComponent<Button>());yield return new WaitForSecondsRealtime(.08f);Assert.That(m.fishTank.fishPool.Count(f=>f.IsAutoMerging),Is.EqualTo(2));Assert.That(m.fishTank.fishPool.Where(f=>f.IsAutoMerging).All(f=>!f.GetComponent<CanvasGroup>().blocksRaycasts),Is.True);Click(m.Auto_Btn_obj.GetComponent<Button>());Assert.That(m.Inventory.Count,Is.EqualTo(4));Assert.That(m.fishTank.fishPool.All(f=>!f.IsAutoMerging&&f.GetComponent<CanvasGroup>().blocksRaycasts),Is.True);m.fishTank.AutoMerge_MoveDuration=.4f;Click(m.Auto_Btn_obj.GetComponent<Button>());Fish_DeleteZone.instance.deletePopup.Show(fish);yield return new WaitForSecondsRealtime(.7f);Assert.That(m.Inventory.Count,Is.EqualTo(4));Fish_DeleteZone.instance.deletePopup.OnCancel();yield return new WaitForSecondsRealtime(2f);Assert.That(m.Inventory.OrderBy(x=>x),Is.EqualTo(new[]{1,2}));m.new_fish_ui.Close();m.Close();Assert.That(m.fishTank.IsAutoMergeRunning,Is.False);Assert.That(m.fishTank.fishPool.All(f=>!f.IsAutoMerging&&!f.IsDragging&&!f.isPendingDelete),Is.True);
  }finally{SceneManager.sceneLoaded-=Independent;}yield return SceneManager.LoadSceneAsync("TargetPreview");
 }
 [UnityTest, Category("ContentNavigationExtra")] public IEnumerator PetAutoMergeExcludesDispatchLocksAndStopsOnPanelClose()
 {
  SceneManager.sceneLoaded+=Independent;
  try{
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;ContentNavigationFixture.Unlock(c,Content_Type.Pet);yield return null;var m=c.PetUI;c.State.Owned_Pet_list[0]=0;c.State.Owned_Pet_list[1]=0;c.State.Owned_Pet_list[2]=1;c.State.Owned_Pet_list[3]=1;c.State.Pet_Collect[2]=true;c.State.Owned_Pet_LockGroup[2]=0;c.State.Owned_Pet_LockGroup[3]=1;m.Pet_Reload();Click(Named("Pet_Btn"));yield return new WaitForSeconds(.4f);Click(m.Auto_Btn_obj.GetComponent<Button>());yield return new WaitForSecondsRealtime(1f);
   Assert.That(c.State.Owned_Pet_list[0],Is.EqualTo(-1));Assert.That(c.State.Owned_Pet_list[1],Is.EqualTo(1));Assert.That((c.State.Owned_Pet_list[2],c.State.Owned_Pet_LockGroup[2]),Is.EqualTo((1,0)));Assert.That(c.State.Owned_Pet_list[3],Is.EqualTo(1));m.Pet_UI_obj.SetActive(false);Assert.That(m.gunItemList.IsAutoMergeRunning,Is.False);Assert.That(m.gunItemList.ActiveItems.All(p=>!p.IsAutoMerging),Is.True);
   c.State.Owned_Pet_LockGroup[2]=-1;c.State.Owned_Pet_LockGroup[3]=-1;m.Pet_Reload();Assert.That(c.State.Owned_Pet_list.Count(p=>p>=0),Is.EqualTo(3));m.Panel_Open();yield return new WaitForSecondsRealtime(1f);Assert.That(c.State.Owned_Pet_list.Count(p=>p>=0),Is.EqualTo(2));Assert.That(c.State.Owned_Pet_list.Count(p=>p==2),Is.EqualTo(1));Assert.That(c.State.PurchaseHistory,Is.Empty);
  }finally{SceneManager.sceneLoaded-=Independent;}yield return SceneManager.LoadSceneAsync("TargetPreview");
 }
 [UnityTest] public IEnumerator ClosingGunPanelDuringMovementPreservesPairAndRestoresRaycasts()
 {
  SceneManager.sceneLoaded+=Independent;
  try{
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;var m=c.Guns;c.State.Owned_Gun_list[0]=0;c.State.Owned_Gun_list[1]=4;c.State.Gun_Collect[5]=true;m.ReloadGunUI();Click(Named("Gun_Btn"));yield return new WaitForSeconds(.4f);m.gunItemList.AutoMerge_MoveDuration=3;m.Set_AutoMerge(true);yield return new WaitForSecondsRealtime(.15f);Assert.That(m.gunItemList.ActiveItems.Any(i=>i.IsAutoMerging),Is.True);Assert.That(c.State.Owned_Gun_list.Take(2),Is.EqualTo(new[]{0,4}));m.gunItemList.gameObject.SetActive(false);yield return new WaitForSecondsRealtime(.5f);Assert.That(c.State.Owned_Gun_list.Take(2),Is.EqualTo(new[]{0,4}));Assert.That(m.gunItemList.IsAutoMergeRunning,Is.False);Assert.That(m.gunItemList.ActiveItems.All(i=>!i.IsAutoMerging&&i.GetComponent<CanvasGroup>().blocksRaycasts),Is.True);m.Set_AutoMerge(false);
  }finally{SceneManager.sceneLoaded-=Independent;}yield return SceneManager.LoadSceneAsync("TargetPreview");
 }
 [UnityTest, Category("ContentNavigationExtra")] public IEnumerator NormalDrawAndSafeWithdrawalPlaySpawnBounceWithoutChangingTransactions()
 {
  SceneManager.sceneLoaded+=Independent;
  try{
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;ContentNavigationFixture.Unlock(c,Content_Type.Pet);yield return null;Click(Named("Gun_Btn"));yield return new WaitForSeconds(.4f);
   c.State.Dia=100;int slot=c.Inventory.FirstEmpty;c.Guns.DrawRandom_Normal();var gun=c.Guns.gunItemList.ActiveItems.Single(i=>i.ListIndex==slot);Assert.That(gun.transform.localScale.x,Is.LessThan(.5f));Assert.That(c.State.Dia,Is.Zero);c.Guns.newGun_ui.gameObject.SetActive(false);
   float max=0;float elapsed=0;while(elapsed<.55f){max=Mathf.Max(max,gun.transform.localScale.x);elapsed+=Time.unscaledDeltaTime;yield return null;}Assert.That(max,Is.GreaterThan(1.01f));Assert.That(gun.transform.localScale.x,Is.EqualTo(1).Within(.01f));
   c.State.Safe_Gun_list[0]=5;int at=c.Safe.Take_Out(0,5);gun=c.Guns.gunItemList.ActiveItems.Single(i=>i.ListIndex==at);Assert.That(gun.transform.localScale.x,Is.LessThan(.5f));Assert.That(c.State.Owned_Gun_Pause[at],Is.True);Assert.That(c.State.Safe_Gun_list[0],Is.EqualTo(-1));yield return new WaitForSecondsRealtime(.55f);Assert.That(gun.transform.localScale.x,Is.EqualTo(1).Within(.01f));
   Named("Pet_Btn").onClick.Invoke();yield return new WaitForSeconds(.4f);c.State.PetCoin=100;slot=c.Pets.FirstEmpty;c.PetUI.DrawPet_Normal();var pet=c.PetUI.gunItemList.ActiveItems.Single(i=>i.ListIndex==slot);Assert.That(pet.transform.localScale.x,Is.LessThan(.5f));Assert.That(c.State.PetCoin,Is.Zero);c.PetUI.newPet_ui.gameObject.SetActive(false);yield return new WaitForSecondsRealtime(.55f);Assert.That(pet.transform.localScale.x,Is.EqualTo(1).Within(.01f));Assert.That(c.State.PurchaseHistory,Is.Empty);
  }finally{SceneManager.sceneLoaded-=Independent;}yield return SceneManager.LoadSceneAsync("TargetPreview");
 }
 [Serializable] private sealed class DisabledHelperAudit{public DisabledHelper[] disabled;}
 [Serializable] private sealed class DisabledHelper{public int component;public string type;public HelperPathNode[] path;}
 [Serializable] private sealed class HelperPathNode{public string name;public int ordinal;}
 [UnityTest] public IEnumerator OriginalDisabledNestedFeedbackRemainsDisabled()
 {
  SceneManager.sceneLoaded+=Independent;
  try{
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();var scene=SceneManager.GetActiveScene();string report=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/shared-ui-original-enabled-audit.json"));var audit=JsonUtility.FromJson<DisabledHelperAudit>(File.ReadAllText(report));int matched=0;
   foreach(var row in audit.disabled){Transform current=null;foreach(var part in row.path){var children=current==null?scene.GetRootGameObjects().Select(g=>g.transform):current.Cast<Transform>();current=children.Where(t=>t.name==part.name).Skip(part.ordinal).FirstOrDefault();if(current==null)break;}if(current==null)continue;var helper=(Behaviour)current.GetComponent(typeof(BounceBtn).Assembly.GetType(row.type));Assert.That(helper,Is.Not.Null);Assert.That(helper.enabled,Is.False,row.type+" "+string.Join("/",row.path.Select(n=>n.name)));matched++;}Assert.That(matched,Is.EqualTo(81));
  }finally{SceneManager.sceneLoaded-=Independent;}yield return SceneManager.LoadSceneAsync("TargetPreview");
 }
 [UnityTest] public IEnumerator FishProfileColdReloadRetainsGradesDailyCountCurrencyAndCombatBonus()
 {
  string folder=Path.Combine(Path.GetTempPath(),"catgunner-fish-"+Guid.NewGuid().ToString("N"));UnityEngine.Events.UnityAction<Scene,LoadSceneMode> configure=(scene,mode)=>{Independent(scene,mode);if(scene.name=="GameClient"){var c=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();c.Persist=true;c.SaveFolderOverride=folder;}};SceneManager.sceneLoaded+=configure;
  try{
   yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;c.Fish.Model.RandomPercent=()=>90;c.State.Dia=200;Assert.That(c.Fish.Model.Draw(true),Is.EqualTo(3));Assert.That(c.Fish.Model.Draw(false),Is.EqualTo(2));c.SaveNow();yield return SceneManager.LoadSceneAsync("TargetPreview");yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();c=GameClient.Instance;Assert.That(c.State.FishInventory,Is.EqualTo(new[]{3,2}));Assert.That((c.State.Dia,c.State._useDia,c.State.FreeGachaCount,c.Team.Cat_list[0].CriPer),Is.EqualTo((0,200,1,.22f)));c.Persist=false;
  }finally{SceneManager.sceneLoaded-=configure;}yield return SceneManager.LoadSceneAsync("TargetPreview");Directory.Delete(folder,true);
 }
}
