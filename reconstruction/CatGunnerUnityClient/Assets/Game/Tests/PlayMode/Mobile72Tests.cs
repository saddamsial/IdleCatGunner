using System;using System.Collections;using System.Collections.Generic;using System.IO;using System.Linq;using System.Reflection;using CatGunner.Runtime;using NUnit.Framework;using TMPro;using UnityEngine;using UnityEngine.UI;using UnityEngine.EventSystems;using UnityEngine.SceneManagement;using UnityEngine.TestTools;
public sealed class Mobile72Tests
{
 string folder;GameClient client;Transform canvas;bool background;
 void Independent(Scene scene,LoadSceneMode mode){if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
 [UnitySetUp]public IEnumerator Setup(){background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"Mobile72-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Independent;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;canvas=client.Slider.GetComponentInParent<Canvas>().transform;ForestRuntimeAcceptance.IsGaming=false;client.DailyLogin.Close();client.Tutorial.SetCleared();}
 [UnityTearDown]public IEnumerator Cleanup(){yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Independent;Cat_manager.is_Shoot_Mute=false;Time.timeScale=1;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
 IEnumerator Capture(string name){yield return new WaitForSecondsRealtime(.3f);yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mobile72-"+name+"-gpu.png")));yield return new WaitForSecondsRealtime(.2f);}
 IEnumerator Click(Button button)
 {
  yield return new WaitForSecondsRealtime(.4f);Canvas.ForceUpdateCanvases();Assert.That(button.gameObject.activeInHierarchy&&button.interactable,Is.True,button.name);
  var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;int count=0;void Observe()=>count++;button.onClick.AddListener(Observe);
  try{var r=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(r.rect.center));yield return null;yield return null;var method=typeof(PointerInputModule).GetMethod("GetLastPointerEventData",BindingFlags.Instance|BindingFlags.NonPublic);PointerEventData Pointer()=>method.Invoke(module,new object[]{-1}) as PointerEventData;mouse.Down=mouse.Held=true;float until=Time.realtimeSinceStartup+1;do{yield return null;}while(Pointer()?.pointerPress!=button.gameObject&&Time.realtimeSinceStartup<until);var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);Assert.That(Pointer()?.pointerPress,Is.SameAs(button.gameObject),mouse.Position+" hits="+string.Join("|",hits.Take(8).Select(h=>h.gameObject.name)));mouse.Down=mouse.Held=false;mouse.Up=true;until=Time.realtimeSinceStartup+1;do{yield return null;}while(count==0&&Time.realtimeSinceStartup<until);mouse.Up=false;yield return null;Assert.That(count,Is.EqualTo(1));}finally{button.onClick.RemoveListener(Observe);module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
 }


 [UnityTest]public IEnumerator PetPricesAndDailyWeaponAdRefresh()
 {
  ContentNavigationFixture.Unlock(client,Content_Type.Pet);client.PetUI.Panel_Open();
  var buttons=client.PetUI.Pet_UI_obj.GetComponentsInChildren<Button>(true).Where(b=>b.name=="Draw_Btn"||b.name=="Draw_Btn (Dia)").ToArray();Assert.That(buttons.Length,Is.EqualTo(2));
  foreach(int v in new[]{0,99,100,101}){client.State.Dia=client.State.PetCoin=v;client.NotifyOfflineStateChanged();yield return null;Assert.That(client.PetUI.Pet_UI_obj.transform.Find("Panel/Currency/Dia/Price_txt").GetComponent<TMP_Text>().text,Is.EqualTo(v.ToString()));foreach(var b in buttons){Assert.That(b.transform.Find("Price_txt").GetComponent<TMP_Text>().color,Is.EqualTo(v>=100?Color.white:client.UpgradePanels[0].Color_Disable));Assert.That(b.interactable,Is.EqualTo(v>=100));}}
  client.State.Dia=client.State.PetCoin=0;client.NotifyOfflineStateChanged();yield return Capture("pet-unaffordable");client.PetUI.Pet_UI_obj.SetActive(false);
  client.State.AD_Daily_Gun_LastDate="";yield return Click(canvas.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Gun_Btn"));client.Guns.AD_Draw_Btn_Reload();var ad=client.Guns.AD_Draw_Btn_obj.GetComponent<Button>();yield return Click(ad);yield return null;Assert.That(client.State.AD_Daily_Gun_LastDate,Is.EqualTo(DateTime.Now.ToString("yyyyMMdd")));Assert.That(ad.gameObject.activeSelf,Is.False);int count=client.RewardedAds.CompletedWatches;client.Guns.AD_Draw_Btn_Click();yield return null;Assert.That(client.RewardedAds.CompletedWatches,Is.EqualTo(count));
 }
 [UnityTest]public IEnumerator MineOffersRemainExclusiveAcrossBothRefreshOwners()
 {
  var m=client.MineMode;client.State.Stage_Value_Max=250;client.State.Is_Mine_Pack=false;m.StartPanel_Open();var pack=m.mineStart_ui.transform.Find("MinePack").gameObject;
  for(int i=0;i<3;i++){client.LocalStore.RefreshPlusPresentation();m.mineStart_ui.Reload();yield return new WaitForSecondsRealtime(.3f);Assert.That(pack.activeSelf,Is.True);Assert.That(m.mineStart_ui.PlusPack_Banner_obj.activeSelf,Is.False);}yield return Capture("mine-unowned");
  Assert.That(client.LocalStore.Model.Apply("mine_pack"),Is.True);client.LocalStore.RefreshPlusPresentation();m.mineStart_ui.Reload();Assert.That(pack.activeSelf,Is.False);Assert.That(m.mineStart_ui.PlusPack_Banner_obj.activeSelf,Is.True);yield return Capture("mine-owned");
 }
 [UnityTest]public IEnumerator LuxuryPurchasedOverlayAndColdReload()
 {
  client.MissionUI.Vip_Purchase_Panel_obj.SetActive(true);var card=client.MissionUI.Vip_Purchase_Panel_obj.GetComponentsInChildren<LocalPurchaseButton>(true).Single(b=>b.name=="Luxury_Pass_ui");
  for(Transform t=card.transform;t!=client.MissionUI.Vip_Purchase_Panel_obj.transform;t=t.parent)t.gameObject.SetActive(true);
  card.RefreshPassPresentation(client.LocalStore);Assert.That(card.transform.Find("Purchased_obj").gameObject.activeSelf,Is.False);
  Assert.That(client.LocalStore.Request("catgunner_luxury_pass"),Is.True);yield return null;yield return null;yield return null;
  Assert.That(client.Missions.LuxuryAccess&&client.Missions.VipAccess,Is.True);Assert.That(card.transform.Find("Purchased_obj").gameObject.activeInHierarchy,Is.True);Assert.That(card.transform.Find("Purchase_Btn").gameObject.activeSelf,Is.False);Assert.That(client.LocalStore.Request("catgunner_luxury_pass"),Is.False);yield return Capture("pass-owned");client.SaveNow();
  yield return TestSceneLoader.LoadAsync("TargetPreview");yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;Assert.That(client.Missions.LuxuryAccess&&client.LocalStore.Model.Recorded("catgunner_luxury_pass"),Is.True);
  client.MissionUI.Vip_Purchase_Panel_obj.SetActive(true);card=client.MissionUI.Vip_Purchase_Panel_obj.GetComponentsInChildren<LocalPurchaseButton>(true).Single(b=>b.name=="Luxury_Pass_ui");for(Transform t=card.transform;t!=client.MissionUI.Vip_Purchase_Panel_obj.transform;t=t.parent)t.gameObject.SetActive(true);yield return null;Assert.That(card.transform.Find("Purchased_obj").gameObject.activeSelf,Is.True);
 }
 [UnityTest]public IEnumerator FishMergeAndReopenRetainVisibleUpperTankFish()
 {
  var m=client.Fish;ContentNavigationFixture.Unlock(client,Content_Type.Fish);m.Inventory.Clear();m.Inventory.AddRange(new[]{3,3,5,5,7,7});m.Set_AutoMerge(false);m.ReloadFishUI();yield return new WaitForSecondsRealtime(.4f);var tank=m.fishTank;
  m.Set_AutoMerge(true);float until=Time.realtimeSinceStartup+4;while(tank.IsAutoMergeRunning&&Time.realtimeSinceStartup<until){m.new_fish_ui.Close();yield return null;}m.Set_AutoMerge(false);m.new_fish_ui.Close();Assert.That(m.Inventory.OrderBy(x=>x),Is.EqualTo(new[]{4,6,8}));
  foreach(var f in tank.fishPool.Where(f=>f.isActive))f.SetPosition(new Vector2((f.inventoryIndex-1)*250,450));yield return new WaitForSecondsRealtime(.4f);
  foreach(var f in tank.fishPool.Where(f=>f.isActive)){Assert.That(f.GetComponent<Canvas>().sortingOrder,Is.GreaterThan(0));Assert.That(f.skinImage.canvasRenderer.cull,Is.False);Assert.That(f.skinImage.gameObject.activeInHierarchy,Is.True);}
  yield return Capture("fish-merged-upper");
  for(int i=0;i<5;i++){m.Close();m.ReloadFishUI();yield return new WaitForSecondsRealtime(.3f);Assert.That(tank.fishPool.Count(f=>f.isActive),Is.EqualTo(m.Inventory.Count));Assert.That(tank.fishPool.Where(f=>f.isActive).All(f=>f.GetComponent<Canvas>().sortingOrder>0),Is.True);}
  yield return Capture("fish-reopened");
 }
}
