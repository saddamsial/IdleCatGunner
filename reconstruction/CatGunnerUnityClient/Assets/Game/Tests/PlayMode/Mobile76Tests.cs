using System;using System.Collections;using System.Collections.Generic;using System.IO;using System.Linq;using System.Reflection;using CatGunner.Runtime;using NUnit.Framework;using TMPro;using UnityEngine;using UnityEngine.UI;using UnityEngine.EventSystems;using UnityEngine.SceneManagement;using UnityEngine.TestTools;
public sealed class Mobile76Tests
{
 string folder;GameClient client;Transform canvas;bool background;
 void Independent(Scene scene,LoadSceneMode mode){if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
 [UnitySetUp]public IEnumerator Setup(){background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"Mobile76-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Independent;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;canvas=client.Slider.GetComponentInParent<Canvas>().transform;ForestRuntimeAcceptance.IsGaming=false;client.DailyLogin.Close();client.Tutorial.SetCleared();}
 [UnityTearDown]public IEnumerator Cleanup(){yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Independent;Cat_manager.is_Shoot_Mute=false;Time.timeScale=1;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
 IEnumerator Capture(string name){yield return new WaitForSecondsRealtime(.3f);yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mobile77-"+name+"-gpu.png")));yield return new WaitForSecondsRealtime(.2f);}
 IEnumerator Click(Button button)
 {
  yield return new WaitForSecondsRealtime(.4f);Canvas.ForceUpdateCanvases();Assert.That(button.gameObject.activeInHierarchy&&button.interactable,Is.True,button.name);
  var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;int count=0;void Observe()=>count++;button.onClick.AddListener(Observe);
  try{var r=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(r.rect.center));yield return null;yield return null;var method=typeof(PointerInputModule).GetMethod("GetLastPointerEventData",BindingFlags.Instance|BindingFlags.NonPublic);PointerEventData Pointer()=>method.Invoke(module,new object[]{-1}) as PointerEventData;mouse.Down=mouse.Held=true;float until=Time.realtimeSinceStartup+1;do{yield return null;}while(Pointer()?.pointerPress!=button.gameObject&&Time.realtimeSinceStartup<until);var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);Assert.That(Pointer()?.pointerPress,Is.SameAs(button.gameObject),mouse.Position+" hits="+string.Join("|",hits.Take(8).Select(h=>h.gameObject.name)));mouse.Down=mouse.Held=false;mouse.Up=true;until=Time.realtimeSinceStartup+1;do{yield return null;}while(count==0&&Time.realtimeSinceStartup<until);mouse.Up=false;yield return null;Assert.That(count,Is.EqualTo(1));}finally{button.onClick.RemoveListener(Observe);module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
 }



 [UnityTest]public IEnumerator AllHudBranchesAndRealClicksStayAboveFullScreenWalkingBackdrop()
 {
  var viewport=client.GetComponent<MobileViewport>();viewport.enabled=false;viewport.Refresh(new Rect(0,105,1440,2948),1440,3200,true);client.ShowLoading(true);Canvas.ForceUpdateCanvases();
  Assert.That(client.LoadingUI.transform.parent,Is.SameAs(canvas.Find("SafeArea/Main_UI")));Assert.That(client.LoadingUI.transform.GetSiblingIndex(),Is.EqualTo(4));Assert.That(client.LoadingUI.GetComponent<Canvas>().overrideSorting,Is.False);Assert.That(client.LoadingUI.GetComponent<CanvasGroup>().blocksRaycasts,Is.False);
  var main=canvas.Find("SafeArea/Main_UI");foreach(var name in new[]{"Btn_list/Left_Menu","Btn_list/Right_Menu","Value_Slider","Currency"})Assert.That(main.Find(name).gameObject.activeInHierarchy,Is.True,name);
  client.State.Money=CurrencyAmount.FromValue(new DecimalAmount(100000));client.NotifyTutorialCurrencyChanged();yield return null;
  for(int i=0;i<3;i++){int before=client.State.Upgrade_Lv[i];yield return Click(client.UpgradePanels[i].GetComponent<Button>());Assert.That(client.State.Upgrade_Lv[i],Is.EqualTo(before+1));Assert.That(client.LoadingUI.activeInHierarchy,Is.True);}
  yield return Capture("walking-all-hud");
  yield return Click(main.Find("Btn_list/Setting_Btn").GetComponent<Button>());var settings=canvas.Find("Setting/Setting_UI");Assert.That(settings.gameObject.activeInHierarchy,Is.True);yield return Click(settings.Find("Close_Btn").GetComponent<Button>());
  yield return Click(main.Find("Btn_list/Left_Menu/Gun_Btn").GetComponent<Button>());Assert.That(canvas.Find("SafeArea/Gun_UI  (SafeArea)/GunList_UI").gameObject.activeInHierarchy,Is.True);var close=canvas.Find("SafeArea/Gun_UI  (SafeArea)/GunList_UI").GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn");yield return Click(close);
  yield return Click(main.Find("Btn_list/Right_Menu/SpeedRun_Btn").GetComponent<Button>());Assert.That(client.SpeedRun.Start_UI.transform.parent.gameObject.activeInHierarchy,Is.True);yield return Click(client.SpeedRun.Start_UI.transform.parent.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));Assert.That(client.LoadingUI.activeInHierarchy,Is.True);client.ShowLoading(false);
 }
 [UnityTest]public IEnumerator GameLoadingCanBeReopenedAndResizedWithoutBlockingHud()
 {
  var originalParent=client.LoadingUI.transform.parent;var viewport=client.GetComponent<MobileViewport>();viewport.enabled=false;
  foreach(var area in new[]{new Rect(0,105,1440,2948),new Rect(0,0,1440,3200)})
  {viewport.Refresh(area,1440,3200,true);client.ShowLoading(true);Canvas.ForceUpdateCanvases();var corners=new Vector3[4];((RectTransform)client.LoadingUI.transform).GetWorldCorners(corners);Assert.That(corners[0].x,Is.EqualTo(0).Within(1));Assert.That(corners[0].y,Is.EqualTo(0).Within(1));Assert.That(corners[2].x,Is.EqualTo(Screen.width).Within(1));Assert.That(corners[2].y,Is.EqualTo(Screen.height).Within(1));Assert.That(client.LoadingUI.GetComponent<CanvasGroup>().blocksRaycasts,Is.False);yield return null;client.ShowLoading(false);Assert.That(client.LoadingUI.transform.parent,Is.SameAs(originalParent));}
 }
 [UnityTest]public IEnumerator WalkingCoversActiveEcoPanelButKeepsHudAndEcoPreference()
 {
  var main=canvas.Find("SafeArea/Main_UI");var setting=Setting.instance;Assert.That(Setting.is_eco,Is.False);yield return Click(main.Find("Btn_list/EcoMode_Btn").GetComponent<Button>());Assert.That(Setting.is_eco,Is.True);Assert.That(setting.EcoPanel_obj.activeInHierarchy,Is.True);client.ShowLoading(true);yield return Capture("walking-over-eco-below-hud");
  Assert.That(client.LoadingUI.transform.parent,Is.SameAs(setting.EcoPanel_obj.transform.parent));Assert.That(client.LoadingUI.transform.GetSiblingIndex(),Is.GreaterThan(setting.EcoPanel_obj.transform.GetSiblingIndex()));Assert.That(client.LoadingUI.transform.GetSiblingIndex(),Is.LessThan(main.Find("Btn_list").GetSiblingIndex()));
  yield return new WaitForEndOfFrame();var pixels=ScreenCapture.CaptureScreenshotAsTexture();try{var color=pixels.GetPixel((int)(Screen.width*.3f),(int)(Screen.height*.7f));Assert.That(color.r,Is.GreaterThan(.8f));Assert.That(color.g,Is.GreaterThan(.75f));Assert.That(color.b,Is.GreaterThan(.5f));}finally{UnityEngine.Object.Destroy(pixels);}
  client.ShowLoading(false);Assert.That(Setting.is_eco,Is.True);Assert.That(setting.EcoPanel_obj.activeInHierarchy,Is.True);yield return Click(main.Find("Btn_list/EcoMode_Btn").GetComponent<Button>());Assert.That(Setting.is_eco,Is.False);
 }

}
