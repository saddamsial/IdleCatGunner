# Rule 71 — Extend progress background into top cutout inset

Target com.Chodun.CatGunner 1.1.61 vc257 ARM64, local Unity6 recovery client.

User confirmed the gap means the area ABOVE the progress bar in mobile70-phone-first.png, not the lower upgrades. Keep the bar below the cutout and extend its dark brown background to the screen top. This is a user-requested mobile presentation adapter, not proven original native behavior.

The original Value_Slider Image is sliced, ui12, tint(.491,.391,.150), source rectangle1080×37; Fill PPU10/height37 remain unchanged. Phone capture pixel(800,148–155) is RGBA(40,26,8,255), its dark upper border. RecoveryMobileViewport adds one non-raycast opaque Image as SafeArea first child, matching that sampled border. Its anchors extend from SafeArea top to physical screen top: 1 + (1-normalizedSafeTop)/normalizedSafeHeight. Existing original roots/mode selection/modal ordering stay intact. No inset means hidden backdrop. Recompute only on viewport/safe-area changes or focus; no save/gameplay mutation.

Validation must use refreshed assembly (TopBackdrop reflected property), simulated147px upper/105px lower insets and no-inset resize, preserved Canvas/Fill, real settings inputs, GPU screenshot, then independent signed APK/device top-pixel capture. Earlier cached-assembly4/4 does not validate this fix; retained as history. Sparse phone sampling at4s missed60FPS SurfaceFlinger127-frame buffers; its aggregate33FPS/large gaps are invalid. Corrected20×1s poll sample22.46s gives59.53FPS, p95 interval24.98ms,2 intervals>50ms and none>100ms; high-progress Stage21-4 is not same-load comparison to earlierStage1 sample. No sustained frame-rate guarantee.
