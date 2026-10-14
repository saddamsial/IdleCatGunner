using System;using System.IO;using System.Linq;using System.Collections;using System.Collections.Generic;using UnityEngine;using UnityEngine.UI;using UnityEngine.EventSystems;using TMPro;using CatGunner.Runtime;
public static class FinalV8Capture
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/polish-v8/captures");
 static string PathOf(Transform t){string p=t.name;while(t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
 public static string Main()
 {
  var c=GameClient.Instance;if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||!Application.isPlaying||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Correct isolated preview required");
  Directory.CreateDirectory(Dir);File.Delete(Path.Combine(Dir,"complete.json"));c.StartCoroutine(Run(c));return "Capturing real Game frames and interaction evidence in independent profile";
 }
 static IEnumerator Shot(string name,float wait=.45f){yield return new WaitForSecondsRealtime(wait);yield return new WaitForEndOfFrame();var t=ScreenCapture.CaptureScreenshotAsTexture();try{File.WriteAllBytes(Path.Combine(Dir,name+".png"),t.EncodeToPNG());}finally{UnityEngine.Object.Destroy(t);}}
 static IEnumerator Click(Button b)
 {
  EventSystem.current.SendMessage("OnApplicationFocus",true);var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;Canvas.ForceUpdateCanvases();var rect=(RectTransform)b.transform;
  mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));yield return null;mouse.Down=mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;module.inputOverride=null;UnityEngine.Object.Destroy(mouse);
 }
 public static IEnumerator Run(GameClient c)
 {
  while(!c.ReadyForPlay||!c.GetComponent<PenguinPlaytestPolish>().Ready)yield return null;
  c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Tutorial.SetCleared();c.Offline.offlinePanelUI.gameObject.SetActive(false);c.MissionUI.Panel_Close();
  c.Forest.Stage_Value_Max=400;c.ContentUnlock.Reload();c.GetComponent<Language>().PersistSelection=false;c.GetComponent<Language>().Select("zh-CN");
  c.OfflineAutoMergePreview=true;c.State.Dia=10000;for(int i=20;i<25;i++)c.Inventory.AddRewardGun(i);c.Guns.newGun_ui.gameObject.SetActive(false);
  c.State.FishInventory.Clear();for(int i=0;i<13;i++)c.State.FishInventory.Add(i);
  for(int i=0;i<Math.Min(10,c.State.Owned_Pet_list.Length);i++)c.State.Owned_Pet_list[i]=i;c.PetUI.Pet_Reload();
  for(int i=0;i<3;i++)c.State.Pet_Selected_items[i]=i;c.ApplyBalance();
  var canvas=c.Slider.GetComponentInParent<Canvas>();var menu=canvas.transform.Find("SafeArea/Main_UI/Btn_list");
  ForestRuntimeAcceptance.IsGaming=false;yield return Shot("main");
  c.ShowLoading(true);yield return Shot("loading");c.ShowLoading(false);
  foreach(string name in new[]{"Gun_Btn","Skin_Btn","Pet_Btn ","Fish_Btn","Rebirth_Btn","Shop_Btn","Mission_Btn","SpeedRun_Btn","Monster_Btn"})
  {
   var states=canvas.GetComponentsInChildren<Transform>(true).ToDictionary(t=>t.gameObject,t=>t.gameObject.activeSelf);
   yield return Click(menu.GetComponentsInChildren<Button>(true).Single(b=>b.name==name));string file=name.Trim().Replace("_Btn","").ToLowerInvariant();
   if(name=="Mission_Btn"){c.Missions.ResetSeason(true);c.State.Mission_TreeCount_Value=1585;c.State.Mission_StageClear_Value=13;c.State.Mission_Reward_Lv=2;c.State.Mission_Reward_Exp=45;c.MissionUI.UI_Reload();}
   if(name=="Gun_Btn")c.Guns.Set_AutoMerge(false);if(name=="Pet_Btn ")c.PetUI.Set_AutoMerge(false);if(name=="Fish_Btn")c.Fish.Set_AutoMerge(false);
   yield return Shot(file);
   if(name=="Gun_Btn"||name=="Pet_Btn "||name=="Fish_Btn")
   {
    var toggle=name=="Gun_Btn"?c.Guns.OnOff_UI:name=="Pet_Btn "?c.PetUI.OnOff_UI:c.Fish.OnOff_UI;
    yield return Click(toggle.GetComponent<Button>());yield return Shot(file+"-auto-on");
   }
   if(name=="Fish_Btn")
   {
    yield return Shot("fish-swim-02",.1f);yield return Shot("fish-swim-03",.1f);
    var fish=c.Fish.fishTank.GetComponentsInChildren<Fish_Item>().First(f=>f.isActive);var e=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,fish.transform.position)};
    fish.OnPointerClick(e);yield return Shot("fish-info");c.Fish.fish_info_ui.Close();
   }
   if(name=="Shop_Btn"){var scroll=c.LocalStore.ShopUI.GetComponentInChildren<ScrollRect>(true);scroll.verticalNormalizedPosition=0;yield return Shot("shop-blue-diamonds");}
   foreach(var s in states)if(s.Key!=null&&s.Key.activeSelf!=s.Value)s.Key.SetActive(s.Value);
  }
  var step=c.LocalStore.StepUpOffer;step.Purchased[0]=true;step.Popup_Open("preview");yield return Shot("stepup-current");var stepScroll=step.popup.GetComponentInChildren<ScrollRect>(true);stepScroll.verticalNormalizedPosition=0;yield return Shot("stepup-bottom");step.popup.Close();
  c.State.DailyGun_Purchase_Counts=new[]{2,0,0};c.WeeklyGuns.Bind(c);c.WeeklyShop.Panel_Open();c.WeeklyShop.Menu_Open(WeeklyShop_Menu.Gun);yield return Shot("weekly-current");c.WeeklyShop.Panel_Close();
  foreach(var pair in new[]{new[]{"upgrade", "CatHand_Upgrade"},new[]{"weapon", "CatHand_GunOpen"},new[]{"draw", "CatHand_GunBuy"}})
  {
   var hand=pair[0]=="upgrade"?c.Tutorial.CatHand_Upgrade:pair[0]=="weapon"?c.Tutorial.CatHand_GunOpen:c.Tutorial.CatHand_GunBuy;
   var states=new Dictionary<GameObject,bool>();for(var t=hand.transform;t!=canvas.transform;t=t.parent){states[t.gameObject]=t.gameObject.activeSelf;t.gameObject.SetActive(true);}yield return Shot("tutorial-"+pair[0]);foreach(var s in states)s.Key.SetActive(s.Value);
  }
  ForestRuntimeAcceptance.IsGaming=true;yield return Shot("forest-variety");yield return Shot("pets-move-01",.07f);yield return Shot("pets-move-02",.07f);ForestRuntimeAcceptance.IsGaming=false;
  c.SpeedRun.Game_Enter();yield return new WaitForSecondsRealtime(2.6f);yield return Shot("challenge-scene");c.SpeedRun.Game_Win();yield return Shot("challenge-settlement");c.SpeedRun.Game_Exit();yield return new WaitForSecondsRealtime(2.4f);
  c.BossMode.Game_Enter();yield return new WaitForSecondsRealtime(2.4f);yield return Shot("boss-scene");c.BossMode.Game_Win();yield return Shot("boss-settlement",1.1f);c.BossMode.Game_Exit();yield return new WaitForSecondsRealtime(2.4f);
  c.MineMode.Game_Enter();yield return new WaitForSecondsRealtime(3.6f);yield return Shot("mine-scene");c.MineMode.Game_End();yield return Shot("mine-settlement",1.1f);
  var free=c.MineMode.GameEnd_UI.GetComponentsInChildren<Button>(true).First(b=>b.name=="FreeCash_Banner");free.transform.parent.gameObject.SetActive(true);free.gameObject.SetActive(true);yield return new WaitForSecondsRealtime(.8f);yield return Click(free);yield return Shot("freecash-response");UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include)?.gameObject.SetActive(false);c.MineMode.Game_Exit();yield return new WaitForSecondsRealtime(2.4f);
  c.MonsterMode.Game_Enter();yield return new WaitForSecondsRealtime(3.4f);c.MonsterMode.GameExplain_obj.SetActive(false);yield return Shot("hunt-scene");c.MonsterMode.Game_GiveUp();yield return Shot("hunt-settlement",1.1f);c.MonsterMode.Game_Exit();yield return new WaitForSecondsRealtime(2.4f);
  ForestRuntimeAcceptance.IsGaming=false;
  var images=canvas.GetComponentsInChildren<Image>(true).Where(im=>im.transform.GetComponent<PenguinMergeSwitch>()!=null||im.transform.GetComponent<PenguinOfferCard>()!=null||PathOf(im.transform).Contains("Dia (List)")||PathOf(im.transform).Contains("PetCoin")).Select(im=>new{path=PathOf(im.transform),color=ColorUtility.ToHtmlStringRGBA(im.color),sprite=im.sprite!=null?im.sprite.name:null}).ToArray();
  File.WriteAllText(Path.Combine(Dir,"complete.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{width=Screen.width,height=Screen.height,profile=c.SaveFolderOverride,frames=Directory.GetFiles(Dir,"*.png").Length,freecash=c.GetComponent<PenguinPlaytestPolish>().FreeCashResponses,images,fixture="Independent profile; sample inventory and offer states, test-only merge access; actual UI input with test focus for menu/switches; original mode enter/end routes; no ordinary-save writes",source="Unity Editor GPU Game view screenshots"},Newtonsoft.Json.Formatting.Indented));
 }
}

public static class FinalV8Verify
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/polish-v8/captures");
 public static string Main(){var c=GameClient.Instance;if(!Application.isPlaying||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated Play required");c.StartCoroutine(Run(c));return "Recording Stage cycle, all pet directions, animation and scene render order";}
 static IEnumerator Shot(string name,float wait=.15f){yield return new WaitForSecondsRealtime(wait);yield return new WaitForEndOfFrame();var t=ScreenCapture.CaptureScreenshotAsTexture();try{File.WriteAllBytes(Path.Combine(Dir,name+".png"),t.EncodeToPNG());}finally{UnityEngine.Object.Destroy(t);}}
 public static IEnumerator Run(GameClient c)
 {
  while(!c.ReadyForPlay||!c.GetComponent<PenguinPlaytestPolish>().Ready)yield return null;
  c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Tutorial.SetCleared();c.Offline.offlinePanelUI.gameObject.SetActive(false);c.MissionUI.Panel_Close();ForestRuntimeAcceptance.IsGaming=false;Time.timeScale=1;
  var evidence=new List<object>();
  for(int stage=0;stage<=10;stage++){c.Forest.Stage_Now=stage;c.Forest.Level_Now=1;c.Forest.Map_Batch();c.Slider.Stage_Reload(stage,1);yield return Shot("stage-"+(stage+1).ToString("D2"));var active=c.Forest.Map_obj.GetComponentsInChildren<Tree>().Where(t=>t.gameObject.activeInHierarchy).ToArray();evidence.Add(new{stage=stage+1,textures=active.Select(t=>t.spriteRenderer.sprite.texture.name).Distinct().ToArray(),sprites=active.Select(t=>t.spriteRenderer.sprite.name).Distinct().ToArray(),count=active.Length});}
  c.Forest.Stage_Now=0;c.Forest.Level_Now=0;c.Forest.Map_Batch();
  c.State.Skin_Unlock=Enumerable.Repeat(true,25).ToArray();c.Skins.Skin_Unlock=c.State.Skin_Unlock;c.Skins.UI_Reload();yield return Shot("skin-body-uniform");c.Skins.Skin_List_UI.SetActive(false);
  var manager=UnityEngine.Object.FindAnyObjectByType<Pet_Ingame_manager>();manager.enabled=false;var pet=manager.Pets[0];pet.Reload(0);pet.gameObject.SetActive(true);for(int i=1;i<manager.Pets.Length;i++)manager.Pets[i].gameObject.SetActive(false);
  var motion=pet.GetComponentInChildren<PenguinPetMotion>();var actor=motion.GetComponent<PenguinCatalogActor>();var moves=new List<object>();
  var right=Vector3.ProjectOnPlane(Camera.main.transform.right,Vector3.up).normalized;var up=Vector3.ProjectOnPlane(Camera.main.transform.up,Vector3.up).normalized;var velocities=new[]{-right,right,up,-up};var names=new[]{"left","right","up","down"};
  for(int n=0;n<velocities.Length;n++)
  {
   pet.Warp(c.Hero.transform.position+new Vector3(6,0,0));pet.IsMoving=true;pet.rb.linearVelocity=velocities[n]*8;
   for(int frame=0;frame<6;frame++){yield return Shot("pet-"+names[n]+"-"+frame.ToString("D2"),.08f);moves.Add(new{screenDirection=names[n],velocity=velocities[n].ToString(),direction=motion.Direction.ToString(),sprite=actor.Visual.sprite.name,position=pet.transform.position.ToString(),vertices=motion.Mesh.vertices.Select(v=>v.ToString()).Take(18).ToArray()});}
  }
  pet.rb.linearVelocity=Vector3.zero;pet.IsMoving=false;manager.enabled=true;
  var effects=UnityEngine.Object.FindObjectsByType<Renderer>(FindObjectsInactive.Include,FindObjectsSortMode.None).Where(r=>r.GetComponentInParent<Bullet>(true)!=null||r.GetComponentInParent<Bullet_FX>(true)!=null).ToArray();
  File.WriteAllText(Path.Combine(Dir,"stage-pet-verification.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{stages=evidence,movement=moves,pet=new{layer=motion.Renderer.sortingLayerName,order=motion.Renderer.sortingOrder},attackLayers=effects.GroupBy(r=>r.sortingLayerName).Select(g=>new{layer=g.Key,min=g.Min(r=>r.sortingOrder),max=g.Max(r=>r.sortingOrder)}).ToArray(),scope="Actual Editor GPU. Pet direction fixture temporarily disables follow manager and applies real Rigidbody velocity; ordinary save untouched."},Newtonsoft.Json.Formatting.Indented));
 }
}

public static class FinalV8Audit
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/polish-v8/captures");
 static string PathOf(Transform t)=>t.parent!=null?PathOf(t.parent)+"/"+t.name:t.name;
 public static string Main(){var c=GameClient.Instance;if(!Application.isPlaying||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated Play required");c.StartCoroutine(Run(c));return "Auditing all sixteen UI feedback items, actual normal-state controls and same-tier weapons";}
 static IEnumerator Shot(string name){yield return new WaitForSecondsRealtime(.3f);yield return new WaitForEndOfFrame();var t=ScreenCapture.CaptureScreenshotAsTexture();File.WriteAllBytes(Path.Combine(Dir,name+".png"),t.EncodeToPNG());UnityEngine.Object.Destroy(t);}
 public static IEnumerator Run(GameClient c)
 {
  var canvas=c.Slider.GetComponentInParent<Canvas>();var buttons=canvas.transform.Find("SafeArea/Main_UI/Btn_list").GetComponentsInChildren<Button>(true);
  c.Guns.Set_AutoMerge(false);c.PetUI.Set_AutoMerge(false);c.State.Owned_Gun_list=Enumerable.Repeat(-1,c.State.Owned_Gun_list.Length).ToArray();for(int i=0;i<Math.Min(15,c.State.Owned_Gun_list.Length);i++)c.State.Owned_Gun_list[i]=15+i;c.Guns.ReloadGunUI();buttons.Single(b=>b.name=="Gun_Btn").onClick.Invoke();yield return Shot("weapon-tiers-and-S-sizes");
  var guns=canvas.GetComponentsInChildren<Gun_Item>(true).Where(i=>i.GunNum>=0).Select(i=>new{gun=i.GunNum,tier=i.GunNum/5,color=ColorUtility.ToHtmlStringRGBA(i.Panel_img.color),expected=ColorUtility.ToHtmlStringRGBA(c.Guns.Degree_Colors[i.GunNum/5]),sprite=i.Gun_img.sprite.name,size=i.Gun_img.rectTransform.rect.size.ToString()}).ToArray();canvas.transform.Find("SafeArea/Gun_UI  (SafeArea)/GunList_UI").gameObject.SetActive(false);
  for(int i=0;i<Math.Min(10,c.State.Owned_Pet_list.Length);i++)c.State.Owned_Pet_list[i]=i;c.PetUI.Pet_Reload();buttons.Single(b=>b.name=="Pet_Btn ").onClick.Invoke();yield return Shot("pet-native-tier-panels");var pets=canvas.GetComponentsInChildren<Pet_Item>(true).Where(i=>i.PetNum>=0).Select(i=>new{pet=i.PetNum,color=ColorUtility.ToHtmlStringRGBA(i.Panel_img.color),expected=ColorUtility.ToHtmlStringRGBA(c.PetUI.Degree_Colors[i.PetNum])}).ToArray();c.PetUI.Pet_UI_obj.SetActive(false);
  c.State.Mission_ExpGet[0]=true;c.MissionUI.Panel_Open();c.MissionUI.UI_Reload();yield return Shot("mission-reclaim-normal");var missionScroll=c.MissionUI.Mission_Scroll;if(missionScroll!=null)missionScroll.verticalNormalizedPosition=0;yield return Shot("mission-VIP-bottom");c.MissionUI.Panel_Close();
  var fills=new[]{c.BossMode.gameSlider.Value_Fill,c.MineMode.gameSlider.Value_Fill,c.MonsterMode.monster_game_slider.Value_Fill};
  var audit=new{guns,pets,bluePacks=canvas.GetComponentsInChildren<Image>(true).Where(i=>PathOf(i.transform).Contains("Dia (List)/Dia_Pack")&&i.name=="image").Select(i=>new{path=PathOf(i.transform),sprite=i.sprite.name}).ToArray(),petWallet=canvas.GetComponentsInChildren<Image>(true).Where(i=>PathOf(i.transform).Contains("Currency/Petcoin/Image")).Select(i=>new{path=PathOf(i.transform),sprite=i.sprite.name}).ToArray(),claimsAndExits=canvas.GetComponentsInChildren<Button>(true).Where(b=>b.name=="Bonus_Btn"||b.name=="NoAds_Btn"||b.name=="Reward_Get_Btn"||b.name=="Exit_Btn").Select(b=>new{path=PathOf(b.transform),normalAlpha=b.colors.normalColor.a,surface=b.targetGraphic!=null?ColorUtility.ToHtmlStringRGBA(b.targetGraphic.color):null}).ToArray(),fills=fills.Select(f=>new{path=PathOf(f.transform),ppu=f.pixelsPerUnitMultiplier}).ToArray(),backplates=canvas.GetComponentsInChildren<Transform>(true).Where(t=>t.name=="BackPanel"&&t.parent.name=="Win_img").Select(t=>new{path=PathOf(t),active=t.gameObject.activeSelf}).ToArray(),offers=canvas.GetComponentsInChildren<PenguinOfferCard>(true).Select(o=>new{path=PathOf(o.transform),state=o.State}).ToArray()};
  File.WriteAllText(Path.Combine(Dir,"sixteen-item-audit.json"),Newtonsoft.Json.JsonConvert.SerializeObject(audit,Newtonsoft.Json.Formatting.Indented));
 }
}

public static class CompleteV8Preview {public static string Main(){var c=GameClient.Instance;if(!Application.isPlaying||c==null||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated preview required");c.StartCoroutine(Run(c));return "Sequential final page, Stage, pet and UI audit started";}static IEnumerator Run(GameClient c){yield return FinalV8Capture.Run(c);yield return FinalV8Verify.Run(c);yield return FinalV8Audit.Run(c);File.WriteAllText(Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/polish-v8/captures/final-job-complete.json"),"{\"complete\":true}");}}