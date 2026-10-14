using System;using System.IO;using System.Linq;using System.Collections;using System.Collections.Generic;
using UnityEngine;using UnityEngine.UI;using UnityEngine.EventSystems;using TMPro;using CatGunner.Runtime;
public static class CapturePlaytestV5
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/polish-v5/captures");
 static string PathOf(Transform t){string p=t.name;while(t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
 public static string Main()
 {
  var c=GameClient.Instance;if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||!Application.isPlaying||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Correct isolated preview required");
  Directory.CreateDirectory(Dir);File.Delete(Path.Combine(Dir,"complete.json"));c.StartCoroutine(Run(c));return "Capturing real Game frames and interaction evidence in independent profile";
 }
 static IEnumerator Shot(string name,float wait=.45f){yield return new WaitForSecondsRealtime(wait);yield return new WaitForEndOfFrame();var t=ScreenCapture.CaptureScreenshotAsTexture();try{File.WriteAllBytes(Path.Combine(Dir,name+".png"),t.EncodeToPNG());}finally{UnityEngine.Object.Destroy(t);}}
 static IEnumerator Click(Button b)
 {
  var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;Canvas.ForceUpdateCanvases();var rect=(RectTransform)b.transform;
  mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));yield return null;mouse.Down=mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;module.inputOverride=null;UnityEngine.Object.Destroy(mouse);
 }
 static IEnumerator Run(GameClient c)
 {
  while(!c.ReadyForPlay||!c.GetComponent<PenguinPlaytestPolish>().Ready)yield return null;
  c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Tutorial.SetCleared();c.Offline.offlinePanelUI.gameObject.SetActive(false);c.MissionUI.Panel_Close();
  c.Forest.Stage_Value_Max=400;c.ContentUnlock.Reload();c.GetComponent<Language>().PersistSelection=false;c.GetComponent<Language>().Select("zh-CN");
  c.State.Dia=10000;for(int i=20;i<25;i++)c.Inventory.AddRewardGun(i);c.Guns.newGun_ui.gameObject.SetActive(false);
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
  File.WriteAllText(Path.Combine(Dir,"complete.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{width=Screen.width,height=Screen.height,profile=c.SaveFolderOverride,frames=Directory.GetFiles(Dir,"*.png").Length,freecash=c.GetComponent<PenguinPlaytestPolish>().FreeCashResponses,images,fixture="Independent profile; sample inventory and offer states; real UI input for menu/switches; original mode enter/end routes; no ordinary-save writes",source="Unity Editor GPU Game view screenshots"},Newtonsoft.Json.Formatting.Indented));
 }
}
