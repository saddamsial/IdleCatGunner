using System;using System.Collections;using System.Collections.Generic;using System.IO;using System.Linq;using System.Reflection;using CatGunner.Runtime;using NUnit.Framework;using TMPro;using UnityEngine;using UnityEngine.UI;using UnityEngine.EventSystems;using UnityEngine.SceneManagement;using UnityEngine.TestTools;
public sealed class Mobile69Tests
{
 string folder,savedLanguage;GameClient client;Transform canvas;bool background;
 void Independent(Scene scene,LoadSceneMode mode){if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
 [UnitySetUp]public IEnumerator Setup(){savedLanguage=PlayerPrefs.HasKey(Language.PreferenceKey)?PlayerPrefs.GetString(Language.PreferenceKey):null;PlayerPrefs.DeleteKey(Language.PreferenceKey);Language.ReloadPreference();background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"Mobile69-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Independent;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;canvas=client.Slider.GetComponentInParent<Canvas>().transform;ForestRuntimeAcceptance.IsGaming=false;client.DailyLogin.Close();client.Tutorial.SetCleared();client.GetComponent<Language>().PersistSelection=false;}
 [UnityTearDown]public IEnumerator Cleanup(){yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Independent;if(savedLanguage==null)PlayerPrefs.DeleteKey(Language.PreferenceKey);else PlayerPrefs.SetString(Language.PreferenceKey,savedLanguage);Language.ReloadPreference();Time.timeScale=1;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
 [UnityTest]public IEnumerator SafeAreaInsetsChangeOnlyOriginalSafeAreaAndPreserveFill()
 {
  var viewport=client.GetComponent<MobileViewport>();viewport.enabled=false;var safe=(RectTransform)canvas.Find("SafeArea");var canvasRect=((RectTransform)canvas).rect;
  viewport.Refresh(new Rect(0,105,1440,2948),1440,3200,true);Assert.That(safe.anchorMin.y,Is.EqualTo(105f/3200).Within(.00001));Assert.That(safe.anchorMax.y,Is.EqualTo(3053f/3200).Within(.00001));Assert.That(((RectTransform)canvas).rect,Is.EqualTo(canvasRect));
  Canvas.ForceUpdateCanvases();
  var backdrop=viewport.ProgressBackdrop;Assert.That(backdrop,Is.SameAs(client.Slider.Value_Fill.transform.parent.GetComponent<Image>()));Assert.That(backdrop.sprite.name,Is.EqualTo("ui 12"));Assert.That(backdrop.type,Is.EqualTo(Image.Type.Sliced));Assert.That(safe.Find("SafeAreaTopBackdrop"),Is.Null);
  var corners=new Vector3[4];backdrop.rectTransform.GetWorldCorners(corners);var screenTop=RectTransformUtility.WorldToScreenPoint(null,corners[1]);
  Assert.That(screenTop.y,Is.EqualTo(Screen.height).Within(1));
  Assert.That(backdrop.rectTransform.rect.height,Is.EqualTo(37+canvasRect.height*147f/3200).Within(.1f));
  yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mobile75-top-inset-gpu.png")));yield return null;
  int revision=viewport.Revision;viewport.Refresh(new Rect(0,105,1440,2948),1440,3200);Assert.That(viewport.Revision,Is.EqualTo(revision));
  viewport.Refresh(new Rect(0,0,1440,3200),1440,3200);Assert.That(safe.anchorMin,Is.EqualTo(Vector2.zero));Assert.That(safe.anchorMax,Is.EqualTo(Vector2.one));Assert.That(backdrop.rectTransform.rect.height,Is.EqualTo(37).Within(.01));
  Assert.That(MobileViewport.Normalized(Rect.zero,0,0),Is.EqualTo(new Rect(0,0,1,1)));Assert.That((float)typeof(SlicedFilledImage).GetField("m_PixelsPerUnitMultiplier",BindingFlags.Instance|BindingFlags.NonPublic).GetValue(client.Slider.Value_Fill),Is.EqualTo(10));yield return null;
 }
 [UnityTest]public IEnumerator SharedChineseMaterialSurvivesOneReleaseAndRestoresOriginals()
 {
  var a=new GameObject("style1",typeof(RectTransform),typeof(TextMeshProUGUI));var b=new GameObject("style2",typeof(RectTransform),typeof(TextMeshProUGUI));a.transform.SetParent(canvas,false);b.transform.SetParent(canvas,false);var ta=a.GetComponent<TMP_Text>();var tb=b.GetComponent<TMP_Text>();ta.font=client.Slider.Stage_txt.font;tb.font=ta.font;ta.fontSharedMaterial=new Material(client.Slider.Stage_txt.fontSharedMaterial);tb.fontSharedMaterial=ta.fontSharedMaterial;var original=ta.fontSharedMaterial;
  WeaponText.Set(ta,"中文",SystemLanguage.ChineseSimplified);WeaponText.Set(tb,"中文",SystemLanguage.ChineseSimplified);var shared=ta.fontSharedMaterial;Assert.That(tb.fontSharedMaterial,Is.SameAs(shared));
  ta.GetComponent<WeaponTextStyle>().Restore();yield return null;Assert.That(shared!=null,Is.True);Assert.That(ta.fontSharedMaterial,Is.SameAs(original));Assert.That(tb.fontSharedMaterial,Is.SameAs(shared));
  tb.GetComponent<WeaponTextStyle>().Restore();UnityEngine.Object.Destroy(a);UnityEngine.Object.Destroy(b);yield return null;Assert.That(shared==null,Is.True);UnityEngine.Object.Destroy(original);
 }
 IEnumerator Click(Button button)
 {
  yield return new WaitForSecondsRealtime(.4f);Canvas.ForceUpdateCanvases();Assert.That(button.gameObject.activeInHierarchy&&button.interactable,Is.True,button.name);
  var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;int count=0;void Observe()=>count++;button.onClick.AddListener(Observe);
  try{var r=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(r.rect.center));yield return null;yield return null;var method=typeof(PointerInputModule).GetMethod("GetLastPointerEventData",BindingFlags.Instance|BindingFlags.NonPublic);PointerEventData Pointer()=>method.Invoke(module,new object[]{-1}) as PointerEventData;mouse.Down=mouse.Held=true;float until=Time.realtimeSinceStartup+1;do{yield return null;}while(Pointer()?.pointerPress!=button.gameObject&&Time.realtimeSinceStartup<until);var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);Assert.That(Pointer()?.pointerPress,Is.SameAs(button.gameObject),mouse.Position+" hits="+string.Join("|",hits.Take(8).Select(h=>h.gameObject.name)));mouse.Down=mouse.Held=false;mouse.Up=true;until=Time.realtimeSinceStartup+1;do{yield return null;}while(count==0&&Time.realtimeSinceStartup<until);mouse.Up=false;yield return null;Assert.That(count,Is.EqualTo(1));}finally{button.onClick.RemoveListener(Observe);module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
 }
 [UnityTest]public IEnumerator ActualSettingsLanguageChoiceChangesHudSettingsAndPersistsWithoutProgressLoss()
 {
  var settings=canvas.Find("Setting/Setting_UI").gameObject;settings.SetActive(true);var language=client.GetComponent<Language>();client.SaveNow();client.Persist=false;string state=SaveArchive.Encode(client.State);
  foreach(string code in new[]{"en","ko","zh-CN","zh-TW"})
  {
   yield return Click(canvas.Find("Setting/Setting_UI/Panel/Language_Btn").GetComponent<Button>());var option=canvas.Find("LanguageSelection_UI/Language_"+code).GetComponent<Button>();var label=option.GetComponentInChildren<TMP_Text>(true);label.ForceMeshUpdate();Assert.That(label.textInfo.characterInfo.Take(label.textInfo.characterCount).All(v=>v.character!='\u25a1'),Is.True,"locale option glyphs");yield return Click(option);
   Assert.That(PlayerPrefs.GetString(Language.PreferenceKey),Is.EqualTo(code));var expected=Language.Current;Language.ReloadPreference();Assert.That(Language.Current,Is.EqualTo(expected));
   Assert.That(canvas.Find("Setting/Setting_UI/Panel/RedeemOpen_Btn/I2_txt(Outline)").GetComponent<TMP_Text>().text,Is.EqualTo(Language.TermText("Redeem/Redeem")));
   Assert.That(SaveArchive.Encode(client.State),Is.EqualTo(state));
   yield return new WaitForSecondsRealtime(.2f);yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mobile69-settings-"+code+"-gpu.png")));yield return new WaitForSecondsRealtime(.2f);
   var row=RemainingUIExt.Data.Rows.First(r=>r.Key=="Stats/공격력");var text=RemainingUIExt.Resolve(canvas,row);if(text!=null)Assert.That(text.text,Is.EqualTo(RemainingUIExt.Data.Display(row,expected)));
  }
  Assert.That(SaveArchive.Encode(new SaveArchive(folder).Load()),Is.EqualTo(state));
  yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mobile69-language-gpu.png")));
 }
 [UnityTest]public IEnumerator OriginalLanguageRowsAreCompleteAndThreeLocalesUseOneIndex()
 {
  var data=JsonUtility.FromJson<Language.Terms>(Resources.Load<TextAsset>("LanguageTerms").text);Assert.That(data.Rows.Length,Is.EqualTo(367));Assert.That(data.Rows.All(r=>r.Values.Length==14&&r.Values.All(v=>!string.IsNullOrEmpty(v))),Is.True);
  foreach(var code in new[]{"en","ko","zh-CN","zh-TW"}){client.GetComponent<Language>().Select(code);Assert.That(Language.TermText("Setting/Restore"),Is.EqualTo(data.Rows.Single(r=>r.Key=="Setting/Restore").Values[Language.Index]));}yield return null;
 }
}
