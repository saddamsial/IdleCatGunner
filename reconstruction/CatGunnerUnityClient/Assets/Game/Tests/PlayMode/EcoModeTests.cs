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
using UnityEngine.UI;
using Object = UnityEngine.Object;

public sealed class EcoModeTests
{
    private const string PreferenceKey = "reconstruction.com.Chodun.CatGunner.settings.v1";
    private string folder, preferencesBefore;
    private bool background;
    private GameClient client;
    private Setting settings;
    private StandaloneInputModule module;
    private ForestFeedbackMouseFixture mouse;
    private static string Report(string name) => Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports",name));
    private void Configure(Scene scene, LoadSceneMode mode)
    {
        if (scene.name != "GameClient") return;
        scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride = folder;
        scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<Setting>(true)).Single().PersistPreferences = false;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background = Application.runInBackground; Application.runInBackground = true; Time.timeScale = 1;
        folder = Path.Combine(Application.temporaryCachePath, "EcoMode-" + Guid.NewGuid().ToString("N"));
        preferencesBefore = PlayerPrefs.GetString(PreferenceKey, string.Empty);
        SceneManager.sceneLoaded += Configure;
        yield return SceneManager.LoadSceneAsync("GameClient"); yield return ClientStartupWait.Ready();
        client = GameClient.Instance; settings = Setting.instance;
        module = EventSystem.current.GetComponent<StandaloneInputModule>();
        mouse = module.gameObject.AddComponent<ForestFeedbackMouseFixture>(); module.inputOverride = mouse;
        yield return null;
    }
    [UnityTearDown] public IEnumerator Teardown()
    {
        if (module != null) module.inputOverride = null;
        yield return SceneManager.LoadSceneAsync("TargetPreview"); SceneManager.sceneLoaded -= Configure;
        if (Directory.Exists(folder)) Directory.Delete(folder, true);
        Assert.That(PlayerPrefs.GetString(PreferenceKey, string.Empty), Is.EqualTo(preferencesBefore), "Fixtures must not write user audio preferences");
        Time.timeScale = 1; Application.runInBackground = background;
    }
    private static GameObject Named(string name) => Object.FindObjectsByType<Transform>(FindObjectsInactive.Include).Single(t => t.name == name).gameObject;
    private IEnumerator Click(GameObject go)
    {
        var button = go.GetComponent<Button>(); Assert.That(button, Is.Not.Null); Assert.That(button.interactable && go.activeInHierarchy, Is.True, go.name);
        Canvas.ForceUpdateCanvases(); var rect = (RectTransform)go.transform;
        mouse.Position = RectTransformUtility.WorldToScreenPoint(null, rect.TransformPoint(rect.rect.center));
        Assert.That(mouse.Position.x, Is.InRange(0, Screen.width)); Assert.That(mouse.Position.y, Is.InRange(0, Screen.height));
        var hits = new List<RaycastResult>(); EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current) { position = mouse.Position }, hits);
        Assert.That(hits, Is.Not.Empty); Assert.That(hits[0].gameObject.GetComponentInParent<Button>(), Is.SameAs(button), "Top raycast must be the original button: " + go.name);
        mouse.Down = false; mouse.Up = false; mouse.Held = false; yield return null;
        mouse.Down = true; mouse.Held = true; yield return null;
        mouse.Down = false; mouse.Up = true; mouse.Held = false; yield return null;
        mouse.Up = false; yield return null;
    }
    [UnityTest] public IEnumerator NativeStateColorSkinAndIdempotentOffHaveNoWalletOrClockSideEffects()
    {
        ForestRuntimeAcceptance.IsGaming = false;
        var encoded = SaveArchive.Encode(client.State); float timeScale = Time.timeScale;
        var skin = Skin_manager.instance; var original = skin.Selected_num; skin.Selected_num = 2;
        settings.EcoMode_Change();
        Assert.That(Setting.is_eco && settings.EcoPanel_obj.activeSelf && Cat_manager.is_Shoot_Mute, Is.True);
        Assert.That(settings.Camera_obj.activeSelf, Is.False); Assert.That(settings.EcoMode_Btn_img.color, Is.EqualTo(settings.ExoMode_Color_Able));
        Assert.That(settings.EcoCat_img.sprite, Is.SameAs(skin.Skin_sprites[2]));
        settings.EcoMode_Off();
        Assert.That(Setting.is_eco || Cat_manager.is_Shoot_Mute || settings.EcoPanel_obj.activeSelf, Is.False);
        Assert.That(settings.Camera_obj.activeSelf, Is.True); Assert.That(settings.EcoMode_Btn_img.color, Is.EqualTo(settings.ExoMode_Color_Disable));
        skin.Selected_num = original; var spriteBefore = settings.EcoCat_img.sprite; settings.EcoMode_Off();
        Assert.That(settings.EcoCat_img.sprite, Is.SameAs(spriteBefore), "Already-off native helper must not reload the sprite");
        Assert.That(SaveArchive.Encode(client.State), Is.EqualTo(encoded)); Assert.That(Time.timeScale, Is.EqualTo(timeScale));
        yield return null;
    }
    [UnityTest] public IEnumerator OriginalButtonEntersAndExitsWhileRealAutomaticShotsContinueEarning()
    {
        var eco = settings.EcoMode_Btn_img.gameObject;
        var frames = (Dictionary<SfxType,int>)typeof(Sound_manager).GetField("lastPlayedFrame", BindingFlags.Instance | BindingFlags.NonPublic).GetValue(Sound_manager.instance);
        yield return Click(eco); Assert.That(Setting.is_eco, Is.True);
        int frameBefore = frames.TryGetValue(SfxType.Shoot, out int f) ? f : -1;
        int treesBefore = client.Forest.TreeCount_Now; var moneyBefore = client.State.Money.Value; var position = client.Hero.transform.position;
        float timeBefore = client.Forest.GameTime_Now;
        var musicVolume = Sound_manager.instance.bgmSource.volume;
        yield return new WaitForSeconds(.5f);
        Directory.CreateDirectory(Report("visual")); ScreenCapture.CaptureScreenshot(Report("visual/eco-mode-original-mask-gpu.png"));
        float deadline = Time.realtimeSinceStartup + 15;
        while (client.Forest.TreeCount_Now == treesBefore && Time.realtimeSinceStartup < deadline) yield return null;
        Assert.That(client.Forest.TreeCount_Now, Is.LessThan(treesBefore), "Automatic projectiles must kill a real original tree while the main camera is disabled");
        Assert.That(client.State.Money.Value.CompareTo(moneyBefore), Is.GreaterThan(0));
        Assert.That(Vector3.Distance(client.Hero.transform.position, position), Is.GreaterThan(.1f));
        Assert.That(client.Forest.GameTime_Now, Is.LessThan(timeBefore)); Assert.That(Time.timeScale, Is.EqualTo(1));
        Assert.That(frames.TryGetValue(SfxType.Shoot, out f) ? f : -1, Is.EqualTo(frameBefore), "Native shoot gates must skip sound bookkeeping");
        Assert.That(Sound_manager.instance.bgmSource.volume, Is.EqualTo(musicVolume));
        Assert.That(client.Hero.joystick.Direction, Is.EqualTo(Vector2.zero));
        yield return Click(eco); Assert.That(Setting.is_eco, Is.False); Assert.That(settings.Camera_obj.activeInHierarchy, Is.True);
        ScreenCapture.CaptureScreenshot(Report("visual/eco-mode-return-forest-gpu.png")); yield return new WaitForSeconds(.2f);
        File.WriteAllText(Report("eco-mode-natural-combat-observation.json"), JsonUtility.ToJson(new Observation { treesBefore = treesBefore, treesAfter = client.Forest.TreeCount_Now, moved = true, earned = true, timerContinued = true, shootMutedOnly = true, realInputModule = true, isolatedProfile = true }, true));
    }
    [Serializable] private sealed class Observation { public int treesBefore, treesAfter; public bool moved, earned, timerContinued, shootMutedOnly, realInputModule, isolatedProfile; }
    [UnityTest] public IEnumerator OriginalSettingsMenuAndThreeAudioControlsUseRealInputWithoutChangingUserPreferences()
    {
        ForestRuntimeAcceptance.IsGaming = false;
        yield return Click(Named("Setting_Btn")); Assert.That(Named("Setting_UI").activeInHierarchy, Is.True);
        ScreenCapture.CaptureScreenshot(Report("visual/eco-restored-settings-gpu.png")); yield return new WaitForSeconds(.2f);
        bool bgm = settings.is_BGM_Mute, sfx = settings.is_SFX_Mute, vibration = settings.is_Vibration_Mute;
        foreach (string name in new[] { "BGM_Btn", "SFX_Btn", "Vibration_Btn" }) yield return Click(Named(name));
        Assert.That(settings.is_BGM_Mute, Is.EqualTo(!bgm)); Assert.That(settings.is_SFX_Mute, Is.EqualTo(!sfx)); Assert.That(settings.is_Vibration_Mute, Is.EqualTo(!vibration));
        Assert.That(settings.BGM_ON_obj.activeSelf, Is.EqualTo(!settings.is_BGM_Mute)); Assert.That(settings.BGM_OFF_obj.activeSelf, Is.EqualTo(settings.is_BGM_Mute));
        Assert.That(settings.SFX_ON_obj.activeSelf, Is.EqualTo(!settings.is_SFX_Mute)); Assert.That(settings.SFX_OFF_obj.activeSelf, Is.EqualTo(settings.is_SFX_Mute));
        Assert.That(settings.Vibration_ON_obj.activeSelf, Is.EqualTo(!settings.is_Vibration_Mute)); Assert.That(settings.Vibration_OFF_obj.activeSelf, Is.EqualTo(settings.is_Vibration_Mute));
        Assert.That(Sound_manager.instance.bgmSource.volume, Is.EqualTo(settings.is_BGM_Mute ? 0 : 1));
        var close = Named("Setting_UI").GetComponentsInChildren<Button>(true).Single(b => b.name == "Close_Btn"); yield return Click(close.gameObject);
        Assert.That(Named("Setting_UI").activeSelf, Is.False);
        yield return Click(Named("Setting_Btn"));
        foreach (string name in new[] { "BGM_Btn", "SFX_Btn", "Vibration_Btn" }) yield return Click(Named(name));
        yield return Click(close.gameObject);
        Assert.That(PlayerPrefs.GetString(PreferenceKey, string.Empty), Is.EqualTo(preferencesBefore));
    }
    [UnityTest] public IEnumerator OriginalHatchScrollAndTwoSourceTweensAnimateAndRestartOnReopening()
    {
        ForestRuntimeAcceptance.IsGaming = false; settings.EcoMode_Change();
        var scroll = settings.EcoPanel_obj.GetComponentInChildren<Scrolling>(); Assert.That(scroll.Speed, Is.EqualTo(new Vector2(-.1f, -.1f)));
        var raw = scroll.GetComponent<RawImage>(); var uv = raw.uvRect;
        var tweens = settings.EcoPanel_obj.GetComponentsInChildren<EcoTween>(); Assert.That(tweens.Length, Is.EqualTo(2));
        var scale = tweens.Single(t => t.Scale); var text = tweens.Single(t => !t.Scale);
        Assert.That((scale.Duration, scale.To), Is.EqualTo((1f, new Vector3(1.05f,.85f,1)))); Assert.That((text.Duration, text.To), Is.EqualTo((2f,new Vector3(0,120,0))));
        yield return new WaitForSeconds(.35f);
        Assert.That(raw.uvRect.x, Is.LessThan(uv.x)); Assert.That(raw.uvRect.y, Is.LessThan(uv.y));
        Assert.That(Vector3.Distance(scale.transform.localScale, scale.From), Is.GreaterThan(.001f)); Assert.That(Vector3.Distance(((RectTransform)text.transform).anchoredPosition3D,text.From), Is.GreaterThan(.01f));
        settings.EcoMode_Off(); Assert.That(scale.transform.localScale, Is.EqualTo(scale.From));
        settings.EcoMode_Change(); Assert.That(scale.transform.localScale, Is.EqualTo(scale.From)); settings.EcoMode_Off();
    }
    [UnityTest] public IEnumerator SceneUnloadClearsRuntimeModeAndColdReloadKeepsOrdinarySaveAndCamera()
    {
        client.SaveNow(); var saved = new SaveArchive(folder).Load(); var money = saved.Money.Value;
        settings.EcoMode_Change(); yield return SceneManager.LoadSceneAsync("TargetPreview");
        Assert.That(Setting.instance, Is.Null); Assert.That(Setting.is_eco || Cat_manager.is_Shoot_Mute, Is.False);
        yield return SceneManager.LoadSceneAsync("GameClient"); yield return ClientStartupWait.Ready();
        client = GameClient.Instance; settings = Setting.instance;
        Assert.That(Setting.is_eco, Is.False); Assert.That(settings.Camera_obj.activeInHierarchy, Is.True); Assert.That(settings.EcoPanel_obj.activeSelf, Is.False);
        Assert.That(client.State.Money.Value.CompareTo(money), Is.Zero);
    }
    [UnityTest] public IEnumerator AllFiveActualModeEntriesExitEcoBeforeArenaSetupAndReturnWithCamera()
    {
        foreach (int mode in new[] { 1, 2, 3, 4, 5 })
        {
            if (mode != 1)
            {
                module.inputOverride = null;
                yield return SceneManager.LoadSceneAsync("GameClient"); yield return ClientStartupWait.Ready();
                client = GameClient.Instance; settings = Setting.instance;
                module = EventSystem.current.GetComponent<StandaloneInputModule>();
            }
            if (mode == 5) client.RaidMode.Gun_Auto_Select();
            settings.EcoMode_Change(); Assert.That(settings.Camera_obj.activeSelf, Is.False);
            switch (mode)
            {
                case 1: client.SpeedRun.Game_Enter(); break;
                case 2: client.MineMode.Game_Enter(); break;
                case 3: client.BossMode.Game_Enter(); break;
                case 4: client.MonsterMode.Game_Enter(); break;
                case 5: client.RaidMode.Game_Enter_Normal(); break;
            }
            Assert.That(client.Mode, Is.EqualTo(mode), "Original available entry must begin: " + mode);
            Assert.That(Setting.is_eco || settings.EcoPanel_obj.activeSelf || Cat_manager.is_Shoot_Mute, Is.False, "Native mode entry must exit eco: " + mode);
            Assert.That(settings.Camera_obj.activeInHierarchy && Camera.main != null, Is.True);
            yield return new WaitForSeconds(2.3f);
            switch (mode)
            {
                case 1: client.SpeedRun.Game_Exit(); break;
                case 2: client.MineMode.Game_Exit(); break;
                case 3: client.BossMode.Game_Exit(); break;
                case 4: client.MonsterMode.Game_Exit(); break;
                case 5: client.RaidMode.Game_Exit(); break;
            }
            float deadline = Time.realtimeSinceStartup + 15;
            while ((!client.ReadyForPlay || client.Mode != 0 || client.IsTransitioning) && Time.realtimeSinceStartup < deadline) yield return null;
            yield return new WaitForSeconds(.25f);
            Assert.That(client.Mode, Is.Zero); Assert.That(settings.Camera_obj.activeInHierarchy, Is.True); Assert.That(Setting.is_eco, Is.False);
        }
    }
}
