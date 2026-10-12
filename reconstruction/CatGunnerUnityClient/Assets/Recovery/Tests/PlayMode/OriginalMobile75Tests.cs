using System;using System.Collections;using System.Collections.Generic;using System.IO;using System.Linq;using System.Reflection;using CatGunner.Recovery;using NUnit.Framework;using TMPro;using UnityEngine;using UnityEngine.UI;using UnityEngine.EventSystems;using UnityEngine.SceneManagement;using UnityEngine.TestTools;
public sealed class OriginalMobile75Tests
{
 string folder;RecoveryForestClient client;Transform canvas;bool background;
 void Independent(Scene scene,LoadSceneMode mode){if(scene.name=="RecoveredClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride=folder;}
 [UnitySetUp]public IEnumerator Setup(){background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"Mobile75-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Independent;yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();client=RecoveryForestClient.Instance;canvas=client.Slider.GetComponentInParent<Canvas>().transform;ForestRuntimeAcceptance.IsGaming=false;client.DailyLogin.Close();client.Tutorial.SetCleared();}
 [UnityTearDown]public IEnumerator Cleanup(){yield return SceneManager.LoadSceneAsync("RecoveredTarget");SceneManager.sceneLoaded-=Independent;Cat_manager.is_Shoot_Mute=false;Time.timeScale=1;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
 IEnumerator Capture(string name){yield return new WaitForSecondsRealtime(.3f);yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mobile75-"+name+"-gpu.png")));yield return new WaitForSecondsRealtime(.2f);}
 IEnumerator Click(Button button)
 {
  yield return new WaitForSecondsRealtime(.4f);Canvas.ForceUpdateCanvases();Assert.That(button.gameObject.activeInHierarchy&&button.interactable,Is.True,button.name);
  var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;int count=0;void Observe()=>count++;button.onClick.AddListener(Observe);
  try{var r=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(r.rect.center));yield return null;yield return null;var method=typeof(PointerInputModule).GetMethod("GetLastPointerEventData",BindingFlags.Instance|BindingFlags.NonPublic);PointerEventData Pointer()=>method.Invoke(module,new object[]{-1}) as PointerEventData;mouse.Down=mouse.Held=true;float until=Time.realtimeSinceStartup+1;do{yield return null;}while(Pointer()?.pointerPress!=button.gameObject&&Time.realtimeSinceStartup<until);var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);Assert.That(Pointer()?.pointerPress,Is.SameAs(button.gameObject),mouse.Position+" hits="+string.Join("|",hits.Take(8).Select(h=>h.gameObject.name)));mouse.Down=mouse.Held=false;mouse.Up=true;until=Time.realtimeSinceStartup+1;do{yield return null;}while(count==0&&Time.realtimeSinceStartup<until);mouse.Up=false;yield return null;Assert.That(count,Is.EqualTo(1));}finally{button.onClick.RemoveListener(Observe);module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
 }



 [UnityTest]public IEnumerator LoadingIgnoresBothSafeAreaInsetsAndRestoresSourceParent()
 {
  var viewport=client.GetComponent<RecoveryMobileViewport>();viewport.enabled=false;viewport.Refresh(new Rect(0,105,1440,2948),1440,3200,true);var parent=client.LoadingUI.transform.parent;client.ShowLoading(true);Canvas.ForceUpdateCanvases();
  Assert.That(client.LoadingUI.transform.parent,Is.SameAs(canvas.Find("SafeArea/Main_UI")));var rect=(RectTransform)client.LoadingUI.transform;var corners=new Vector3[4];rect.GetWorldCorners(corners);
  var bottom=RectTransformUtility.WorldToScreenPoint(null,corners[0]);var top=RectTransformUtility.WorldToScreenPoint(null,corners[2]);Assert.That(bottom.x,Is.EqualTo(0).Within(1));Assert.That(bottom.y,Is.EqualTo(0).Within(1));Assert.That(top.x,Is.EqualTo(Screen.width).Within(1));Assert.That(top.y,Is.EqualTo(Screen.height).Within(1));
  Assert.That(client.LoadingUI.transform.Find("Background/Cat/Loading_Txt").GetComponent<TMP_Text>().text,Is.EqualTo(RecoveryLanguage.TermText("고양이 이동중..")));yield return Capture("loading-fullscreen");client.ShowLoading(false);Assert.That(client.LoadingUI.transform.parent,Is.SameAs(parent));
 }
 [UnityTest]public IEnumerator ActualTravelBannerOpensOriginalCoreOffersBuysLocallyAndCloses()
 {
  client.Adventure.Open();var banner=client.Adventure.adventure_panel_ui.transform.Find("PrismCore_Panel").GetComponent<Button>();var popup=client.Adventure.PrismCorePurchasePopup;Assert.That(popup.activeSelf,Is.False);
  int core=client.State.Adventure_Currency_Core[3];yield return Click(banner);Assert.That(popup.activeInHierarchy,Is.True);Assert.That(client.State.Adventure_Currency_Core[3],Is.EqualTo(core));Assert.That(popup.GetComponentsInChildren<RecoveryLocalPurchaseButton>(true).Length,Is.EqualTo(7));yield return Capture("travel-core-offers");
  var buy=popup.GetComponentsInChildren<RecoveryLocalPurchaseButton>(true).Single(b=>b.ProductId=="catgunner_core_daily_750");yield return Click(buy.Button);yield return null;Assert.That(client.State.Adventure_Currency_Core[3],Is.EqualTo(core+750));Assert.That(client.LocalStore.Model.Recorded("catgunner_core_daily_750"),Is.True);
  Assert.That(popup.transform.Find("Panel/PrismCore_Panel/Currency_Core/Core (ALL)/Count_txt").GetComponent<TMP_Text>().text,Is.EqualTo(OriginalNumberText.Format(new DecimalAmount(core+750))));
  Assert.That(client.Adventure.adventure_panel_ui.transform.Find("Currency_Core/Core (ALL)/Count_txt").GetComponent<TMP_Text>().text,Is.EqualTo(OriginalNumberText.Format(new DecimalAmount(core+750))));yield return Capture("travel-core-bought");
  var close=popup.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn");yield return Click(close);Assert.That(popup.activeSelf,Is.False);client.SaveNow();var persisted=new OriginalSaveArchive(folder).Load();Assert.That(persisted.Adventure_Currency_Core[3],Is.EqualTo(core+750));
 }
 [UnityTest]public IEnumerator ForestLoadingStaysBehindRaidTasksAndOtherMenus()
 {
  var viewport=client.GetComponent<RecoveryMobileViewport>();viewport.enabled=false;viewport.Refresh(new Rect(0,105,1440,2948),1440,3200,true);
  client.RaidMode.Panel_Open();client.RaidMissions.Open_Popup();client.ShowLoading(true,false);Canvas.ForceUpdateCanvases();
  Assert.That(client.LoadingUI.GetComponent<Canvas>().overrideSorting,Is.False);Assert.That(client.LoadingUI.transform.parent,Is.SameAs(canvas.Find("SafeArea/Main_UI")));
  var corners=new Vector3[4];((RectTransform)client.LoadingUI.transform).GetWorldCorners(corners);Assert.That(corners[0].y,Is.EqualTo(0).Within(1));Assert.That(corners[2].y,Is.EqualTo(Screen.height).Within(1));
  yield return Capture("raid-tasks-above-loading");var close=client.RaidMissions.mission_ui.transform.Find("Close_Btn").GetComponent<Button>();yield return Click(close);Assert.That(client.RaidMissions.mission_ui.gameObject.activeSelf,Is.False);
  client.RaidMode.StartPanel.SetActive(false);client.Adventure.Open();yield return Click(client.Adventure.adventure_panel_ui.transform.Find("PrismCore_Panel").GetComponent<Button>());Assert.That(client.Adventure.PrismCorePurchasePopup.activeInHierarchy,Is.True);client.Adventure.Close();client.ShowLoading(false);
 }
 [UnityTest]public IEnumerator ActualRaidTicketPurchaseRetainsOriginalCheckAndAllowsOneExtraClaim()
 {
  var m=client.RaidMissions;client.RaidMode.Panel_Open();client.RaidMode.Season_TryCount=1;m.Refresh_Clear();m.Open_Popup();int before=client.State.StarGem;
  yield return Click(m.mission_ui.Mission_item_list[0].transform.Find("Claimable/Reward_Get_Btn").GetComponent<Button>());Assert.That(client.State.StarGem,Is.EqualTo(before+300));Assert.That(m.State_return(0),Is.EqualTo(2));
  var ticket=m.mission_ui.GetComponentInChildren<Raid_Mission_Ticket_UI>(true);Assert.That(ticket.ReGet_Count_txt.text,Is.EqualTo("300"));Assert.That(m.Reward_ReGet(0),Is.False);m.Ticket_Popup_Close();
  yield return Click(ticket.Ticket_Purchase_btn_obj.transform.Find("Reward_Get_Btn").GetComponent<Button>());yield return null;Assert.That(m.Ticket_Purchased,Is.True);Assert.That(ticket.Ticket_Purchase_btn_obj.activeSelf,Is.False);Assert.That(ticket.Ticket_Purchased_obj.activeInHierarchy,Is.True);
  var check=ticket.Ticket_Purchased_obj.transform.Find("Black/Image").GetComponent<Image>();Assert.That(check.gameObject.activeInHierarchy,Is.True);Assert.That(check.color.g,Is.EqualTo(1).Within(.001));Assert.That(ticket.Ticket_Purchased_obj.transform.Find("Black").GetComponent<Image>().color.a,Is.EqualTo(.78).Within(.002));yield return Capture("raid-ticket-purchased");
  yield return Click(m.mission_ui.Mission_item_list[0].transform.Find("Re Claimable/Reward_Get_Btn").GetComponent<Button>());Assert.That(client.State.StarGem,Is.EqualTo(before+600));Assert.That(m.State_return(0),Is.EqualTo(3));Assert.That(ticket.ReGet_Count_txt.text,Is.EqualTo("0"));Assert.That(m.Reward_ReGet(0),Is.False);Assert.That(m.Reward_Get(0),Is.False);Assert.That(client.State.StarGem,Is.EqualTo(before+600));
  client.SaveNow();var saved=new OriginalSaveArchive(folder).Load();Assert.That(saved.RaidMission_Ticket&&saved.RaidMission_Reward_Get[0]&&saved.RaidMission_Reward_ReGet[0],Is.True);
 }
 [UnityTest]public IEnumerator HugeRaidBossAndOfflineAmountsStayCompactWithoutChangingRatios()
 {
  var max=OriginalAmount.FromValue(new DecimalAmount(27675624837122));var now=OriginalAmount.FromValue(max.Value*new DecimalAmount(5,-1));
  client.RaidMode.ingame_ui.Health_Reload(now,max);Assert.That(client.RaidMode.ingame_ui.Health_txt.text,Is.EqualTo(OriginalNumberText.Format(now.Value)));Assert.That(client.RaidMode.ingame_ui.Health_txt.text.Length,Is.LessThan(10));Assert.That(client.RaidMode.ingame_ui.HP_Fill.fillAmount,Is.EqualTo(.5f).Within(.0001));
  client.BossMode.gameSlider.Value_Reload(now,max);Assert.That(client.BossMode.gameSlider.Value_txt.text,Is.EqualTo(OriginalNumberText.Format(now.Value)));Assert.That(client.BossMode.gameSlider.Value_Fill.fillAmount,Is.EqualTo(.5f).Within(.0001));
  var original=client.State.Money;client.State.Money=max;client.Offline.offlinePanelUI.Reload(client.State,new OfflineResult{MoneyFinal=now.Value});Assert.That(client.Offline.offlinePanelUI.Money_Before_txt.text,Is.EqualTo(OriginalNumberText.Format(max.Value)));Assert.That(client.Offline.offlinePanelUI.Money_After_txt.text,Is.EqualTo(OriginalNumberText.Format(now.Value)));client.State.Money=original;yield return null;
 }

}
