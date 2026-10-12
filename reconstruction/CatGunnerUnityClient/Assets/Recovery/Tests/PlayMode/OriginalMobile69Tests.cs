using System;using System.Collections;using System.Collections.Generic;using System.IO;using System.Linq;using System.Reflection;using CatGunner.Recovery;using NUnit.Framework;using TMPro;using UnityEngine;using UnityEngine.UI;using UnityEngine.EventSystems;using UnityEngine.SceneManagement;using UnityEngine.TestTools;
public sealed class OriginalMobile69Tests
{
 string folder,savedLanguage;RecoveryForestClient client;Transform canvas;bool background;
 void Independent(Scene scene,LoadSceneMode mode){if(scene.name=="RecoveredClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride=folder;}
 [UnitySetUp]public IEnumerator Setup(){savedLanguage=PlayerPrefs.HasKey(RecoveryLanguage.PreferenceKey)?PlayerPrefs.GetString(RecoveryLanguage.PreferenceKey):null;PlayerPrefs.DeleteKey(RecoveryLanguage.PreferenceKey);RecoveryLanguage.ReloadPreference();background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"Mobile69-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Independent;yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();client=RecoveryForestClient.Instance;canvas=client.Slider.GetComponentInParent<Canvas>().transform;ForestRuntimeAcceptance.IsGaming=false;client.DailyLogin.Close();client.Tutorial.SetCleared();client.GetComponent<RecoveryLanguage>().PersistSelection=false;}
 [UnityTearDown]public IEnumerator Cleanup(){yield return SceneManager.LoadSceneAsync("RecoveredTarget");SceneManager.sceneLoaded-=Independent;if(savedLanguage==null)PlayerPrefs.DeleteKey(RecoveryLanguage.PreferenceKey);else PlayerPrefs.SetString(RecoveryLanguage.PreferenceKey,savedLanguage);RecoveryLanguage.ReloadPreference();Time.timeScale=1;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
 [UnityTest]public IEnumerator SafeAreaInsetsChangeOnlyOriginalSafeAreaAndPreserveFill()
 {
  var viewport=client.GetComponent<RecoveryMobileViewport>();viewport.enabled=false;var safe=(RectTransform)canvas.Find("SafeArea");var canvasRect=((RectTransform)canvas).rect;
  viewport.Refresh(new Rect(0,105,1440,2948),1440,3200,true);Assert.That(safe.anchorMin.y,Is.EqualTo(105f/3200).Within(.00001));Assert.That(safe.anchorMax.y,Is.EqualTo(3053f/3200).Within(.00001));Assert.That(((RectTransform)canvas).rect,Is.EqualTo(canvasRect));
  Canvas.ForceUpdateCanvases();
  var backdrop=viewport.ProgressBackdrop;Assert.That(backdrop,Is.SameAs(client.Slider.Value_Fill.transform.parent.GetComponent<Image>()));Assert.That(backdrop.sprite.name,Is.EqualTo("ui 12"));Assert.That(backdrop.type,Is.EqualTo(Image.Type.Sliced));Assert.That(safe.Find("SafeAreaTopBackdrop"),Is.Null);
  var corners=new Vector3[4];backdrop.rectTransform.GetWorldCorners(corners);var screenTop=RectTransformUtility.WorldToScreenPoint(null,corners[1]);
  Assert.That(screenTop.y,Is.EqualTo(Screen.height).Within(1));
  Assert.That(backdrop.rectTransform.rect.height,Is.EqualTo(37+canvasRect.height*147f/3200).Within(.1f));
  yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mobile75-top-inset-gpu.png")));yield return null;
  int revision=viewport.Revision;viewport.Refresh(new Rect(0,105,1440,2948),1440,3200);Assert.That(viewport.Revision,Is.EqualTo(revision));
  viewport.Refresh(new Rect(0,0,1440,3200),1440,3200);Assert.That(safe.anchorMin,Is.EqualTo(Vector2.zero));Assert.That(safe.anchorMax,Is.EqualTo(Vector2.one));Assert.That(backdrop.rectTransform.rect.height,Is.EqualTo(37).Within(.01));
  Assert.That(RecoveryMobileViewport.Normalized(Rect.zero,0,0),Is.EqualTo(new Rect(0,0,1,1)));Assert.That((float)typeof(SlicedFilledImage).GetField("m_PixelsPerUnitMultiplier",BindingFlags.Instance|BindingFlags.NonPublic).GetValue(client.Slider.Value_Fill),Is.EqualTo(10));yield return null;
 }
 [UnityTest]public IEnumerator SharedChineseMaterialSurvivesOneReleaseAndRestoresOriginals()
 {
  var a=new GameObject("style1",typeof(RectTransform),typeof(TextMeshProUGUI));var b=new GameObject("style2",typeof(RectTransform),typeof(TextMeshProUGUI));a.transform.SetParent(canvas,false);b.transform.SetParent(canvas,false);var ta=a.GetComponent<TMP_Text>();var tb=b.GetComponent<TMP_Text>();ta.font=client.Slider.Stage_txt.font;tb.font=ta.font;ta.fontSharedMaterial=new Material(client.Slider.Stage_txt.fontSharedMaterial);tb.fontSharedMaterial=ta.fontSharedMaterial;var original=ta.fontSharedMaterial;
  OriginalWeaponText.Set(ta,"中文",SystemLanguage.ChineseSimplified);OriginalWeaponText.Set(tb,"中文",SystemLanguage.ChineseSimplified);var shared=ta.fontSharedMaterial;Assert.That(tb.fontSharedMaterial,Is.SameAs(shared));
  ta.GetComponent<RecoveryWeaponTextStyle>().Restore();yield return null;Assert.That(shared!=null,Is.True);Assert.That(ta.fontSharedMaterial,Is.SameAs(original));Assert.That(tb.fontSharedMaterial,Is.SameAs(shared));
  tb.GetComponent<RecoveryWeaponTextStyle>().Restore();UnityEngine.Object.Destroy(a);UnityEngine.Object.Destroy(b);yield return null;Assert.That(shared==null,Is.True);UnityEngine.Object.Destroy(original);
 }
 IEnumerator Click(Button button)
 {
  yield return new WaitForSecondsRealtime(.4f);Canvas.ForceUpdateCanvases();Assert.That(button.gameObject.activeInHierarchy&&button.interactable,Is.True,button.name);
  var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;int count=0;void Observe()=>count++;button.onClick.AddListener(Observe);
  try{var r=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(r.rect.center));yield return null;yield return null;var method=typeof(PointerInputModule).GetMethod("GetLastPointerEventData",BindingFlags.Instance|BindingFlags.NonPublic);PointerEventData Pointer()=>method.Invoke(module,new object[]{-1}) as PointerEventData;mouse.Down=mouse.Held=true;float until=Time.realtimeSinceStartup+1;do{yield return null;}while(Pointer()?.pointerPress!=button.gameObject&&Time.realtimeSinceStartup<until);var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);Assert.That(Pointer()?.pointerPress,Is.SameAs(button.gameObject),mouse.Position+" hits="+string.Join("|",hits.Take(8).Select(h=>h.gameObject.name)));mouse.Down=mouse.Held=false;mouse.Up=true;until=Time.realtimeSinceStartup+1;do{yield return null;}while(count==0&&Time.realtimeSinceStartup<until);mouse.Up=false;yield return null;Assert.That(count,Is.EqualTo(1));}finally{button.onClick.RemoveListener(Observe);module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
 }
 [UnityTest]public IEnumerator ActualSettingsLanguageChoiceChangesHudSettingsAndPersistsWithoutProgressLoss()
 {
  var settings=canvas.Find("Setting/Setting_UI").gameObject;settings.SetActive(true);var language=client.GetComponent<RecoveryLanguage>();client.SaveNow();client.Persist=false;string state=OriginalSaveArchive.Encode(client.State);
  foreach(string code in new[]{"en","ko","zh-CN","zh-TW"})
  {
   yield return Click(canvas.Find("Setting/Setting_UI/Panel/Language_Btn").GetComponent<Button>());var option=canvas.Find("LanguageSelection_UI/Language_"+code).GetComponent<Button>();var label=option.GetComponentInChildren<TMP_Text>(true);label.ForceMeshUpdate();Assert.That(label.textInfo.characterInfo.Take(label.textInfo.characterCount).All(v=>v.character!='\u25a1'),Is.True,"locale option glyphs");yield return Click(option);
   Assert.That(PlayerPrefs.GetString(RecoveryLanguage.PreferenceKey),Is.EqualTo(code));var expected=RecoveryLanguage.Current;RecoveryLanguage.ReloadPreference();Assert.That(RecoveryLanguage.Current,Is.EqualTo(expected));
   Assert.That(canvas.Find("Setting/Setting_UI/Panel/RedeemOpen_Btn/I2_txt(Outline)").GetComponent<TMP_Text>().text,Is.EqualTo(RecoveryLanguage.TermText("Redeem/Redeem")));
   Assert.That(OriginalSaveArchive.Encode(client.State),Is.EqualTo(state));
   yield return new WaitForSecondsRealtime(.2f);yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mobile69-settings-"+code+"-gpu.png")));yield return new WaitForSecondsRealtime(.2f);
   var row=OriginalRemainingUIExt.Data.Rows.First(r=>r.Key=="Stats/공격력");var text=OriginalRemainingUIExt.Resolve(canvas,row);if(text!=null)Assert.That(text.text,Is.EqualTo(OriginalRemainingUIExt.Data.Display(row,expected)));
  }
  Assert.That(OriginalSaveArchive.Encode(new OriginalSaveArchive(folder).Load()),Is.EqualTo(state));
  yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mobile69-language-gpu.png")));
 }
 [UnityTest]public IEnumerator OriginalLanguageRowsAreCompleteAndThreeLocalesUseOneIndex()
 {
  var data=JsonUtility.FromJson<RecoveryLanguage.Terms>(Resources.Load<TextAsset>("OriginalLanguageTerms").text);Assert.That(data.Rows.Length,Is.EqualTo(367));Assert.That(data.Rows.All(r=>r.Values.Length==14&&r.Values.All(v=>!string.IsNullOrEmpty(v))),Is.True);
  foreach(var code in new[]{"en","ko","zh-CN","zh-TW"}){client.GetComponent<RecoveryLanguage>().Select(code);Assert.That(RecoveryLanguage.TermText("Setting/Restore"),Is.EqualTo(data.Rows.Single(r=>r.Key=="Setting/Restore").Values[RecoveryLanguage.Index]));}yield return null;
 }
}
