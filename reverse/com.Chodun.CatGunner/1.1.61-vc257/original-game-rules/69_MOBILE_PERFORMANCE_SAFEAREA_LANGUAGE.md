# Rule 69 — Mobile frame budget, safe area and language selection

Target: com.Chodun.CatGunner 1.1.61 vc257 ARM64; recovery client com.ravanla.idlecatgunner.recovery r69. Local presentation repairs over frozen original assets, not original native safe-area/full I2 lifecycle parity.

- Android/iOS target 60 FPS. Android release build, debugger/profiler disabled, optimized frame pacing enabled. GLES3/IL2CPP/ARM64 retained.
- Bind Screen.safeArea to existing Canvas/SafeArea. Update only when screen size/insets change or on focus; invalid sizes fall back to full bounds. Canvas/world backgrounds remain full screen. Fill PPU 10, height 37 retained.
- Chinese TMP labels share one reference-counted material per original shared style. Restoring one label preserves other users; last release destroys the copy. Skip identical text writes. Stage percentage strings change only on integer percent change. Buff timer captions format only when the whole second changes; explanations format only when multiplier/locale changes. Availability and gameplay clocks continue each frame. WeeklyShop keeps inventory change events and polls only changes in the VIP gate.
- Local settings selector: Simplified Chinese, Traditional Chinese, English, Korean, system. Preference separate from game save. Existing static bindings refresh; dynamic text adapters use the same selected language. The selector/audio captions are local additions. Restore/Redeem captions use original rows; external services remain unavailable.
- 367 complete original I2 text rows ×14 locales retained as read-only data. This is translation evidence, not proof of complete dynamic-string or I2 lifecycle recovery. Four explicit selector locales; other original locale rows remain available to system adapters.

Before repair, a real Xiaomi 23116PN5BC (1440×3200) running r68 had top cutout inset 147 pixels. SurfaceFlinger 127-frame sample covered 4.184 seconds, mean 30.11 FPS, median 33.30 ms, p95 41.64 ms, no intervals over 50 ms. This short sample supports the default frame-limit diagnosis, not absence of long-session stalls. A 60 FPS target does not prove sustained 60 FPS across devices/scenes.

Tests use independent archives and restore language preferences. Existing desktop saves, scene and metadata are audited at handoff. APK archive/build/installation and real-device evidence are separate mobile69 reports; initial failures and zero-selection filter results are preserved.
