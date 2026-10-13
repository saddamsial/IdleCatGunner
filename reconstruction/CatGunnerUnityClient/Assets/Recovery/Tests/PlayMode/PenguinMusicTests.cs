using System;
using System.Collections;
using System.IO;
using System.Linq;
using System.Reflection;
using CatGunner.Recovery;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class PenguinMusicTests
{
    RecoveryForestClient client; string folder; bool background;
    void Isolate(Scene s, LoadSceneMode mode)
    { if(s.name=="RecoveredClient")s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride=folder; }
    [UnitySetUp] public IEnumerator Setup()
    {
        Time.timeScale=1;background=Application.runInBackground;Application.runInBackground=true;
        folder=Path.Combine(Application.temporaryCachePath,"PenguinMusic-"+Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded+=Isolate;yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();yield return null;
        client=RecoveryForestClient.Instance;client.DailyLogin.AutoShow=false;client.DailyLogin.Close();client.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;
        Setting.instance.PersistPreferences=false;Setting.instance.is_BGM_Mute=false;Sound_manager.instance.ApplyBGMMute(false);
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        Time.timeScale=1;yield return SceneManager.LoadSceneAsync("RecoveredTarget");SceneManager.sceneLoaded-=Isolate;
        if(Directory.Exists(folder))Directory.Delete(folder,true);Application.runInBackground=background;
    }
    [UnityTest] public IEnumerator NewCatalogueStartsOnlyNewMusicAndEachStreamingTrackLoopsWithoutRestartingSameSelection()
    {
        var sound=Sound_manager.instance;var source=sound.bgmSource;
        var entries=(SfxEntry[])typeof(Sound_manager).GetField("sfxEntries",BindingFlags.Instance|BindingFlags.NonPublic).GetValue(sound);
        Assert.That(entries.Length,Is.EqualTo(17));foreach(var e in entries)Assert.That(e.clip.name,Is.EqualTo("Ice_"+e.type));
        Assert.That(sound.BGM_main.name,Is.EqualTo("Penguin_SnowfieldStroll"));Assert.That(sound.BGM_contents.name,Is.EqualTo("Penguin_CrystalExpedition"));
        Assert.That(source.clip,Is.SameAs(sound.BGM_main));Assert.That(source.isPlaying,Is.True);Assert.That(source.loop,Is.True);
        foreach(var clip in new[]{sound.BGM_main,sound.BGM_contents})
        {
            Assert.That(clip.loadType,Is.EqualTo(AudioClipLoadType.Streaming));Assert.That(clip.channels,Is.EqualTo(2));Assert.That(clip.frequency,Is.EqualTo(44100));
            if(clip==sound.BGM_main)sound.BGM_Change_Main();else sound.BGM_Change_SpeedRun();
            source.time=3;yield return new WaitForSecondsRealtime(.15f);float before=source.time;
            if(clip==sound.BGM_main)sound.BGM_Change_Main();else sound.BGM_Change_SpeedRun();
            Assert.That(source.time,Is.GreaterThanOrEqualTo(before-.05f),"Repeated selection keeps playback position");
            source.time=clip.length-.2f;yield return new WaitForSecondsRealtime(.6f);
            Assert.That(source.isPlaying,Is.True);Assert.That(source.time,Is.LessThan(1.5f),"Streaming clip wrapped across its real end");
            Assert.That(source.clip,Is.SameAs(clip));
        }
        Assert.That(UnityEngine.Object.FindObjectsByType<AudioSource>(FindObjectsInactive.Include).Length,Is.EqualTo(2),"Only SFX and BGM channels");
    }
    [UnityTest] public IEnumerator MusicMuteStaysIndependentFromSfxAndRemainsMutedDuringTrackSwitch()
    {
        var sound=Sound_manager.instance;Setting.instance.is_SFX_Mute=false;
        Setting.instance.is_BGM_Mute=true;sound.ApplyBGMMute(true);Assert.That(sound.bgmSource.volume,Is.Zero);
        sound.BGM_Change_SpeedRun();yield return null;Assert.That(sound.bgmSource.volume,Is.Zero);
        int before=sound.PlayedSfxCount;sound.PlaySfx(SfxType.Button);Assert.That(sound.PlayedSfxCount,Is.EqualTo(before+1));
        sound.BGM_Change_Main();yield return null;Assert.That(sound.bgmSource.volume,Is.Zero);
        Setting.instance.is_BGM_Mute=false;sound.ApplyBGMMute(false);Assert.That(sound.bgmSource.volume,Is.EqualTo(1));
        Setting.instance.is_SFX_Mute=true;before=sound.PlayedSfxCount;sound.PlaySfx(SfxType.Pop);Assert.That(sound.PlayedSfxCount,Is.EqualTo(before));
        Assert.That(sound.bgmSource.isPlaying,Is.True);Assert.That(sound.bgmSource.volume,Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator AllFiveActualModeControllersSwitchToNewCombatMusicAndReturnToNewMainMusic()
    {
        // Temporary profile only. Suppress combat damage so the fixture measures
        // entry/exit music rather than results/rewards or starter-gear balance.
        foreach(var cat in client.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;
        var sound=Sound_manager.instance;
        Action[] enter={client.SpeedRun.Game_Enter,client.MineMode.Game_Enter,client.BossMode.Game_Enter,client.MonsterMode.Game_Enter,client.RaidMode.Game_Enter_Normal};
        Action[] exit={client.SpeedRun.Game_Exit,client.MineMode.Game_Exit,client.BossMode.Game_Exit,client.MonsterMode.Game_Exit,client.RaidMode.Game_Exit};
        for(int i=0;i<enter.Length;i++)
        {
            ForestRuntimeAcceptance.IsGaming=false;enter[i]();
            float deadline=Time.realtimeSinceStartup+20;
            while(sound.bgmSource.clip!=sound.BGM_contents&&Time.realtimeSinceStartup<deadline)yield return null;
            Assert.That(client.Mode,Is.EqualTo(i+1));Assert.That(sound.bgmSource.clip,Is.SameAs(sound.BGM_contents));Assert.That(sound.bgmSource.isPlaying,Is.True);
            exit[i]();Assert.That(sound.bgmSource.clip,Is.SameAs(sound.BGM_main));
            yield return new WaitForSecondsRealtime(2.3f);
            Assert.That(client.Mode,Is.Zero);Assert.That(sound.bgmSource.clip,Is.SameAs(sound.BGM_main));Assert.That(sound.bgmSource.isPlaying,Is.True);
        }
    }
}
