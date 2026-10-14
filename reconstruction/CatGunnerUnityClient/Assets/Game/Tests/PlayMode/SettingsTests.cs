using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using System.Linq;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;

public sealed class SettingsTests
{
    private const string SaveKey = "reconstruction.com.Chodun.CatGunner.settings.v1";

    [UnityTest]
    public IEnumerator OriginalAudioCatalogueMuteDuplicateLimitsAndBgmSwitching()
    {
        yield return TestSceneLoader.LoadAsync("Settings");
        yield return null;
        var sound = Sound_manager.instance;
        Assert.That(sound, Is.Not.Null);
        T Read<T>(string name) => (T)typeof(Sound_manager).GetField(name,BindingFlags.NonPublic|BindingFlags.Instance).GetValue(sound);
        var entries = Read<SfxEntry[]>("sfxEntries");
        Assert.That(entries.Length, Is.EqualTo(17));
        Assert.That(entries.Select(e => (int)e.type), Is.EquivalentTo(Enumerable.Range(0,17)));
        foreach (var entry in entries) Assert.That(entry.clip.samples, Is.GreaterThan(0), entry.type.ToString());
        Assert.That(sound.BGM_main.name, Is.EqualTo("Relaxed_7_BlossomDrift"));
        Assert.That(sound.BGM_contents.name, Is.EqualTo("Cute_5_MilkShake"));
        Assert.That(sound.BGM_main.length, Is.EqualTo(121.26315f).Within(0.001f));
        Assert.That(sound.BGM_contents.length, Is.EqualTo(105f).Within(0.001f));
        var frames = Read<Dictionary<SfxType,int>>("lastPlayedFrame");
        var times = Read<Dictionary<SfxType,float>>("lastPlayedTime");
        var settings = Setting.instance;
        bool originalMute = settings.is_SFX_Mute;
        try
        {
            settings.is_SFX_Mute = true;
            sound.PlaySfx(SfxType.Shoot);
            Assert.That(frames.ContainsKey(SfxType.Shoot), Is.False, "Muted input must not consume duplicate limits");
            Assert.That(times.ContainsKey(SfxType.Shoot), Is.False);
            settings.is_SFX_Mute = false;
            sound.sfxSource.pitch = 0.8f;
            sound.PlaySfx(SfxType.Shoot,0.4f,1.25f);
            Assert.That(sound.sfxSource.pitch, Is.EqualTo(0.8f), "OneShot restores prior source pitch");
            Assert.That(frames[SfxType.Shoot], Is.EqualTo(Time.frameCount));
            float firstTime = times[SfxType.Shoot];
            sound.PlaySfx(SfxType.Shoot);
            Assert.That(times[SfxType.Shoot], Is.EqualTo(firstTime));
            yield return null;
            // Set a recent timestamp explicitly so slow CI frames cannot invalidate this boundary check.
            times[SfxType.Shoot] = Time.unscaledTime;
            sound.PlaySfx(SfxType.Shoot);
            Assert.That(frames[SfxType.Shoot], Is.EqualTo(Time.frameCount), "Frame is recorded before cooldown rejection");
            Assert.That(times[SfxType.Shoot], Is.EqualTo(Time.unscaledTime));
            yield return null;
            times[SfxType.Shoot] = Time.unscaledTime - 0.06f;
            sound.PlaySfx(SfxType.Shoot);
            Assert.That(times[SfxType.Shoot], Is.EqualTo(Time.unscaledTime), "Cooldown permits input after its boundary");
            sound.BGM_Change_Main();
            Assert.That(sound.bgmSource.clip, Is.SameAs(sound.BGM_main));
            sound.bgmSource.time = 2f;
            sound.BGM_Change_Main();
            Assert.That(sound.bgmSource.time, Is.EqualTo(2f).Within(0.01f), "Same BGM must not restart");
            sound.BGM_Change_SpeedRun();
            Assert.That(sound.bgmSource.clip, Is.SameAs(sound.BGM_contents));
            sound.bgmSource.time = 3f;
            sound.BGM_Change_SpeedRun();
            Assert.That(sound.bgmSource.time, Is.EqualTo(3f).Within(0.01f));
        }
        finally { settings.is_SFX_Mute = originalMute; }
    }

    [UnityTest]
    public IEnumerator OriginalPersistentButtonsToggleTheirOriginalIndicatorsAndBgmSource()
    {
        bool hadSave = PlayerPrefs.HasKey(SaveKey);
        string save = PlayerPrefs.GetString(SaveKey);
        try
        {
            yield return TestSceneLoader.LoadAsync("Settings");
            yield return null;
            var settings = Object.FindAnyObjectByType<Setting>();
            Assert.That(settings, Is.Not.Null, "Original Setting component identity");
            var buttons = Object.FindObjectsByType<Button>(FindObjectsInactive.Include);
            var names = new[] {"BGM_Setting_Change","SFX_Setting_Change","Vibration_Setting_Change"};
            var flags = new System.Func<bool>[] {() => settings.is_BGM_Mute, () => settings.is_SFX_Mute, () => settings.is_Vibration_Mute};
            var ons = new[] {settings.BGM_ON_obj,settings.SFX_ON_obj,settings.Vibration_ON_obj};
            var offs = new[] {settings.BGM_OFF_obj,settings.SFX_OFF_obj,settings.Vibration_OFF_obj};
            for (int index = 0; index < names.Length; index++)
            {
                string name = names[index];
                var button = buttons.Single(b => Enumerable.Range(0,b.onClick.GetPersistentEventCount())
                    .Any(i => b.onClick.GetPersistentTarget(i)==settings && b.onClick.GetPersistentMethodName(i)==name));
                Assert.That(button.interactable, Is.True, "Original button enabled: " + name);
                bool before = flags[index]();
                button.onClick.Invoke();
                Assert.That(flags[index](), Is.EqualTo(!before), name);
                Assert.That(ons[index].activeSelf, Is.EqualTo(before), name + " ON original reference");
                Assert.That(offs[index].activeSelf, Is.EqualTo(!before), name + " OFF original reference");
                string first = PlayerPrefs.GetString(SaveKey);
                Assert.That(first, Is.Not.Empty);
                button.onClick.Invoke();
                Assert.That(flags[index](), Is.EqualTo(before), "Repeated input: " + name);
                Assert.That(PlayerPrefs.GetString(SaveKey), Is.Not.EqualTo(first), "Persisted changed state: " + name);
            }
            Assert.That(Sound_manager.instance, Is.Not.Null);
            Assert.That(Sound_manager.instance.bgmSource, Is.Not.Null, "Original serialized AudioSource");
            Assert.That(Sound_manager.instance.bgmSource.volume, Is.EqualTo(settings.is_BGM_Mute ? 0f : 1f));
            bool persistedBgm = settings.is_BGM_Mute;
            yield return TestSceneLoader.LoadAsync("Settings");
            yield return null;
            Assert.That(Object.FindAnyObjectByType<Setting>().is_BGM_Mute, Is.EqualTo(persistedBgm), "Independent local adapter survives scene reload");
        }
        finally
        {
            if (hadSave) PlayerPrefs.SetString(SaveKey,save); else PlayerPrefs.DeleteKey(SaveKey);
            PlayerPrefs.Save();
        }
    }
}
