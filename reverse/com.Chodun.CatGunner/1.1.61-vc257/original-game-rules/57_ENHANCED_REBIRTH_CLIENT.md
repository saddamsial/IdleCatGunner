# Rule 57 — Enhanced rebirth original UI and animation settlement

Target: phone-extracted `com.Chodun.CatGunner 1.1.61 / vc257 / ARM64`; existing Unity `6000.4.10f1`. Ads and payments below are the user's authorized **local simulators**, with no SDK, network, real charge, production receipt or entitlement.

## Exact native rules

`Rebirth_manager.Today_str_return` uses `Time_manager.Now`, `yyyyMMdd` and invariant culture. Its native literal is decoded from preferred pointer `0x5d5d3e0`. `UpgradeRebirth_DayCheck` compares date keys for inequality and resets both use counters when they differ. Ad use is available while `UpgradeRebirth_UseCount < 1`. Paid use additionally needs `Stage_Value_Max > 989` and `UpgradeRebirth_IAP_UseCount < 1`. Both confirmation entries reject forest stages below 2.

The panel shows the ad branch while the ad count is below 1; afterward it shows the paid branch if eligible, otherwise the original used branch. Ordinary and enhanced reward previews are the existing stage/wave reward and that reward multiplied by **3**. Native ad confirmation uses reward-ad type **8**. Only its completion starts the original FX. The original animation clip invokes `Rebirth` at **2 seconds**; that event awards Ruby, resets ordinary money/forest/upgrades, increments the rebirth mission, closes the original pages and saves. Ad use is incremented at settlement. Paid use is incremented and saved separately at purchase completion, without consuming the ad counter.

Native query scope: 14 business methods and 6 shared exception helpers, all byte/bound/hash checked and complete. Four business methods are first queries across all historical folders; ten are re-exports. The declared verification-folder union becomes 882 addresses from 868. Query counts are not recovered behavior counts or a whole-game percentage. See `reports/enhanced-rebirth-native-contract.json` and `native-enhanced-rebirth-client-reviewed/`.

## Original presentation and local adapters

The existing RubyUpgrade_UI, three confirmation popups, their sprites, RectTransforms and original persistent callbacks are retained. The exported ad-confirmation callback has a missing/excluded target. Bind adds a runtime listener to this same button, plus a runtime-only page revision component. The existing paid button is now reachable through its original confirmation popup and uses the existing local purchase simulator with a visible-page guard. No scene save or new artwork is needed.

`Rebirth.controller` and `rebirth.anim`, including their meta files, byte-match the immutable AssetRipper baseline. PlayMode actual clicks trigger the real Animator event without calling settlement manually. The captured transition is the original animation's circular white overlay; the screenshots prove it renders in this Editor, not original-device parity or full VFX completion.

The local simulator completes on a separate frame. Disabling/cancelling simulation, duplicate requests, popup close/reopen, changed date/mode and direct unauthorized callbacks cannot grant a reward. Pending enhanced reward is held only after local success. Interrupting the ad FX clears that pending flag without consuming the ad quota or leaking triple rewards into an ordinary rebirth. These guards and the visible-page availability observer are deliberate local adapter behavior, not new native-method claims.

The previous recovery build stored ISO dates for paid rebirth. Those dates normalize to their same `yyyyMMdd` calendar day for comparison, preserving already-used quotas. New writes use the native format. The trusted original time service is unavailable; this build uses the existing local clock adapter. The existing 5-significant-digit decimal reward adapter remains, rather than full original commercial InfVal arithmetic.

## Verification and remaining work

Current independent complete runs, current source hashes, original animation byte checks, GPU frames, protected scene/meta/package/save records and final Editor state are recorded in `reports/enhanced-rebirth-evidence.json`. The pre-implementation 0/1 failure is retained separately. Tests use GUID save folders and a SessionState host, followed by host removal; user main and backup are protected throughout.

Rule58 subsequently restores the temporary timed weapon offer. The pending list below records the Rule57 handoff.

Temporary weapons, complete I2/localization/UI/tutorial/VFX coverage, original commercial services/FreeCash/accounts/backend/trusted time and Player/device acceptance remain open. No APK or Git delivery is part of this slice. Full-game `scopeComplete=false`.
