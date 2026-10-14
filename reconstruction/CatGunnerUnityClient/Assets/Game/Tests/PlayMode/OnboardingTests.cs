using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;

public sealed class OnboardingTests
{
    private string folder;
    private bool isolate=true;
    private void Independent(Scene scene,LoadSceneMode mode)
    {
        if(scene.name!="GameClient")return;
        var c=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();c.Persist=true;c.SaveFolderOverride=folder;
        if(isolate)foreach(var cat in c.Team.Cat_list){var combat=cat.GetComponent<ForestCombatAcceptance>();if(combat!=null)combat.enabled=false;var movement=cat.GetComponent<ForestMovementAcceptance>();if(movement!=null)movement.enabled=false;}
    }
    [SetUp] public void Setup(){folder=Path.Combine(Path.GetTempPath(),"catgunner-onboarding-"+Guid.NewGuid().ToString("N"));Time.timeScale=1;SceneManager.sceneLoaded+=Independent;}
    [UnityTearDown] public IEnumerator Cleanup(){SceneManager.sceneLoaded-=Independent;yield return SceneManager.LoadSceneAsync("TargetPreview");if(Directory.Exists(folder))Directory.Delete(folder,true);Time.timeScale=1;isolate=true;}
    private IEnumerator Load(){yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready(false);}
    private static void Click(Button b)
    {
        Canvas.ForceUpdateCanvases();var rect=(RectTransform)b.transform;var evt=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center))};var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(evt,hits);
        Assert.That(hits,Is.Not.Empty);Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(b),"Original hand must not intercept "+b.name);ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,evt,ExecuteEvents.pointerClickHandler);
    }
    private static IEnumerator Step(TutorialStep expected)
    {
        float deadline=Time.realtimeSinceStartup+3;while(Tutorial_manager.instance.CurrentStep!=expected&&Time.realtimeSinceStartup<deadline)yield return null;Assert.That(Tutorial_manager.instance.CurrentStep,Is.EqualTo(expected));
    }
    private static void Wallet(GameClient c)=>c.State.Money=CurrencyAmount.FromValue(c.Balance.Price(3)*new DecimalAmount(100));
    [UnityTest] public IEnumerator FreshProfileStartsNativeUpgradeAndHandFollowsAffordabilityWithoutGrant()
    {
        yield return Load();var c=GameClient.Instance;var t=c.Tutorial;
        Assert.That(t.CurrentStep,Is.EqualTo(TutorialStep.Upgrade));Assert.That(t.gameObject.activeInHierarchy,Is.True);Assert.That(t.DisableOnTutorial.Length,Is.EqualTo(11));// Rule56 restored DailyCheck_Btn too: ten of eleven original HUD references.
        Assert.That(t.DisableOnTutorial.Count(g=>g!=null),Is.EqualTo(10));Assert.That(t.DisableOnTutorial[7].name,Is.EqualTo("DailyCheck_Btn"));Assert.That(t.DisableOnTutorial[7].activeSelf,Is.False);Assert.That(t.DisableOnTutorial[3].name,Is.EqualTo("Shop_Btn"));Assert.That(t.DisableOnTutorial[3].activeSelf,Is.False);Assert.That(t.DisableOnTutorial.Single(g=>g!=null&&g.name=="EcoMode_Btn").activeSelf,Is.False);Assert.That(t.DisableOnTutorial.Single(g=>g!=null&&g.name=="DiaPig_Btn").activeSelf,Is.False);Assert.That(t.DisableOnTutorial.Single(g=>g!=null&&g.name=="Auto_Btn").activeSelf,Is.False);Assert.That(t.GunButton.activeSelf,Is.False);Assert.That(t.ChallengeButton.activeSelf,Is.False);Assert.That(c.ContentUnlock.Content_list.All(i=>!i.Btn_obj.activeSelf),Is.True);
        Assert.That(t.CatHand_Upgrade.activeSelf,Is.False);Assert.That(c.State.Dia,Is.Zero);Assert.That(c.State._getDia,Is.Zero);Assert.That(c.State.TutorialCleared,Is.False);
        c.State.Money=CurrencyAmount.FromValue(c.Balance.Price(0));c.Currency.Reload();c.UpgradePanels[0].Reload();yield return new WaitForSeconds(.25f);Assert.That(t.CatHand_Upgrade.activeInHierarchy,Is.True);
        var pulse=t.CatHand_Upgrade.GetComponentInChildren<TutorialPulse>();Assert.That(pulse,Is.Not.Null);Assert.That((pulse.Duration,pulse.EndScale),Is.EqualTo((1f,1.2f)));var scale=pulse.transform.localScale;yield return new WaitForSeconds(.45f);Assert.That(Vector3.Distance(scale,pulse.transform.localScale),Is.GreaterThan(.01f));Assert.That(pulse.transform.localScale.x,Is.InRange(1f,1.2f));
        string report=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/onboarding-upgrade-hand-gpu.png"));ScreenCapture.CaptureScreenshot(report);yield return new WaitForSeconds(.1f);
        c.State.Money=CurrencyAmount.FromValue(new DecimalAmount(0));yield return new WaitForSeconds(.25f);Assert.That(t.CatHand_Upgrade.activeSelf,Is.False);Assert.That(pulse.transform.localScale,Is.EqualTo(pulse.SourceScale));Assert.That(t.GetComponentsInChildren<TutorialPulse>(true).Length,Is.EqualTo(4));Assert.That(c.State.TutorialCleared,Is.False);Assert.That(t.GetComponentsInChildren<Graphic>(true).All(g=>!g.raycastTarget),Is.True);
        c.SaveNow();Assert.That(new SaveArchive(folder).Load().TutorialCleared,Is.False);
    }
    [UnityTest] public IEnumerator RealUpgradeClicksUnlockChallengeAtThreeAndFailedPurchaseCannotAdvance()
    {
        yield return Load();var c=GameClient.Instance;var t=c.Tutorial;Click(c.UpgradePanels[0].GetComponent<Button>());yield return new WaitForSeconds(.25f);Assert.That(t.CurrentStep,Is.EqualTo(TutorialStep.Upgrade));Assert.That(c.State.Upgrade_Lv[0],Is.Zero);
        Wallet(c);Click(c.UpgradePanels[0].GetComponent<Button>());yield return Step(TutorialStep.Challenge);Assert.That(t.ChallengeButton.activeSelf,Is.False);Assert.That(t.CatHand_Challenge.activeSelf,Is.False);Assert.That(t.CatHand_Upgrade.activeSelf,Is.False);
        Click(c.UpgradePanels[0].GetComponent<Button>());yield return new WaitForSeconds(.25f);Assert.That(t.ChallengeButton.activeSelf,Is.False);
        Click(c.UpgradePanels[0].GetComponent<Button>());yield return new WaitForSeconds(.25f);Assert.That(t.ChallengeButton.activeInHierarchy,Is.True);Assert.That(t.CatHand_Challenge.activeInHierarchy,Is.True);var pointer=t.CatHand_Challenge.GetComponentInChildren<PenguinGuidePointer>(true);Assert.That(pointer,Is.Not.Null);Assert.That(pointer.Target.gameObject,Is.SameAs(t.ChallengeButton));Assert.That(Vector3.Dot(pointer.Visual.rectTransform.up,Vector3.up),Is.GreaterThan(.999f));Assert.That(t.GunButton.activeSelf,Is.False);Assert.That(c.State.Dia,Is.Zero);
        Click(t.ChallengeButton.GetComponent<Button>());yield return null;Assert.That(c.SpeedRun.Start_UI.gameObject.activeInHierarchy,Is.True);Assert.That(t.CurrentStep,Is.EqualTo(TutorialStep.Challenge));yield return new WaitForSeconds(.25f);Assert.That(t.CatHand_Challenge.activeSelf,Is.False);c.SpeedRun.Start_UI.gameObject.SetActive(false);c.SpeedRun.Start_UI.transform.parent.gameObject.SetActive(false);yield return new WaitForSeconds(.25f);Assert.That(t.CatHand_Challenge.activeInHierarchy,Is.True);t.SetCleared();Assert.That(t.CatHand_Challenge.activeSelf,Is.False);
    }
    [UnityTest] public IEnumerator NativeFiveStepsThroughActualChallengePurchaseAndRaycastEquipThenColdReload()
    {
        isolate=false;yield return Load();var c=GameClient.Instance;var t=c.Tutorial;Wallet(c);for(int i=0;i<3;i++)Click(c.UpgradePanels[0].GetComponent<Button>());yield return Step(TutorialStep.Challenge);yield return new WaitForSeconds(.25f);
        // Independent original-catalogue Gun5 fixture, as in SpeedRun acceptance.
        // No injected target damage, target health, movement or timer alteration.
        c.State.Owned_Gun_list[0]=5;Assert.That(c.Inventory.Equip(0,0),Is.True);Click(t.ChallengeButton.GetComponent<Button>());yield return null;c.SpeedRun.Game_Enter();
        float deadline=Time.realtimeSinceStartup+15;while(c.SpeedRun.Entering&&Time.realtimeSinceStartup<deadline)yield return null;Assert.That(c.SpeedRun.Playing,Is.True);
        deadline=Time.realtimeSinceStartup+65;while(c.SpeedRun.Playing&&Time.realtimeSinceStartup<deadline)yield return null;Assert.That(c.SpeedRun.GameWin_UI.activeSelf,Is.True,"Actual automatic projectiles must clear the challenge");Assert.That(c.SpeedRun.Stage_Now,Is.EqualTo(1));yield return Step(TutorialStep.GunOpen);
        Assert.That(c.Inventory.Equip(0,0),Is.True);Array.Fill(c.State.Owned_Gun_list,-1);c.Guns.ReloadGunUI();Assert.That(c.State.Selected_items,Is.EqualTo(new[]{0,-1,-1}));
        foreach(var cat in c.Team.Cat_list){var combat=cat.GetComponent<ForestCombatAcceptance>();if(combat!=null)combat.enabled=false;var movement=cat.GetComponent<ForestMovementAcceptance>();if(movement!=null)movement.enabled=false;}
        c.SpeedRun.Game_Exit();yield return new WaitForSeconds(2);Assert.That(t.CatHand_GunOpen.activeInHierarchy,Is.True);int diaBefore=c.State.Dia,earnedBefore=c.State._getDia;
        Click(t.GunButton.GetComponent<Button>());yield return Step(TutorialStep.GunBuy);yield return new WaitForSeconds(.4f);Assert.That(t.CatHand_GunBuy.activeInHierarchy,Is.True);Assert.That(c.State.Dia,Is.EqualTo(100));Assert.That(c.State._getDia,Is.EqualTo(earnedBefore+(100-diaBefore)*3));Assert.That(c.Currency.Dia_txt.text,Is.EqualTo("100"));Assert.That(c.State.TutorialCleared,Is.False);
        Click(t.GunBuyButton.GetComponent<Button>());yield return Step(TutorialStep.GunEquip);c.Guns.newGun_ui.gameObject.SetActive(false);yield return new WaitForSeconds(.45f);
        Assert.That(c.State.Dia,Is.Zero);Assert.That(c.State.Gacha_Draw_Count,Is.EqualTo(1));Assert.That(c.Guns.gunItemList.ActiveItems.Count,Is.EqualTo(1));var item=c.Guns.gunItemList.ActiveItems[0];var slot=c.Guns.Gun_Slot_List[1];var arrow=t.ArrowGunEquip;Assert.That(arrow.gameObject.activeInHierarchy,Is.True);Assert.That(arrow.target0,Is.SameAs(item.transform));Assert.That(arrow.target1,Is.SameAs(slot.transform));
        string report=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/onboarding-equip-arrow-gpu.png"));ScreenCapture.CaptureScreenshot(report);yield return new WaitForSeconds(.1f);
        var evt=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,item.transform.position)};var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(evt,hits);Assert.That(hits[0].gameObject.GetComponentInParent<Gun_Item>(),Is.SameAs(item));int gun=item.GunNum;
        ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,evt,ExecuteEvents.beginDragHandler);evt.position=RectTransformUtility.WorldToScreenPoint(null,slot.transform.position);ExecuteEvents.Execute(item.gameObject,evt,ExecuteEvents.dragHandler);ExecuteEvents.Execute(item.gameObject,evt,ExecuteEvents.endDragHandler);
        yield return Step(TutorialStep.Done);Assert.That(c.State.Selected_items[1],Is.EqualTo(gun));Assert.That(t.gameObject.activeSelf,Is.False);Assert.That(t.DisableOnTutorial.Where(g=>g!=null).All(g=>g.activeSelf),Is.True);Assert.That(c.ContentUnlock.Content_list.Single(i=>i.Type==Content_Type.Rebirth).Btn_obj.activeSelf,Is.True);Assert.That(c.State.PurchaseHistory,Is.Empty);c.SaveNow();Assert.That(new SaveArchive(folder).Load().TutorialCleared,Is.True);
        isolate=true;yield return Load();c=GameClient.Instance;Assert.That(c.Tutorial.CurrentStep,Is.EqualTo(TutorialStep.Done));Assert.That(c.Tutorial.gameObject.activeSelf,Is.False);Assert.That(c.State.Dia,Is.Zero);Assert.That(c.State.Selected_items[1],Is.EqualTo(gun));Assert.That(c.State.Gacha_Draw_Count,Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator ClearedSaveAndExistingAttackUpgradeSkipWithoutDiamondTopup()
    {
        var equipment=EquipmentCatalogue.Load();var archive=new SaveArchive(folder);
        foreach(bool cleared in new[]{true,false})
        {
            var state=new SaveData{TutorialCleared=cleared,Upgrade_Lv=new[]{cleared?0:1,0,0},Selected_items=(int[])equipment.Selected_items.Clone(),Gun_Collect=(bool[])equipment.Gun_Collect.Clone(),Star_Slot_Lv=new int[3],Dia=17};archive.AllowSave();archive.Save(state);
            yield return Load();var c=GameClient.Instance;Assert.That(c.Tutorial.CurrentStep,Is.EqualTo(TutorialStep.Done));Assert.That(c.Tutorial.gameObject.activeSelf,Is.False);Assert.That(c.State.Dia,Is.EqualTo(17));Assert.That(c.State._getDia,Is.Zero);c.SaveNow();Assert.That(archive.Load().TutorialCleared,Is.True);yield return SceneManager.LoadSceneAsync("TargetPreview");
        }
    }
    [UnityTest] public IEnumerator RequestNoopAndSetClearedStopAllHandLoopsAndCaptureOnlyOnSave()
    {
        yield return Load();var c=GameClient.Instance;var t=c.Tutorial;string before=SaveArchive.Encode(c.State);t.RequestIfNeeded();Assert.That(t.CurrentStep,Is.EqualTo(TutorialStep.Upgrade));Assert.That(SaveArchive.Encode(c.State),Is.EqualTo(before));
        t.SetCleared();Assert.That(t.CurrentStep,Is.EqualTo(TutorialStep.Done));Assert.That(t.gameObject.activeSelf,Is.False);Assert.That(c.State.TutorialCleared,Is.False,"Native CompleteTutorial does not directly mutate SaveData");yield return new WaitForSeconds(.25f);Assert.That(t.CatHand_Upgrade.activeSelf,Is.False);Assert.That(c.State.Dia,Is.Zero);c.SaveNow();Assert.That(c.State.TutorialCleared,Is.True);
    }
}
