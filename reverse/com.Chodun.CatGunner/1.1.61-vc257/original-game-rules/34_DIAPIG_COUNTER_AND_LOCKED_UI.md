# Rule 34: DiaPig ordinary counter and original locked UI

Target: com.Chodun.CatGunner 1.1.61 / vc257 / ARM64 IL2CPP; original Unity6000.0.61f1, current Editor6000.4.10f1. The unrelated XAPK is excluded. Hashes and exact method addresses are in reports/original-diapig-contract.json.

## Native and serialized proof

- DiaPig/Ui16 methods plus Shop_manager's two read-only access predicates exported with verified bytes, managed/unwind bounds and six exception helpers per export. All30 export rows completed; 18 business methods analyzed, not18 fully connected game paths. Shop offsets8=Is_Remove_AD_forced,9=Is_Remove_AD_All: either flag unlocks; tick amount is their sum. No stage-based/free unlock exists in these methods.
- Original Dia_Max500,60sec/tick, min(cap,unchecked(count+ticks*amount)). Ordinary elapsed uses min(UTCdelta,monotonicDelta) if their difference<=300sec. Future timestamp resets both references. Integral minutes advance UTC; mono preserves unused seconds. Native wall-clock-only catch-up requires trusted-time CanGrantTimedReward/PendingCount<3/RecordGain; provider is outside this slice and unavailable, so the local counter retains the native provider-unavailable mono branch.
- Claim guards unlocked && positive count. Capture count, zero it, reset clocks only when old count>=cap. Existing original Get_Dia bridge increments wallet by amount, ordinary _getDia ledger by3*amount, then Fill0/UIReload/Fusion sound(index3,volume1). Data uses invariant round-trip `o` timestamps. Standalone isolated counter/ledger tests prove these rules; paid unlock/actual production claims remain unconnected.
- Literal pointers are resolved via matching relocation/type-usage and decoded metadata: count `{0}<size=30>/{1}`, description I2 key `DiaPig/DiaPigDescription`, remaining `s`/`Max`, date `o`, fallback `+`.

## Connected paths and adapters

Original roots17039(Canvas/Shop_manager/DiaPig) and1886(Canvas/SafeArea/Main_UI/Btn_list/Right_Menu/DiaPig_obj) add63 original objects. Original controller metas/GUIDs preserved. Two source branches extracted into a new input scene; only supported runtime/public component identities included, unsupported I2/commercial components and two paid-banner DOTween rotations quarantined, with component IDs in preparation report. Existing exported input and frozen baseline stay unchanged.

HUD Button opens original10834 GameObject; source close/blank close events retained. Original BounceStart/BounceBtn and Mute_Panel execute normally. Production access adapter reports purchase unavailable/locked; no serialized entitlement switch, debug grant or preview purchase. All three absent purchase/shop actions disabled. Native UI shows locked/unlocked and description variants, original count and `+` fallback. Full I2 parameter interpolation/localization remains pending, including source `{0}` in locked description; static original $9.99 text is an asset, not a verified current price. Paid-banner rotation remains pending. No purchase/server response or timed catch-up is simulated.

RecoveryForestClient binds DiaPig after local state loading. Unsupported access cannot accrue or claim. When locked, the existing diaPig count/timestamp is preserved in the local archive rather than rewriting its timestamp on periodic autosave; this is an explicit preservation adapter differing from native Init/GetSaveData capture. Five-mode common entry closes this modal as local navigation cleanup; native cross-mode modal closure was not proved. Original Tutorial DisableOnTutorial now has6 connected/5 absent references, including DiaPig_Btn; initial tutorial hides the button and restores it on completion.

## Preservation and acceptance

Checkpoint: reports/checkpoints/diapig-before; reports/diapig-before.json records main scene, affected scripts/docs and two user archive hashes. Scene identity audit normalizes only verified Editor local-ID remaps, preserves every prior object/component and all serialized fields except two parent child lists, original tutorial reference and explicit client binding. No existing assets/GUIDs removed. Final user/frozen-input/source hashes, scene and Editor state are separately reported.

First full PlayMode run5/7 failed because a fixture clicked Close while original BounceStart entrance was still moving, and expected immediate SpeedRun return despite its original async1.5s delay. Tests now wait original entrance and mode exit; no layout/animation/timer/gameplay rule changed to satisfy assertions. Final7/7 is a separate complete run. Counter arithmetic tests use standalone isolated counters only; production UI remains locked. Real StandaloneInputModule edges test actual HUD and Close raycasts, reopen and no rewards; cold reload preserves321 stored diamonds and its original timestamp. Source entrance/two screenshot frames inspected after animation, not early transition frames. Other independent groups and durations are in the acceptance report; historical assembly165/165 is not a fresh full run.

Normal handoff is RecoveredClient EditMode/Persist=true/no overrides/no active test jobs/zero missing scripts. Not a Player/device/physical-touch/pixel/audio or original-side-by-side acceptance. OfflineProgressManager/Simulator, five absent tutorial HUDs, remaining UI/FX/localization, missing relic row300, purchase/provider/trusted-time and Player/device acceptance remain pending; scope_complete=false.


## 后续规则36

本页保持该阶段历史验证边界。规则36已接回签到七项/存钱罐两项原参数旋转、本地124527钻石预设以及普通签到8颗Spawn/到账Bounce。Shop_UI目标、其它业务Spawn、推广第8签到Tween、全SDK与I2仍待办；详见36_REWARD_PRESENTATION.md及当前VERIFICATION，不把本页早期测试当当前新全量。
