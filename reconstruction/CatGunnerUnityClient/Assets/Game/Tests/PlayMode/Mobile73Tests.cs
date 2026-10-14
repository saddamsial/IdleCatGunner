using System;using System.Collections;using System.Collections.Generic;using System.IO;using System.Linq;using System.Reflection;using CatGunner.Runtime;using NUnit.Framework;using TMPro;using UnityEngine;using UnityEngine.UI;using UnityEngine.EventSystems;using UnityEngine.SceneManagement;using UnityEngine.TestTools;
public sealed class Mobile73Tests
{
 string folder;GameClient client;Transform canvas;bool background;
 void Independent(Scene scene,LoadSceneMode mode){if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
 [UnitySetUp]public IEnumerator Setup(){background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"Mobile73-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Independent;yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;canvas=client.Slider.GetComponentInParent<Canvas>().transform;ForestRuntimeAcceptance.IsGaming=false;client.DailyLogin.Close();client.Tutorial.SetCleared();}
 [UnityTearDown]public IEnumerator Cleanup(){yield return SceneManager.LoadSceneAsync("TargetPreview");SceneManager.sceneLoaded-=Independent;Cat_manager.is_Shoot_Mute=false;Time.timeScale=1;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
 IEnumerator Capture(string name){yield return new WaitForSecondsRealtime(.3f);yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mobile73-"+name+"-gpu.png")));yield return new WaitForSecondsRealtime(.2f);}
 IEnumerator Click(Button button)
 {
  yield return new WaitForSecondsRealtime(.4f);Canvas.ForceUpdateCanvases();Assert.That(button.gameObject.activeInHierarchy&&button.interactable,Is.True,button.name);
  var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;int count=0;void Observe()=>count++;button.onClick.AddListener(Observe);
  try{var r=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(r.rect.center));yield return null;yield return null;var method=typeof(PointerInputModule).GetMethod("GetLastPointerEventData",BindingFlags.Instance|BindingFlags.NonPublic);PointerEventData Pointer()=>method.Invoke(module,new object[]{-1}) as PointerEventData;mouse.Down=mouse.Held=true;float until=Time.realtimeSinceStartup+1;do{yield return null;}while(Pointer()?.pointerPress!=button.gameObject&&Time.realtimeSinceStartup<until);var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);Assert.That(Pointer()?.pointerPress,Is.SameAs(button.gameObject),mouse.Position+" hits="+string.Join("|",hits.Take(8).Select(h=>h.gameObject.name)));mouse.Down=mouse.Held=false;mouse.Up=true;until=Time.realtimeSinceStartup+1;do{yield return null;}while(count==0&&Time.realtimeSinceStartup<until);mouse.Up=false;yield return null;Assert.That(count,Is.EqualTo(1));}finally{button.onClick.RemoveListener(Observe);module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
 }


 [UnityTest]public IEnumerator MineCircleClipsCornersAndPreservesTiling()
 {
  var floor=client.MineMode.Map_obj.transform.Find("Ground (1)").GetComponent<SpriteRenderer>();var before=floor.transform.localPosition;Assert.That(floor.sharedMaterial.shader.name,Is.EqualTo("Game/MineGroundCompatibility"));Assert.That(floor.sharedMaterial.mainTextureScale,Is.EqualTo(new Vector2(14,7.48f)));
  var go=new GameObject("Floor clip probe",typeof(SpriteRenderer));go.layer=31;var probe=go.GetComponent<SpriteRenderer>();probe.sprite=floor.sprite;probe.sharedMaterial=floor.sharedMaterial;
  var cameraObject=new GameObject("Floor clip camera",typeof(Camera));var camera=cameraObject.GetComponent<Camera>();camera.enabled=false;camera.transform.position=new Vector3(0,0,-10);camera.orthographic=true;camera.orthographicSize=5.12f;camera.clearFlags=CameraClearFlags.SolidColor;camera.backgroundColor=Color.magenta;camera.cullingMask=1<<31;
  var rt=new RenderTexture(64,64,16,RenderTextureFormat.ARGB32);var pixels=new Texture2D(64,64,TextureFormat.RGBA32,false);var old=RenderTexture.active;
  try{camera.targetTexture=rt;camera.Render();RenderTexture.active=rt;pixels.ReadPixels(new Rect(0,0,64,64),0,0);pixels.Apply();var corner=pixels.GetPixel(3,3);var center=pixels.GetPixel(32,32);Assert.That(corner.r,Is.GreaterThan(.9f));Assert.That(corner.b,Is.GreaterThan(.9f));Assert.That(corner.g,Is.LessThan(.1f));Assert.That(center.g,Is.GreaterThan(.1f));Assert.That(center.b,Is.LessThan(.9f));File.WriteAllBytes(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mobile73-mine-floor-clip-probe.png")),pixels.EncodeToPNG());Assert.That(floor.transform.localPosition,Is.EqualTo(before));}
  finally{RenderTexture.active=old;camera.targetTexture=null;rt.Release();UnityEngine.Object.Destroy(rt);UnityEngine.Object.Destroy(pixels);UnityEngine.Object.Destroy(go);UnityEngine.Object.Destroy(cameraObject);}yield return null;
 }

 [UnityTest]public IEnumerator MineLoadingCoversBothEntryAndExitUntilReady()
 {
  var m=client.MineMode;Cat_manager.is_Shoot_Mute=true;m.orePerFrame=1000;var original=client.LoadingUI.transform.parent;m.Game_Enter();
  Assert.That(m.Entering,Is.True);Assert.That(client.LoadingUI.activeInHierarchy,Is.True);Assert.That(client.LoadingUI.transform.parent.name,Is.EqualTo("Canvas"));Assert.That(client.LoadingUI.GetComponent<Canvas>().sortingOrder,Is.GreaterThan(9999));yield return Capture("mine-entry-loading");
  float until=Time.realtimeSinceStartup+10;while(m.Entering&&Time.realtimeSinceStartup<until)yield return null;Assert.That(m.Entering,Is.False);Assert.That(client.LoadingUI.activeSelf,Is.False);Assert.That(client.LoadingUI.transform.parent,Is.SameAs(original));yield return Capture("mine-circle");
  m.Game_Exit();Assert.That(client.LoadingUI.activeInHierarchy,Is.True);yield return Capture("mine-exit-loading");yield return new WaitForSecondsRealtime(2f);Assert.That(client.Mode,Is.Zero);Assert.That(client.LoadingUI.activeSelf,Is.False);Assert.That(client.LoadingUI.transform.parent,Is.SameAs(original));
 }
 [UnityTest]public IEnumerator RebirthLargeValuesUseCompactUiWithoutChangingBalances()
 {
  var p=client.RebirthUI.rebirth_panel_ui;client.State.Ruby=CurrencyAmount.FromValue(new DecimalAmount(1,100));client.State.Rebirth_Upgrade_Lv=new[]{19999,19999,19999};client.Forest.Stage_Now=250;client.Forest.Level_Now=4;var ruby=client.State.Ruby.Value.PlainInteger();client.RebirthUI.Panel_Open();p.Reload();
  foreach(var text in new[]{p.Ruby_txt,p.Reward_txt,p.UpgradeReward_txt,p.Reward_Popup_txt,p.UpgradeReward_Popup_txt,p.UpgradeReward_IAP_Popup_txt}.Concat(p.Upgrade_item_list.SelectMany(i=>new[]{i.Value_txt,i.Price_txt})).Where(t=>t!=null))Assert.That(text.text.Length,Is.LessThan(18),text.name+"="+text.text);
  client.State.Selected_items[0]=64;client.StarUpgrades.popup.Open(0,false);client.StarUpgrades.popup.Reload();
  Assert.That(client.StarUpgrades.popup.DamageValue_txt_Now.text.Length,Is.LessThan(18));Assert.That(client.StarUpgrades.popup.DamageValue_txt_After.text.Length,Is.LessThan(18));client.StarUpgrades.popup.Close();
  Assert.That(client.State.Ruby.Value.PlainInteger(),Is.EqualTo(ruby));yield return Capture("rebirth-compact");
 }
}
