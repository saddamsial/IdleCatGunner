# Rule 56 — Original Buff-popup local purchase and offline snapshot

Target: phone-extracted com.Chodun.CatGunner 1.1.61 vc257 ARM64; Unity6000.4.10f1. This closes a client entry using the user-authorized local purchase simulator, not an original store SDK or a production entitlement.

## Native and serialized evidence

Original button123680 targets Inapp_Purchase_Popup125109, type3 at native offset0x20. Its Purchase calls Shop_manager.Purchase_Banner. The existing original route maps type3 to buff_pack. Reviewed nonconsumable application grants1000 diamonds once and sets the owned Buff flag; repeated ownership does not repeat that grant. Seven previously completed native methods were rechecked against their exact first16 bytes, method bounds and SHA. No new native queries are counted.

The original InApp & FREECASH group2079 contains overlapping286.19995-high offers: BuffPack (Inapp)1798 starts inactive, FreeCash336 starts active. The first test batch found that merely adding a callback leaves the purchase unavailable. The local adapter now selects the existing IAP artwork and hides the overlapping promotional branch at runtime. Serialized scene bytes, original art, RectTransforms, persistent callback metadata and GUIDs remain intact.

The imported original store callback has no target because its commercial controller is excluded. A runtime RecoveryLocalPurchaseButton and listener bind this existing button to the local model. The purchase is asynchronous by one frame, never charges money, and uses only the separate simulated-purchase ledger. A visible original Alert says that the purchase is simulated. Ownership disables repeated purchases, freezes the existing raw timers, and gives all three effects4x. Page closure/reopening, changed mode, cancellation and disabling simulation reject a pending local request before rewards. Other existing store requests retain their previous behavior. FreeCash/account services remain unavailable.

## Offline rule correction

ARM64 at preferred0x2b0aaf4 reads SaveData.Is_Buff_Pack (+0x1ff); the coroutine stores its selected1/4 coefficient at +0x178, matching <buffMult>5__21. That snapshot feeds clear-time, farm-rate and per-stage calculations. The three temporary SaveData timers (+0x328/0x32c/0x330) are not the coefficient input. Thus the current permanent-only offline modifier matches this reviewed chain; adding live temporary multipliers to it would change the original rule. Ordinary scaled Buff ticking and save-load rules remain in Rule55. Broader original coroutine/manager/time-service parity is a separate boundary.

## Verification and handoff

Read reports/buff-purchase-evidence.json for independently completed batches, actual GPU frames, current source hashes, preservation and final Editor state. The initial2/5 full run is retained in reports/buff-purchase-first-attempt.json, not combined with the corrected run. The first corrected5/5 run is retained as buff-purchase-pre-visual-fixture.json: its available-offer screenshot paused the opening Animator too early. The final5/5 waits for opening before pausing raw timer checks and includes a visible-scale assertion; both final frames were actually viewed. Tests use unique saves plus a protected test-host folder; the user's main and backup must remain byte-identical. No scene save, APK, device acceptance or Git delivery occurs in this slice.

Rule57 subsequently connects ad-enhanced rebirth and its paid confirmation entry. The pending list below records the Rule56 handoff.

Temporary weapons, ad rebirth, remaining I2/UI/tutorials/VFX, original commercial/online services and Player/device acceptance remain pending. Full-game scopeComplete remains false.
