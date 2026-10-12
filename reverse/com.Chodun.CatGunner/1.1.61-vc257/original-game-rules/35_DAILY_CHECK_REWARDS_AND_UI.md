# Rule 35: ordinary DailyCheck, vc257 ARM64

Target is com.Chodun.CatGunner 1.1.61/vc257 only. Original Main.unity, native host and metadata remain frozen. The unrelated XAPK is not an input.

## Native and serialized evidence

`native-daily-check-reviewed/` contains 21 business methods and six exception helper exports; all 27 queries completed. The source component 142665 on GO 28531 binds seven reward components, zero-based Date 0..6. Its original diamond array is [70,200,400,600,800,1000,1500]. The source HUD GO 1511 calls `UI_reload`, rather than Open_Btn. Original DailyCheck and DailyCheck_Reward .meta files are retained.

- is_DateChange requires Time.CanRolloverDaily and LastCheck_Date.Date < Time.Today. Trusted-time authorization is unavailable here.
- Status is Geted when index < CheckNum, Getable when index == CheckNum and date changes, otherwise Normal.
- UI_reload resets CheckNum only when it equals seven and date changes; TotalCheckNum is cumulative. Claim itself does not reset the cycle.
- DailyReward_Get rejects wrong/already-claimed days. Successful ordinary order: Get_Dia(array[index]), Dia_Spawn(reward transform,8), increment both counters, store Time.Today, UI_reload, Purchase sound. Invalid claim plays Dont. Get_Dia adds reward to wallet and three-times reward to _getDia (existing Rule 28 wallet).
- Reward.Reload toggles the two original marker objects; the eligible tile becomes last sibling. Click uses its serialized Date, so sibling movement does not change the rewarded day.
- Native startup waits one frame and trusted-time check up to four seconds, then Try_Show once. OnSynced clamps future local dates before refreshing. Affiliate marketing is separate.

## Implemented route

DailyCheck.Bind loads the ordinary fields only after profile validation. The original scene branches were merged using EditorSceneManager/SceneManager APIs. Source UI artwork, callbacks, layout, BounceStart entrance, BounceBtn input stay on the runtime path. DailyCheck has no original Mute_Panel: shooting audio is not muted by this modal. Unsupported test/affiliate callbacks are disabled. Source affiliate panel and badge are inactive. Ordinary source HUD opens, seven tiles claim, source close dismisses; mode navigation closes this modal via the existing local client bridge.

## Explicit differences and pending work

- Local DateTime.Now.Date replaces Time_manager authority and RecordGain/ForceCheck. No network or time-tamper protection is claimed. Future saved dates deny rewards; the native OnSynced future clamp is not reproduced without its trusted authority.
- Popup waits for loading completion and completed tutorial in the offline client. Original service scheduling is not recovered. Tests suppress this popup only in independent unrelated feature fixtures.
- Missing legacy LastCheck_Date means never claimed. Original saved date strings are retained until claim; newly claimed dates use the project's round-trip ISO adapter. Capture updates counters; independent archive persists them. No original server or global save throttle is claimed.
- Native eight-particle attraction request is recorded, but ParticleImage/Dia_Attraction_Target/Bounce execution is pending. There is no invented diamond animation. Both the original popup Currency and forest wallet text refresh on award; inactive popup unsubscribes and refreshes on reopen through the existing Currency lifecycle. Original Purchase/Dont sounds execute.
- Eight DOTweenAnimation tracks and three I2.Localize components in this slice are pending; original serialized text and artwork remain. Affiliate loading dependency outside the source slice is excluded.
- Full UI/game, Player/device and original side-by-side acceptance remain incomplete.

## Verification

Current test reports, source/save/scene audits and Editor handoff are named `daily-check-*` / `live-daily-check-*`. Zero-case discovery is not a passing test run. Final counts must be recorded after completed nonzero runs.

Acceptance: open RecoveredClient in Unity 6000.4.10f1, finish tutorial if needed, open calendar, claim eligible day, verify changed wallet/checkmark, close/reopen and restart. Same-day duplicate and future-day clicks must not grant diamonds.


## 后续规则36

本页保持该阶段历史验证边界。规则36已接回签到七项/存钱罐两项原参数旋转、本地124527钻石预设以及普通签到8颗Spawn/到账Bounce。Shop_UI目标、其它业务Spawn、推广第8签到Tween、全SDK与I2仍待办；详见36_REWARD_PRESENTATION.md及当前VERIFICATION，不把本页早期测试当当前新全量。
