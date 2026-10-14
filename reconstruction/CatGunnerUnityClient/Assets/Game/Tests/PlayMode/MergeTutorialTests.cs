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

public sealed class MergeTutorialTests
{
    private static void ClickGun()
    {
        Canvas.ForceUpdateCanvases();var b=UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(x=>x.name=="Gun_Btn");var rect=(RectTransform)b.transform;
        var p=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center))};var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(p,hits);
        Assert.That(hits.Count,Is.GreaterThan(0));Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(b));ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,p,ExecuteEvents.pointerClickHandler);
    }
    private static void Pair(GameClient c)
    {Array.Fill(c.State.Owned_Gun_list,-1);Array.Fill(c.State.Owned_Gun_Pause,false);c.State.AD_Gun_SlotIndex=-1;c.State.Has_Merged=false;c.State.Owned_Gun_list[0]=0;c.State.Owned_Gun_list[1]=4;c.Guns.ReloadGunUI();}
    private static void Independent(Scene scene,LoadSceneMode mode)
    {
        if(scene.name!="GameClient")return;
        var c=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();c.Persist=false;
        foreach(var cat in c.Team.Cat_list){var combat=cat.GetComponent<ForestCombatAcceptance>();if(combat!=null)combat.enabled=false;var movement=cat.GetComponent<ForestMovementAcceptance>();if(movement!=null)movement.enabled=false;}
    }
    [UnityTest] public IEnumerator OriginalMergeCueComponentAndTwoItemArrowAreReconnected()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;
            var type=typeof(Gun_manager).Assembly.GetType("Gun_Merge_Tutorial");Assert.That(type,Is.Not.Null,"Original merge controller must be reconstructed");
            var cue=UnityEngine.Object.FindAnyObjectByType(type,FindObjectsInactive.Include) as Component;Assert.That(cue,Is.Not.Null);
            var arrow=type.GetField("tutorial_arrow").GetValue(cue) as Component;Assert.That(arrow,Is.Not.Null);
            ClickGun();Pair(c);yield return new WaitForSeconds(.25f);
            Assert.That(arrow.gameObject.activeInHierarchy,Is.True);Assert.That(arrow.GetType().GetField("target0").GetValue(arrow),Is.SameAs(c.Guns.gunItemList.ActiveItems[0].transform));
            Assert.That(arrow.GetType().GetField("target1").GetValue(arrow),Is.SameAs(c.Guns.gunItemList.ActiveItems[1].transform));
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return TestSceneLoader.LoadAsync("TargetPreview");
    }
    [UnityTest] public IEnumerator NativeEligibilitySkipsPausedAdAndHigherGunsAndKeepsSaveUnchanged()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;ClickGun();yield return new WaitForSeconds(.4f);Pair(c);var cue=c.Guns.merge_tutorial_ui;var arrow=cue.tutorial_arrow;
            foreach(int mode in new[]{0,1,2,3,4})
            {
                Pair(c);if(mode==0)c.State.Owned_Gun_list[1]=5;if(mode==1)c.State.Owned_Gun_Pause[0]=true;if(mode==2)c.State.AD_Gun_SlotIndex=1;if(mode==3)c.State.Has_Merged=true;if(mode==4)c.State.Owned_Gun_list[1]=-1;
                c.Guns.ReloadGunUI();yield return null;Assert.That(arrow.gameObject.activeSelf,Is.False,"Native blocking case "+mode);Assert.That(arrow.target0,Is.Null);Assert.That(arrow.target1,Is.Null);
            }
            Pair(c);c.State.Owned_Gun_list[2]=1;c.Guns.ReloadGunUI();yield return null;Assert.That(arrow.target0,Is.SameAs(c.Guns.gunItemList.ActiveItems[0].transform));Assert.That(arrow.target1,Is.SameAs(c.Guns.gunItemList.ActiveItems[1].transform));
            string before=SaveArchive.Encode(c.State);cue.Reload();yield return new WaitForSeconds(.25f);Assert.That(SaveArchive.Encode(c.State),Is.EqualTo(before));Assert.That(c.State.Merge_Tutorial_Logged,Is.False);Assert.That(c.State.PurchaseHistory,Is.Empty);
            c.Guns.is_AutoMerge=true;cue.Reload();Assert.That(arrow.gameObject.activeSelf,Is.True,"Native cue itself does not add an auto-toggle gate");c.Guns.is_AutoMerge=false;
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return TestSceneLoader.LoadAsync("TargetPreview");
    }
    [UnityTest] public IEnumerator OriginalHandMovesScalesReopensAndInvalidTargetsStopMotion()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;ClickGun();yield return new WaitForSeconds(.4f);Pair(c);var cue=c.Guns.merge_tutorial_ui;var arrow=cue.tutorial_arrow;var rect=(RectTransform)arrow.transform;
            Assert.That((arrow.moveDuration,arrow.pauseAtTarget,arrow.scaleSmall,arrow.scaleDuration),Is.EqualTo((1.2f,.15f,.8f,.15f)));Assert.That(arrow.offset,Is.EqualTo(Vector2.zero));Assert.That(arrow.GetComponentsInChildren<Graphic>(true).All(g=>!g.raycastTarget),Is.True);
            var first=arrow.target0;var second=arrow.target1;Vector2 start=rect.anchoredPosition;yield return new WaitForSeconds(.6f);Assert.That(Vector2.Distance(start,rect.anchoredPosition),Is.GreaterThan(10));Assert.That(rect.localScale.x,Is.EqualTo(.8f).Within(.01f));
            string report=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/merge-tutorial-hand-test-gpu.png"));ScreenCapture.CaptureScreenshot(report);yield return new WaitForSeconds(.1f);
            cue.gameObject.SetActive(false);Vector2 stopped=rect.anchoredPosition;yield return new WaitForSeconds(.25f);Assert.That(rect.anchoredPosition,Is.EqualTo(stopped));cue.gameObject.SetActive(true);yield return null;yield return null;Assert.That(arrow.target0,Is.SameAs(first));Assert.That(arrow.target1,Is.SameAs(second));
            second.gameObject.SetActive(false);yield return new WaitForSeconds(.25f);stopped=rect.anchoredPosition;yield return new WaitForSeconds(.25f);Assert.That(rect.anchoredPosition,Is.EqualTo(stopped));cue.Hide();Assert.That(arrow.gameObject.activeSelf,Is.False);
            c.Guns.ReloadGunUI();yield return null;Assert.That(arrow.gameObject.activeSelf,Is.True);Assert.That(arrow.target1,Is.Not.Null);
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return TestSceneLoader.LoadAsync("TargetPreview");
    }
    [UnityTest] public IEnumerator ActualRaycastDragMergeStopsCueAndDoesNotChargeOrGrantCurrency()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;ClickGun();yield return new WaitForSeconds(.4f);Pair(c);yield return new WaitForSeconds(.25f);var owner=c.Guns;var a=owner.gunItemList.ActiveItems[0];var b=owner.gunItemList.ActiveItems[1];int target=b.ListIndex;
            var point=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,a.transform.position)};var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(point,hits);Assert.That(hits[0].gameObject.GetComponentInParent<Gun_Item>(),Is.SameAs(a),"Original hand cannot block a real inventory drag");
            int diamonds=c.State.Dia,coins=c.State.PetCoin;string money=c.State.Money.Value.PlainInteger();bool logged=c.State.Merge_Tutorial_Logged;
            ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,point,ExecuteEvents.beginDragHandler);point.position=RectTransformUtility.WorldToScreenPoint(null,b.transform.position);ExecuteEvents.Execute(a.gameObject,point,ExecuteEvents.dragHandler);ExecuteEvents.Execute(a.gameObject,point,ExecuteEvents.endDragHandler);
            yield return null;Assert.That(c.State.Has_Merged,Is.True);Assert.That(c.State.Owned_Gun_list[target],Is.InRange(5,9));Assert.That(owner.gunItemList.ActiveItems.Count(g=>!g.IsAdReward),Is.EqualTo(1));Assert.That(owner.gunItemList.ActiveItems.Count(g=>g.IsAdReward),Is.EqualTo(c.OfflineTemporaryWeaponOffer?1:0));Assert.That(owner.Has_AdRewardGun,Is.EqualTo(c.OfflineTemporaryWeaponOffer));Assert.That(owner.merge_tutorial_ui.tutorial_arrow.gameObject.activeSelf,Is.False);Assert.That((c.State.Dia,c.State.PetCoin,c.State.Money.Value.PlainInteger(),c.State.Merge_Tutorial_Logged),Is.EqualTo((diamonds,coins,money,logged)));
            owner.newGun_ui.gameObject.SetActive(false);owner.ReloadGunUI();Assert.That(owner.merge_tutorial_ui.tutorial_arrow.gameObject.activeSelf,Is.False);
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return TestSceneLoader.LoadAsync("TargetPreview");
    }
    [UnityTest] public IEnumerator IndependentColdReloadRetainsFirstMergeFlagAndNeverShowsCueAgain()
    {
        string folder=Path.Combine(Path.GetTempPath(),"catgunner-merge-cue-"+Guid.NewGuid().ToString("N"));
        UnityEngine.Events.UnityAction<Scene,LoadSceneMode> configure=(s,mode)=>{Independent(s,mode);if(s.name=="GameClient"){var c=s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();c.Persist=true;c.SaveFolderOverride=folder;}};
        SceneManager.sceneLoaded+=configure;
        try
        {
            yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;Pair(c);Assert.That(c.Inventory.Merge(0,1),Is.True);c.SaveNow();
            yield return TestSceneLoader.LoadAsync("TargetPreview");yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();c=GameClient.Instance;Assert.That(c.State.Has_Merged,Is.True);Assert.That(c.State.Merge_Tutorial_Logged,Is.False);ClickGun();yield return new WaitForSeconds(.4f);Assert.That(c.Guns.merge_tutorial_ui.tutorial_arrow.gameObject.activeSelf,Is.False);c.Persist=false;
        }
        finally{SceneManager.sceneLoaded-=configure;}
        yield return TestSceneLoader.LoadAsync("TargetPreview");
    }
}
