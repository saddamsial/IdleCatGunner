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

public sealed class DetailHoldTests
{
    private static void Independent(Scene scene, LoadSceneMode mode)
    {
        if (scene.name != "GameClient") return;
        var c = scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<GameClient>(true)).Single();
        c.Persist = false;
        foreach (var cat in c.Team.Cat_list)
        {
            cat.GetComponent<ForestCombatAcceptance>().enabled = false;
            var movement = cat.GetComponent<ForestMovementAcceptance>();
            if (movement != null) movement.enabled = false;
        }
    }
    private static PointerEventData Pointer(Button button)
    {
        Canvas.ForceUpdateCanvases();
        var rect = (RectTransform)button.transform;
        var e = new PointerEventData(EventSystem.current) { position = RectTransformUtility.WorldToScreenPoint(null, rect.TransformPoint(rect.rect.center)) };
        var hits = new List<RaycastResult>(); EventSystem.current.RaycastAll(e, hits);
        Assert.That(hits.Count, Is.GreaterThan(0));
        Assert.That(hits[0].gameObject.GetComponentInParent<Button>(), Is.SameAs(button), "Original UI must receive the real raycast");
        return e;
    }
    private static void Click(Button b) => ExecuteEvents.Execute(b.gameObject, Pointer(b), ExecuteEvents.pointerClickHandler);
    private static void Down(Button b) => ExecuteEvents.Execute(b.gameObject, Pointer(b), ExecuteEvents.pointerDownHandler);
    private static void End(Button b, bool exit)
    {
        var e = new PointerEventData(EventSystem.current);
        if (exit) ExecuteEvents.Execute(b.gameObject, e, ExecuteEvents.pointerExitHandler);
        else ExecuteEvents.Execute(b.gameObject, e, ExecuteEvents.pointerUpHandler);
    }
    private static void Fund(GameClient c, int amount = 1000000)
    {
        c.State.Ruby = CurrencyAmount.FromValue(new DecimalAmount(amount));
        c.RebirthUI.Reload(); OpenUpgrades(c);
    }
    private static GameObject UpgradeRoot(GameClient c) => c.RebirthUI.rebirth_panel_ui.Upgrade_item_list[0].GetComponentsInParent<Transform>(true).Single(t => t.name == "RubyUpgrade_UI").gameObject;
    private static void OpenUpgrades(GameClient c)
    {
        c.RebirthUI.Panel_Open(); Assert.That(UpgradeRoot(c).activeInHierarchy, Is.True);
    }
    [UnityTest] public IEnumerator OriginalPetArrowsBrowseAllGradesIncludingUncollectedWithoutChangingInventory()
    {
        SceneManager.sceneLoaded += Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("GameClient"); yield return ClientStartupWait.Ready();
            var c = GameClient.Instance; var manager = c.PetUI; var p = manager.pet_info_ui;
            var owned = (int[])c.State.Owned_Pet_list.Clone(); var equipped = (int[])c.State.Pet_Selected_items.Clone(); var collected = (bool[])c.State.Pet_Collect.Clone();
            manager.Panel_Open(); manager.Pet_Info_UI_Reload(0); yield return null;
            Assert.That(p.LeftBtn_obj.activeSelf, Is.False); Assert.That(p.RightBtn_obj.activeSelf, Is.True);
            for (int grade = 0; grade < 10; grade++)
            {
                Assert.That(p.Pet_img.sprite, Is.SameAs(manager.Pet_sprites[grade]));
                Assert.That(p.Degree_objs.Select(g => g.activeSelf).ToArray(), Is.EqualTo(Enumerable.Range(0, p.Degree_objs.Length).Select(i => i == grade).ToArray()));
                Assert.That(p.Money_txt.text, Is.EqualTo("+" + c.Pets.Catalogue.Pets[grade].Money.Value.PlainInteger() + "%"));
                Assert.That(p.MoveSpeed_txt.text, Is.EqualTo("+" + c.Pets.Catalogue.Pets[grade].MoveSpeed + "%"));
                if (grade < 9) { Assert.That(p.RightBtn_obj.GetComponent<Button>().interactable, Is.True); Click(p.RightBtn_obj.GetComponent<Button>()); yield return null; }
            }
            Assert.That(p.RightBtn_obj.activeSelf, Is.False);
            p.Show_HigherPet(); Assert.That(p.Pet_img.sprite, Is.SameAs(manager.Pet_sprites[9]));
            for (int grade = 8; grade >= 0; grade--) { Click(p.LeftBtn_obj.GetComponent<Button>()); yield return null; Assert.That(p.Pet_img.sprite, Is.SameAs(manager.Pet_sprites[grade])); }
            p.Show_LowerPet(); Assert.That(p.Pet_img.sprite, Is.SameAs(manager.Pet_sprites[0]));
            p.Close(); manager.Pet_Info_UI_Reload(5); Assert.That(p.LeftBtn_obj.activeSelf && p.RightBtn_obj.activeSelf, Is.True);
            Assert.That(c.State.Owned_Pet_list, Is.EqualTo(owned)); Assert.That(c.State.Pet_Selected_items, Is.EqualTo(equipped)); Assert.That(c.State.Pet_Collect, Is.EqualTo(collected));
            yield return new WaitForSeconds(.3f);
            ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath, "../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/pet-detail-navigation-test-gpu.png"))); yield return new WaitForSeconds(.1f);
        }
        finally { SceneManager.sceneLoaded -= Independent; }
        yield return SceneManager.LoadSceneAsync("TargetPreview");
    }
    [UnityTest] public IEnumerator OriginalRebirthEventsRespectDelayRepeatPriceAndReleaseOrExitForAllThreeKinds()
    {
        SceneManager.sceneLoaded += Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("GameClient"); yield return ClientStartupWait.Ready();
            var c = GameClient.Instance; Fund(c); yield return new WaitForSeconds(.5f); var rows = c.RebirthUI.rebirth_panel_ui.Upgrade_item_list;
            for (int kind = 0; kind < 3; kind++)
            {
                var u = rows[kind]; var b = u.Upgrade_btn; Assert.That(u.holdDelay, Is.EqualTo(.4f)); Assert.That(u.holdInterval, Is.EqualTo(.04f));
                var ruby = c.State.Ruby.Value; Down(b); yield return new WaitForSeconds(.2f); Assert.That(c.State.Rebirth_Upgrade_Lv[kind], Is.Zero);
                yield return new WaitForSeconds(.45f); Assert.That(c.State.Rebirth_Upgrade_Lv[kind], Is.GreaterThanOrEqualTo(2));
                End(b, kind == 1); int level = c.State.Rebirth_Upgrade_Lv[kind]; var spent = new DecimalAmount(0);
                for (int i = 0; i < level; i++) spent += c.Rebirth.Catalogue.RebirthPrice[i].Value;
                Assert.That(c.State.Ruby.Value.CompareTo(ruby - spent), Is.Zero);
                yield return new WaitForSeconds(.15f); Assert.That(c.State.Rebirth_Upgrade_Lv[kind], Is.EqualTo(level));
                Down(b); yield return new WaitForSeconds(.1f); End(b, false); Click(b); Assert.That(c.State.Rebirth_Upgrade_Lv[kind], Is.EqualTo(level + 1), "Short click remains one ordinary upgrade");
            }
            yield return new WaitForSeconds(.3f);
            ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath, "../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/rebirth-hold-upgrade-test-gpu.png"))); yield return new WaitForSeconds(.1f);
        }
        finally { SceneManager.sceneLoaded -= Independent; }
        yield return SceneManager.LoadSceneAsync("TargetPreview");
    }
    [UnityTest] public IEnumerator HoldStopsWhenUnaffordableMaxedOrPanelClosedAndRestartDoesNotDuplicate()
    {
        var temporary = new GameObject("Independent native defaults"); var defaults = temporary.AddComponent<Rebirth_Upgrade_Item>();
        Assert.That(defaults.holdDelay, Is.EqualTo(.4f)); Assert.That(defaults.holdInterval, Is.EqualTo(.1f)); UnityEngine.Object.Destroy(temporary);
        SceneManager.sceneLoaded += Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("GameClient"); yield return ClientStartupWait.Ready();
            var c = GameClient.Instance; var row = c.RebirthUI.rebirth_panel_ui.Upgrade_item_list[0];
            c.State.Ruby = CurrencyAmount.FromValue(c.Rebirth.Catalogue.RebirthPrice[0].Value); c.RebirthUI.Reload(); OpenUpgrades(c);
            yield return new WaitForSeconds(.5f);
            Down(row.Upgrade_btn); yield return new WaitForSeconds(.6f); Assert.That(c.State.Rebirth_Upgrade_Lv[0], Is.EqualTo(1)); Assert.That(c.State.Ruby.Value.Coefficient.IsZero, Is.True);
            Assert.That(row.Upgrade_btn.interactable, Is.False); Assert.That(row.Price_txt.color, Is.EqualTo(row.Color_Disable));
            Fund(c); yield return new WaitForSeconds(.5f); Down(row.Upgrade_btn); yield return new WaitForSeconds(.3f); Down(row.Upgrade_btn); yield return new WaitForSeconds(.2f); Assert.That(c.State.Rebirth_Upgrade_Lv[0], Is.EqualTo(1));
            yield return new WaitForSeconds(.3f); Assert.That(c.State.Rebirth_Upgrade_Lv[0], Is.GreaterThan(1));
            Click(UpgradeRoot(c).GetComponentsInChildren<Button>(true).Single(b => b.name == "Close_Btn")); Assert.That(UpgradeRoot(c).activeSelf, Is.False);
            int stopped = c.State.Rebirth_Upgrade_Lv[0]; yield return new WaitForSeconds(.2f); Assert.That(c.State.Rebirth_Upgrade_Lv[0], Is.EqualTo(stopped));
            c.State.Rebirth_Upgrade_Lv[0] = 20000; Fund(c); yield return new WaitForSeconds(.5f); Assert.That(row.Price_txt.text, Is.EqualTo("Max")); Assert.That(row.Upgrade_btn.interactable, Is.False);
            var funds = c.State.Ruby.Value; Down(row.Upgrade_btn); yield return new WaitForSeconds(.5f); Assert.That(c.State.Rebirth_Upgrade_Lv[0], Is.EqualTo(20000)); Assert.That(c.State.Ruby.Value.CompareTo(funds), Is.Zero);
        }
        finally { SceneManager.sceneLoaded -= Independent; }
        yield return SceneManager.LoadSceneAsync("TargetPreview");
    }
    [UnityTest] public IEnumerator OrdinaryHoldUpgradeSurvivesIndependentColdReloadWithoutTouchingUserProfile()
    {
        string folder = Path.Combine(Path.GetTempPath(), "catgunner-detail-hold-" + Guid.NewGuid().ToString("N"));
        UnityEngine.Events.UnityAction<Scene, LoadSceneMode> configure = (s, m) => { Independent(s, m); if (s.name == "GameClient") { var c0 = s.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<GameClient>(true)).Single(); c0.Persist = true; c0.SaveFolderOverride = folder; } };
        SceneManager.sceneLoaded += configure;
        try
        {
            yield return SceneManager.LoadSceneAsync("GameClient"); yield return ClientStartupWait.Ready(); var c = GameClient.Instance; Fund(c);
            yield return new WaitForSeconds(.5f);
            var row = c.RebirthUI.rebirth_panel_ui.Upgrade_item_list[2]; Down(row.Upgrade_btn); yield return new WaitForSeconds(.65f); End(row.Upgrade_btn, false);
            int level = c.State.Rebirth_Upgrade_Lv[2]; Assert.That(level, Is.GreaterThan(1)); var ruby = c.State.Ruby.Value; c.SaveNow();
            yield return SceneManager.LoadSceneAsync("TargetPreview"); yield return SceneManager.LoadSceneAsync("GameClient"); yield return ClientStartupWait.Ready(); c = GameClient.Instance;
            Assert.That(c.State.Rebirth_Upgrade_Lv[2], Is.EqualTo(level)); Assert.That(c.State.Ruby.Value.CompareTo(ruby), Is.Zero);
            c.RebirthUI.Panel_Open(); yield return new WaitForSeconds(.6f); Assert.That(c.State.Rebirth_Upgrade_Lv[2], Is.EqualTo(level)); c.Persist = false;
        }
        finally { SceneManager.sceneLoaded -= configure; }
        yield return SceneManager.LoadSceneAsync("TargetPreview");
    }
}
