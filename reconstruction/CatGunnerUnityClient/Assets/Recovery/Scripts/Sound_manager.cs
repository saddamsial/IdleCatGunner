using System;
using System.Collections.Generic;
using UnityEngine;

// Native control flow and original serialized catalogue, vc257.
// Recovery scenes retain the original catalogue. RecoveredClient uses the
// user-requested PenguinAudio replacements via the Editor installer.
public sealed class Sound_manager : MonoBehaviour
{
    public static Sound_manager instance { get; private set; }
    [SerializeField] public AudioSource sfxSource, bgmSource;
    [SerializeField] private SfxEntry[] sfxEntries;
    [SerializeField] private bool blockSameFrameDuplicate = true;
    [SerializeField] private bool blockCooldownDuplicate = true;
    [SerializeField] private float cooldownSeconds = 0.05f;
    private readonly Dictionary<SfxType,SfxEntry> sfxMap = new Dictionary<SfxType,SfxEntry>();
    private readonly Dictionary<SfxType,int> lastPlayedFrame = new Dictionary<SfxType,int>();
    private readonly Dictionary<SfxType,float> lastPlayedTime = new Dictionary<SfxType,float>();
    public AudioClip BGM_main, BGM_contents;
    private int lastActionSoundFrame = -1;
    private int pendingClickFrame = -1;
    private SfxType pendingClickSound;
    public int PlayedSfxCount { get; private set; }
    public SfxType LastPlayedSfx { get; private set; }

    private void Awake()
    {
        // 0x2b223c0: destroy duplicate, retain entries with clips, create SFX source only if absent.
        if (instance != null && instance != this) { Destroy(gameObject); return; }
        instance = this;
        sfxMap.Clear();
        foreach (var entry in sfxEntries)
            if (entry != null && entry.clip != null) sfxMap[entry.type] = entry;
        if (sfxSource != null) return;
        sfxSource = gameObject.AddComponent<AudioSource>();
        sfxSource.playOnAwake = false;
        sfxSource.loop = false;
    }

    public void ApplyBGMMute(bool mute)
    {
        // Native 0x2b2029c: Unity Object null check, then AudioSource.volume = mute ? 0 : 1.
        if (bgmSource == null) return;
        bgmSource.volume = mute ? 0f : 1f;
    }

    public void PlaySfx(SfxType id, float? volumeOverride = null, float pitch = 1f)
    {
        // 0x2b1f10c. Preserve frame bookkeeping BEFORE the cooldown check.
        if (Setting.instance != null && Setting.instance.is_SFX_Mute) return;
        if (!sfxMap.TryGetValue(id,out var entry)) return;
        if (blockSameFrameDuplicate)
        {
            int frame = Time.frameCount;
            if (lastPlayedFrame.TryGetValue(id,out var previous) && previous == frame) return;
            lastPlayedFrame[id] = frame;
        }
        if (blockCooldownDuplicate)
        {
            float now = Time.unscaledTime;
            if (lastPlayedTime.TryGetValue(id,out var previous) && now - previous < cooldownSeconds) return;
            lastPlayedTime[id] = now;
        }
        float volume = volumeOverride ?? entry.volume;
        float previousPitch = sfxSource.pitch;
        sfxSource.pitch = pitch;
        sfxSource.PlayOneShot(entry.clip,volume);
        sfxSource.pitch = previousPitch;
        PlayedSfxCount++;
        LastPlayedSfx = id;
        if (id != SfxType.Shoot && id != SfxType.Tick && id != SfxType.Pop && id != SfxType.Spawn)
            lastActionSoundFrame = Time.frameCount;
    }

    // Business callbacks may already play purchase/rejection/selection sounds.
    // They take precedence over the generic click in that same dispatch frame.
    public void PlayButtonFeedback(SfxType id)
    {
        pendingClickFrame = Time.frameCount;
        pendingClickSound = id;
    }

    private void LateUpdate()
    {
        if (pendingClickFrame < 0) return;
        int frame = pendingClickFrame;
        pendingClickFrame = -1;
        if (lastActionSoundFrame < frame) PlaySfx(pendingClickSound);
    }

    public void BGM_Change_Main()
    {
        // 0x2b22750: identical clip means no restart.
        if (bgmSource.clip == BGM_main) return;
        bgmSource.clip = BGM_main;
        bgmSource.Play();
    }

    public void BGM_Change_SpeedRun()
    {
        // 0x2b226a0: identical clip means no restart.
        if (bgmSource.clip == BGM_contents) return;
        bgmSource.clip = BGM_contents;
        bgmSource.Play();
    }
}

// Original enum constants decoded from matching field-default metadata, not field order guesses.
public enum SfxType
{
    Pop=0, Button=1, Spawn=2, Fusion=3, Upgrade=4, Dont=5, Rebirth=6, Purchase=7,
    Shoot=8, Select=9, Enter=10, Win=11, Fail=12, UnSelect=13, Tick=14,
    StarUpgrade_Success=15, StarUpgrade_Fail=16
}

[Serializable] public sealed class SfxEntry
{
    public SfxType type;
    public AudioClip clip;
    public float volume;
}
