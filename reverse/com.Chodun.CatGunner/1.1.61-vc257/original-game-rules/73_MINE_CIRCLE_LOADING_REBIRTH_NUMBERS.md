# Rule73 — Mine circle/loading and compact rebirth values

Exact target com.Chodun.CatGunner1.1.61 vc257. APK r73 includes Rules69–73; r71/r72 Editor-only because user reported additional issues before build.

Mine source Floor3.mat shader GUIDd088a398235759c43b8a82a7bedc7a40 resolves in frozen ExportedProject to Custom_DiamondClipSprite.shader. It is the same matching GLES3 shader extracted for Hunt in Rule70. Reuse exact rawUV radius.5 clipping / tiledUV texture*_Color / SrcAlpha blend / ZTestLEqual / noZWrite / CullOff in existing local MineGroundCompatibility shader, preserving14×7.48 source tiling, sprite/transform/material GUID. Earlier UnitySprites fallback tiled but lost clipping, hence rectangle. Circle is world/sprite UV projected through existing camera, not manufactured circular ore positions.

Loading_UI is originally Canvas/SafeArea/Main_UI/Loading_UI; Rule70's original six-mode activation hides Main_UI. Existing mode code set loadingactive but ancestor remainedhidden. Shared ShowLoading temporarily reparents the SAME original object to SafeArea and adds overlayCanvas10001 during display, then restores authored parent/sibling on close. Other original Main paths/hierarchy remain at rest; static language refresh during loading is not a new Locale flow. Original character animation/assets remain. Mine entry retains blocker until PlaceOres completes and1.5sminimum; exit keeps it through restart plus.2s. All five existing mode loading callers use shared method to prevent same ancestor defect; independent mode/startup regressions required. No duplicated scene/hand YAML edits.

Rebirth panel ordinary/3×reward/Ruby and three upgrade value/price texts use existing OriginalNumberText.Format over same DecimalAmount. Stored currency, arithmetic, cost eligibility and reward formulas unchanged. Internal PlainInteger math is retained; only visible strings use abbreviation.

Separate Editor lifecycle/realinput/GPU, signedAPK, phone install/touch/keepawake and preservation reports bound completion. Full original/game/server parity remainsopen.
