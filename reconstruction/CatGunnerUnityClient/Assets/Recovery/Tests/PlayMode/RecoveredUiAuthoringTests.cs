using System;using System.IO;using System.Linq;using System.Collections;using NUnit.Framework;using UnityEngine;using UnityEngine.UI;using TMPro;using UnityEngine.SceneManagement;using UnityEngine.TestTools;using CatGunner.Recovery;
public sealed class RecoveredUiAuthoringTests
{
 string folder;RecoveryForestClient client;Canvas canvas;Image manualIcon;TMP_Text manualCaption;Transform manualParent;int edgeCount;RectTransform manualProgressFill;Image manualCatalogueImage;Sprite customCatalogueSprite;
 readonly Color customColor=new Color(.73f,.12f,.64f,1);
 void AuthorBeforeStart(Scene scene,LoadSceneMode mode)
 {
  if(scene.name!="RecoveredClient")return;
  client=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single();client.SaveFolderOverride=folder;
  canvas=client.Slider.GetComponentInParent<Canvas>();
  var aliases=canvas.GetComponent<RecoveryUiAuthoring>();Assert.That(aliases,Is.Not.Null,"UI aliases must be serialized");Assert.That(aliases.StaticUiBaked,Is.True);
  var panel=RecoveryUiAuthoring.Find(canvas.transform,"Shop_manager/StepUp/StepUp_Popup/Panel");
  manualIcon=RecoveryUiAuthoring.Find(panel,"Icon").GetComponent<Image>();manualParent=RecoveryUiAuthoring.Find(panel,"Time");
  manualIcon.transform.SetParent(manualParent,false);manualIcon.name="UserOfferArtwork";manualIcon.color=customColor;manualIcon.rectTransform.sizeDelta=new Vector2(123,147);manualIcon.rectTransform.anchoredPosition=new Vector2(31,52);
  var menu=RecoveryUiAuthoring.Find(canvas.transform,"SafeArea/Main_UI/Btn_list/Right_Menu");menu.name="UserRightMenu";
  manualCaption=RecoveryUiAuthoring.Find(canvas.transform,"Setting/Setting_UI/Panel/BGM_Btn/I2_txt").GetComponent<TMP_Text>();manualCaption.name="UserMusicCaption";manualCaption.fontSize=37;manualCaption.color=customColor;
  edgeCount=canvas.GetComponentsInChildren<PenguinPanelBorder>(true).Length;
  manualCatalogueImage=client.Skins.Skin_item_list[0].Cat_img;customCatalogueSprite=client.GetComponent<PenguinUiTheme>().Gear;manualCatalogueImage.sprite=customCatalogueSprite;
  manualProgressFill=client.Slider.Value_Fill.rectTransform;manualProgressFill.anchorMin=new Vector2(.1f,.15f);manualProgressFill.anchorMax=new Vector2(.9f,.85f);
 }
 [UnitySetUp]public IEnumerator Setup(){Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"UiAuthoring-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=AuthorBeforeStart;yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();client.Tutorial.SetCleared();client.DailyLogin.AutoShow=false;client.DailyLogin.Close();client.Offline.offlinePanelUI.gameObject.SetActive(false);yield return null;}
 [UnityTearDown]public IEnumerator Cleanup(){SceneManager.sceneLoaded-=AuthorBeforeStart;Time.timeScale=1;yield return SceneManager.LoadSceneAsync("RecoveredTarget");if(Directory.Exists(folder))Directory.Delete(folder,true);}
 [UnityTest]public IEnumerator StaticPresentationExistsAndDoesNotDuplicateOnEnable()
 {
  Assert.That(canvas.GetComponentsInChildren<ScrollRect>(true).Count(s=>s.name=="OfferScrollView"),Is.EqualTo(2));
  Assert.That(canvas.GetComponentsInChildren<PenguinMergeSwitch>(true).Length,Is.EqualTo(3));Assert.That(canvas.GetComponentsInChildren<PenguinLoadingMascot>(true).Length,Is.EqualTo(2));Assert.That(canvas.GetComponentsInChildren<PenguinGuidePointer>(true).Length,Is.EqualTo(4));
  int cards=canvas.GetComponentsInChildren<PenguinOfferCard>(true).Length;
  var theme=client.GetComponent<PenguinUiTheme>();theme.enabled=false;theme.enabled=true;var polish=client.GetComponent<PenguinPlaytestPolish>();polish.enabled=false;polish.enabled=true;yield return null;
  Assert.That(canvas.GetComponentsInChildren<PenguinPanelBorder>(true).Length,Is.EqualTo(edgeCount));Assert.That(canvas.GetComponentsInChildren<PenguinOfferCard>(true).Length,Is.EqualTo(cards));
 }
 [UnityTest]public IEnumerator ManualArtworkHierarchyAndStyleSurviveStartup()
 {
  yield return new WaitForSecondsRealtime(.2f);Assert.That(manualIcon.transform.parent,Is.SameAs(manualParent));Assert.That(manualIcon.name,Is.EqualTo("UserOfferArtwork"));Assert.That(manualIcon.color,Is.EqualTo(customColor));Assert.That(manualIcon.rectTransform.sizeDelta,Is.EqualTo(new Vector2(123,147)));Assert.That(manualIcon.rectTransform.anchoredPosition,Is.EqualTo(new Vector2(31,52)));
  var found=RecoveryUiAuthoring.Find(canvas.transform,"Shop_manager/StepUp/StepUp_Popup/Panel/Icon");Assert.That(found,Is.SameAs(manualIcon.transform));
 }
 [UnityTest]public IEnumerator RenamedLocalizedCaptionRetainsStyleAndLanguageControlsWork()
 {
  var language=client.GetComponent<RecoveryLanguage>();language.PersistSelection=false;language.Select("en");yield return null;
  Assert.That(manualCaption.text,Is.EqualTo("Music"));Assert.That(manualCaption.fontSize,Is.EqualTo(37));Assert.That(manualCaption.color,Is.EqualTo(customColor));
  language.Select("zh-CN");yield return null;Assert.That(manualCaption.text,Is.EqualTo("音乐"));Assert.That(manualCaption.fontSize,Is.EqualTo(37));Assert.That(manualCaption.color,Is.EqualTo(customColor));
  language.OpenChooser();Assert.That(RecoveryUiAuthoring.Find(canvas.transform,"LanguageSelection_UI").gameObject.activeSelf,Is.True);language.Select("zh-CN");Assert.That(RecoveryUiAuthoring.Find(canvas.transform,"LanguageSelection_UI").gameObject.activeSelf,Is.False);
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
  var root=(RectTransform)client.LoadingUI.transform;var parent=root.parent;root.anchorMin=new Vector2(.02f,.03f);root.anchorMax=new Vector2(.98f,.97f);root.offsetMin=new Vector2(11,12);root.offsetMax=new Vector2(-13,-14);var size=root.sizeDelta;var position=root.anchoredPosition;
  client.ShowLoading(true);yield return null;client.ShowLoading(false);yield return null;
  Assert.That(root.parent,Is.SameAs(parent));Assert.That(root.anchorMin,Is.EqualTo(new Vector2(.02f,.03f)));Assert.That(root.sizeDelta,Is.EqualTo(size));Assert.That(root.anchoredPosition,Is.EqualTo(position));
 }
}
