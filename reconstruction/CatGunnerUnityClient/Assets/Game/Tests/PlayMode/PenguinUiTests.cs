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
using Object = UnityEngine.Object;

public sealed class PenguinUiTests
{
    string folder; GameClient client; Canvas canvas; bool background;
    void Isolate(Scene s, LoadSceneMode m)
    { if (s.name == "GameClient") s.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride = folder; }
    [UnitySetUp] public IEnumerator Setup()
    {
        background = Application.runInBackground; Application.runInBackground = true; Time.timeScale = 1;
        folder = Path.Combine(Application.temporaryCachePath, "PenguinUi-" + Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded += Isolate; yield return SceneManager.LoadSceneAsync("GameClient"); yield return ClientStartupWait.Ready();
        client = GameClient.Instance; canvas = client.Slider.GetComponentInParent<Canvas>();
        client.DailyLogin.Close(); client.Tutorial.SetCleared(); ForestRuntimeAcceptance.IsGaming = false;
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        if (EventSystem.current != null) EventSystem.current.GetComponent<StandaloneInputModule>().inputOverride = null;
        yield return SceneManager.LoadSceneAsync("TargetPreview"); SceneManager.sceneLoaded -= Isolate;
        if (Directory.Exists(folder)) Directory.Delete(folder, true); Application.runInBackground = background; Time.timeScale = 1;
    }
    [UnityTest] public IEnumerator ThemePreservesEveryButtonBindingRectAndHitTargetAndRestoresOriginalArt()
    {
        var theme = client.GetComponent<PenguinUiTheme>(); Assert.That(theme.StyledImageCount, Is.GreaterThan(7000));
        var buttons = canvas.GetComponentsInChildren<Button>(true);
        var records = buttons.Select(b => new { button = b, rect = ((RectTransform)b.transform).rect, b.interactable, target = b.targetGraphic,
            raycast = b.targetGraphic != null && b.targetGraphic.raycastTarget,
            bindings = Enumerable.Range(0, b.onClick.GetPersistentEventCount()).Select(i => b.onClick.GetPersistentTarget(i).GetInstanceID() + ":" + b.onClick.GetPersistentMethodName(i)).ToArray() }).ToArray();
        var mascot = client.GetComponent<PenguinExpeditionTheme>().Avatar.GetComponent<PenguinBoneMotion>();
        var mesh = mascot.VisualMesh; var wallet = client.State.Money.Value;
        var image = canvas.transform.Find("SafeArea/Main_UI/Game_Slider/Player_Icon/Image").GetComponent<Image>();
        Assert.That(image.sprite, Is.SameAs(theme.Portrait)); theme.enabled = false; yield return null;
        Assert.That(image.sprite.name, Is.EqualTo("Cat_icon")); theme.enabled = true; yield return null;
        Assert.That(image.sprite, Is.SameAs(theme.Portrait)); Assert.That(mascot.VisualMesh, Is.SameAs(mesh));
        Assert.That(client.State.Money.Value.CompareTo(wallet), Is.Zero);
        Assert.That(canvas.GetComponentsInChildren<Button>(true), Is.EqualTo(buttons));
        foreach (var r in records)
        {
            Assert.That(((RectTransform)r.button.transform).rect, Is.EqualTo(r.rect)); Assert.That(r.button.interactable, Is.EqualTo(r.interactable));
            Assert.That(r.button.targetGraphic, Is.SameAs(r.target)); Assert.That(r.target != null && r.target.raycastTarget, Is.EqualTo(r.raycast));
            Assert.That(Enumerable.Range(0, r.button.onClick.GetPersistentEventCount()).Select(i => r.button.onClick.GetPersistentTarget(i).GetInstanceID() + ":" + r.button.onClick.GetPersistentMethodName(i)).ToArray(), Is.EqualTo(r.bindings));
        }
        Assert.That(canvas.GetComponentsInChildren<RawImage>(true).Any(i => i.texture != null && i.texture.name == "Cat_Foot"), Is.False);
    }
    [UnityTest] public IEnumerator ActualInputOpensEveryMainMenuOnceWithoutSpendingCurrency()
    {
        client.Forest.Stage_Value_Max = 400; client.ContentUnlock.Reload(); yield return null;
        var module = EventSystem.current.GetComponent<StandaloneInputModule>(); var mouse = module.gameObject.AddComponent<ForestFeedbackMouseFixture>(); module.inputOverride = mouse;
        var menu = canvas.transform.Find("SafeArea/Main_UI/Btn_list"); var wallet = client.State.Money.Value; int dia = client.State.Dia;
        foreach (string name in new[] { "Setting_Btn", "Shop_Btn", "Gun_Btn", "Skin_Btn", "Pet_Btn ", "Fish_Btn", "Rebirth_Btn", "Mission_Btn", "Adventure_Btn", "Raid_Btn", "Boss_Btn", "Mine_Btn", "Monster_Btn", "SpeedRun_Btn" })
        {
            var states = canvas.GetComponentsInChildren<Transform>(true).ToDictionary(t => t.gameObject, t => t.gameObject.activeSelf);
            var button = menu.GetComponentsInChildren<Button>(true).Single(b => b.name == name); int clicked = 0;
            void Observe() => clicked++; button.onClick.AddListener(Observe);
            Canvas.ForceUpdateCanvases(); var rt = (RectTransform)button.transform; mouse.Position = RectTransformUtility.WorldToScreenPoint(null, rt.TransformPoint(rt.rect.center));
            mouse.Down = mouse.Up = mouse.Held = false; yield return null;
            mouse.Down = mouse.Held = true; yield return null; mouse.Down = mouse.Held = false; mouse.Up = true; yield return null; mouse.Up = false; yield return null;
            button.onClick.RemoveListener(Observe); Assert.That(clicked, Is.EqualTo(1), name + " must remain clickable exactly once");
            Assert.That(states.Any(s => s.Key != null && !s.Value && s.Key.activeInHierarchy), Is.True, name + " must open its original page");
            Assert.That(client.State.Money.Value.CompareTo(wallet), Is.Zero); Assert.That(client.State.Dia, Is.EqualTo(dia));
            foreach (var state in states) if (state.Key != null && state.Key.activeSelf != state.Value) state.Key.SetActive(state.Value);
            yield return null;
        }
        module.inputOverride = null; Object.Destroy(mouse);
    }
}
