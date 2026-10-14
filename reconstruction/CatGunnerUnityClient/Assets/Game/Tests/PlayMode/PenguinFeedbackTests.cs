using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using Object = UnityEngine.Object;

public sealed class PenguinFeedbackTests
{
    string folder; GameClient client; Canvas canvas; bool background;
    const string SettingKey = "reconstruction.com.Chodun.CatGunner.settings.v1";
    bool hadSetting; string savedSetting;
    void Isolate(Scene s, LoadSceneMode m)
    { if (s.name == "GameClient") s.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride = folder; }
    [UnitySetUp] public IEnumerator Setup()
    {
        hadSetting = PlayerPrefs.HasKey(SettingKey); savedSetting = PlayerPrefs.GetString(SettingKey);
        background = Application.runInBackground; Application.runInBackground = true; Time.timeScale = 1;
        folder = Path.Combine(Application.temporaryCachePath, "PenguinFeedback-" + Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded += Isolate;
        yield return TestSceneLoader.LoadAsync("GameClient"); yield return ClientStartupWait.Ready(); yield return null;
        client = GameClient.Instance; canvas = client.Slider.GetComponentInParent<Canvas>();
        client.DailyLogin.Close(); client.Tutorial.SetCleared(); ForestRuntimeAcceptance.IsGaming = false;
        Setting.instance.PersistPreferences = false; Setting.instance.is_SFX_Mute = false;
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        if (EventSystem.current != null) EventSystem.current.GetComponent<StandaloneInputModule>().inputOverride = null;
        Time.timeScale = 1;
        yield return TestSceneLoader.LoadAsync("TargetPreview"); SceneManager.sceneLoaded -= Isolate;
        if (Directory.Exists(folder)) Directory.Delete(folder, true);
        if (hadSetting) PlayerPrefs.SetString(SettingKey, savedSetting); else PlayerPrefs.DeleteKey(SettingKey); PlayerPrefs.Save();
        Application.runInBackground = background;
    }
    [UnityTest] public IEnumerator FullCatalogueAndStaticAndInstantiatedUiHaveFeedback()
    {
        var sound = Sound_manager.instance;
        var entries = (SfxEntry[])typeof(Sound_manager).GetField("sfxEntries", BindingFlags.NonPublic | BindingFlags.Instance).GetValue(sound);
        Assert.That(entries.Length, Is.EqualTo(17));
        Assert.That(entries.Select(e => (int)e.type), Is.EquivalentTo(Enumerable.Range(0,17)));
        foreach (var entry in entries) { Assert.That(entry.clip.name, Is.EqualTo("Ice_" + entry.type)); Assert.That(entry.clip.samples, Is.GreaterThan(0)); }
        var buttons = canvas.GetComponentsInChildren<UnityEngine.UI.Button>(true);
        Assert.That(buttons.Length, Is.GreaterThan(717), "Runtime collection and language controls included");
        foreach (var button in buttons)
        {
            Assert.That(button.GetComponent<PenguinButtonFeedback>(), Is.Not.Null, button.name);
            Assert.That(button.GetComponent<BounceBtn>()?.enabled ?? false, Is.False, "One press animation owner");
            Assert.That(button.GetComponent<SFX_BtnScript>()?.enabled ?? false, Is.False, "One generic sound owner");
        }
        Assert.That(canvas.GetComponentsInChildren<PenguinPopupFeedback>(true).Length, Is.EqualTo(75));
        Assert.That(canvas.GetComponentsInChildren<PenguinSlotFeedback>(true).Length, Is.EqualTo(6));
        foreach (string p in new[] { "SafeArea/Gun_UI  (SafeArea)/Draw_Info_UI", "SafeArea/Gun_UI  (SafeArea)/GunCollection_UI", "LanguageSelection_UI" })
            Assert.That(canvas.transform.Find(p).GetComponent<PenguinPopupFeedback>(), Is.Not.Null, p);
        yield return null;
    }
    [UnityTest] public IEnumerator EquippedSlotActualInputOpensDetailWithoutChangingEquipmentWhilePaused()
    {
        var menu = canvas.transform.Find("SafeArea/Main_UI/Btn_list");
        menu.GetComponentsInChildren<UnityEngine.UI.Button>(true).Single(b => b.name == "Gun_Btn").onClick.Invoke();
        yield return new WaitForSecondsRealtime(.3f);
        var slot = Gun_manager.instance.Gun_Slot_List.First(s => Gun_manager.instance.Selected_items[s.SlotNum] >= 0);
        var equipment = (int[])Gun_manager.instance.Selected_items.Clone(); var wallet = client.State.Money.Value; int dia = client.State.Dia;
        var module = EventSystem.current.GetComponent<StandaloneInputModule>();
        var mouse = module.gameObject.AddComponent<ForestFeedbackMouseFixture>(); module.inputOverride = mouse;
        Canvas.ForceUpdateCanvases(); var rt = (RectTransform)slot.transform; Vector3 rest = rt.localScale;
        mouse.Position = RectTransformUtility.WorldToScreenPoint(null, rt.TransformPoint(rt.rect.center));
        mouse.Down = mouse.Up = mouse.Held = false; Time.timeScale = 0; yield return null;
        mouse.Down = mouse.Held = true; yield return null; mouse.Down = false;
        yield return new WaitForSecondsRealtime(.08f); Assert.That(rt.localScale.x, Is.LessThan(rest.x));
        mouse.Held = false; mouse.Up = true; yield return null; mouse.Up = false;
        yield return new WaitForSecondsRealtime(.35f);
        Assert.That(Gun_manager.instance.gun_info_ui.gameObject.activeInHierarchy, Is.True);
        Assert.That(Gun_manager.instance.Selected_items, Is.EqualTo(equipment));
        Assert.That(client.State.Money.Value.CompareTo(wallet), Is.Zero); Assert.That(client.State.Dia, Is.EqualTo(dia));
        Assert.That(rt.localScale, Is.EqualTo(rest)); module.inputOverride = null; Object.Destroy(mouse); Time.timeScale = 1;
    }
    [UnityTest] public IEnumerator ActualInputClicksAllFourteenMenusOnceAndKeepsCurrencyAndPersistentBindings()
    {
        client.Forest.Stage_Value_Max = 400; client.ContentUnlock.Reload(); yield return null;
        var module = EventSystem.current.GetComponent<StandaloneInputModule>();
        var mouse = module.gameObject.AddComponent<ForestFeedbackMouseFixture>(); module.inputOverride = mouse;
        var menu = canvas.transform.Find("SafeArea/Main_UI/Btn_list"); var wallet = client.State.Money.Value; int dia = client.State.Dia;
        foreach (string name in new[] { "Setting_Btn", "Shop_Btn", "Gun_Btn", "Skin_Btn", "Pet_Btn ", "Fish_Btn", "Rebirth_Btn", "Mission_Btn", "Adventure_Btn", "Raid_Btn", "Boss_Btn", "Mine_Btn", "Monster_Btn", "SpeedRun_Btn" })
        {
            var states = canvas.GetComponentsInChildren<Transform>(true).ToDictionary(t => t.gameObject, t => t.gameObject.activeSelf);
            var button = menu.GetComponentsInChildren<UnityEngine.UI.Button>(true).Single(b => b.name == name);
            int bindings = button.onClick.GetPersistentEventCount(), clicked = 0;
            var methods = Enumerable.Range(0, bindings).Select(i => button.onClick.GetPersistentMethodName(i)).ToArray();
            var feedback = button.GetComponent<PenguinButtonFeedback>(); int prior = feedback.ClickCount;
            void Observe() => clicked++; button.onClick.AddListener(Observe);
            Canvas.ForceUpdateCanvases(); var rt = (RectTransform)button.transform; Vector3 rest = rt.localScale;
            mouse.Position = RectTransformUtility.WorldToScreenPoint(null, rt.TransformPoint(rt.rect.center));
            mouse.Down = mouse.Up = mouse.Held = false; yield return null;
            mouse.Down = mouse.Held = true; yield return null; mouse.Down = false;
            yield return new WaitForSecondsRealtime(.08f);
            Assert.That(rt.localScale.x, Is.LessThan(rest.x), name + " press animation through EventSystem");
            mouse.Held = false; mouse.Up = true; yield return null; mouse.Up = false; yield return new WaitForSecondsRealtime(.3f);
            button.onClick.RemoveListener(Observe);
            Assert.That(clicked, Is.EqualTo(1), name); Assert.That(feedback.ClickCount, Is.EqualTo(prior + 1), name);
            Assert.That((rt.localScale - rest).sqrMagnitude, Is.LessThan(.00001f), name + " returns to authored scale");
            Assert.That(states.Any(s => s.Key != null && !s.Value && s.Key.activeInHierarchy), Is.True, name + " opens original screen");
            Assert.That(client.State.Money.Value.CompareTo(wallet), Is.Zero); Assert.That(client.State.Dia, Is.EqualTo(dia));
            Assert.That(Enumerable.Range(0, button.onClick.GetPersistentEventCount()).Select(i => button.onClick.GetPersistentMethodName(i)), Is.EqualTo(methods));
            foreach (var state in states) if (state.Key != null && state.Key.activeSelf != state.Value) state.Key.SetActive(state.Value);
            yield return null;
        }
        module.inputOverride = null; Object.Destroy(mouse);
    }
    [UnityTest] public IEnumerator PausedPressCancelDisableAndPopupReopenRestoreScalesWithoutStaleAnimation()
    {
        var button = canvas.transform.Find("SafeArea/Main_UI/Btn_list").GetComponentsInChildren<UnityEngine.UI.Button>(true).Single(b => b.name == "Setting_Btn");
        var feedback = button.GetComponent<PenguinButtonFeedback>(); var rest = button.transform.localScale;
        var pointer = new PointerEventData(EventSystem.current) { button = PointerEventData.InputButton.Left };
        Time.timeScale = 0;
        ExecuteEvents.Execute(button.gameObject, pointer, ExecuteEvents.pointerDownHandler);
        yield return new WaitForSecondsRealtime(.1f); Assert.That(button.transform.localScale.x, Is.LessThan(rest.x));
        ExecuteEvents.Execute(button.gameObject, pointer, ExecuteEvents.pointerExitHandler);
        yield return new WaitForSecondsRealtime(.25f); Assert.That((button.transform.localScale - rest).sqrMagnitude, Is.LessThan(.00001f));
        for (int i=0;i<3;i++) { ExecuteEvents.Execute(button.gameObject, pointer, ExecuteEvents.pointerDownHandler); button.gameObject.SetActive(false); button.gameObject.SetActive(true); }
        yield return new WaitForSecondsRealtime(.3f); Assert.That(button.transform.localScale, Is.EqualTo(rest));
        button.interactable = false; ExecuteEvents.Execute(button.gameObject, pointer, ExecuteEvents.pointerDownHandler);
        yield return new WaitForSecondsRealtime(.1f); Assert.That(button.transform.localScale, Is.EqualTo(rest)); button.interactable = true;
        var popup = canvas.transform.Find("Setting/Setting_UI").GetComponent<PenguinPopupFeedback>(); var content = popup.Content;
        popup.gameObject.SetActive(false); Vector3 normal = content.localScale;
        for (int i=0;i<3;i++) { popup.gameObject.SetActive(true); yield return new WaitForSecondsRealtime(.04f); popup.gameObject.SetActive(false); Assert.That(content.localScale, Is.EqualTo(normal)); }
        popup.gameObject.SetActive(true); yield return new WaitForSecondsRealtime(.4f); Assert.That(content.localScale, Is.EqualTo(normal));
        Assert.That(popup.OpenCount, Is.GreaterThanOrEqualTo(4)); Time.timeScale = 1;
    }
    [UnityTest] public IEnumerator MutingSilencesClickAndPopupAndBusinessSoundWinsRegardlessOfListenerOrder()
    {
        var go = new GameObject("Feedback integration fixture", typeof(RectTransform), typeof(UnityEngine.UI.Button)); go.transform.SetParent(canvas.transform, false);
        var button = go.GetComponent<UnityEngine.UI.Button>(); PenguinFeedbackBootstrap.AttachButton(button); yield return null;
        var sound = Sound_manager.instance;
        Setting.instance.is_SFX_Mute = true; int before = sound.PlayedSfxCount;
        button.onClick.Invoke(); sound.PlaySfx(SfxType.Pop); yield return null;
        Assert.That(sound.PlayedSfxCount, Is.EqualTo(before), "Click and popup respect SFX mute");
        Setting.instance.is_SFX_Mute = false; yield return new WaitForSecondsRealtime(.1f);
        button.onClick.Invoke(); yield return null; Assert.That(sound.LastPlayedSfx, Is.EqualTo(SfxType.Button));
        yield return new WaitForSecondsRealtime(.1f);
        // Added AFTER feedback to check that late business listeners also win.
        button.onClick.AddListener(() => sound.PlaySfx(SfxType.Dont)); before = sound.PlayedSfxCount;
        button.onClick.Invoke(); yield return null;
        Assert.That(sound.PlayedSfxCount, Is.EqualTo(before + 1)); Assert.That(sound.LastPlayedSfx, Is.EqualTo(SfxType.Dont));
        Object.Destroy(go);
    }
}
