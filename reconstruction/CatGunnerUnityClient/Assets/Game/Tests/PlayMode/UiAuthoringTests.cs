using System;using System.IO;using System.Linq;using System.Collections;using NUnit.Framework;using UnityEngine;using UnityEngine.UI;using TMPro;using UnityEngine.SceneManagement;using UnityEngine.TestTools;using CatGunner.Runtime;
[Category("SceneArchitecture")]
[Category("AndroidReleasePreparation")]
public sealed class UiAuthoringTests
{
 string folder;GameClient client;Canvas canvas;Image manualIcon;TMP_Text manualCaption;Transform manualParent;int edgeCount;RectTransform manualProgressFill;Image manualCatalogueImage;Sprite customCatalogueSprite;
 bool startupObserved, startupHudVisible, startupInputLocked; int startupLoadingDepth=-1,startupHudDepth=-1;
 readonly Color customColor=new Color(.73f,.12f,.64f,1);
 void AuthorBeforeStart(Scene scene,LoadSceneMode mode)
 {
  if(scene.name!="GameClient")return;
  client=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();client.SaveFolderOverride=folder;
  canvas=client.Slider.GetComponentInParent<Canvas>();
  var aliases=canvas.GetComponent<UiAuthoring>();Assert.That(aliases,Is.Not.Null,"UI aliases must be serialized");Assert.That(aliases.StaticUiBaked,Is.True);
  var panel=UiAuthoring.Find(canvas.transform,"Shop_manager/StepUp/StepUp_Popup/Panel");
  manualIcon=UiAuthoring.Find(panel,"Icon").GetComponent<Image>();manualParent=UiAuthoring.Find(panel,"Time");
  manualIcon.transform.SetParent(manualParent,false);manualIcon.name="UserOfferArtwork";manualIcon.color=customColor;manualIcon.rectTransform.sizeDelta=new Vector2(123,147);manualIcon.rectTransform.anchoredPosition=new Vector2(31,52);
  var menu=UiAuthoring.Find(canvas.transform,"SafeArea/Main_UI/Btn_list/Right_Menu");menu.name="UserRightMenu";
  manualCaption=UiAuthoring.Find(canvas.transform,"Setting/Setting_UI/Panel/BGM_Btn/I2_txt").GetComponent<TMP_Text>();manualCaption.name="UserMusicCaption";manualCaption.fontSize=37;manualCaption.color=customColor;
  startupObserved=client.IsStarting&&client.LoadingUI.activeInHierarchy;startupHudVisible=client.UpgradePanels.All(p=>p.gameObject.activeInHierarchy);var startupGroup=canvas.GetComponent<CanvasGroup>();startupInputLocked=startupGroup!=null&&!startupGroup.interactable&&!startupGroup.blocksRaycasts;
  edgeCount=canvas.GetComponentsInChildren<PenguinPanelBorder>(true).Length;
  manualCatalogueImage=client.Skins.Skin_item_list[0].Cat_img;customCatalogueSprite=client.GetComponent<PenguinUiTheme>().Gear;manualCatalogueImage.sprite=customCatalogueSprite;
  manualProgressFill=client.Slider.Value_Fill.rectTransform;manualProgressFill.anchorMin=new Vector2(.1f,.15f);manualProgressFill.anchorMax=new Vector2(.9f,.85f);
 }
 [UnitySetUp]public IEnumerator Setup(){Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"UiAuthoring-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=AuthorBeforeStart;yield return TestSceneLoader.LoadAsync("GameClient");if(TestContext.CurrentContext.Test.Name=="LoadingKeepsHudVisibleDuringStartup")yield return RecordStartupFrame();yield return ClientStartupWait.Ready();client.Tutorial.SetCleared();client.DailyLogin.AutoShow=false;client.DailyLogin.Close();client.Offline.offlinePanelUI.gameObject.SetActive(false);yield return null;}
 [UnityTearDown]public IEnumerator Cleanup(){SceneManager.sceneLoaded-=AuthorBeforeStart;Time.timeScale=1;yield return TestSceneLoader.LoadAsync("TargetPreview");if(Directory.Exists(folder))Directory.Delete(folder,true);}
 [Serializable]sealed class StartupFrame{public bool starting,loadingVisible,startupObserved,startupHudVisible,startupInputLocked,overrideSorting;public int startupLoadingDepth,startupHudDepth;public bool[] upgradeVisibility;}
 IEnumerator RecordStartupFrame()
 {
  yield return new WaitForEndOfFrame();
  var loadingGraphics=client.LoadingUI.GetComponentsInChildren<Graphic>(true).Where(g=>g.isActiveAndEnabled&&g.depth>=0).ToArray();
  var hudGraphics=client.UpgradePanels.SelectMany(p=>p.GetComponentsInChildren<Graphic>(true)).Where(g=>g.isActiveAndEnabled&&g.depth>=0).ToArray();
  startupLoadingDepth=loadingGraphics.Select(g=>g.depth).DefaultIfEmpty(-1).Max();startupHudDepth=hudGraphics.Select(g=>g.depth).DefaultIfEmpty(-1).Min();
  var dir=Path.GetFullPath(Application.dataPath+"/../../../art/ui-layering/20261014");Directory.CreateDirectory(dir);
  File.WriteAllText(Path.Combine(dir,"startup-frame.json"),JsonUtility.ToJson(new StartupFrame{starting=client.IsStarting,loadingVisible=client.LoadingUI.activeInHierarchy,startupObserved=startupObserved,startupHudVisible=startupHudVisible,startupInputLocked=startupInputLocked,startupLoadingDepth=startupLoadingDepth,startupHudDepth=startupHudDepth,upgradeVisibility=client.UpgradePanels.Select(p=>p.gameObject.activeInHierarchy).ToArray(),overrideSorting=client.LoadingUI.GetComponent<Canvas>().overrideSorting},true));
  var texture=ScreenCapture.CaptureScreenshotAsTexture();try{File.WriteAllBytes(Path.Combine(dir,"startup-loading.png"),texture.EncodeToPNG());}finally{UnityEngine.Object.Destroy(texture);}
 }
 [UnityTest]public IEnumerator LoadingKeepsHudVisibleDuringStartup()
 {
  Assert.That(startupObserved,Is.True,"Capture must observe cold startup loading");Assert.That(startupHudVisible,Is.True,"Startup must not hide authored HUD panels");
  Assert.That(startupLoadingDepth,Is.GreaterThanOrEqualTo(0));Assert.That(startupHudDepth,Is.GreaterThan(startupLoadingDepth),"HUD must render above loading on its first frame");
  Assert.That(startupInputLocked,Is.True,"Startup must block input without hiding HUD");var group=canvas.GetComponent<CanvasGroup>();Assert.That(group.interactable&&group.blocksRaycasts,Is.True,"Input resumes after startup");yield return null;
 }
 [UnityTest]public IEnumerator StaticPresentationExistsAndDoesNotDuplicateOnEnable()
 {
  Assert.That(canvas.GetComponentsInChildren<ScrollRect>(true).Count(s=>s.name=="OfferScrollView"),Is.EqualTo(2));
  Assert.That(canvas.GetComponentsInChildren<PenguinMergeSwitch>(true).Length,Is.EqualTo(3));Assert.That(canvas.GetComponentsInChildren<PenguinLoadingMascot>(true).Length,Is.EqualTo(2));Assert.That(canvas.GetComponentsInChildren<PenguinGuidePointer>(true).Length,Is.EqualTo(4));
  Assert.That(canvas.GetComponentsInChildren<PenguinPanelBorder>(true).All(b=>b.transform.GetSiblingIndex()==0),Is.True,"Panel borders must draw behind their sibling content");
  int cards=canvas.GetComponentsInChildren<PenguinOfferCard>(true).Length;
  var theme=client.GetComponent<PenguinUiTheme>();theme.enabled=false;theme.enabled=true;var polish=client.GetComponent<PenguinPlaytestPolish>();polish.enabled=false;polish.enabled=true;yield return null;
  Assert.That(canvas.GetComponentsInChildren<PenguinPanelBorder>(true).Length,Is.EqualTo(edgeCount));Assert.That(canvas.GetComponentsInChildren<PenguinOfferCard>(true).Length,Is.EqualTo(cards));
 }
 [UnityTest]public IEnumerator ManualArtworkHierarchyAndStyleSurviveStartup()
 {
  yield return new WaitForSecondsRealtime(.2f);Assert.That(manualIcon.transform.parent,Is.SameAs(manualParent));Assert.That(manualIcon.name,Is.EqualTo("UserOfferArtwork"));Assert.That(manualIcon.color,Is.EqualTo(customColor));Assert.That(manualIcon.rectTransform.sizeDelta,Is.EqualTo(new Vector2(123,147)));Assert.That(manualIcon.rectTransform.anchoredPosition,Is.EqualTo(new Vector2(31,52)));
  var found=UiAuthoring.Find(canvas.transform,"Shop_manager/StepUp/StepUp_Popup/Panel/Icon");Assert.That(found,Is.SameAs(manualIcon.transform));
 }
 [UnityTest]public IEnumerator RenamedLocalizedCaptionRetainsStyleAndLanguageControlsWork()
 {
  var language=client.GetComponent<Language>();language.PersistSelection=false;language.Select("en");yield return null;
  Assert.That(manualCaption.text,Is.EqualTo("Music"));Assert.That(manualCaption.fontSize,Is.EqualTo(37));Assert.That(manualCaption.color,Is.EqualTo(customColor));
  language.Select("zh-CN");yield return null;Assert.That(manualCaption.text,Is.EqualTo("音乐"));Assert.That(manualCaption.fontSize,Is.EqualTo(37));Assert.That(manualCaption.color,Is.EqualTo(customColor));
  language.OpenChooser();Assert.That(UiAuthoring.Find(canvas.transform,"LanguageSelection_UI").gameObject.activeSelf,Is.True);language.Select("zh-CN");Assert.That(UiAuthoring.Find(canvas.transform,"LanguageSelection_UI").gameObject.activeSelf,Is.False);
 }
 [UnityTest]public IEnumerator AuthoredModalSortingAndBorderThicknessAreRespected()
 {
  var modal=client.Fish.fish_info_ui.GetComponent<Canvas>();client.Fish.fish_info_ui.GetComponent<PenguinModalLayer>().SortingOrder=25042;client.Fish.fish_info_ui.gameObject.SetActive(true);yield return null;yield return null;Assert.That(modal.sortingOrder,Is.EqualTo(25042));Assert.That(modal.overrideSorting,Is.True);
  var border=canvas.GetComponentsInChildren<PenguinPanelBorder>(true).First();border.Thickness=5.25f;yield return null;Assert.That(border.Thickness,Is.EqualTo(5.25f));
 }
 [UnityTest]public IEnumerator AuthoredCatalogueSpriteIsNotReassignedByBootstrap()
 {
  yield return null;Assert.That(manualCatalogueImage.sprite,Is.SameAs(customCatalogueSprite));
 }
 [UnityTest]public IEnumerator ManualProgressAnchorsAreNotRebuilt()
 {
  yield return null;Assert.That(manualProgressFill.anchorMin,Is.EqualTo(new Vector2(.1f,.15f)));Assert.That(manualProgressFill.anchorMax,Is.EqualTo(new Vector2(.9f,.85f)));
 }
 [UnityTest]public IEnumerator LoadingTransitionsPreserveAuthoredParentAndRect()
 {
  var root=(RectTransform)client.LoadingUI.transform;var parent=root.parent;
  Assert.That(root.GetComponent<Canvas>().overrideSorting,Is.False,"Startup must keep loading below HUD");Assert.That(root.GetSiblingIndex(),Is.LessThan(UiAuthoring.Find(canvas.transform,"SafeArea").GetSiblingIndex()));root.anchorMin=new Vector2(.02f,.03f);root.anchorMax=new Vector2(.98f,.97f);root.offsetMin=new Vector2(11,12);root.offsetMax=new Vector2(-13,-14);var size=root.sizeDelta;var position=root.anchoredPosition;
  client.ShowLoading(true);yield return null;
  Assert.That(root.GetComponent<Canvas>().overrideSorting,Is.False,"Loading transitions must not raise the backdrop above HUD");
  client.ShowLoading(false);yield return null;
  Assert.That(root.parent,Is.SameAs(parent));Assert.That(root.anchorMin,Is.EqualTo(new Vector2(.02f,.03f)));Assert.That(root.sizeDelta,Is.EqualTo(size));Assert.That(root.anchoredPosition,Is.EqualTo(position));
 }
}
