# Rule 37 — task experience and ordinary season reward presentation

Target: `com.Chodun.CatGunner` 1.1.61 / vc257 / ARM64. This rule uses only this version's bytes and original serialized Main. It has no dependency on the unrelated root XAPK.

## Native and serialized anchors

`native-mission-presentation-reviewed/status.tsv` contains seven business queries and six exception helpers, all byte guarded and exported. Query completion is not whole-class recovery. Reviewed paths:

- `Mission_manager.Mission_Reward_Get` preferred `0x2aa4c5c`: valid ordinary task marks claimed, adds XP, plays SFX7 and calls the experience slider's Bounce. It does not award diamonds. VIP/Luxury/analytics/alert-loop paths are excluded from this slice.
- `Mission_manager.Exp_Get` `0x2a9d264`: exactly level25 skips further XP addition; below25, accumulate and consume100 per level until25. Marking the task claimed remains outside that XP guard.
- `Mission_Exp_Slider.Reload` `0x2b03bd4`: display internal level+1, XP over100 and fill XP/100f. Existing `Lv.` prefix remains the recovery formatting adapter; full I2 formatting has not been recovered.
- `Mission_manager.Reward_Grant` `0x2aa6494`: successful currency/item grant precedes claimed flag, UI reload and SFX7; only type0 calls the selected season slot's diamond presentation. Guns, cores and rejected claims emit none.
- `Mission_Item_UI.Value_Reload` `0x2b03e2c` was additionally reviewed during input diagnosis; ordinary ready/claimed panels change via SetActive, with no native sibling reorder or background raycast mutation. The test must allow the newly enabled Canvas graphics to register before raycasting.
- `Mission_Reward_Slot.Dia_Spawn_Play` `0x2b049e8`: degree0 selects Normal_Reward_item, otherwise Epic_Reward_item; only a non-null item forwards to its presentation. This helper does not grant paid access.
- `Mission_Reward_Item.Dia_Spawn_Play` `0x2b044f8`: require the attraction singleton, choose Dia_obj transform or own transform, require RectTransform, emit8. Effect count is independent of the diamond reward amount.

Original Main components: EXP_Slider125149 / Bounce125150 on GO1831, WantSize0.9 / duration0.2 / source scaleone. Currency138009's original money and diamond text references are restored on its existing original hierarchy. Exact paths and original fields are in `mission-presentation-source-parameters.json`.

## Runtime path

The existing original task button dispatches to `Mission_Item_UI.Reward_Get`: successful model claim, existing SFX7, slider bounce, save. A rejected/duplicate claim neither grants XP nor starts a new bounce.

The existing original ordinary reward button dispatches to `Mission_Reward_Item.Claim`: successful model grant/claimed/UI reload, existing SFX7, type0 slot presentation, save. Eight original diamond sprites use rule36's shared bounded renderer, arrive toward the active window's original target, and call SFX14/Bounce without awarding again. Rejected/order-locked/not-ready/advertising/premium/full-inventory claims and successfully granted guns/cores do not use diamond presentation.

The serialized ordinary reward Button already calls the original slot Normal_Reward_Click. Unity RemoveAllListeners only removes runtime listeners; adding Claim again had caused success followed by rejection SFX5. Bind now retains the valid original callback and adds a fallback only when no active original claim callback exists. Repeated Bind is covered through real input and sound bookkeeping; disabled or unrelated persistent calls do not count as a valid claim route. This is a local bootstrap correction, not an invented native duplicate callback.

The restored Currency uses the existing recovery wallet event. It subscribes only while enabled, reloads current balances on reopen, and unsubscribes on close. `Mission_manager.Bind` binds this original popup wallet.

## Boundaries

The complete original global managers, analytics, reward-scroll and alert-loop families remain open. Shared ParticleImage rendering, Bounce bootstrap and merged wallet event are explicit local adapters inherited from rule36; no claim of complete DOTween/ParticleImage SDK equivalence. VIP/Luxury/advertising providers and trusted time remain unavailable. No paid entitlement is injected. Tests use independent temporary profiles; fixture progress is not written into the user's save.

Editor integration uses Unity APIs to add the two components and original reference. No original GameObjects are added, deleted or renamed; original assets/metas and frozen Main remain intact. GPU captures and EventSystem tests do not prove physical touch input or original pixel parity. Test verdicts and final scene/save audits are recorded separately under `mission-presentation-*` and `live-mission-*` reports.

Whole-game completion remains false. User acceptance: open the Mission window, claim an eligible ordinary task to see XP bounce, claim an eligible ordinary diamond season reward to see eight diamonds and refreshed wallet, close/reopen and confirm the claim stays recorded. Eligibility follows normal saved progress; this phase does not unlock the user's rewards.


后续规则38恢复原任务提示循环、窗口定位与成功领奖后的自动滚动；规则37保持当时测试/场景/源文件证据，当前源与场景以规则38报告为准。
