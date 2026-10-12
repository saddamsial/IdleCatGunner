using System;
using System.IO;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using CatGunner.Recovery;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public sealed class OriginalEnhancedRebirthTests
{
    string folder; RecoveryForestClient c; bool background; DateTime now;
    void Independent(Scene scene, LoadSceneMode mode)
    {if(scene.name=="RecoveredClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup()
    {
        background=Application.runInBackground;Application.runInBackground=true;
        folder=Path.Combine(Application.temporaryCachePath,"EnhancedRebirth-"+Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded+=Independent;yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();
        c=RecoveryForestClient.Instance;ForestRuntimeAcceptance.IsGaming=false;c.DailyLogin.Close();c.Tutorial.SetCleared();
        now=new DateTime(2026,10,11,12,0,0);M.Model.Now=()=>now;c.LocalStore.Model.Now=()=>now;c.Rebirth.RewardPercent=100;
        c.State.Ruby=OriginalAmount.FromValue(new DecimalAmount(10));Stage();
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {Time.timeScale=1;yield return SceneManager.LoadSceneAsync("RecoveredTarget");SceneManager.sceneLoaded-=Independent;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
    Rebirth_manager M=>c.RebirthUI;
    Rebirth_Panel_UI UI=>M.rebirth_panel_ui;
    Button Confirm(GameObject popup)=>popup.transform.Find("Panel/Rebirth_btn").GetComponent<Button>();
    void Stage(){c.Forest.Stage_Now=c.State.Stage_Now=5;c.Forest.Level_Now=c.State.Level_Now=0;}
    IEnumerator Open(){M.Panel_Open();yield return new WaitForSeconds(.6f);}
    IEnumerator Frames(){yield return null;yield return null;yield return null;}
    IEnumerator Click(Button button)
    {
        Assert.That(button.gameObject.activeInHierarchy&&button.interactable,Is.True,button.name);Canvas.ForceUpdateCanvases();
        var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        try
        {
            var rect=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));
            var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
            Assert.That(hits.FirstOrDefault().gameObject?.GetComponentInParent<Button>(),Is.SameAs(button),string.Join("|",hits.Take(5).Select(h=>h.gameObject.name)));
            mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
        }
        finally{module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
    }
    IEnumerator AdPopup(){yield return Open();yield return Click(UI.UpgradeRebirth_Able_obj.GetComponent<Button>());yield return new WaitForSeconds(.6f);}
    IEnumerator Capture(string suffix)
    {
        yield return new WaitForSecondsRealtime(.15f);
        var file=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/enhanced-rebirth-"+suffix+"-gpu.png"));
        ScreenCapture.CaptureScreenshot(file);yield return new WaitForSecondsRealtime(.15f);
    }
    IEnumerator ResetDone()
    {
        float end=Time.realtimeSinceStartup+6;
        while(c.State.Rebirth_Count==0&&Time.realtimeSinceStartup<end)yield return null;
        Assert.That(c.State.Rebirth_Count,Is.EqualTo(1),"Original Animator event must settle without invoking Rebirth manually");
        ForestRuntimeAcceptance.IsGaming=false;
        while(c.IsTransitioning&&Time.realtimeSinceStartup<end)yield return null;
        ForestRuntimeAcceptance.IsGaming=false;
    }
    void NoReset(){Assert.That(c.State.Ruby.Value.PlainInteger(),Is.EqualTo("10"));Assert.That(c.State.Rebirth_Count,Is.Zero);Assert.That(c.State.UpgradeRebirth_UseCount,Is.Zero);Assert.That(M.EnhancedRebirthPending,Is.False);}
    [UnityTest] public IEnumerator OriginalRealClicksRunAnimationTripleRewardConsumeOnceAndColdReload()
    {
        var guns=(int[])c.State.Selected_items.Clone();var pets=(int[])c.State.Pet_Selected_items.Clone();c.State.Rebirth_Upgrade_Lv[0]=2;c.State.Upgrade_Lv[0]=7;
        yield return AdPopup();Assert.That(UI.UpgradeReward_Popup_txt.text,Is.EqualTo("9375"));Assert.That(UI.UpgradeReward_txt.text,Is.EqualTo("9375"));Assert.That(UI.Reward_txt.text,Is.EqualTo("3125"));
        Assert.That(Confirm(UI.UpgradeRebirth_Popup_obj).transform.lossyScale.x,Is.GreaterThan(.1f));yield return Capture("confirmation");
        yield return Click(Confirm(UI.UpgradeRebirth_Popup_obj));Assert.That(M.rebirth_fx.gameObject.activeInHierarchy,Is.True);Assert.That(c.State.UpgradeRebirth_UseCount,Is.Zero);Assert.That(c.State.Ruby.Value.PlainInteger(),Is.EqualTo("10"));
        Assert.That(M.rebirth_fx.GetComponent<Animator>().runtimeAnimatorController.name,Is.EqualTo("Rebirth"));yield return Capture("animation");yield return ResetDone();
        Assert.That(c.State.Ruby.Value.PlainInteger(),Is.EqualTo("9385"));Assert.That(c.State.UpgradeRebirth_UseCount,Is.EqualTo(1));Assert.That(c.State.UpgradeRebirth_IAP_UseCount,Is.Zero);Assert.That(c.State.UpgradeRebirth_LastDate,Is.EqualTo("20261011"));
        Assert.That(c.Forest.Stage_Now,Is.Zero);Assert.That(c.State.Upgrade_Lv,Is.EqualTo(new int[3]));Assert.That(c.State.Rebirth_Upgrade_Lv[0],Is.EqualTo(2));Assert.That(c.State.Selected_items,Is.EqualTo(guns));Assert.That(c.State.Pet_Selected_items,Is.EqualTo(pets));
        Assert.That(c.State.Mission_Rebirth_Value,Is.EqualTo(1));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));Assert.That(M.EnhancedRebirthPending,Is.False);
        Assert.That(new[]{UI.gameObject,UI.Rebirth_Popup_obj,UI.UpgradeRebirth_Popup_obj,UI.UpgradeRebirth_IAP_Popup_obj,M.rebirth_fx.gameObject}.All(g=>!g.activeSelf),Is.True);
        M.rebirth_fx.Rebirth();Assert.That(c.State.Rebirth_Count,Is.EqualTo(1));c.SaveNow();
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();c=RecoveryForestClient.Instance;ForestRuntimeAcceptance.IsGaming=false;c.DailyLogin.Close();c.Tutorial.SetCleared();M.Model.Now=()=>now;
        Assert.That(c.State.UpgradeRebirth_UseCount,Is.EqualTo(1));Assert.That(c.State.Ruby.Value.PlainInteger(),Is.EqualTo("9385"));Assert.That(c.State.Rebirth_Count,Is.EqualTo(1));Stage();yield return Open();
        Assert.That(UI.UpgradeRebirth_Disable_obj.activeSelf,Is.True);Assert.That(UI.UpgradeRebirth_Able_obj.activeSelf,Is.False);yield return Capture("used");
        Assert.That(new OriginalSaveArchive(folder).Load().UpgradeRebirth_UseCount,Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator NativeQuotaDayBoundaryAndLegacyIsoDatesPreserveIndependentPaidCount()
    {
        c.State.UpgradeRebirth_LastDate=now.ToString("O");c.State.UpgradeRebirth_UseCount=c.State.UpgradeRebirth_IAP_UseCount=1;M.Reload();Assert.That(M.Model.AdAvailable,Is.False);Assert.That(M.Model.PaidAvailable,Is.False);
        Assert.That(c.LocalStore.Model.CanBuy("catgunner_rebirth_single"),Is.False);
        now=now.AddDays(1);M.Reload();Assert.That(c.State.UpgradeRebirth_LastDate,Is.EqualTo("20261012"));Assert.That(c.State.UpgradeRebirth_UseCount,Is.Zero);Assert.That(c.State.UpgradeRebirth_IAP_UseCount,Is.Zero);Assert.That(M.Model.AdAvailable,Is.True);
        c.Forest.Stage_Now=c.State.Stage_Now=1;yield return Open();UI.UpgradeRebirth_Popup_Open();Assert.That(UI.UpgradeRebirth_Popup_obj.activeSelf,Is.False);Assert.That(M.RequestAdRebirth(),Is.False);
        Stage();c.State.Stage_Value_Max=989;c.State.UpgradeRebirth_UseCount=1;M.Reload();Assert.That(UI.UpgradeRebirth_Disable_obj.activeSelf,Is.True);Assert.That(M.Model.PaidAvailable,Is.False);
        c.State.Stage_Value_Max=990;M.Reload();Assert.That(UI.UpgradeRebirth_IAP_obj.activeSelf,Is.True);Assert.That(M.Model.PaidAvailable,Is.True);
        c.State.UpgradeRebirth_LastDate=OriginalRebirth.TodayKey(now.AddDays(1));M.Model.DayCheck();Assert.That(c.State.UpgradeRebirth_UseCount,Is.Zero,"Native inequality resets even for a different future key");
        NoReset();
    }
    [UnityTest] public IEnumerator DisabledCancelledDuplicateAndUnauthorizedCallbacksDoNotConsumeQuota()
    {
        yield return AdPopup();c.RewardedAds.Enabled=false;yield return Frames();Assert.That(Confirm(UI.UpgradeRebirth_Popup_obj).interactable,Is.False);Assert.That(M.RequestAdRebirth(),Is.False);NoReset();
        c.RewardedAds.Enabled=true;Assert.That(M.RequestAdRebirth(),Is.True);c.RewardedAds.Cancel();yield return Frames();NoReset();Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);
        M.UpgradeRebirth_Start_By_Ad();M.rebirth_fx.Rebirth_Start_By_Ad();NoReset();Assert.That(M.rebirth_fx.gameObject.activeSelf,Is.False);
        Assert.That(M.RequestAdRebirth(),Is.True);Assert.That(M.RequestAdRebirth(),Is.False);yield return Frames();yield return ResetDone();Assert.That(c.State.Ruby.Value.PlainInteger(),Is.EqualTo("9385"));Assert.That(c.State.UpgradeRebirth_UseCount,Is.EqualTo(1));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator ClosedReopenedDayChangedAndModeChangedPagesRejectLateAdCallbacks()
    {
        yield return AdPopup();Assert.That(M.RequestAdRebirth(),Is.True);UI.UpgradeRebirth_Popup_obj.SetActive(false);UI.UpgradeRebirth_Popup_Open();yield return Frames();NoReset();
        Assert.That(M.RequestAdRebirth(),Is.True);now=now.AddDays(1);yield return Frames();NoReset();Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);
        Assert.That(M.RequestAdRebirth(),Is.True);c.SuspendForestForMode(1);yield return Frames();NoReset();Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);
    }
    [UnityTest] public IEnumerator CancelledEnhancedPopupThenOrdinaryRebirthUsesSingleRewardWithoutAds()
    {
        yield return AdPopup();UI.UpgradeRebirth_Popup_obj.SetActive(false);UI.Rebirth_Popup_Open();yield return new WaitForSeconds(.6f);yield return Click(Confirm(UI.Rebirth_Popup_obj));yield return ResetDone();
        Assert.That(c.State.Ruby.Value.PlainInteger(),Is.EqualTo("3135"));Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);Assert.That(c.State.UpgradeRebirth_UseCount,Is.Zero);Assert.That(c.State.UpgradeRebirth_IAP_UseCount,Is.Zero);
    }
    [UnityTest] public IEnumerator OriginalPaidPopupCancelsStalePurchaseThenAwardsTripleOnlyOnce()
    {
        c.State.UpgradeRebirth_LastDate="20261011";c.State.UpgradeRebirth_UseCount=1;c.State.Stage_Value_Max=c.Forest.Stage_Value_Max=990;
        yield return Open();yield return Click(UI.UpgradeRebirth_IAP_obj.GetComponent<Button>());yield return new WaitForSeconds(.6f);
        var adapter=Confirm(UI.UpgradeRebirth_IAP_Popup_obj).GetComponent<RecoveryLocalPurchaseButton>();Assert.That(adapter.RequireVisiblePage,Is.True);
        adapter.Purchase();UI.UpgradeRebirth_IAP_Popup_obj.SetActive(false);UI.UpgradeRebirth_IAP_Popup_Open();yield return Frames();Assert.That(c.LocalStore.Completed,Is.Zero);Assert.That(c.State.UpgradeRebirth_IAP_UseCount,Is.Zero);Assert.That(c.State.Rebirth_Count,Is.Zero);
        yield return new WaitForSeconds(.6f);yield return Click(adapter.Button);UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include)?.gameObject.SetActive(false);yield return ResetDone();
        Assert.That(c.State.Ruby.Value.PlainInteger(),Is.EqualTo("9385"));Assert.That(c.State.UpgradeRebirth_UseCount,Is.EqualTo(1));Assert.That(c.State.UpgradeRebirth_IAP_UseCount,Is.EqualTo(1));Assert.That(c.State.UpgradeRebirth_LastDate,Is.EqualTo("20261011"));
        Assert.That(c.LocalStore.Completed,Is.EqualTo(1));Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);Stage();Assert.That(c.LocalStore.Model.CanBuy("catgunner_rebirth_single"),Is.False);Assert.That(c.LocalStore.Request("catgunner_rebirth_single"),Is.False);
        Assert.That(c.State.ProcessedTxnIds,Is.Empty);Assert.That(c.State.PurchaseHistory,Is.Empty);Assert.That(c.State.Recovery_SimulatedPurchases.Single(p=>p.productId=="catgunner_rebirth_single").count,Is.EqualTo(1));
        c.SaveNow();var saved=new OriginalSaveArchive(folder).Load();Assert.That(saved.UpgradeRebirth_IAP_UseCount,Is.EqualTo(1));Assert.That(saved.UpgradeRebirth_UseCount,Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator InterruptedAnimationDropsPendingTripleAndDoesNotUseDailyQuota()
    {
        yield return AdPopup();Time.timeScale=0;Assert.That(M.RequestAdRebirth(),Is.True);yield return Frames();Assert.That(M.LocalAdRebirthPending,Is.True);Assert.That(M.rebirth_fx.gameObject.activeSelf,Is.True);Assert.That(c.State.UpgradeRebirth_UseCount,Is.Zero);
        M.rebirth_fx.gameObject.SetActive(false);NoReset();Time.timeScale=1;UI.UpgradeRebirth_Popup_obj.SetActive(false);UI.Rebirth_Popup_Open();yield return new WaitForSeconds(.6f);yield return Click(Confirm(UI.Rebirth_Popup_obj));yield return ResetDone();
        Assert.That(c.State.Ruby.Value.PlainInteger(),Is.EqualTo("3135"));Assert.That(c.State.UpgradeRebirth_UseCount,Is.Zero);Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));
    }
}
