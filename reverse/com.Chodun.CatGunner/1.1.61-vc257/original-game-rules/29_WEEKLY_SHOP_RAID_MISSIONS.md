# WeeklyShop and ordinary Raid missions — vc257

Only `com.Chodun.CatGunner` 1.1.61 / vc257 / arm64 is used. The unrelated root XAPK has no role. The working project uses installed Unity 6000.4.10f1. Original author source is not claimed.

## Native and serialized evidence

`original-weekly-raid-contract.json` retains exact native query bounds, input16 checks, output hashes, frozen Main/native/metadata checks and nine unchanged original MonoScript metas. Separate exports complete 91/91 (85 business +6 helpers), 26/26 (20+6), 8/8 (two task-sort closures +6), and 12/12 (six countdown methods including the coroutine +6). These static counts are not feature completion or original source.

Frozen Main supplies original hierarchy, sprites, TMP fields, eight task items, menu button states, three weekly gun items and ten DOTween loop parameters. Integration uses Editor scene APIs. Existing GUIDs and original resources remain in place. `OriginalWeeklyRaid.json` records source paths, callbacks and references; `weekly-raid-scene-restoration.json` records connections and unavailable callbacks.

## WeeklyShop

The HUD entry checks `Gun_Collect` from index `3*5` upward. The WeeklyShop button is not in the original eleven tutorial-disable references; its native collection predicate is retained. VIP is unlocked at historical `Tree_manager.Stage_Value_Max >= 190`, displayed as Stage 20. Current stage after rebirth does not replace historical progress.

Normal opening uses place `hud`. With VIP locked the default is Gun; the first unlocked visit selects VIP, afterward it uses the last visited menu. Native first-open PlayerPrefs state is represented by the explicit `Recovery_WeeklyVipFirstOpened` extension in the independent client archive. Last menu is runtime state and starts at Gun after a cold restart. `Open_Auto(place)` selects VIP; the commercial PlusPack panel movement remains outside this local slice.

Monday 00:00 is week start; index is relative to 2024-01-01, with positive mod5. Weekly guns are base20/30/35 plus offset. Per-item weekly counts are 2/2/1; bundle PetCoin rewards are300/700/1500. They are rewards, not costs. Week key `yyyyMMdd` changes reset only weekly counters. The original DailyGun_popup updates the countdown every unscaled second and refreshes all item previews/counts when the week changes while open. Null/short legacy arrays copy the available prefix. Unsupported oversized/negative client arrays are rejected before state mutation.

Original `DailyGun_Item.OnClick_Purchase` dispatches to `Shop_manager.Purchase_DailyGun`, and `ApplyReward` is fulfillment. No provider/receipt completion or free bundle reward is simulated. The offline button shows the existing Alert with `Store connection unavailable`. Gun preview uses the existing source info panel in read-only context. Other PlusPack store callbacks remain visibly unavailable.

## Raid tasks

| Kind | Target | Star gems |
| --- | ---: | ---: |
| Season tries | 1 | 300 |
| Season tries | 4 | 500 |
| Season tries | 7 | 800 |
| Season best | 1 | 200 |
| Season best | 5 | 300 |
| Season best | 10 | 400 |
| Season best | 20 | 500 |
| Season best | 30 | 600 |

Progress comes from Raid season try count and best result. Clear flags stay latched in the season. State0 is unfinished, state1 ordinary claimable, state2 ordinary claimed with ticket re-claim available, state3 both rewards claimed. Ordinary rewards require state1, mark the flag, award StarGem, save and notify UI. A second ordinary claim cannot award. A state2 re-claim without ticket opens the original ticket explanation popup. No purchase callback creates an entitlement; an existing current-season ticket flag is preserved as saved state.

Season changes clear only the three task flag arrays and ticket flag. Null/short old arrays preserve their available prefix. The local adapter rejects oversized arrays before loading to avoid silently losing unsupported progress. Each successful ordinary battle start refreshes try tasks; the actual final score refreshes best tasks at settlement. Rewards are claimed separately from the battle result.

Original sort priority: state1 first; state2 shares first priority when ticket owned, otherwise second; unfinished is second with ticket, third without; done is last. Ties sort by task type then original item index. Progress displays clamp to the goal; a latched clear task displays full progress. Remaining time updates each unscaled second. Task explanation strings use the shipped English I2 terms; full language switching is pending.

## UI and visual adapters

Original WeeklyShop, task list, HUD alert, ticket explanation and existing daily task entry callbacks are connected. New source branches regain their source Bounce/SFX/Hatch helpers. Ten frozen loops are restored by `RecoveryWeeklyUiTween`: six rotating gun glows across WeeklyShop and the original DailyGun popup, Raid mission HUD glow, two ticket-sale scales and the existing daily mission alert scale. Source duration/ease/loop/transform targets are retained; this is a local presenter, not original DOTween source/runtime parity.

Generated `StarChineseFallback` uses a subasset atlas; the font compatibility helper handles it separately from shipped dynamic PNG atlases. The rebuilt Library is a generated import cache, not a recovery source or player save.

Navigation regression also exposed a prior fish interaction bug. The byte-verified existing `Fish_Item_UpdateFlip` native body retains a180-degree Y rotation for left-facing images. The recovery per-fish GraphicRaycaster used its default `ignoreReversedGraphics=true`; the installed uGUI source rejects those image normals. The local raycaster now explicitly accepts reversed graphics, preserving native visual flipping. Actual topmost raycast checks cover both orientations, followed by source detail navigation, merge and deletion. Auto-merge's independent fixture keeps its button-overlap fish but places its equal-grade peer farther than100, so it cannot instantly fuse within the original20-unit distance before the in-flight assertion.

## Verification boundary

Current PlayMode reports and handoff are recorded in `VERIFICATION.json` under `weekly_raid_evidence`. Tests use unique independent archives; fixed clock, explicit gun and upgrade fixtures are labeled. The natural Raid fixture uses actual projectiles and the unmodified 60-second timer. Scene restoration, static analysis, focused PlayMode, GPU screenshots and Player/device acceptance are distinct.

Remaining scope includes other UI/FX/localization, missing HUD entries, relic offline/skip/table300, currency counter parity, Player/device, trusted time, rankings and store/online services. This slice is not a complete recovered client or payment integration.
