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

public sealed class OriginalBuffPurchaseTests
{
    string folder; RecoveryForestClient c; bool background;

    void Independent(Scene scene, LoadSceneMode mode)
    {
        if (scene.name == "RecoveredClient") scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride = folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background = Application.runInBackground; Application.runInBackground = true;
        folder = Path.Combine(Application.temporaryCachePath, "BuffPurchase-" + Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded += Independent;
        yield return SceneManager.LoadSceneAsync("RecoveredClient"); yield return ClientStartupWait.Ready();
        c = RecoveryForestClient.Instance; ForestRuntimeAcceptance.IsGaming = false;
        c.DailyLogin.Close(); c.Tutorial.SetCleared();
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        yield return SceneManager.LoadSceneAsync("RecoveredTarget"); SceneManager.sceneLoaded -= Independent;
        Time.timeScale = 1; Application.runInBackground = background;
        if (Directory.Exists(folder)) Directory.Delete(folder, true);
    }
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
    Buff_manager M=>c.Buffs;
    RecoveryLocalPurchaseButton Adapter=>M.Popup.transform.Find("InApp & FREECASH/BuffPack (Inapp)/BuffPack").GetComponent<RecoveryLocalPurchaseButton>();
    IEnumerator Open(){M.Open();yield return null;yield return null;}
    IEnumerator Settle(){yield return null;yield return null;yield return null;}
    IEnumerator Capture(string suffix)
    {
        yield return new WaitForSecondsRealtime(.5f);
        var file=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/buff-purchase-"+suffix+"-gpu.png"));
        ScreenCapture.CaptureScreenshot(file);yield return new WaitForSecondsRealtime(.3f);
    }
    void NoReward(int dia)
    {Assert.That(c.State.Is_Buff_Pack,Is.False);Assert.That(c.State.Dia,Is.EqualTo(dia));Assert.That(c.LocalStore.Completed,Is.Zero);Assert.That(c.LocalStore.Busy,Is.False);Assert.That(c.LocalStore.Model.Recorded("buff_pack"),Is.False);}
    [UnityTest] public IEnumerator OriginalPopupRealClickAwardsOnceFreezesTimersAndColdReloadKeepsPack()
    {
        yield return Open();yield return new WaitForSeconds(.6f);Time.timeScale=0;M.LoadBuffTimes(91,72,43);Assert.That(Adapter,Is.Not.Null);Assert.That(Adapter.Button.interactable,Is.True);Assert.That(Adapter.Button.transform.lossyScale.x,Is.GreaterThan(.1f));
        Assert.That(Adapter.ProductId,Is.EqualTo("buff_pack"));Assert.That(Adapter.Button.onClick.GetPersistentMethodName(0),Is.EqualTo("Purchase"));
        yield return Capture("available");int dia=c.State.Dia;yield return Click(Adapter.Button);yield return Settle();
        Assert.That(c.LocalStore.Completed,Is.EqualTo(1));Assert.That(c.State.Dia,Is.EqualTo(dia+1000));Assert.That(c.LocalStore.LastMessage,Does.Contain("未扣款"));
        Assert.That(c.State.Is_Buff_Pack,Is.True);Assert.That(Adapter.Button.interactable,Is.False);Assert.That(c.State.Recovery_SimulatedPurchases.Single(p=>p.productId=="buff_pack").count,Is.EqualTo(1));
        Adapter.Purchase();yield return Settle();Assert.That(c.State.Dia,Is.EqualTo(dia+1000));Assert.That(c.LocalStore.Completed,Is.EqualTo(1));
        Time.timeScale=1;yield return new WaitForSeconds(.3f);Assert.That(new[]{M.GetBuffTime(Buff_Type.Money),M.GetBuffTime(Buff_Type.Power),M.GetBuffTime(Buff_Type.AtkSpeed)},Is.EqualTo(new[]{91f,72f,43f}));
        foreach(var panel in M.GetComponentsInChildren<Buff_Panel>(true)){Assert.That(panel.AD_Btn_obj.activeSelf,Is.False);Assert.That(panel.Fill.fillAmount,Is.EqualTo(1));Assert.That(panel.BuffTime_txt.text,Is.Empty);Assert.That(M.GetMult(panel.type),Is.EqualTo(4));}
        UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include)?.gameObject.SetActive(false);yield return Capture("owned");
        Assert.That(c.State.ProcessedTxnIds,Is.Empty);Assert.That(c.State.PurchaseHistory,Is.Empty);Assert.That(c.State.PurchaseCount,Is.Zero);c.SaveNow();
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();c=RecoveryForestClient.Instance;ForestRuntimeAcceptance.IsGaming=false;c.DailyLogin.Close();c.Tutorial.SetCleared();yield return Open();
        Assert.That(c.State.Is_Buff_Pack,Is.True);Assert.That(c.State.Dia,Is.EqualTo(dia+1000));Assert.That(Adapter.Button.interactable,Is.False);Assert.That(c.LocalStore.Model.CanBuy("buff_pack"),Is.False);
        Assert.That(new OriginalSaveArchive(folder).Load().Recovery_SimulatedPurchases.Single(p=>p.productId=="buff_pack").count,Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator DisabledCancelledAndDuplicateRequestsCannotPartiallyGrant()
    {
        yield return Open();int dia=c.State.Dia;c.OfflinePurchaseSimulation=false;Adapter.Purchase();yield return Settle();NoReward(dia);Assert.That(Adapter.Button.interactable,Is.False);
        c.OfflinePurchaseSimulation=true;yield return Settle();Adapter.Purchase();Assert.That(c.LocalStore.Busy,Is.True);c.LocalStore.Cancel();yield return Settle();NoReward(dia);
        Adapter.Purchase();Adapter.Purchase();yield return Settle();Assert.That(c.LocalStore.Completed,Is.EqualTo(1));Assert.That(c.State.Dia,Is.EqualTo(dia+1000));
        Assert.That(c.State.Recovery_SimulatedPurchases.Single(p=>p.productId=="buff_pack").count,Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator ClosedReopenedPageAndChangedModeRejectStaleCompletion()
    {
        yield return Open();int dia=c.State.Dia;Adapter.Purchase();M.Close();M.Open();yield return Settle();NoReward(dia);
        Adapter.Purchase();c.SuspendForestForMode(1);yield return Settle();NoReward(dia);
        Assert.That(c.State.ProcessedTxnIds,Is.Empty);Assert.That(c.State.PurchaseHistory,Is.Empty);
    }
    [UnityTest] public IEnumerator RebindingKeepsOneAdapterAndUnsupportedPromotionalButtonDisabled()
    {
        c.LocalStore.Bind(c);c.LocalStore.Bind(c);yield return Open();Assert.That(Adapter.GetComponents<RecoveryLocalPurchaseButton>().Length,Is.EqualTo(1));
        var unsupported=M.Popup.GetComponentsInChildren<Button>(true).Single(b=>b.name=="FreeCash_Banner");Assert.That(unsupported.interactable,Is.False);Assert.That(unsupported.GetComponent<RecoveryLocalPurchaseButton>(),Is.Null);
        yield return Click(Adapter.Button);yield return Settle();Assert.That(c.LocalStore.Completed,Is.EqualTo(1));Assert.That(c.State.Recovery_SimulatedPurchases.Single(p=>p.productId=="buff_pack").count,Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator OfflineSnapshotIgnoresTemporaryTimersAndUsesOnlyOwnedPack()
    {
        Time.timeScale=0;var original=OriginalSaveArchive.Decode(OriginalSaveArchive.Encode(c.State));var eq=OriginalEquipmentCatalogue.Load();var baseline=OfflineModifiers.Capture(c);OfflineResult a=null,b=null;
        yield return OriginalOfflineSimulation.Run(original,90,90,c.Balance,eq,baseline,r=>a=r);
        M.LoadBuffTimes(900,900,900);var temporary=OriginalSaveArchive.Decode(OriginalSaveArchive.Encode(c.State));var tempModifiers=OfflineModifiers.Capture(c);Assert.That(tempModifiers.BuffMult,Is.EqualTo(1));
        yield return OriginalOfflineSimulation.Run(temporary,90,90,c.Balance,eq,tempModifiers,r=>b=r);
        Assert.That(b.MoneyFinal.CompareTo(a.MoneyFinal),Is.Zero);Assert.That((b.PowerLv,b.SpeedLv,b.MoneyUpgradeLv,b.StageNow,b.LevelNow),Is.EqualTo((a.PowerLv,a.SpeedLv,a.MoneyUpgradeLv,a.StageNow,a.LevelNow)));
        Assert.That(new[]{temporary.MoneyBuffTime,temporary.PowerBuffTime,temporary.AtkSpeedBuffTime},Is.EqualTo(new[]{900f,900f,900f}));
        var money=OriginalOfflineSimulation.PerStage(0,0,0,c.Balance,tempModifiers);Assert.That(c.LocalStore.Model.Apply("buff_pack"),Is.True);var owned=OfflineModifiers.Capture(c);Assert.That(owned.BuffMult,Is.EqualTo(4));
        Assert.That(OriginalOfflineSimulation.PerStage(0,0,0,c.Balance,owned).CompareTo(money*new DecimalAmount(4)),Is.Zero);
        Assert.That(new[]{M.GetBuffTime(Buff_Type.Money),M.GetBuffTime(Buff_Type.Power),M.GetBuffTime(Buff_Type.AtkSpeed)},Is.EqualTo(new[]{900f,900f,900f}));
    }
}
