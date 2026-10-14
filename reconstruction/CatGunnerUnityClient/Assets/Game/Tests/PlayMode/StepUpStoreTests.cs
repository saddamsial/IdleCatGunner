using System;
using System.IO;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class StepUpStoreTests
{
    string folder; GameClient client; bool background;
    void Independent(Scene scene, LoadSceneMode mode)
    {
        if (scene.name == "GameClient") scene.GetRootGameObjects()
            .SelectMany(g => g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride = folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background = Application.runInBackground; Application.runInBackground = true; Time.timeScale = 1;
        folder = Path.Combine(Application.temporaryCachePath, "StepUp-" + Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded += Independent;
        yield return SceneManager.LoadSceneAsync("GameClient"); yield return ClientStartupWait.Ready();
        client = GameClient.Instance; ForestRuntimeAcceptance.IsGaming = false;
        client.DailyLogin.Close(); client.Tutorial.SetCleared();
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        Time.timeScale = 1; client?.LocalStore.Cancel(); client?.RewardedAds.Cancel();
        yield return SceneManager.LoadSceneAsync("TargetPreview"); SceneManager.sceneLoaded -= Independent;
        if (Directory.Exists(folder)) Directory.Delete(folder, true); Application.runInBackground = background;
    }
    [UnityTest] public IEnumerator OriginalPopupHudAndFiveItemsExistAtStartup()
    {
        var names = client.gameObject.scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<Transform>(true)).Select(t => t.name).ToArray();
        Assert.That(names, Does.Contain("StepUp_Popup")); Assert.That(names, Does.Contain("StepUp_Btn"));
        Assert.That(names.Count(n => n.StartsWith("StepUp_Gun_Pack", StringComparison.Ordinal)), Is.EqualTo(5));
        yield return null;
    }
    StepUp Offer => client.LocalStore.StepUpOffer;
    IEnumerator Unlock()
    {
        // Explicit isolated collection fixture; never modifies the user's archive.
        client.State.Gun_Collect[10] = true; Offer.Banner_Reload(); client.SaveNow();
        yield return new WaitForSeconds(.4f);
    }
    IEnumerator Buy(int step)
    {
        Assert.That(client.LocalStore.Request("catgunner_stepup_" + step), Is.True);
        yield return null; yield return null;
        Assert.That(client.State.StepUp_Purchased[step], Is.True);
        client.Guns.newGun_ui.gameObject.SetActive(false);
        UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include)?.gameObject.SetActive(false);
    }
    void Capture(string name)
    {
        Canvas.ForceUpdateCanvases();
        foreach (var text in Offer.popup.GetComponentsInChildren<TMPro.TMP_Text>(true).Concat(new[] { Offer.stepup_banner.Sale_txt }))
        {
            if (!text.gameObject.activeInHierarchy) continue;
            text.ForceMeshUpdate(true, true);
            foreach (var character in text.textInfo.characterInfo.Take(text.textInfo.characterCount).Where(c => c.isVisible && c.character >= 0x4e00 && c.character <= 0x9fff))
                Assert.That(character.topRight.y - character.bottomLeft.y, Is.GreaterThan(text.fontSize * .3f), text.name + " readable Chinese glyph " + character.character);
            for (int i = 0; i < text.textInfo.materialCount; i++)
            {
                var material = text.textInfo.meshInfo[i].material;
                Assert.That(material, Is.Not.Null, text.name);
                Assert.That(material.shader.name, Is.Not.EqualTo("Hidden/InternalErrorShader"), text.name + " glyph material " + i);
                Assert.That(material.shader.isSupported, Is.True, text.name + " glyph material " + i);
            }
        }
        ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,
            "../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/stepup-" + name + "-gpu.png")));
    }
    [UnityTest] public IEnumerator CollectionGateStartsOnceAndKeepsOriginalReferences()
    {
        Assert.That(Offer, Is.Not.Null); Assert.That(Offer.Model.Started, Is.False);
        Assert.That(Offer.stepup_hud.gameObject.activeSelf, Is.False);
        client.State.Gun_Collect[9] = true; Offer.Banner_Reload(); Assert.That(Offer.Model.Started, Is.False);
        yield return Unlock(); string date = client.State.StepUp_Start_Date;
        Assert.That(Offer.stepup_hud.gameObject.activeInHierarchy, Is.True);
        Assert.That(Offer.stepup_hud.Price_obj.activeSelf, Is.True); Assert.That(Offer.stepup_hud.Time_txt.gameObject.activeSelf, Is.False);
        Assert.That(Offer.stepup_banner.gun_item.GunNum, Is.EqualTo(23));
        Offer.Banner_Reload(); Assert.That(client.State.StepUp_Start_Date, Is.EqualTo(date));
        Assert.That(new SaveArchive(folder).Load().StepUp_Start_Date, Is.EqualTo(date));
        foreach (var item in Offer.popup.StepUp_Item_list) Assert.That(item.gun_item.Degree_objs.Length, Is.EqualTo(13));
        Capture("hud-entry"); yield return null;
    }
    [UnityTest] public IEnumerator HudRealClickOpensOriginalPopupAndBuysFirstStepOnce()
    {
        yield return Unlock(); yield return Click(Offer.stepup_hud.GetComponent<Button>());
        yield return new WaitForSeconds(.5f);
        Assert.That(Offer.Open_Place, Is.EqualTo("hud")); Assert.That(Offer.popup.gameObject.activeInHierarchy, Is.True);
        for (int i = 0; i < 5; i++)
        {
            var row = Offer.popup.StepUp_Item_list[i];
            Assert.That(row.Step_txt.text, Is.EqualTo("STEP " + (i + 1)));
            Assert.That(row.gun_item.GunNum, Is.EqualTo(new[] { 23, 28, 33, 39, 44 }[i]));
            Assert.That(row.Disable_Panel_obj.activeSelf, Is.EqualTo(i != 0));
            Assert.That(row.Purchase_Btn_obj.activeSelf, Is.EqualTo(i == 0));
        }
        Capture("original-popup"); yield return null;
        int count = client.State.Owned_Gun_list.Count(v => v >= 0), diamonds = client.State.Dia;
        yield return Click(Offer.popup.StepUp_Item_list[0].GetComponent<Button>());
        Assert.That(client.State.Owned_Gun_list.Count(v => v >= 0), Is.EqualTo(count + 1));
        Assert.That(client.State.Owned_Gun_list, Does.Contain(23)); Assert.That(client.State.Dia, Is.EqualTo(diamonds));
        Assert.That(Offer.popup.StepUp_Item_list[0].Purchased_obj.activeSelf, Is.True);
        Assert.That(Offer.popup.StepUp_Item_list[1].Purchase_Btn_obj.activeSelf, Is.True);
        Assert.That(Offer.stepup_hud.Time_txt.gameObject.activeSelf, Is.True); Assert.That(Offer.stepup_hud.Price_obj.activeSelf, Is.False);
        Assert.That(client.LocalStore.Request("catgunner_stepup_0"), Is.False);
        client.Guns.newGun_ui.gameObject.SetActive(false);
        UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include)?.gameObject.SetActive(false);
        yield return new WaitForSeconds(.4f); Capture("first-purchased"); yield return null;
        Assert.That(new SaveArchive(folder).Load().StepUp_Purchased[0], Is.True);
    }
    [UnityTest] public IEnumerator WeaponBannerRealClickKeepsEntryPlaceAndChangesNextGun()
    {
        yield return Unlock();
        Offer.stepup_banner.transform.parent.gameObject.SetActive(true);
        yield return new WaitForSeconds(.5f);
        yield return Click(Offer.stepup_banner.transform.Find("Panel").GetComponent<Button>());
        yield return new WaitForSeconds(.5f); Assert.That(Offer.Open_Place, Is.EqualTo("banner_weapon"));
        yield return Buy(0); Offer.popup.Close(); yield return new WaitForSeconds(.4f);
        Assert.That(Offer.stepup_banner.gun_item.GunNum, Is.EqualTo(28));
        Assert.That(Offer.stepup_banner.Sale_txt.text, Is.EqualTo(StepUpText.Catalogue.Sale(5)));
        Capture("weapon-banner-next"); yield return null;
    }
    [UnityTest] public IEnumerator FiveSequentialRewardsHideOfferAndSurviveColdReload()
    {
        yield return Unlock(); int diamonds = client.State.Dia;
        for (int i = 0; i < 5; i++)
        {
            if (i < 4) Assert.That(client.LocalStore.Request("catgunner_stepup_" + (i + 1)), Is.False);
            yield return Buy(i);
        }
        Assert.That(client.State.Dia - diamonds, Is.EqualTo(2200));
        foreach (int gun in new[] { 23, 28, 33, 39, 44 }) Assert.That(client.State.Owned_Gun_list, Does.Contain(gun));
        Assert.That(Offer.Model.CurrentStep, Is.EqualTo(-1)); Assert.That(Offer.stepup_hud.gameObject.activeSelf, Is.False);
        Assert.That(Offer.stepup_banner.gameObject.activeSelf, Is.False);
        var saved = new SaveArchive(folder).Load(); Assert.That(saved.SimulatedPurchases.Count(p => p.productId.StartsWith("catgunner_stepup_")), Is.EqualTo(5));
        string start = saved.StepUp_Start_Date;
        yield return SceneManager.LoadSceneAsync("GameClient"); yield return ClientStartupWait.Ready();
        client = GameClient.Instance; ForestRuntimeAcceptance.IsGaming = false; client.DailyLogin.Close();
        Assert.That(Offer.Model.AllPurchased, Is.True); Assert.That(client.State.Dia, Is.EqualTo(saved.Dia));
        Assert.That(client.State.StepUp_Start_Date, Is.EqualTo(start)); Assert.That(Offer.stepup_hud.gameObject.activeSelf, Is.False);
        Assert.That(client.State.PurchaseHistory, Is.Empty);
    }
    [UnityTest] public IEnumerator FullInventoryRealClickRejectsWithoutPartialGrant()
    {
        yield return Unlock(); Offer.Popup_Open("hud"); yield return new WaitForSeconds(.5f);
        for (int i = 0; i < client.State.Owned_Gun_list.Length; i++) client.State.Owned_Gun_list[i] = 0;
        int diamonds = client.State.Dia;
        yield return Click(Offer.popup.StepUp_Item_list[0].GetComponent<Button>());
        Assert.That(client.State.StepUp_Purchased[0], Is.False); Assert.That(client.State.Dia, Is.EqualTo(diamonds));
        Assert.That(client.LocalStore.Model.Recorded("catgunner_stepup_0"), Is.False);
        Assert.That(UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include).txt.text, Is.EqualTo(StepUpText.Catalogue.FullInventory));
        Assert.That(client.State.Owned_Gun_list.All(v => v == 0), Is.True);
    }
    [UnityTest] public IEnumerator CancellationDisabledVariantExpiryAndReopenDoNotResetProgress()
    {
        yield return Unlock(); string start = client.State.StepUp_Start_Date;
        Assert.That(client.LocalStore.Request("catgunner_stepup_0"), Is.True); client.LocalStore.Cancel(); yield return null;
        Assert.That(client.State.StepUp_Purchased[0], Is.False);
        client.OfflinePurchaseSimulation = false; Assert.That(client.LocalStore.Request("catgunner_stepup_0"), Is.False);
        client.OfflinePurchaseSimulation = true; Offer.Popup_Open("hud"); yield return new WaitForSeconds(.4f);
        Time.timeScale = 0; client.LocalStore.Model.Now = () => DateTime.Parse(start).ToUniversalTime().AddDays(7);
        yield return new WaitForSecondsRealtime(.35f);
        Assert.That(Offer.Model.Expired, Is.True); Assert.That(Offer.stepup_hud.gameObject.activeSelf, Is.False);
        Assert.That(Offer.stepup_banner.gameObject.activeSelf, Is.False); Assert.That(Offer.popup.Time_txt.text, Is.EqualTo("0:00:00"));
        // Native expiry hides entry; Is_Purchasable and an already-open popup
        // keep their separate sequential predicate. No invented transaction gate.
        Assert.That(Offer.Is_Purchasable(0), Is.True);
        Offer.popup.Close(); Offer.Popup_Open("hud"); Assert.That(client.State.StepUp_Start_Date, Is.EqualTo(start));
        Assert.That(client.State.SimulatedPurchases, Is.Empty); Time.timeScale = 1;
    }
    [UnityTest] public IEnumerator OriginalCloseButtonClosesPopupAndHudCanReopen()
    {
        yield return Unlock(); Offer.Popup_Open("hud"); yield return new WaitForSeconds(.5f);
        var close = Offer.popup.GetComponentsInChildren<Button>(true).Single(b => b.name == "Close_Btn");
        yield return Click(close); Assert.That(Offer.popup.gameObject.activeSelf, Is.False);
        yield return Click(Offer.stepup_hud.GetComponent<Button>()); yield return new WaitForSeconds(.4f);
        Assert.That(Offer.popup.gameObject.activeInHierarchy, Is.True);
        Assert.That(Offer.popup.StepUp_Item_list.Count(x => x.Purchase_Btn_obj.activeSelf), Is.EqualTo(1));
    }
    static IEnumerator Click(Button button)
    {
        Canvas.ForceUpdateCanvases(); Assert.That(button.isActiveAndEnabled && button.interactable, Is.True, button.name);
        var module = EventSystem.current.GetComponent<StandaloneInputModule>(); var mouse = module.gameObject.AddComponent<ForestFeedbackMouseFixture>(); module.inputOverride = mouse;
        try
        {
            var rect = (RectTransform)button.transform; mouse.Position = RectTransformUtility.WorldToScreenPoint(null, rect.TransformPoint(rect.rect.center));
            var hits = new List<RaycastResult>(); EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current) { position = mouse.Position }, hits);
            Assert.That(hits.Count, Is.GreaterThan(0)); Assert.That(hits[0].gameObject.GetComponentInParent<Button>(), Is.SameAs(button), "Top hit: " + hits[0].gameObject.name);
            yield return null; mouse.Down = mouse.Held = true; yield return null; mouse.Down = mouse.Held = false; mouse.Up = true; yield return null; mouse.Up = false; yield return null;
        }
        finally { module.inputOverride = null; UnityEngine.Object.Destroy(mouse); }
    }
}

public sealed class StepUpRecoveryRulesTests
{
    [Test] public void NativeRewardArrayAndSequentialPredicateAreIndependentOfExpiry()
    {
        var bought = new bool[5]; var guns = new[] { 23, 28, 33, 39, 44 }; var diamonds = new[] { 0, 200, 400, 600, 1000 };
        Assert.That(StepUpOffer.Purchasable(bought, -1), Is.False); Assert.That(StepUpOffer.Purchasable(bought, 5), Is.False);
        for (int i = 0; i < 5; i++) { Assert.That(LocalPurchases.StepGun(i), Is.EqualTo(guns[i])); Assert.That(LocalPurchases.StepDiamonds(i), Is.EqualTo(diamonds[i])); Assert.That(StepUpOffer.Purchasable(bought, i), Is.True); bought[i] = true; Assert.That(StepUpOffer.Purchasable(bought, i), Is.False); }
    }
    [Test] public void CollectionBoundarySevenDaysAndNoRestartMatchNative()
    {
        var now = new DateTime(2026, 10, 11, 0, 0, 0, DateTimeKind.Utc);
        var state = new SaveData { Gun_Collect = new bool[65], StepUp_Purchased = new bool[5] }; var offer = new StepUpOffer(state, () => now);
        Assert.That(offer.Remaining, Is.EqualTo(TimeSpan.FromDays(7))); Assert.That(offer.ShouldShow, Is.False);
        state.Gun_Collect[9] = true; Assert.That(offer.ShouldShow, Is.False); state.Gun_Collect[10] = true; Assert.That(offer.ShouldShow, Is.True);
        Assert.That(offer.StartOnce(), Is.True); string start = state.StepUp_Start_Date;
        now = now.AddDays(7).AddTicks(-1); Assert.That(offer.Expired, Is.False); Assert.That(offer.StartOnce(), Is.False);
        now = now.AddTicks(1); Assert.That(offer.Expired, Is.True); Assert.That(offer.ShouldShow, Is.False);
        Assert.That(StepUpOffer.Purchasable(state.StepUp_Purchased, 0), Is.True); Assert.That(state.StepUp_Start_Date, Is.EqualTo(start));
        state.StepUp_Start_Date = "malformed"; Assert.That(offer.Started, Is.False); Assert.That(offer.Remaining, Is.EqualTo(TimeSpan.FromDays(7)));
    }
    [Test] public void NativeFullAndCompactTimeFormatsKeepBoundaries()
    {
        Assert.That(StepUpOffer.FullTime(new TimeSpan(2, 3, 4, 5)), Is.EqualTo("2d 3:04:05"));
        Assert.That(StepUpOffer.FullTime(new TimeSpan(0, 23, 4, 5)), Is.EqualTo("23:04:05"));
        Assert.That(StepUpOffer.HudTime(TimeSpan.FromDays(1)), Is.EqualTo("1D 0H"));
        Assert.That(StepUpOffer.HudTime(new TimeSpan(0, 1, 2, 3)), Is.EqualTo("1h 02m"));
        Assert.That(StepUpOffer.HudTime(new TimeSpan(0, 0, 59, 3)), Is.EqualTo("59m 03s"));
        Assert.That(StepUpOffer.FullTime(TimeSpan.Zero), Is.EqualTo("0:00:00"));
    }
}
