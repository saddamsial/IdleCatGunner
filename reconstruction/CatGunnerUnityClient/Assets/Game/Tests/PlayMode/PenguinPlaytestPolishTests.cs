using System;using System.IO;using System.Linq;using System.Collections;
using CatGunner.Runtime;using NUnit.Framework;using UnityEngine;using UnityEngine.UI;using TMPro;using UnityEngine.SceneManagement;using UnityEngine.TestTools;
public sealed class PenguinPlaytestPolishTests
{
 string folder;GameClient client;Canvas canvas;
 void Isolate(Scene s,LoadSceneMode m){if(s.name=="GameClient")s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
 [UnitySetUp]public IEnumerator Setup(){Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"PenguinPolish-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Isolate;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;canvas=client.Slider.GetComponentInParent<Canvas>();client.Tutorial.SetCleared();client.DailyLogin.AutoShow=false;client.DailyLogin.Close();client.Offline.offlinePanelUI.gameObject.SetActive(false);ForestRuntimeAcceptance.IsGaming=false;client.Forest.Stage_Value_Max=400;client.ContentUnlock.Reload();yield return null;}
 [UnityTearDown]public IEnumerator Cleanup(){Time.timeScale=1;yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Isolate;if(Directory.Exists(folder))Directory.Delete(folder,true);}
 [UnityTest]public IEnumerator GradePanelsRetainOriginalDistinctColors(){Assert.That(client.Guns.Degree_Colors.Select(ColorUtility.ToHtmlStringRGB).Distinct().Count(),Is.EqualTo(13));var p=canvas.GetComponentInChildren<Pet_manager>(true);Assert.That(p.Degree_Colors.Select(ColorUtility.ToHtmlStringRGB).Distinct().Count(),Is.EqualTo(13));yield return null;}
 [UnityTest]public IEnumerator AutoMergeSwitchAnimatesInPausedUIWithoutGrantingEntitlement(){client.OfflineAutoMergePreview=true;var ui=client.Guns.OnOff_UI;canvas.transform.Find("SafeArea/Main_UI/Btn_list").GetComponentsInChildren<Button>(true).First(b=>b.name=="Gun_Btn").onClick.Invoke();client.Guns.Set_AutoMerge(false);yield return new WaitForSecondsRealtime(.3f);var track=ui.GetComponent<Image>();Assert.That(track.color.r,Is.GreaterThan(track.color.g));var knob=ui.transform.Find("SwitchThumb") as RectTransform;Assert.That(knob,Is.Not.Null);float before=knob.anchoredPosition.x;Time.timeScale=0;ui.GetComponent<Button>().onClick.Invoke();yield return new WaitForSecondsRealtime(.06f);float mid=knob.anchoredPosition.x;yield return new WaitForSecondsRealtime(.3f);Assert.That(mid,Is.GreaterThan(before));Assert.That(knob.anchoredPosition.x,Is.GreaterThan(mid));Assert.That(track.color.g,Is.GreaterThan(track.color.r));Assert.That(AutoMergeAccess.Entitled,Is.False);client.OfflineAutoMergePreview=false;yield return null;Assert.That(client.Guns.AutoMerge_Active,Is.False);}
 [UnityTest]public IEnumerator FishInformationOccludesFishAndReceivesInput(){canvas.transform.Find("SafeArea/Main_UI/Btn_list").GetComponentsInChildren<Button>(true).First(b=>b.name=="Fish_Btn").onClick.Invoke();client.Fish.fish_info_ui.Reload(0);yield return null;var modal=client.Fish.fish_info_ui.GetComponent<Canvas>();Assert.That(modal,Is.Not.Null);Assert.That(modal.overrideSorting,Is.True);foreach(var f in client.Fish.fishTank.GetComponentsInChildren<Fish_Item>(true))Assert.That(modal.sortingOrder,Is.GreaterThan(f.GetComponent<Canvas>().sortingOrder));Assert.That(client.Fish.fish_info_ui.GetComponent<GraphicRaycaster>(),Is.Not.Null);}
 [UnityTest]public IEnumerator StepUpCardsScrollAndKeepHeaderOutsideViewport(){client.LocalStore.StepUpOffer.Popup_Open("test");yield return new WaitForSecondsRealtime(.4f);var popup=client.LocalStore.StepUpOffer.popup;var scroll=popup.GetComponentInChildren<ScrollRect>(true);Assert.That(scroll,Is.Not.Null);Assert.That(scroll.vertical,Is.True);Assert.That(scroll.movementType,Is.EqualTo(ScrollRect.MovementType.Elastic));Assert.That(scroll.content.rect.height,Is.GreaterThan(scroll.viewport.rect.height));Assert.That(popup.transform.Find("Panel/Icon").IsChildOf(scroll.viewport),Is.False);float y=scroll.content.anchoredPosition.y;scroll.verticalNormalizedPosition=0;yield return null;Assert.That(scroll.content.anchoredPosition.y,Is.Not.EqualTo(y));}
 [UnityTest]public IEnumerator RequestedProgressBordersAndSettlementBackplatesAreCorrect(){var fills=canvas.GetComponentsInChildren<SlicedFilledImage>(true).Where(f=>f.name=="Value_Fill"||f.name=="Fill"&&f.GetComponentInParent<Mission_Reward_Slot>(true)!=null).ToArray();Assert.That(fills.Length,Is.GreaterThan(3));foreach(var f in fills)Assert.That((float)typeof(SlicedFilledImage).GetField("m_PixelsPerUnitMultiplier",System.Reflection.BindingFlags.NonPublic|System.Reflection.BindingFlags.Instance).GetValue(f),Is.EqualTo(10),f.name);foreach(var f in new[]{client.BossMode.gameSlider.Value_Fill,client.MineMode.gameSlider.Value_Fill,client.MonsterMode.monster_game_slider.Value_Fill})Assert.That(f.pixelsPerUnitMultiplier,Is.EqualTo(10));foreach(var t in canvas.GetComponentsInChildren<Transform>(true).Where(t=>t.name=="BackPanel"&&t.parent.name=="Win_img"))Assert.That(t.gameObject.activeSelf,Is.False);yield return null;}

 [UnityTest]public IEnumerator LoadingMascotAndStepUpHeaderStayVisible()
 {
  client.ShowLoading(true);yield return null;var mascot=client.LoadingUI.GetComponentsInChildren<Image>(true).Single(im=>im.name=="Penguin loading mascot");Assert.That(mascot.isActiveAndEnabled,Is.True);var canvasHeight=((RectTransform)canvas.transform).rect.height;Assert.That(mascot.rectTransform.rect.height/canvasHeight,Is.InRange(.07f,.14f),"Loading mascot should be modest compared with the full screen");client.ShowLoading(false);
  client.LocalStore.StepUpOffer.Popup_Open("test");yield return new WaitForSecondsRealtime(.35f);var panel=(RectTransform)client.LocalStore.StepUpOffer.popup.transform.Find("Panel");
  foreach(string n in new[]{"Icon","StepUP_txt","Explain_txt"}){var rt=(RectTransform)panel.Find(n);var corners=new Vector3[4];rt.GetWorldCorners(corners);Assert.That(corners.Max(p=>panel.InverseTransformPoint(p).y),Is.LessThanOrEqualTo(panel.rect.yMax),n+" outside panel");}
 }
 [UnityTest]public IEnumerator NewStatusLabelsContainRenderableChineseGlyphs()
 {
  client.GetComponent<Language>().PersistSelection=false;client.GetComponent<Language>().Select("zh-CN");canvas.transform.Find("SafeArea/Main_UI/Btn_list").GetComponentsInChildren<Button>(true).First(b=>b.name=="Gun_Btn").onClick.Invoke();client.LocalStore.StepUpOffer.Popup_Open("test");yield return new WaitForSecondsRealtime(.3f);
  foreach(var t in canvas.GetComponentsInChildren<TMP_Text>(true).Where(t=>t.name=="SwitchState"||t.name=="Label"&&t.transform.parent.name=="OfferState")){uint[] missing;Assert.That(t.font.HasCharacters(t.text,out missing,true,true),Is.True,t.text+" missing glyph");}
 }
 [UnityTest]public IEnumerator PausedSettlementFinishesAnimationAndFreeCashRespondsWithoutReward()
 {
  client.MineMode.Game_Enter();yield return new WaitForSecondsRealtime(3);client.MineMode.Game_End();Time.timeScale=0;yield return new WaitForSecondsRealtime(1.3f);
  Assert.That(client.MineMode.Bonus_Btn_obj.transform.parent.localScale.x,Is.GreaterThan(.95f));Assert.That(client.MineMode.Bonus_Btn_obj.GetComponent<Image>().color.a,Is.EqualTo(1));
  var b=client.MineMode.GameEnd_UI.GetComponentsInChildren<Button>(true).Single(b=>b.name=="FreeCash_Banner");b.transform.parent.gameObject.SetActive(true);b.gameObject.SetActive(true);int coins=client.State.Dia;var polish=client.GetComponent<PenguinPlaytestPolish>();int before=polish.FreeCashResponses;b.onClick.Invoke();Assert.That(polish.FreeCashResponses,Is.EqualTo(before+1));Assert.That(client.State.Dia,Is.EqualTo(coins));var toast=canvas.transform.Find("FREECASH service status");Assert.That(toast.gameObject.activeInHierarchy,Is.True);Assert.That(toast.GetComponentInChildren<TMP_Text>().text,Does.Contain("暂未接入"));Assert.That(toast.GetComponentInChildren<TMP_Text>().font.HasCharacters(toast.GetComponentInChildren<TMP_Text>().text,out uint[] unavailableGlyphs,true,true),Is.True);yield return new WaitForSecondsRealtime(4.2f);Assert.That(toast.gameObject.activeSelf,Is.False,"Toast lifetime must finish while settlement is paused");
 }

 [UnityTest]public IEnumerator FishMovesFacesAndFlexesItsTailWhileGameplayIsPaused()
 {
  client.State.FishInventory.Clear();client.State.FishInventory.Add(0);canvas.transform.Find("SafeArea/Main_UI/Btn_list").GetComponentsInChildren<Button>(true).First(b=>b.name=="Fish_Btn").onClick.Invoke();Time.timeScale=0;yield return null;
  var f=client.Fish.fishTank.GetComponentsInChildren<Fish_Item>().Single(f=>f.isActive);f.SetPosition(Vector2.zero);f.FaceTowards(1);Assert.That(Mathf.Abs(Mathf.DeltaAngle(f.skinImage.transform.localEulerAngles.y,180)),Is.LessThan(.1f));f.FaceTowards(-1);Assert.That(Mathf.Abs(Mathf.DeltaAngle(f.skinImage.transform.localEulerAngles.y,0)),Is.LessThan(.1f));
  var start=f.GetPosition();yield return null;Canvas.ForceUpdateCanvases();var mesh=f.skinImage.canvasRenderer.GetMesh();var before=mesh.vertices;yield return new WaitForSecondsRealtime(.2f);yield return null;Canvas.ForceUpdateCanvases();mesh=f.skinImage.canvasRenderer.GetMesh();Assert.That(f.GetPosition(),Is.Not.EqualTo(start));Assert.That(mesh.vertices,Is.Not.EqualTo(before));
 }
 [UnityTest]public IEnumerator BigStagesSelectOneFamilyAndRepeatOriginalTenStageCycle()
 {
  var forest=client.Forest;Assert.That(forest.Tree_sprites.Length,Is.EqualTo(40));
  for(int stage=0;stage<10;stage++)
  {
   var family=Enumerable.Range(0,4).Select(d=>Tree_manager.Sprite_return(stage,d).texture).Distinct().ToArray();
   Assert.That(family.Length,Is.EqualTo(1),"Different materials must not be mixed within a big Stage");
   Assert.That(Enumerable.Range(0,4).Select(d=>Tree_manager.Sprite_return(stage,d).rect).Distinct().Count(),Is.EqualTo(1),"One silhouette per big Stage, including Stage 1");if(stage>0)Assert.That(Tree_manager.Sprite_return(stage,0).texture,Is.Not.EqualTo(Tree_manager.Sprite_return(stage-1,0).texture));
  }
  for(int d=0;d<4;d++)Assert.That(Tree_manager.Sprite_return(10,d),Is.SameAs(Tree_manager.Sprite_return(0,d)));
  forest.Stage_Now=2;forest.Level_Now=1;forest.Tree_Batch();yield return null;
  foreach(var t in forest.Map_obj.GetComponentsInChildren<Tree>().Where(t=>t.gameObject.activeInHierarchy))Assert.That(t.spriteRenderer.sprite.texture,Is.SameAs(Tree_manager.Sprite_return(2,0).texture));
 }
 [UnityTest]public IEnumerator PetActuallyChangesFrontSideRearAndStaysUnderAttackEffects()
 {
  var manager=UnityEngine.Object.FindAnyObjectByType<Pet_Ingame_manager>();manager.enabled=false;var pet=manager.Pets[0];pet.Reload(0);pet.gameObject.SetActive(true);pet.Warp(client.Hero.transform.position);
  var actor=pet.GetComponentInChildren<PenguinCatalogActor>();var motion=actor.GetComponent<PenguinPetMotion>();var camera=Camera.main;
  var right=Vector3.ProjectOnPlane(camera.transform.right,Vector3.up).normalized;var up=Vector3.ProjectOnPlane(camera.transform.up,Vector3.up).normalized;
  var velocities=new[]{-right,right,up,-up};var expected=new[]{PenguinPetMotion.TravelDirection.Left,PenguinPetMotion.TravelDirection.Right,PenguinPetMotion.TravelDirection.Up,PenguinPetMotion.TravelDirection.Down};
  for(int n=0;n<velocities.Length;n++)
  {
   pet.rb.linearVelocity=velocities[n]*5;pet.IsMoving=true;yield return new WaitForSeconds(.12f);
   Assert.That(motion.Direction,Is.EqualTo(expected[n]));
   int col=motion.Direction==PenguinPetMotion.TravelDirection.Up?2:motion.Direction==PenguinPetMotion.TravelDirection.Down?0:1;
   Assert.That(actor.Visual.sprite.name,Is.EqualTo("pet-00-"+col));
  }
  var effects=UnityEngine.Object.FindObjectsByType<Renderer>(FindObjectsInactive.Include,FindObjectsSortMode.None).Where(r=>r.GetComponentInParent<Bullet>(true)!=null||r.GetComponentInParent<Bullet_FX>(true)!=null).ToArray();
  foreach(var fx in effects){int p=SortingLayer.GetLayerValueFromID(motion.Renderer.sortingLayerID),f=SortingLayer.GetLayerValueFromID(fx.sortingLayerID);Assert.That(p<f||p==f&&motion.Renderer.sortingOrder<fx.sortingOrder,Is.True,fx.name);}
  var vertices=motion.Mesh.vertices;yield return new WaitForSeconds(.1f);Assert.That(motion.Mesh.vertices,Is.Not.EqualTo(vertices));pet.rb.linearVelocity=Vector3.zero;Time.timeScale=0;vertices=motion.Mesh.vertices;yield return new WaitForSecondsRealtime(.15f);Assert.That(motion.Mesh.vertices,Is.EqualTo(vertices),"Scene animation must respect gameplay pause");
 }

 [UnityTest]public IEnumerator HuntDescriptionAndPetWalletUsePetCurrencyRatherThanVipStar()
 {
  client.GetComponent<Language>().PersistSelection=false;client.GetComponent<Language>().Select("zh-CN");client.MonsterMode.StartPanel_Open();yield return null;
  var text=client.MonsterMode.monster_start_ui.transform.Find("Panel/Explain/I2_txt").GetComponent<TMP_Text>();Assert.That(text.text,Does.Contain("宠物诱饵"));Assert.That(text.text,Does.Not.Contain("<sprite"));
  var image=client.PetUI.Pet_UI_obj.transform.Find("Panel/Currency/Petcoin/Image").GetComponent<Image>();Assert.That(image.sprite,Is.SameAs(client.GetComponent<PenguinPlaytestPolish>().PetCoin));
 }

 [UnityTest]public IEnumerator VipRowsAndReclaimButtonsHaveVisibleNormalSurfaces()
 {
  client.Missions.ResetSeason(true);client.State.Mission_TreeCount_Value=1585;client.State.Mission_StageClear_Value=13;client.MissionUI.Panel_Open();yield return null;
  var rows=client.MissionUI.Mission_Item_UI_List;var vip=rows.First(i=>client.Missions.Catalogue.Missions[i.Mission_Index].is_VIP_Mission);var background=vip.VIP_Panel_obj.transform.Find("Image").GetComponent<Image>();
  Assert.That(background.color.a,Is.EqualTo(1));Assert.That(background.color.b,Is.GreaterThan(background.color.g),"VIP background must have a distinct purple surface");
  var claim=rows.First(i=>!client.Missions.Catalogue.Missions[i.Mission_Index].is_VIP_Mission&&client.Missions.Value(client.Missions.Catalogue.Missions[i.Mission_Index].type)>=client.Missions.Catalogue.Missions[i.Mission_Index].MissionValue);
  Assert.That(client.Missions.ClaimMission(claim.Mission_Index),Is.True);client.MissionUI.UI_Reload();yield return null;
  Assert.That(claim.LuxuryBonus_obj.activeSelf,Is.True);var button=claim.LuxuryBonus_obj.GetComponentInChildren<Button>();Assert.That(button.colors.normalColor.a,Is.EqualTo(1));Assert.That(button.GetComponent<Image>().color.a,Is.EqualTo(1));Assert.That(button.GetComponent<Image>().color.r,Is.GreaterThan(button.GetComponent<Image>().color.b),"Reclaim must have its orange background before hover");
  Assert.That(client.State.Mission_is_Vip,Is.False);Assert.That(client.State.Mission_is_Luxury,Is.False);
 }

}
