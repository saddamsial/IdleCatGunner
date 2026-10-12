# Rule 55 — vc257 short Buff client

Target: phone-extracted `com.Chodun.CatGunner 1.1.61 / vc257 / ARM64`. The old root XAPK is unrelated. Working Editor: Unity 6000.4.10f1. Native pseudocode is evidence, not the original C# source.

## Verified native behavior

`Money=0`, `Power=1`, `AtkSpeed=2`. Each reward adds 300 scaled seconds to its own timer, capped at 900. Load clamps each timer to 0–900. Inactive effects return 1; an individually active effect returns 3; all three active effects return 4. The owned permanent Buff pack makes all effects 4 and freezes the stored timers. Permanent remaining time returns -1, shows a full bar and empty time, and hides the ad button. Ordinary bar fill is remaining/900; at 900 the original ad button remains available.

Native `BuffTickCoroutine.MoveNext` subtracts `Time.deltaTime`, independent of whether forest combat or a popup is active. A timescale-zero pause stops the timer. Three original save fields load through `LoadData.ContinueLoad -> LoadBuffTimes`; that chain contains no wall-clock subtraction. The runtime adapter uses `Update` for the same scaled-timer behavior.

Money gain uses Money; ordinary/Boss expected damage uses Power; attack cooldown uses AtkSpeed. Boss and Monster previews retain their existing exclusion of forest upgrades. SpeedRun uses its existing damage snapshot and the separate speed multiplier. Upgrade HUD mapping is `[Power, AtkSpeed, Money]`, read from the native table `[1,2,0]`; native icons, fill/panel colors and `x{0}` text are restored.

Native reward placements are `[0,1,14]`, read from preferred VA `0x10b052c`. Remaining format is `{0}:{1:D2}`, resolved through original metadata; the seconds helper resolves to ELF `fmodf` with divisor 60. All method addresses, first16 bytes, independent boundaries and SHA values are in `reports/short-buff-native-contract.json`: 49 completed queries, 43 selected methods plus 6 shared exception helpers.

## Restored UI and local adapters

120 original popup/HUD objects and five original Buff components were moved from a new source slice through Unity Editor APIs. Original sprites, fields and ad/open/close callbacks are retained. The original two Mine buttons use `AD_SpeedBuff_Watch`: placement14, then refresh and `Mine.Game_Start`. The existing local mode2 guard is retained when this callback is invoked from the mode0 entrance page; no ticket consumption or mode entry is invented.

Rewarded ads and cash purchases remain the user's authorized local simulators. Page revision, mode, in-flight and cancellation guards reject stale or duplicate callbacks. No real payment, SDK, receipt, FreeCash promotional entitlement or backend is connected. The three original Explain terms retain all14 translations, with the existing explicit system-language adapter; full I2 is pending. The imported Buff popup’s permanent-pack purchase callback has no recovered target and remains disabled; this direct purchase entry is pending, although existing local-store simulation and the owned-pack effect are retained.

## Verification and preservation

Final complete runs are recorded separately in `reports/short-buff-evidence.json`; they are not one combined suite. Initial missing-menu failure, first 8/9 run, pre-HUD 9/9, added HUD failure and intermediate Boss run remain as historical evidence. The first UI failure was a fixture attempting the next button before its one-frame busy-state refresh; a frame was added between simulated clicks.

Three final GPU frames were actually viewed: inactive popup, three-ad super popup with countdown, and permanent popup with hidden ads. The document audit preserves all133435 prior identities and all existing Rect values/relative sibling order. Six existing documents change deliberately: two parent child lists, the client Buff reference, one previously missing tutorial reference and two Mine ad-button interactability flags. Unity remapped 14 local IDs with references preserved; original callbacks stay byte-equivalent after remapping. There are 120 new objects / 462 new document identities, and zero missing scripts.

External disk exhaustion interrupted scene saves. Failed task-generated temporary scenes were preserved as verified gzip files; byte-identical immutable screenshot checkpoint copies were deduplicated without using live screenshot outputs as canonical files. Original package/native/metadata, user main/backup and existing GUIDs remain protected. Unity's driven layout cache required restoring all seven prior Left_Menu Rect records through Editor serialization APIs, with no forced rebuild between enabling the layout group and saving. `tools/RepairShortBuffLayout.cs` and its input preserve this operation for review.

No APK, device acceptance, Git commit or push is part of this turn. Read the final evidence report for exact batch counts, clean Editor state and preservation checks.

Rule56 subsequently connects the Buff-popup permanent-pack entry and confirms that the reviewed native offline snapshot excludes temporary timers. The pending list below records the Rule55 handoff.

## Still pending

Temporary-Buff effects in the offline-simulation formula are not asserted recovered; that adapter still only applies the permanent pack. Temporary guns, ad rebirth, complete I2/UI/services/FreeCash/trusted time, advanced skeletal deformation/energy meshes/VFX, one remaining tutorial HUD, and Player/device acceptance remain outside this completed slice. Full-game `scopeComplete` remains false.
