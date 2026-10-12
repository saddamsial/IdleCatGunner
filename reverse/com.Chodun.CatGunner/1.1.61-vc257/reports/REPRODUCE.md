# 本构建静态分析复现

## 森林输入、纸币和伤害数字（2026-10-11）

新增原生作用域 forest-feedback（34条）/damage-glyphs（12条），门禁与匹配Ghidra项目保持一致，含重叠辅助。`extract_damage_shader.py` 只读原 data.unity3d，提取两份相同 Hidden/DamageText、GLES3程序和Pass状态。工作Shader为已核验表达式的HLSL/Metal移植。

源切片生成器 `prepare_forest_feedback_slice.py` 在已有文件时拒绝覆盖。已有工作场景通过 `ForestFeedbackEditor.Restore()` 幂等 Editor API 接入Money_Polling/Text_Setting和当前输入模块；不可用终端改写工作场景YAML。大场景保存可能超过CLI5秒期限，先核实新写出的restoration报告和dirty/persist状态，勿盲目重复集成。

```sh
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/extract_damage_shader.py
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter OriginalForestFeedbackTests --filter_type testName --async_tests true --timeout 300 --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --format json
/Users/rongdahuikeji/.unity/bin/unity command test_status --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --format json
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/audit_forest_feedback.py
```

新增源文件后显式Refresh并等待导入/编译结束再启动测试。专项测试BaseInput边沿经正常StandaloneInputModule分派，不用ExecuteEvents；这是输入模块回归，并非物理鼠标/触屏验收。自然战斗为初始原Gun0与原树数据，独立档案，截图有原纸币和描边数字。报告标签更正前后4/4分别记录。其它两次为OriginalClientFlowTests8/8及OriginalStartupTests4/4；前者是森林流程，并非ContentNavigation分类的8项内容菜单。正常用户试玩不设置测试inputOverride，不注入货币或清教程。

## 金币与采矿钻石反馈（2026-10-11）

先读取规则31及matching contract，运行 `select_native_methods.py currency-feedback` 生成21条matching查询，ExportSelectedMethods与上述Ghidra参数一致，输出到native-currency-feedback-reviewed。15业务/6辅助的完成状态不能代替运行验收。保留原基线、工作场景及试玩存档。

```sh
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/export_currency_feedback_contract.py
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter OriginalCurrencyFeedbackTests --filter_type testName --async_tests true --timeout 240 --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --format json
/Users/rongdahuikeji/.unity/bin/unity command test_status --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --format json
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/audit_currency_feedback.py
```

新增源文件先Refresh并确认已编译、测试类型已加载，无遗留内部任务才启动。6项使用随机临时存档目录；选择可见原树/矿石，不移动原对象或改生命来造图。其它相关测试分别运行OriginalBossTests、OriginalMineTests、OriginalProgressionTests、OriginalForestFeedbackTests和OriginalOnboardingTests，报告不合并为全量运行。

当前场景已经修复矿场材质，不应重复整合。`MineClientEditor.RepairMapMaterials()`只在EditMode/正确场景替换原失效材质，并拒绝覆盖其它有效材质；`RestoreGroundTiling()`读取原Floor3的14×7.48参数。材质/场景均用Editor API，原材质文件保留。CLI大场景保存超时后应核对实际报告/干净场景，而非盲目重做。

## WeeklyShop 与普通团战任务（2026-10-11）

新增原生作用域为 `weekly-raid-ui`、`weekly-gun-ui`、`raid-mission-sort`、`weekly-countdown-ui`。使用匹配的 Ghidra 项目和 ExportSelectedMethods 门禁；91/26/8/12条查询均核对原首16字节，137行包含重叠辅助方法，不能作为恢复百分比。`export_weekly_raid_contract.py` 验证冻结输入、九份原meta、静态初始化和运行脚本。

已有工作场景勿覆盖。源切片/manifest由 `prepare_weekly_raid_slice.py`、`export_weekly_raid_manifest.py` 生成，`WeeklyRaidClientEditor.Integrate()` 在 clean EditMode 通过 Editor API 接线。10份循环包括 WeeklyShop 和原 DailyGun 弹窗各3个枪械光圈。原普通每日任务回调保留。

新增脚本后先显式 AssetDatabase.Refresh(ForceSynchronousImport)，等待编译/导入结束，且没有内部测试任务，再运行 `OriginalWeeklyRaidTests`。CLI cancel_tests 只清理结果状态；内部遗留任务通过 TestRunnerApi.CancelTestRun(guid) 终止。不要在 PlayMode 重复启动 api.Execute。异常及未完成报告保留为基础设施历史，不计通过。

```sh
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/export_weekly_raid_contract.py
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter OriginalWeeklyRaidTests --filter_type testName --async_tests true --timeout 300 --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --format json
/Users/rongdahuikeji/.unity/bin/unity command test_status --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --format json
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/audit_weekly_raid.py
```

专项使用独立档案和固定日历/原Gun30装备夹具；真实60秒战斗不修改目标血量或计时。冷重载、防重复领奖、轮换、不可用购买不发奖、Raycast、GPU均分层记录。正常试玩仍打开 RecoveredClient.unity。运行器异常导致的自动存档副本与轮前备份均保留，最终恢复记录单列，不声称整轮从未写入。

在仓库根目录执行。工具读取 exact-build SHA-256 门禁；改变 native 或 metadata 会失败。所有变换输出另存，原 APK 不改动。

```sh
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/extract_inputs.py
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/inventory_assets.py
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/decode_metadata_regions.py
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/index_metadata.py
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/map_game_methods.py
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/index_all_module_addresses.py
```

本机 Python 3.9 / UnityPy 1.25.2，aapt2 为 Android SDK build-tools 36.0.0，Ghidra 为 12.1.3 / Java 25.0.4.1，汇编复查使用本机 Xcode llvm-objdump。原资源 Unity 6000.0.61f1，不套用旧游戏的 metadata v39 schema。

Ghidra 项目为本构建 ghidra-project/catgunner-vc257；仅选择性 noanalysis 查询，不做全 ELF 分析。首次导入 exact ELF，调用 tools/ExportSelectedMethods.java，参数为 reports/native-loader-queries.tsv 和 native-loader 输出目录。

玩法复查使用已有项目 `-process libil2cpp.so -noanalysis`，同一脚本的四个参数依次为 reports/native-reviewed-queries.tsv、native-reviewed、reports/verified-noreturn.tsv、reports/native-referenced-functions.tsv。每次查询先比对原 ELF 首 16 字节；noreturn 地址必须同在 byte-verified 查询里。helpers 仅对本构建的 __cxa_throw 证明链标记，不复用旧包地址。地址边界以本构建 unwind 起点交叉核对；伪代码仍须阅读汇编与调用链，特别是返回结构体/尾调用/PIC 警告。

native-format-probe.json 记录 ELF 段/section 坐标。game-method-map-summary.json 记录 native 指针门禁，metadata-index-summary.json 记录全类型成员验证，asset-summary.json 记录资源解析。native-reviewed/status.tsv 的 completed 不能代表恢复了原 C# 或原行为。

## 类型、字段合同与原资源导出

```sh
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/resolve_native_types.py
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/resolve_serialization.py
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/read_original_components.py
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/stage_asset_export.py
```

resolve_native_types 会重建 resolved-type-schema.json；必须随后运行 resolve_serialization 才保留属性/参数扩展。独立 AssetRipper localhost6243 只加载 assetripper-input/data.unity3d，导出到本构建独立 baseline；完整基线作为原始证据保留，后续不要覆盖。prepare_unity_client.py 是首次创建脚本，已有工作工程时明确拒绝执行，避免覆盖后续实现。

## 音频、数值与存档合同

```sh
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/extract_original_audio.py
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/import_decoded_audio.py
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/export_balance_catalogue.py
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/export_save_contract.py
```

音频解码注册原 Data 目录的 `.resource` 为 UnityPy CAB，不能读错内部纹理 `.assets.resS`。FMOD native 在本机可能需要沙箱外硬件能力；导出后比对17项清单的SHA。音频导入保留基线原GUID，将空 AudioYaml 保留在 quarantine，后续请保持先检查 Unity 状态、目标工程没有写入中的 Editor 再执行。

Native 查询：`select_native_methods.py save`、`upgrade-flow`、`battle` 分别生成 queries/references TSV。同 ExportSelectedMethods 参数四元组，输出目录是 native-save/native-upgrade-flow/native-battle。末尾 B 到独立映射方法按 AArch64 tail call 标记 CALL_RETURN，防止 PIC 吸收别的方法。EH landing pad 可能未进入普通伪代码或 reachable listing，TryLoadFrom.complete.asm 用 llvm-objdump 按原完整边界核对。

## 用户 Unity 6 与聚焦运行验证

先检查 `unity status --json`，不要修改其他工程的 Editor。CLI为 `/Users/rongdahuikeji/.unity/bin/unity`，本机版本6000.4.10f1。关闭目标 Editor 后批处理接线：

```sh
/Users/rongdahuikeji/.unity/bin/unity run reconstruction/CatGunnerUnityClient --editor-version 6000.4.10f1 -- -executeMethod RecoveryEditor.PrepareBatch
/Users/rongdahuikeji/.unity/bin/unity test reconstruction/CatGunnerUnityClient --editor-path /Volumes/ZHITAI_1T/Applications/Unity/Hub/Editor/6000.4.10f1/Unity.app --mode PlayMode --filter Original --output /private/tmp/catgunner-recovery-tests.xml --timeout 600 --json
```

`Original` 筛选还命中了三项公开包测试；结果要按具体 test-case 与 VERIFICATION.json 阅读。第一次未筛选测试的32项公开包失败保留，后续聚焦通过不能覆盖或抹去。当前测试覆盖设置/音频、完整原缓存/事务/自动选择和存档协议；没有完整主场景、Player、真机或生产服务验收。

## 森林、原输入与手动移动（2026-10-09）

现在已有工作工程，勿重跑首次创建脚本覆盖它。prepare_forest_slice.py、prepare_joystick_slice.py、export_movement_scripts.py 为首次创建工具，遇到已有结果会拒绝覆盖；原 Main 文档索引 original-main-document-index.json 用于读取冻结基线。export_forest_contract.py 提取本构建概率 FieldRef blob 和原参数。

公开 2D Animation 14.0.4、Common 13.0.2 与 Collections/Burst/Mathematics 等匹配依赖现已作为公开嵌入包注册，由 Client.Resolve 解析；原 9 骨骼通过 RecoveryEditor.RestoreOriginalSpriteSkin 接线。健康条/Enemy_Slider/EnemyColl 和两个 Follow 通过对应 RestoreOriginalForestLeafReferences/RestoreOriginalForestFollow 接线。先准备森林才可接这些引用；不要覆盖已修复场景。

当前有正确工程的 live Editor 时使用它，指定 project-path，避免操作其他工程。新增代码后显式 Refresh 并等待编译，之后调用：

```sh
/Users/rongdahuikeji/.unity/bin/unity command eval 'ForestMovementEditor.RestoreOriginalMovement(); return "movement restored";' --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter CatGunner.Recovery.PlayModeTests --filter_type assembly --async_tests true --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
/Users/rongdahuikeji/.unity/bin/unity command test_status --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
```

目前 19 项恢复测试筛选为本工程程序集，不含公开包的测试。live-movement-tests-first-status.json 的 Y 轴断言失败是隔离测试没考虑原 FreezePositionY；后续临时解除该约束检查代码保留速度，再恢复原约束验证实际位移。正式场景约束没有修改。

森林 GameView 使用 RecoveryEditor.OpenForest/SetPortraitGameView，启动 PlayMode 后可按下拖动原摇杆；当前只有手动移动与森林池分支，未自动瞄准、连续射击或结算；普通子弹由显式工厂调用验证。截图通过 capture_game_view --source screen --width540 --height960（参数实际须有空格）保存到 Assets/Temp/Recovery，再拷贝到 reports/visual 并记录 SHA。截图暂停时间后必须恢复 timeScale=1、释放指针并返回 EditMode。PrepareBatch 现在保留已有 BuildSettings 并补充存在的三个分支场景，不能把它当作全 Main 集成。

Native 追加选择作用域 cat-initialization、forest-combat、bullet-hit、bullet-dependencies、bullet-effects-lifecycle。后面三组分别有 19/14/11 个业务方法，另有门禁证明的异常辅助查询；完整有界 ASM/伪代码不能直接当作所有武器恢复。HitPierce 的 PIC 警告仍需检查 ASM。

## 原子弹与 FX（2026-10-09）

prepare_bullet_slice.py 只在首次创建时执行，已有结果会拒绝覆盖；从冻结 Main 的原池引用递归提取分支，保留 GUID/引用。ForestBulletEditor.RestoreOriginalBulletPools 只在森林没有原池时执行，已有池时拒绝，避免重复合并。它补回原 BounceStart/Destroy 参数，并建立粒子兼容材质。当前已经完成，勿再次合并。

已经合并时可以只调用 ForestBulletEditor.ReportRestoredOriginalPools 读出引用证据。材质修复由 Editor 中已编译的 ForestBulletEditor.RepairExistingPoolMaterials 执行；大场景保存放到 delayCall 驻留方法，完成后写 forest-bullet-material-repair.txt 和引用 JSON。场景约 385 MiB，CLI eval 超时只代表等待失败，不能立即重复合并/保存，应先检查场景文件、编辑器状态和完成报告。

```sh
/Users/rongdahuikeji/.unity/bin/unity command eval 'UnityEditor.EditorApplication.delayCall += ForestBulletEditor.RepairExistingPoolMaterials; return "scheduled";' --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter OriginalBulletTests --filter_type testName --async_tests true --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
```

filter_type 合法值为 testName/assembly/category；full_name 不合法。必须检查工具嵌套 result.success 和 test_status 的完成状态，不能仅看外层 success。完整程序集报告为 live-projectile-tests-status.json，材质修复后的子弹四项报告为 live-bullet-material-tests-status.json。

ProjectileHitPreview 仅用于 Editor 内临时可视夹具：先 OpenForest，进入 PlayMode，再由已有 ForestRuntimeAcceptance.StartCoroutine(ProjectileHitPreview.Capture()) 启动临时 Editor 协程（Editor 类型不能 AddComponent）；它显式选原树/伤害并由实际物理碰撞命中后暂停，写 projectile-visual-state.json。采集 GameView 后 timeScale=1 并退出 PlayMode，禁止把夹具保存到场景。普通子弹核心可调用 Cat.TrySpawnBulletEx；完整自动射击尚未接线。

## 目标、瞄准与连续普通攻击

prepare_target_slice.py 是首次创建工具，只读取冻结 Main 的 Target1748及Triangle子节点；已有结果拒绝覆盖。工作森林现在已有这两个对象，不要重复合并。native 作用域 cat-target-attack 输出 21 个业务/状态机方法和6个异常辅助，包含 Cat.IsOnScreen/ctor、Bounce_Custom/Position 生命周期及两个 MoveNext；结合已有 forest-combat/cat-initialization 的 ASM 阅读。cat-native-math-imports.json 通过 ELF .rela.plt 证明 logf/sincosf/atan2f，original-combat-contract.json 保存常数和边界。

ForestCombatEditor.RestoreOriginalCombatReferences 是驻留 delayCall 方法，恢复原68字段中的新增6项、65个Gun组件/枪口，补原两段后坐力、Target分支和兼容材质，并保存；完成后写 forest-combat-reference-restoration.json。它保留原初始 LASER/零伤害、默认关闭连续攻击。原装备/数值加载未接入，不应为了看见射击而把独立测试数据存入正式场景。已经接回后不要再运行移动阶段的旧 RestoreOriginalMovement，避免按历史字段地图覆盖动态枪口/后续引用。

```sh
/Users/rongdahuikeji/.unity/bin/unity command eval 'UnityEditor.EditorApplication.delayCall+=ForestCombatEditor.RestoreOriginalCombatReferences;return "scheduled";' --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter CatGunner.Recovery.PlayModeTests --filter_type assembly --async_tests true --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
```

最新完整程序集23/23，报告 live-combat-assembly-tests-status.json。首轮缺原动态 Shoot_particle 绑定和第二轮渐近脸部插值等待失败保留在独立报告，不覆盖。

ContinuousAttackPreview.Capture 是临时 Editor 协程，由已有 ForestRuntimeAcceptance.StartCoroutine 启动；显式 SINGLE/伤害输入与原树位置只存在 PlayMode，用恢复的射线/锁定/瞄准/冷却/工厂/真实碰撞取得首击后暂停截图。状态 continuous-attack-visual-state.json 与实际 forest-continuous-attack.png 对应。截图后恢复 timeScale=1、退出PlayMode，不保存测试数据/夹具；combat-editor-handoff.json 核验原Gun27/LASER/零伤害/连续攻击关闭及干净场景。


## 包内初始装备与森林数值（当前阶段）

本轮最新完整程序集27/27通过，见 live-equipment-assembly-tests-status.json；此前23/23和原默认攻击关闭是历史状态。`export_equipment_catalogue.py` 只从匹配组件导出65枪、原默认装备槽和中性增益档案，检查源合同并记录来源SHA；没有访问用户存档。

```sh
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/export_equipment_catalogue.py
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/select_native_methods.py equipment-balance
/Users/rongdahuikeji/.unity/bin/unity command eval 'UnityEditor.EditorApplication.delayCall+=ForestEquipmentEditor.SaveDefaultProfileBridge;return "scheduled";' --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter CatGunner.Recovery.PlayModeTests --filter_type assembly --async_tests true --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
```

ExportSelectedMethods 的同一四参数调用输出到 native-equipment-balance，25业务+6辅助。等待 forest-equipment-bridge-restoration.json 写入确认保存完成，CLI eval短超时不表示驻留回调失败。没有重写原占位Gun27/LASER/零伤害/速度13；`LoadPackageEquipment=true` 在Start加载为Gun0/SINGLE、100伤害/125暴击/0.6秒/速度15并开启普通射击。原管理器/存档/在线表和非中性增益尚未接线。不要重跑历史MovementRestore覆盖后续引用。

PackageEquipmentPreview.Capture 由已有 ForestRuntimeAcceptance.StartCoroutine 启动；仅移动一棵原树、隐藏其他树作为画面夹具，玩家装备/伤害与树生命均来自包内默认。首击250→150后暂停，写 package-equipment-visual-state.json。实际图保存为 visual/forest-package-equipment.png；完成后恢复timeScale1并退出PlayMode，禁止保存夹具。equipment-editor-handoff.json 记录干净EditMode及加载开关；完整设备/Player/所有视觉仍未验收。


## 霰弹完整轮次（当前阶段）

本轮没有使用新版本或其他游戏：复核既有 native-cat-initialization/Cat_Attack 和 Cat_TryFireShotgun 的首16字节guard、独立边界和完整ASM，尤其注意FP向量参数及部分发射成功规则；见 original-shotgun-contract.json 与原规则07。无需增加第三方插件。

Refresh 只启动资源刷新，新增Editor类型可能仍在异步编译；先读 EditorApplication.isCompiling 和实际程序集类型存在，完成后再调用驻留保存。避免未完成编译就调用新工具，或SceneSave尚未完成就进入PlayMode。

```sh
/Users/rongdahuikeji/.unity/bin/unity command eval 'UnityEditor.AssetDatabase.Refresh();return "refreshed";' --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
/Users/rongdahuikeji/.unity/bin/unity command eval 'UnityEditor.EditorApplication.delayCall+=ForestShotgunEditor.PersistCapabilityFlags;return "scheduled";' --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter OriginalShotgunTests --filter_type testName --async_tests true --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
```

完成报告 forest-shotgun-bridge-restoration.json 写在SaveScene成功之后。序列化占位Gun27/零伤害和包内默认Gun0不变，Start根据已加载类型开启对应分支；没有把夹具装备存入场景。霰弹专项第二轮4/4，首轮3/4仅为树级别选择夹具失败，均保留。工作霰弹测试只切独立槽位而从原目录读取Gun3/Gun12参数，原Gun_Collect和玩家档不变。

ShotgunPreview.Capture 临时协程仍由已有ForestRuntimeAcceptance.StartCoroutine启动：选择现有250生命树、移动目标、用独立slot3从原目录加载80伤害/2弹丸/±10°/1秒，并隔离原池和RNG。首个实际命中后暂停，写shotgun-visual-state.json，截图visual/forest-shotgun-impact.png。恢复timeScale1、退出PlayMode，不保存夹具；最终handoff记录必须为干净场景/原初始装备。所有这些不是完整库存UI、Player或手机验收。


`python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/export_shotgun_contract.py` 可从同一native输入/原组件重建合同，核验16字节guard并记录完整ASM/伪代码、原Gun_manager及三个当前实现文件SHA。它只刷新本构建导航与报告，不改Unity资源、原包或工作场景。


最新完整31/31报告 live-shotgun-assembly-tests-status.json；专项历史第一次3/4和第二次4/4保留。最终shotgun-editor-handoff.json证明PlayMode=false/timeScale1/dirty=false/默认槽[0,-1,-1]，视觉状态250→90对应已读取的霰弹截图。

## 穿透与激光森林分支（2026-10-09）

旧native-bullet-hit/HitPierce的PIC告警已在独立native-penetrating-hit-reviewed修复；旧输出保留。export_penetrating_contract.py从本构建MetadataRegistration methodSpecs/genericInst解析Add/Contains/GetComponent<EnemyColl>，并核验原生guard、比较签名、23项枪配置和实现哈希。Ghidra复现用native-penetrating-hit-queries.tsv及native-penetrating-hit-references.tsv；验证异常辅助仍用verified-noreturn.tsv。不能按旧损坏C或把穿透次数当固定上限实现。

新增Assets代码只在EditMode且非测试运行时写入；Refresh后等待isCompiling=false、ForestPenetratingEditor类型存在。ForestPenetratingEditor.PersistCapabilityFlags驻留保存原场景中的新开关，LoadPackageEquipment=true，EditMode三种攻击开关false；Start按包内初始档案开启Gun0/SINGLE。不要保存PlayMode测试武器/位置/伤害。

```sh
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/export_penetrating_contract.py
/Users/rongdahuikeji/.unity/bin/unity command eval 'UnityEditor.EditorApplication.delayCall += ForestPenetratingEditor.PersistCapabilityFlags; return "queued";' --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter OriginalPenetratingTests --filter_type testName --async_tests true --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
/Users/rongdahuikeji/.unity/bin/unity command test_status --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
```

专项5/5，完整恢复程序集36/36（87.32秒）报告分别是live-penetrating-tests-first-status.json和live-penetrating-assembly-tests-status.json。test_status必须completed并核对具体result；外层success不等于测试通过。历史31/27/23批次及公开包失败报告保留。

PenetratingPreview.Capture是临时Editor协程，由已有ForestRuntimeAcceptance.StartCoroutine启动。装备槽19读取原Gun19伤害200/暴击250/间隔1；选择原250生命树、移动位置/隐藏其他树/重置池，真实自动攻击碰撞后250→50暂停。没有直接注入玩家伤害/库存/存档。GameView截图后必须timeScale1并退出PlayMode，不保存夹具。仅画面检查不会证明多目标穿透规则；后者由明确的真实Physics测试验收。

## 爆炸与爆破狙击森林分支（2026-10-09）

export_explosion_contract.py核验本构建7个Bullet方法/6个异常辅助、Cat.Attack的类型4/6caller、三参数OverlapSphere签名、原19项枪配置和实现哈希。Ghidra输出native-explosion-reviewed，查询native-explosion-queries.tsv、引用native-explosion-references.tsv；后续穿透复用已纠正的HitPierce和已验证泛型Add/Contains thunk身份。原商业InfVal内部没有复制。

Refresh后须等非编译且ForestExplosionEditor已加载。ForestExplosionEditor.PersistCapabilityFlags驻留保存LoadPackageEquipment=true及四类EditMode攻击开关false；正式Start仍读取Gun0，原Gun27占位值和11602对象保留。原池/Forest已恢复，不要重复执行首次创建/合并脚本。

```sh
python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/export_explosion_contract.py
/Users/rongdahuikeji/.unity/bin/unity command eval 'UnityEditor.EditorApplication.delayCall += ForestExplosionEditor.PersistCapabilityFlags; return "queued";' --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter OriginalExplosionTests --filter_type testName --async_tests true --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
/Users/rongdahuikeji/.unity/bin/unity command test_status --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
```

专项初/二轮与诊断失败报告保留：原HP250为25000×10^-2，测试不能直接比较s_digits；短反馈不能在远处碰撞之后再断言isPlaying/Bouncing。修正夹具为完整Value比较和发射当帧反馈检查，原配置/伤害/动画时长不变。最终专项live-explosion-tests-final-status.json；完整恢复程序集live-explosion-assembly-tests-status.json。必须读取completed/summary/results，不将外层success视作通过。

ExplosionPreview.Capture是已有ForestRuntimeAcceptance启动的Editor协程，独立切槽14并读取原120/150/0/0.7/radius5。选两棵实际250生命原树，仅改变位置/隐藏其他树/重置Bullet和FX池，以真实自动瞄准/发射/Physics得到两棵250→130后暂停。没有直接注入玩家数值/库存/存档。截图后timeScale1、退出PlayMode、不保存夹具。当前仅森林；导弹、完整Update/自动移动/AI、其他模式/Ore、经济和主流程/真机仍待恢复。

本轮最终专项7/7（30.25秒），完整恢复程序集43/43（111.63秒）；保留所有前两轮与诊断失败、历史36/31/27/23报告，不覆盖原公开包失败。

## 2026-10-09 导弹续恢复

同一Unity6000.4.10f1 Editor/项目socket7801；其他Unity项目不参与。先确认EditMode、无测试/编译再改代码；不并行打开本项目batch实例。工作对象仍com.Chodun.CatGunner 1.1.61/vc257，不引入旧XAPK。

`python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/export_missile_contract.py`校验native SHA、tanf的ELF PLT/GOT/重定位符号、GameObject.GetComponent<Bullet>的MethodSpec，生成5业务+6异常的字节guard/unwind查询和当前实现哈希。用现有Ghidra12.1.3/Java25、ExportSelectedMethods.java和verified-noreturn.tsv导出到新native-missile-reviewed，保留旧HFA误读输出；不要将错误Y/Z伪代码抄成逻辑。status.tsv应11/11 completed。原规则10记录ARM64完整previous XYZ修正与ABI/散布/弧线/仰角/回收。

修改范围Bullet.cs/CatCombat.cs/ForestCombatAcceptance.cs和新CatMissile.cs，保留现有meta；新增OriginalMissileTests/ForestMissileEditor/MissilePreview由当前Unity生成meta。只在EditMode刷新。编辑器执行`UnityEditor.EditorApplication.delayCall += ForestMissileEditor.PersistCapabilityFlags;`，等待forest-missile-bridge-restoration.json真实完成，而不是仅相信queued。必须保留11602对象、rawGun27/rawDamage0、初始槽[0,-1,-1]、所有编辑态攻击开关false；Start仍按初始Gun0开启SINGLE。

CLI专项：`run_tests --mode playmode --filter OriginalMissileTests --filter_type testName --async_tests true`；全恢复：`run_tests --mode playmode --filter CatGunner.Recovery.PlayModeTests --filter_type assembly --async_tests true`。均指定本工作工程的--project-path并保存完整--json；test_status的completed/summary/results才证明结束，start running不是通过。保留初轮live-missile-tests-first-status.json：7/8，唯一失败是切回线性弹速度Vector3严格相等，旋转浮点误差；测试改用distance<0.001，未改运行代码。最终专项live-missile-tests-final-status.json为8/8、29.27秒；完整恢复结果见live-missile-assembly-tests-status.json。

专项覆盖池满在scatter RNG前失败、target.transform而非bounds和固定快照、角度先抽/均匀半径后抽、strict0.01/fallback/minSpeed、kinematic抛物线和缩放时间/暂停、全XYZ LastPos/forward、duration+0.5当前位置超时/无50单位限制、实际Update到端点、实际Physics提前碰撞/二次超时屏蔽、零水平距离/原阈值/池复用回线性弹；Gun24/38原600/24000伤害、50/35速度真实自动射击，原250生命两树死亡/计数减2。

截图用RecoveryEditor.OpenForest/SetPortraitGameView，进入Play后从现有ForestRuntimeAcceptance启动MissilePreview.CaptureFlight()协程。临时槽24、两棵真实250生命树位置/清池是显式夹具，不注入玩家伤害和库存/存档；预览飞行timeScale0.05，按真实时间最多40秒等首发；弧线约40%处timeScale0暂停，输出missile-flight-visual-state.json。capture_game_view保存540x960后，再启动CaptureImpact()恢复timeScale1，只运行首发到真实范围死亡/计数减2，再暂停并写missile-impact-visual-state.json/截图。将两张图片复制到reports/visual、记录SHA并实际读取。结束恢复timeScale1、退出Play、不保存夹具；missile-editor-handoff.json记录干净编辑态与原默认槽/11602对象。

共用代码变更后重新运行export_shotgun_contract.py、export_penetrating_contract.py、export_explosion_contract.py、export_missile_contract.py，核对当前实现SHA。update_verification.py保留历史失败和旧通过报告，最新接受层来自导弹之后完整恢复程序集；不能把51个测试当作全部功能或手机/Player/全部视觉验收。

导弹抓图历史保留missile-preview-error-history.json：前两次200帧等待未捕获活导弹。诊断trajectory显示确有原missile/实际提前击倒两树；慢放下200帧可能小于0.4秒缩放冷却，夹具改为真实时间40秒等待，impact10秒等待。只修改Editor抓图夹具与Vector3报告的XYZ数组序列化，51/51验证的运行脚本未改。

## 森林自动移动（2026-10-09）

只使用本构建17项有界auto-move查询，11业务/字段辅助加6异常辅助，核验首16字节/unwind末端、泛型Collider调用及Vector3.back静态字段。可重复执行 `python3 tools/export_auto_move_contract.py`；匹配原生/实现SHA和边界见original-auto-move-contract.json，算法/ABI说明见原规则11。

在已有6000.4.10f1正确工程上，使用Unity CLI分别执行：

```sh
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter OriginalAutoMoveTests --filter_type testName --async_tests true --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
/Users/rongdahuikeji/.unity/bin/unity command test_status --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter CatGunner.Recovery.PlayModeTests --filter_type assembly --async_tests true --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --json
```

测试顺序不可并发，必须等待completed/summary而不是只看外层CLI success；Play或测试中不编辑Assets代码。专项最终10/10，live-auto-move-tests-final-status.json；初轮9/10网格夹具未清理inactive树的失败保留在live-auto-move-tests-first-status.json，只有夹具清理范围改变。完整程序集结果见live-auto-move-assembly-tests-status.json。

DefaultForestMovesShootsKillsAndRetargetsWithNoInputOrInjectedStats只调整两棵原250生命树的位置并隐藏其他树，不改默认Gun0/100伤害、库存、玩家档案或存档；验证实际无输入移动、Walk切换、池弹命中/死亡/计数减2/寻找第二个目标。

默认场景画面使用Editor工具AutoMovePreview.CaptureMovement/CaptureStop：观察原森林，完全不更改目标位置、枪槽、伤害、对象池、输入或存档，仅暂停抓图；对应walking/stopped两份visual-state.json记录实际位置、速度、输入、计数和目标。截图后退出Play、恢复timeScale1并核查无dirty。

## 普通森林客户端连续流程（2026-10-09）

`select_native_methods.py` 的 client-flow 组与 Ghidra ExportSelectedMethods.java，在当前 arm64 ELF/metadata 上生成 native-client-flow-reviewed-v4：57业务+6异常辅助，63/63 completed。查询文件为 reports/native-client-flow-queries.tsv，引用为 native-client-flow-references.tsv；辅助非返回定义 verified-noreturn.tsv。保留v1/v2/v3历史，不能覆盖原C/ASM误读证据。`export_client_flow_contract.py` 冻结v4 C/ASM和当前运行源码哈希；原规则12区分 exact-native、exact-serialized 与本地适配。

`prepare_forest_hud_slice.py` 与 `prepare_forest_progress_slice.py` 从不可修改Main基线生成独立切片。已有RecoveredClient已经接线，不重复Create或重新合并。ForestClientEditor通过Editor API复制已验收Forest，移除仅其验收runner，接回HUD/进度/原声音，再合并原共享Canvas866/SafeArea415/Main_UI455，按original-client-ui-sibling-order.json恢复顺序。panel屏幕位置必须不变；forest-client-canvas-merge.json应1Canvas/11730对象。原控制器四个meta必须逐字节等于基线，Main SHA保持e672f743a687af8268ef45408c922d6ddc7edce2cf40b9b2531fe3ede23aba7b。

正确现有Editor工程执行（只在EditMode且非测试时刷新或编辑Assets；不启动本工程第二个实例）：

```sh
/Users/rongdahuikeji/.unity/bin/unity command eval 'ForestClientEditor.Open(); return "client opened";' --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --format json
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter OriginalClientFlowTests --async_tests true --timeout 240 --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --format json
/Users/rongdahuikeji/.unity/bin/unity command test_status --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --format json
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter CatGunner.Recovery.PlayModeTests --filter_type assembly --async_tests true --timeout 420 --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --format json
```

异步start/外层success不是通过；等test_status.status=completed并核对summary/results。初次发现0例（程序集引用导入错误）、实际0/7启动/清理失败、7/7进度修复、68/68共享Canvas修复前及实际射线阻挡均保留。Canvas修复后的8/8报告为live-client-flow-tests-pointer-repair-status.json，最终完整为live-client-flow-assembly-final-status.json。实际点击测试对升级位置做RaycastAll，将第一命中分发PointerDown/Up/Click，并确认游戏世界仍命中FloatingJoystick；不是直接onClick程序调用替代真实输入路由。

ForestClientPreview只观察当前独立本地档案，零移动输入，不改枪、位置、目标、池、数值或存档。收入由真实击倒获得，升级通过原持久Button→Touch回调，并检查Raycast命中及钱包扣款。已有进度不重置，保存正常。当前本地目录为Application.persistentDataPath/RecoveredClient-vc257；不访问手机私有档案。

原HUD是ScreenSpaceOverlay，普通camera.Render截图会漏掉它。PlayMode暂停后用`UnityEngine.ScreenCapture.CaptureScreenshot(absolutePath); UnityEditor.EditorApplication.Step();`获取实际GameView帧（当前540×960视口的DPI2为1080×1920），等待文件生成、实际读取并记录SHA。不要修改像素或使用其他Unity项目的截图。结束设isPaused=false/timeScale1、退出PlayMode，打开RecoveredClient、不保存运行夹具，记录client-editor-handoff.json。

`python3 tools/export_client_flow_contract.py` 与 `python3 tools/update_verification.py` 在目标R目录执行；后者要求最终69/69 completed，否则拒绝写新通过结果。测试中的临时钱包/手动击倒只证明事务和状态机，不表示默认自动打完整局、真机/Player或生产服务通过。

实际点击观察必须先yield return null进入PlayerLoop；Editor eval同步StartCoroutine首步读到的是SceneView的Screen436×473，而当前GameView为1080×1920，可能导致零命中误报。最终观察已恢复正确帧上下文；运行源码/场景在69/69后未改变。源/场景/图片SHA、默认收入与点击扣款记录见client-editor-handoff及两份client-visual-state，失败证据见client-preview-error-history.json。

ForestClientPreview.CaptureNaturalNextWave仅等待默认自动战斗自然清波，不强制死亡。当前已有earned升级[1,1,0]，零输入自然清30树→Stage1-2/60树，rounds2/failures0，wallet1144，timer179.724；实际GameView已读并保存正常进度。150秒真实时间上限仅用于观察失败记录，不改变游戏180秒普通倒计时或timeScale。

## 库存与进度系统复现

`tools/export_progression_catalogue.py` 从原序列化组件导出23任务、10宠物和3×20001永久升级缓存，并以原metadata静态字段SHA256复核高阶枪数组。`tools/select_native_methods.py` 支持 inventory-progression、inventory-dependencies、companions-core、companions-geometry、pet-lifecycle、speedrun-client、progression-ui，各自输入Ghidra相同有界导出工具。

生成场景切片的脚本保护现有文件，已有工程不需再次执行生成/整合。全新准备工程依次使用 prepare_inventory_slice、InventoryClientEditor.Integrate，prepare_progression_slice、ProgressionClientEditor.Integrate，prepare_speedrun_slice、SpeedRunClientEditor.Integrate，prepare_progression_nav_slice、ProgressionNavEditor.Integrate，最后ProgressionDependencyEditor.Repair，export_progression_activation.py导出原活动状态，ProgressionActivationEditor.Restore恢复工作场景默认状态。原Main只读，工作场景变更通过Unity Editor API。整合可能超过CLI5秒等待，但操作仍会完成；先检查落盘报告和场景引用，不可直接重复整合。

当前编辑器必须是CatGunnerUnityClient，传--project-path。完整验证命令：

```sh
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter CatGunner.Recovery.PlayModeTests --filter_type assembly --async_tests true --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --format json
```

等待Temp/pipeline_test_status.json成为completed并检查failed=0，再保存至reports/live-progression-assembly-final-status.json。专项使用testName筛选OriginalInventoryTests、OriginalProgressionTests、OriginalSpeedRunTests；零测试和running均不是通过。所有功能测试必须使用独立档案，不能给用户实际档案注资或清零。更新统计使用tools/update_progression_verification.py。


### Follow fixture and visual observation boundary

The inventory/UI test disables the hero update bridge, explicitly records its stationary trail and places the companion beyond original FollowMaxDist in an obstacle-free isolated fixture. It asserts Follow before movement and actual Rigidbody displacement after two seconds. Arrival may legitimately transition to Assist/Chase/Attack. companion-follow-physics-observation.json records displacement and arrival state; no user-save writes.

Preserve all assembly first/second/third/fourth start/status reports and focused failures. Only a completed zero-failure live-progression-assembly-final-status.json updates VERIFICATION.json; focused results do not replace the full regression.

CatGunnerProgressionPreview uses a read-only clone of the current user profile under /tmp/catgunner-progression-visual-profile. Original archive hashes are compared before/after. No currency, equipment, pet, stage or mission injection. The Editor helper is disabled by default and restores the normal scene/save settings on Finish.


Final accepted run: live-progression-assembly-fifth-status.json copied to live-progression-assembly-final-status.json only after completed86/86,0 failures,404.53 seconds. Fourth run is interrupted_editor_exit, not a pass.

Current visual observation is NOT accepted: the actual inventory PNG contained a cached/initial forest frame instead of the opened panel/current wallet. It is preserved as progression-inventory-stale-frame-unaccepted.png with accepted=false in progression-inventory-visual-state.json. Native window discovery then timed out. Do not reuse this image as new-panel parity evidence. The helper was finished and the saved normal scene reopened; original profile hashes still match.

## Boss 挑战增量（vc257）

1. 保持原包和 AssetRipper baseline 只读，选取 `boss-client` 原生方法范围，用 ExportSelectedMethods.java 在匹配 Ghidra 项目导出；当前49行status全部完成，43个业务/状态机及6个异常辅助。普通Enemy健康条分支另见 native-forest-grid/Enemy_Slider_Reload。
2. `tools/prepare_boss_slice.py` 从原Main索引生成新输入 `RecoveredBoss.unity`；已存在时拒绝覆盖。原始根为1454/233/1401/146，保留Ancestor、9套皮肤、EnemyColl、Animator和SlicedFilledImage，记录隔离的组件和外部引用。
3. Unity6 EditMode 调用 `BossClientEditor.Integrate()`，通过Editor API合并原Canvas、Contents_UI与SafeArea等祖先，保留锚点和导航顺序，绑定BossMode，保存RecoveredClient。已有Boss时拒绝二次合入；预Boss场景备份见checkpoints/pre-boss-RecoveredClient.unity。
4. 测试从RecoveredTarget隔离入口开始；当前进度存档不启动。先运行OriginalBossTests，再按CatGunner.Recovery.PlayModeTests程序集执行PlayMode回归。原Gun20测试装备仅放到独立档案，用实际自动移动/子弹击败原50000HP Boss，不改原健康/时间，不注入玩家装备/钻石。
5. 旧档兼容允许尚无内容的Pet_Collect及Rebirth_Upgrade_Lv空数组补为中性记录，拒绝非空非法长度；存档保存测试使用独立临时目录。对实际试玩档案只作只读哈希及启动兼容检查，不重置进度。
6. 完成后打开正常RecoveredClient、退出Play/暂停、Persist=true、SaveFolderOverride=null。Boss可从原Boss_Btn进入；普通失败/通关界面返回森林。排行榜、广告倍奖、PlusPack和扫荡不可执行。

Boss视效使用原素材和动画，健康标签的数字缩写、完整原手机截图对照、Player构建、1000关后InfVal归一化和商业服务不由PlayMode测试证明。

## 矿山普通模式增量（vc257）

1. `select_native_methods.py mine-client` 与 `mine-dust` 生成原地址、16字节门禁、metadata/unwind边界和call aliases；ExportSelectedMethods的第三参数为实际存在的`reports/verified-noreturn.tsv`。当前正确导出目录为`native-mine-client-reviewed-v2`与`native-mine-dust-reviewed`，原导出/失败日志保留。
2. `prepare_mine_slice.py` 只首次生成新输入RecoveredMine，读取冻结Main的原1526/1895/1165/1231/562分支；不覆盖已有输入或工作场景。`Mine_manager/Mine_Start_UI/Mine_Slider/Ore/Particle_Polling`复制原`.cs.meta`；字段必须精确为Ore.spriteRenderer与DustSpawn_trans，不能另造名字而让Unity丢失引用。
3. 首次EditMode执行`MineClientEditor.Integrate()`，已有MineMode时拒绝重复合入。当前合入后需用`RepairOreReferences()`从只读输入的同一矿石子树映射1000个引用，不能猜测渲染器或发射点。预矿山场景在checkpoints/pre-mine-RecoveredClient.unity。
4. 从RecoveredTarget开始，先OriginalMineTests专项，再整组CatGunner.Recovery.PlayModeTests PlayMode。独立档案原Gun20进行自然60秒、零输入实际子弹采矿，不改矿石血量/命中伤害/倒计时，不写入玩家装备或货币。单次点击高伤害依然1点，普通3击/稀有5击；中途退出、重复结算和迟到伤害均分别检查。记录采矿积分、奖励、时间和位移。
5. 所有临时存档使用临时目录；实际恢复档案只读SHA前后对比。完成后打开正常RecoveredClient、Persist=true/无SaveFolderOverride、无Play/暂停/编译/dirty。Play→原Mine_Btn→普通Enter可试玩，普通每天2次。

本机离线日历、早退取消、已有兼容粒子shader和数字文本是适配层。原粒子发射数的功能证明不能当作画面/原shader/设备验收；浮动钻石文本、付费MinePack、广告4倍、扫荡和原服务器仍待恢复。

## 怪物挑战普通模式

原配置证据复核：`python3 reverse/com.Chodun.CatGunner/1.1.61-vc257/tools/export_monster_contract.py`。原生核心选择为 `select_native_methods.py monster-client`；noreturn helpers须保留，完整导出55个字节门禁通过的方法。

`prepare_monster_slice.py`只读冻结Main、只创建不存在的RecoveredMonster输入，保留原manager/240怪/20图/防线/UI/黏液层级。工作场景使用MonsterClientEditor.Integrate通过Editor API合并；已有MonsterMode时拒绝重复合并。预恢复场景见checkpoints/pre-monster-client。

测试前打开RecoveredTarget；所有OriginalMonsterTests在sceneLoaded时设置Persist=false，再启动客户端，绝不加载/覆盖真实试玩档案。专项使用 `unity command run_tests --mode playmode --filter OriginalMonsterTests --async_tests true`，完整回归使用 `--filter CatGunner.Recovery.PlayModeTests --filter_type assembly`；通过test_status读取完成结果，运行中不得编辑Assets。报告分别保留，Editor截图/Player/真机不由PlayMode结果代替。


## 团战普通客户端续恢复（2026-10-10）

在本构建输入和原分析数据库上生成 `raid-client`、`raid-dependencies`、`raid-calendar-demo` 三组 native 查询，再用上述 ExportSelectedMethods 四参数流程分别输出三份新 reviewed 文件夹。`python3 .../tools/export_raid_contract.py` 复核两个 FieldInfo/SHA 数组和八个原字符串。

`prepare_raid_slice.py` 只从冻结 Main 创建新的 RecoveredRaid 输入；已有输入存在时会拒绝覆盖。`RaidClientEditor.Integrate()` 只允许 EditMode 且现有客户端没有 RaidMode 时执行；不得在已经接入的场景重复调用。接入前回滚副本在 checkpoints/pre-raid-client。

Unity CLI 始终显式选择 CatGunnerUnityClient 工程。先打开 RecoveredTarget，再异步运行 `OriginalRaidTests`；完成后运行 `CatGunner.Recovery.PlayModeTests` 整个程序集，分别保存 start/status。Persist=false 在 sceneLoaded 回调中先于 Start 生效，所有装备和时钟夹具均独立于试玩存档。不得在活动测试期间修改 Assets，也不得把 status=running、旧状态或专项与旧整组组合成全量通过。

原 UI 弹窗动画需要完成后才能进行 EventSystem 顶层命中和 pointerClick。GPU截图如有，仅属于独立测试场景，不能作为原手机或全部视觉验收。最终恢复 normal RecoveredClient EditMode、timeScale1、非暂停、Persisttrue/无档案覆盖，并核对试玩档案 SHA 与原 .meta。

## 最新星级续恢复（vc257，2026-10-10）

规则与适配见original-game-rules/17_STAR_UPGRADES.md。tools/export_star_contract.py核对原概率初始化、增长指针、十个字符串、翻译镜像和冻结三输入SHA；三个native范围查询分别在native-star-client/numeric/feedback-reviewed中。原场景53节点提取由prepare_star_slice.py产生新的RecoveredStar；禁止覆盖现有已恢复主场景。StarClientEditor只允许未接入工程合入一次，实际工作场景保存在原RecoveredClient，接入前快照在checkpoints/pre-star-client。

真实验证从RecoveredTarget启动，先运行OriginalStarTests五项专项，再运行CatGunner.Recovery.PlayModeTests完整程序集。当前最终结果单次111/111（686.76秒），专项5/5（23.61秒），对应live-star-*-final-status.json，不能把cancelled首次全量或几次专项合成完整通过。全部PlayMode档案独立，实际用户文件由star-user-save-before-final-tests.json与after-tests.json比较；最初整轮SHA变化单独保留，不回滚当前进度。正常Unity6000.4.10f1入口交接见star-editor-handoff.json。

星级入口按原最高进度值390开放，不为试玩绕过解锁或发星石。尚未恢复商业粒子完整行为、原I2语言生命周期、全部原视觉、Player或手机验收。

## 2026-10-10 皮肤续恢复

当前工程已经整合，勿重复导入皮肤切片。来源仅为 com.Chodun.CatGunner1.1.61/vc257，旧XAPK和UnityClient不参与。

1. `tools/select_native_methods.py` 的 skin-client 组生成查询及别名；同一 frozen native 的 Ghidra headless 导出至 native-skin-client-reviewed。status.tsv 必须40条全部完成且输入前16字节匹配（34业务+6辅助），原 VA/Ghidra基址差保持0x100000。
2. `tools/export_skin_contract.py` 交叉验证原Main25项与 native16/10/5/100系数及两条UI字面量；已接受的验证字段保留。此工具会写工作Resources目录，必须在没有测试或Play运行时使用。
3. 只有尚未整合的全新工作副本才执行 `tools/prepare_skin_slice.py`；它拒绝覆盖已有 RecoveredSkin.unity，并从冻结Main文档索引读取480/1160原根与必要祖先。原始切片可以生成YAML，现有工作场景只能通过EditorAPI操作。
4. 新副本编译完成后调用 SkinClientEditor.ScheduleIntegrate，等待 skin-client-scene-restoration.json 确认保存。原主角控制组件ID已重建，按原GameObject29892查源147400，再恢复88628/87086渲染器。皮肤SourceSprites/Colors/25Rows/25ItemRefs不可用默认占位替换。已保存的整合只用 FinalizeIntegratedScene 补验证，不能重复合并。
5. 复用已有兼容字体；不要把嵌入StarChineseFallback送进要求原PNG的 RebuildSceneDynamicFonts。原通用 BounceBtn/SFX_BtnScript/Hatch/Mute_Panel/Localize 仍保留为未支持边界，购买/选择方法内音效已恢复。
6. Unity6000.4.10f1从 RecoveredTarget 独立入口执行 `run_tests --mode playmode --filter OriginalSkinTests --async_tests true`，然后 `run_tests --mode playmode --filter CatGunner.Recovery.PlayModeTests --filter_type assembly --async_tests true --timeout 1500`。最终实际专项5/5（58.5秒），同一完整程序集116/116（723.98秒），不可用历史111例状态替代。每个场景加载回调在Start前指定Persist=false或唯一临时目录，禁止修改试玩档案来购买皮肤。
7. 检查最终三张GPU皮肤图与已有星级页，保存 skin-gpu-inspection.json；退出Play/暂停，TimeScale1，恢复已保存RecoveredClient、Persist=true、无临时Override。通过 tools/skin_handoff_eval.txt 只读核对正常状态和保存 skin-editor-handoff.json。
8. frozen Main/native/metadata、三份原MonoScript meta、50个Sprite GUID和试玩主/备份文件全轮SHA核验通过后，`tools/update_skin_acceptance.py` 仅接受实际116/116和5/5/正常交接证据，更新README/进展/规则/VERIFICATION。旧星级验收更新器发现新skin_evidence会拒绝回写历史结果。

当前没有 Player构建、真机全视觉或线上/购买服务验收；本轮没有Git提交/推送。失败的首次1/5、第二次4/5与整合/编译修复记录单独保留于 skin-command-history.json。

## 2026-10-10 遗物续恢复

当前工作场景已经整合，勿重复导入。规则见 original-game-rules/19_RELICS.md，快照 checkpoints/pre-relic-client 保留旧场景、脚本和真实试玩主/备份档案。

1. `select_native_methods.py relic-client` 输出 queries 与 **native-relic-client-references.tsv**；Ghidra 的第4个脚本参数是 references，不是不存在的 call-aliases 文件。匹配原 DB/libil2cpp.so，77条status全完成、原首16字节核验，其中71业务+6辅助。Random_Get反编译成void，但ASM保留x0并RET，结果确实返回所选Relic_Info；页面数量FRINTP/FCVTPS为向上取整。
2. `export_relic_contract.py` 从冻结Main的123933经理和123441核心精灵、124806抽取序列读取配置，核对输入SHA、15项排列、三份300行表、所有字符串与动画时序。它会写Resources，禁止在Play或测试运行时执行。原表Lv300缺失，不加入虚构行。
3. 未整合的新工作副本使用 `prepare_relic_slice.py` 和 `prepare_relic_slice_v2.py` 生成新的 Relic/RelicRepair 场景。两个工具拒绝覆盖现有输入；Main不变。初版过滤31个已支持的SlicedFilledImage/BounceStart，修复版允许工作脚本既有GUID。工作主场景只能用Editor API修改。
4. 新副本编译完成后 `RelicClientEditor.ScheduleIntegrate` 合并747个原对象输入，随后 `ScheduleRepair` 从修复输入用AddComponent/CopySerialized/SerializedObject重连原组件和引用。Editor移动/保存可能改变文件ID；修复按原层级和同名序号逐个校验，不能假设Canonical Canvas仍为866。原CloseBtn_obj是容器，实际Close_Btn在子层级。待relic-original-component-repair.json及relic-client-scene-restoration.json明确保存后才进入测试。
5. 原Adventure按钮直接打开原遗物页是当前本地桥接；设置原Menu_Relic为激活、Adventure_UI(SafeArea)默认关闭，保留原列表/详情/结果/核心Sprite。复用已经修复的字体，不对嵌入星级图集跑要求PNG的全场景重建。未支持的Menu/Scrolling/BounceBtn/SFX_BtnScript/Hatch/I2仍保留为边界。派遣页、完整解锁与新档核心生产后续恢复；不填充试玩余额。
6. 从RecoveredTarget入口运行 `run_tests --mode playmode --filter OriginalRelicTests --async_tests true`，再运行 `run_tests --mode playmode --filter CatGunner.Recovery.PlayModeTests --filter_type assembly --async_tests true --timeout 1500`。sceneLoaded、Start前设Persist=false或唯一临时保存目录。最终专项7/7为32.74秒，第一次3/7、第二次6/7失败报告保留。实际完整回归以live-relic-assembly-final-status.json为准，不能用历史116或专项拼成完整通过。
7. 原BounceStart重放卡片会从0.001缩放开始，左右翻页后至少等0.4秒再GPU截图，不能用仍在缩放的旧帧判定12卡恢复。检查五张最终relic-*截图、自然伤害与金币观察报告；截图是测试夹具，不是原手机或全部视觉验收。
8. 退出Play/暂停、TimeScale1、复原正常RecoveredClient，Persist=true且无SaveFolderOverride/visualClone；`tools/relic_handoff_eval.txt`只读检查32k对象、1Canvas、0缺脚本，15原项/16Fill/4Sprite/12结果位及已有皮肤星级/Raid引用。核对用户文件整轮SHA和冻结Main/native/metadata、10份原MonoScript meta。
9. `update_relic_acceptance.py`只接受实际123/123、独立专项7/7、最终GPU和正常交接，保留prior_skin历史。旧update_skin_acceptance发现relic_evidence后拒绝回写历史结果。

本轮不构建Player、不提交/推送Git；派遣、鱼类、遗物离线/跳关消费者和缺表最高级、全局解锁/I2/所有视觉/真机及原在线服务等仍未验收。

## 2026-10-10 普通派遣续恢复

当前已经整合，勿重复合并RecoveredAdventure。冻结Main/native/metadata和14份脚本meta见adventure-original-preservation.json；快照pre-adventure-client保留旧工作场景/脚本及试玩主备份。

1. select_native_methods.py的adventure-client/dependencies/save-load/state分别生成142/16/10/9条包含重复辅助的查询；各自status.tsv完整、首16字节匹配后才导出合同。不将导出数量当作功能百分比。Ghidra使用verified-noreturn.tsv与native-*-references.tsv，原VA加0x100000。保留启动参数/缺文件失败历史。
2. export_adventure_contract.py仅在EditMode执行，读取原37组件、15经验行、2个metadata默认初始化blob、4核心图片；ctor的宠物槽0/2/7不与过时静态Lv13标签混同。ContinueLoad保留非空Exp表，非缺失档案不调用Exp_Balance_Reload替换。已接受extra-evidence不能被重新导出清除。
3. 只对未整合的新副本执行prepare_adventure_slice.py，根406/740/803/1419与祖先生成新的1825对象切片；拒绝覆盖已有源片。先保存.cs，再恢复匹配原.meta，避免Editor为不存在脚本重造GUID。现有工作场景修改仅用Editor APIs。
4. AdventureClientEditor.ScheduleIntegrate合并并CopySerialized/SerializedObject重连原33组件；RestorePanelOrder恢复原GO977六孩子顺序。RepairIntegratedPanelOrder仅用于已有整合的精确顺序修复，不重导主场景。保存虽可能超过IPC5秒返回timeout，必须检查持久修复报告/已保存场景，不能盲目重做。
5. Adventure_Enter_popup.Open建立原序列化为空的petSelect_popup.enter_popup运行时owner；奖励退出背景Button的中心被结果Panel遮挡，点击屏幕下部真实可用区域并要求Raycast最上层为该按钮。地图选择/手选宠物/出发/完成/取消/切遗物全部实际屏幕射线。保留原贴图/字体色彩，隐藏未恢复Pet_Dummy预览；广告、会员减时、购买核心/强制完成不可获得本地伪成功奖励。
6. 从RecoveredTarget隔离入口运行run_tests --mode playmode --filter OriginalAdventureTests --filter_type testName --async_tests true；sceneLoaded的Start之前设Persist=false或唯一临时目录。参数class无效，不能算测试。实际专项8/8，此前6/8、7/8、7/8保留各自结果；Grade4单精度27核心和关闭点误测独立说明。
7. 完整回归run_tests --mode playmode --filter CatGunner.Recovery.PlayModeTests --filter_type assembly --async_tests true --timeout1500，首次整套回归中断/无完成报告单独保留，重开同版本Editor再从隔离入口重跑；实际131/131报告为live-adventure-assembly-final-status.json。不能用历史123/专项相加代替同一次完整报告。测试期间不能写Assets触发domain reload。
8. 查看4张最终adventure-* GPU：标签、三地图、手选宠物/门票费用、取消无退款、领取核心经验；截图是独立夹具，不是真机全视觉。verify_adventure_preservation.py检查3冻结输入、14原meta、主/备份整轮SHA；正常EditMode、TimeScale1、无暂停，打开已保存RecoveredClient，Persist=true/无SaveFolderOverride/visualClone。adventure_handoff_eval.txt复制到.cs后用eval_file --file调用。
9. update_adventure_acceptance.py仅接受实际8/8与131/131、GPU读取、正常交接和SHA证据；旧update_relic_acceptance发现adventure_evidence拒绝历史回写。保留原遗物/皮肤/星级历史验收，scope_complete=false。

本轮不构建Player、不提交/推送Git；鱼类、自动合成、遗物离线/跳关、缺表最高级、全UI/Spine和真机、SDK/联网仍需继续恢复。

## 2026-10-10 普通保险箱与武器锁

1. select_native_methods.py safe-client，52业务/协程+6辅助查询；matching arm64 SHA及首16字节、status.tsv全部完成后才分析。resolve_safe_literals.py从ELF RELA双指针及kind5 decoded metadata读取原价格和4提示键。
2. pre-safe-client保留旧场景/脚本/Editor/Tests与试玩主备份；prepare_safe_slice.py仅对未整合副本生成新469对象切片，源根2026/2027/1221，不覆盖已有切片。SafeClientEditor.ScheduleIntegrate通过Editor API合并共用祖先并重连，禁止对已整合场景重复合并；不手改工作场景YAML。
3. 先保存4份.cs再复制原.meta；验证与冻结ExportedProject字节一致。初始化短旧数组补-1到16，非法档案在修改前拒绝，并记录与native clamp/丢弃的适配差异。Safe状态加入原独立JSON档案，未读取原手机私有档案。
4. 从RecoveredTarget运行run_tests --mode playmode --filter OriginalSafeTests --filter_type testName --async_tests true --timeout180。所有sceneLoaded回调在Start前禁用Persist或指定唯一临时目录，不能改试玩档案。原GunItem_Demo子按钮遮住Safe_Slot父Button；点击实际子按钮。按钮SetActive切换需等待下一UI帧注册Graphic深度，不能将同帧无命中计作原操作失败。5/7、6/7、最终7/7分别保留。
5. 运行整个CatGunner.Recovery.PlayModeTests assembly async timeout1500，实际138/138见live-safe-assembly-final-status.json；此前131/131单独保留，不能加专项结果冒充完整运行。运行时不写Assets触发domain reload。partial-observation仅只读进度，不算完成证据。
6. 查阅两张safe-*-test-gpu真实图。verify_safe_preservation.py检查3冻结输入、4原meta和试玩主备份整轮SHA；测试结束退出Play/暂停、TimeScale1，打开并保存正常RecoveredClient，Persist=true且无Override/visualClone。safe_handoff_eval.txt复制为.cs再eval_file，读取16槽/原资源/零缺脚本/1Canvas与前序派遣遗物皮肤星级字段。
7. update_safe_acceptance.py仅接受实际专项7/7、整套138/138、GPU、保留和交接证据；旧update_adventure_acceptance.py发现safe_evidence拒绝回写历史验收。全客户端scope_complete=false；自动合成原PlusPack2未伪造、AD/商业服务仍排除。取出spawn-bounce/震动/完整I2与提示视觉、鱼类等后续恢复。


## 2026-10-10 启动异常与旧Raid档案兼容修复

1. 冻结主/备份及工作场景到checkpoints/pre-startup-legacy-raid-fix；读取真实Raid空数组，按native-raid-client-reviewed/Raid_manager_EnsureBestArray.c恢复7格并保留前缀。
2. RecoveredClient.unity保持原场景SHA，Awake接入原Loading_UI/Walk；验证所有经理前校验及准备完成后的存档许可。新启动时间1.5+0.2秒、面板临时隐藏是离线适配。
3. Unity6 6000.4.10f1已安装版本；如编辑器退出，使用macOS open -n -a打开同项目，保留其他Unity工程。初次CLI启动进程早退未产生测试结果；随后原版本正常连接、编译通过。
4. OriginalStartupTests最终4/4、26.41秒；独立测试使用冻结的真实旧档副本与临时文件夹。其他恢复夹具现在等待ClientStartupWait.Ready()，不假设首帧已开始战斗。
5. 完整CatGunner.Recovery.PlayModeTests assembly async运行142/142、902.37秒见live-startup-assembly-final-status.json。首次完整运行在按钮展示修正前被主动取消，其状态不能作为全量验收；此前138/138记录仍为历史。
6. 查看reports/visual/startup-walking-cat-gpu.png和startup-auto-combat-gpu.png原GameView GPU图；读取startup-fix-preservation-and-visual.json及startup-fix-user-save-after.json。退出Play/暂停、TimeScale1、Persist=true/Override null，eval_file运行tools/startup_handoff.cs并聚焦Editor。
7. startup-legacy-raid-fix-contract.json和VERIFICATION.json记录实际最终结果；无新APK/Player、无手机全视觉验收、未提交或推送Git。

## 鱼类、自动合成与共用 UI（2026-10-10）

已有工程不要重跑会拒绝覆盖的切片生成/初次整合。新分析查询scope为fish-client、auto-merge-ui、fish-animation-ui、pet-auto-ui，工具select_native_methods.py和ExportSelectedMethods.java使用同一matching native及+0x100000坐标。

FishClientEditor.Integrate只适用Fish尚未接入的快照；输入RecoveredFishComplete.unity包含原Fish_Btn，早期RecoveredFish.unity仅作保留记录。SharedUIClientEditor.Integrate可在正确工作场景EditMode重连837条记录，保留原enabled、数字和引用，不能用于其他项目/播放期间。

使用本机CLI显式选工程，编辑脚本后先AssetDatabase.Refresh并确认编译完成，再运行测试。新增日志夹具没有引入商业/序列化依赖。长Editor保存若报5秒超时，要检查持久报告/脏场景/实际引用确认操作是否已经完成，不盲重跑。

```sh
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter OriginalFishAndAutoMergeTests --filter_type testName --async_tests true --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --format json
/Users/rongdahuikeji/.unity/bin/unity command run_tests --mode playmode --filter CatGunner.Recovery.PlayModeTests --filter_type assembly --async_tests true --project-path /Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient --format json
```

每次等test_status结束后再启动下一轮，不在测试中编辑Assets；保存完整实际结果。最终专项18/18，完整单次160/160。独立夹具使用临时目录/不持久化，不能给用户档案注入装备、货币或购买。打开RecoveredClient.unity后Play可直接进入原行走加载与自动战斗；鱼缸使用原导航按钮，Auto是明确标注的离线试玩开关。


## 宠物Spine与派遣预览恢复（2026-10-10）

精确来源与SHA：pet-spine-runtime-installation.json。先下载官方spine-unity-4.1-2024-06-19.unitypackage到/tmp/catgunner-spine-4.1.unitypackage；tools/install_pet_spine_runtime.py只用于无已安装SpineRuntime的工作副本，存在文件会拒绝覆盖。Runtime文件保留许可头，按匹配原导出类型/Shader保留身份；不安装Editor自动导入器或示例。当前工程已安装，勿重复执行。

tools/export_pet_spine_manifest.py从冻结Main原索引生成Assets/Recovery/Editor/OriginalPetSpine.json；tools/prepare_pet_presentation_slice.py只建立新独立预览切片，拒绝覆盖；Editor执行PetPresentationClientEditor.Integrate，通过路径+同名序号和原GUID/fileID恢复组件，不手改工作场景YAML。Unity6仅对官方SkeletonRootMotionBase更新兼容API，具体差异见pet-spine-runtime-compatibility.json。

原生scope pet-spine-preview，native-pet-spine-preview-queries.tsv / references.tsv / verified-noreturn.tsv，按既有ExportSelectedMethods.java导出；17条全部输入字节匹配与C/ASM完成，Ghidra坐标相对preferred为+0x100000。tools/export_pet_spine_contract.py审计来源、GUID和输入保持。

PlayMode过滤OriginalPetSpineTests，独立档案5项；完整运行过滤assembly CatGunner.Recovery.PlayModeTests。使用命令实际test_status最终结果，不用部分回调作为全通过证据；两张GPU图是测试装备/锁定输入，非玩家进度。最终交接正常RecoveredClient、Persist=true、SaveFolderOverride=null、EditMode；主/备份和冻结输入分别校验。

## Pet detail and rebirth hold UI (2026-10-10)

Use select_native_methods.py detail-hold-ui with matching native bytes, ExportSelectedMethods.java, verified-noreturn.tsv and native-detail-hold-ui-references.tsv. The native-detail-hold-ui-reviewed export must have 19/19 completed (13 business including iterator, 6 helpers). export_detail_hold_contract.py checks hashes, original GUIDs, +{0}% literal, Image.SetNativeSize slot45, constructor float defaults0.4/0.1; original scene holds0.4/0.04 separately.

Open normal RecoveredClient in EditMode. unity command eval_file --file <absolute tools/integrate_detail_hold.cs> restores only the two original pet-arrow Button interactable flags via Editor APIs; refuses dirty scene and preserves original events. If main-thread save times out, inspect the persisted integration-final report and actual scene state before retrying.

Run OriginalDetailHoldTests, OriginalProgressionTests and OriginalPetSpineTests separately in PlayMode; filter_type testName, async_tests true, then test_status. Final reports are live-detail-hold-focused-final-v2-status.json (4/4), live-detail-hold-progression-final-status.json (8/8) and live-detail-hold-pet-spine-final-status.json (5/5). Current full assembly is not rerun; historical165/165 predates this UI slice. Preserve earlier fixture and first implementation failures.

Independent persistence uses unique temporary folder; all other fixtures set Persist=false before Start. Restore normal scene, Persist=true, SaveFolderOverride=null, EditMode; inspect detail-hold-editor-handoff.json, save before/after hashes, GPU captures and final console record. Run update_detail_hold_acceptance.py only after final reports and handoff validate. No Player/device/online/commercial acceptance or Git delivery is implied.

## Ordinary content unlock gates (2026-10-10)

Use select_native_methods.py content-unlock-ui and the matching libil2cpp/metadata, ExportSelectedMethods.java, verified-noreturn.tsv and native-content-unlock-ui-references.tsv. All26 queries must finish with input bytes matched. export_content_unlock_contract.py verifies the original32-byte initializer SHA, compressed signed enum values, frozen Main/native/metadata, manifest callback evidence and original manager GUID.

export_content_unlock_manifest.py reads only frozen Main; ContentUnlockClientEditor.Integrate operates on clean EditMode RecoveredClient through Editor APIs. The current scene is already integrated; do not reimport or repeat merge. Its single original manager root, eight button/lock references and eight sole Content_Btn_* listeners are recorded in content-unlock-scene-restoration.json. An IPC5-second timeout may still complete a save; inspect persisted report and actual scene before retrying.

Run PlayMode OriginalContentUnlockTests (testName), ContentNavigation (category), ContentNavigationExtra (category) and OriginalStartupTests (testName) separately with async_tests=true and explicit project-path. Wait for completed test_status before editing Assets or beginning the next run. The separate totals are5,8,3,4; no current full assembly run is claimed. Existing navigation fixtures set only their independent nonpersistent historical frontier and yield one UI frame after enabling buttons. Never inject this fixture into the user's profile or production initialization.

Keep live-content-unlock-before-status.json, focused-first-status and navigation-first-status failures distinct. Inspect visual/content-unlock-stage11-test-gpu.png; the historical frontier is11 while the independent current HUD is1-1. After tests use tools/content_unlock_handoff.cs via eval_file to reopen normal RecoveredClient in EditMode, Persist=true/SaveFolderOverride=null; inspect content-unlock-editor-handoff.json and verify both user profile hashes against content-unlock-user-save-before.json.

update_content_unlock_acceptance.py requires actual completed5/5,8/8,3/3,4/4, final handoff and unchanged user profile/original inputs; then update_content_unlock_docs.py updates this documentation. Original tutorial controller is absent and follows native absence=false, with no tutorial completion record written. Local UI refresh, existing mode lifecycle bridge and English stage alert remain explicit adapters. Full tutorial/WeeklyShop/effects/localization/Player/device and commercial/online service acceptance remain pending.

## Gun merge tutorial cue (2026-10-10)

select_native_methods.py tutorial-ui uses matching input and exports51 queries via ExportSelectedMethods.java/verified-noreturn.tsv/native-tutorial-ui-references.tsv. Exported native-tutorial-ui-reviewed includes17implemented cue/arrow methods and28onboarding methods still not integrated, plus6helpers. export_merge_tutorial_contract.py verifies source hashes, float pairs, original2meta and manifest. No completion percentage follows from native query count.

export_tutorial_manifest.py reads frozen Main and emits OriginalTutorial.json; current scene already has source gun merge hierarchy. MergeTutorialClientEditor.Integrate only operates on clean EditMode normal RecoveredClient and restores two original components/manager reference. Do not import full onboarding or commercial HUD as if this slice already implements it. Scene changes use Editor APIs, no direct working YAML edit. Preserve source non-raycast Hand and originalmeta before Editor imports scripts.

After AssetDatabase.Refresh wait for compiler/domain reload to finish before run_tests. First attempted async launch lost its active collector during refresh and did not finish; do not treat running-with-no-result as passing. Keep retry fixture failure and corrected missing-component0/1 evidence. Final focused5/5 is a single completed run, not1+4 merged totals.

Run OriginalMergeTutorialTests, OriginalInventoryTests, OriginalFishAndAutoMergeTests and OriginalStartupTests separately using PlayMode/testName/async_tests=true/explicit project-path; wait for each completed test_status. Expected totals5/6/18/4. Do not change Assets while tests run, and do not sum these into a current full assembly result. Independent tests disable persistence before Start or use a unique temporary directory, preserving user profiles.

Read visual/merge-tutorial-hand-test-gpu.png. Use eval_file tools/merge_tutorial_handoff.cs after tests to reopen clean normal RecoveredClient, Persist=true/SaveFolderOverride=null/EditMode. Inspect merge-tutorial-editor-handoff.json, unchanged tutorial-user-save-before/after hashes and original2GUID/Hand Sprite reference. Then update_merge_tutorial_acceptance.py and update_merge_tutorial_docs.py require actual completed runs/handoff/preservation. Full initial tutorial, ordinary top-up and tutorial completion persistence remain unintegrated; attribution logging excluded, Merge_Tutorial_Logged is not forged. No Player/device/Git delivery is implied.

## Initial five-step onboarding (2026-10-11)

The earlier merge-cue section is historical. Reuse verified native-tutorial-ui-reviewed51 exports, with45business queries now implemented:17cue/arrow plus28Tutorial_manager. Do not count this turn as51new native discoveries. export_onboarding_contract.py validates original input hashes,3script identities, metadata enum0..5, SaveData bool+0x3c9, native_getDia increment*3 and3originalDOTween pulse records (Ease6 OutQuad,LoopType1 Yoyo).

prepare_onboarding_slice.py creates only a NEW immutable source scene from frozenMain root758; never overwrite existing working/input scene. Controller/3pulse adapter references are reconnected from original manifests by OnboardingClientEditor.Integrate in clean normal EditMode. Use Editor API only for working scene; preserve source image references. Missing7HUD fields are intentional pending branches and must not be replaced with fake commercial behavior.

Bind via RecoveryForestClient after validated profile loading; ContentUnlock uses actual tutorial step. Never reset a user save to see onboarding. Unique OriginalOnboardingTests temporary profiles use Ready(false); existing feature fixtures explicitly SetCleared through tests-only ClientStartupWait.Ready. Keep these test setups out of production behavior.

Wait for AssetDatabase.Refresh/compiler/domain reload to settle before async PlayMode tests. Store each completed report separately: focused5,ContentNavigation category8,OriginalContentUnlockTests5,OriginalMergeTutorialTests5,OriginalInventoryTests6,OriginalStartupTests4; visual-only fixture1 after explicit wallet UI refresh. Preserve first pre-pulse5/5 run and initial merge1/5 same-frame canvas failure as history. Ready now yields one render/layout frame after SetCleared, preserving real raycast assertions. Do not sum them into new full assembly acceptance. Gun5 auto-projectile challenge fixture is not starterGun0 or user-save proof.

Read both GPU images. Execute onboarding_handoff.cs to reopen normal scene; onboarding_console.cs saves original entries before clearing and refuses current errors. Assert ready/Persisttrue/OverrideNull/34376objects/0missing/2arrows/3pulse adapters, verify unchanged user main/bak SHA and3originalinputs/meta. Run update_onboarding_acceptance.py followed by update_onboarding_docs.py only after all completed reports and handoff. No Player/device/Git delivery implied; missingHUD/WeeklyShop/effects/localization/relicconsumers/Raidtasks/othercounterparity/commercial/online remain.


## 遗物跳波与结算滚动（规则32）

1. 从本轮checkpoint保存原场景/脚本/用户主备份；matching native scope `settlement-scrolling` 使用既有select_native_methods.py、ExportSelectedMethods.java、verified-noreturn.tsv及对应references.tsv。新native-settlement-scrolling-reviewed必须9/9完成（3业务+6辅助）。复用v4 Game_Win/Game_Start/Game_Fail/Loading、StageAdvance和Relic.Value_Reload并重验输入16字节和边界。
2. `tools/export_relic_skip_contract.py`核验三冻结输入、原提示动画/Pattern/script meta和用户轮前存档SHA；不执行旧切片生成器。新Scrolling保留原GUID，`tools/restore_settlement_scrolling.cs`通过eval_file/Editor API只补三个原组件。已有恢复工程可重复运行此脚本，但需EditMode/RecoveredClient/干净测试状态。
3. `tools/audit_relic_skip_scene.py`只读比较checkpoint与当前YAML文档：仅1184/1309/1986的GameObject组件列表和三项新增MonoBehaviour允许变化，原129123份其它文档保持。不得手改场景YAML。
4. 完成导入/编译后，先打开RecoveredTarget隔离入口，顺序运行PlayMode过滤OriginalRelicSkip、OriginalClientFlowTests、OriginalRelicTests、OriginalCurrencyFeedbackTests、OriginalStartupTests、OriginalContentUnlockTests，filter_type=testName、async_tests=true、绝对project-path。每组都先持久化completed test_status，并确认Editor不在PlayMode转换/无TestRun后才启动下一组；未完成状态不能发下一run_tests。原Gun5/Lv50/historic100仅独立临时档案，永不改用户存档。规则专项9、森林8、遗物7、货币6、启动4、解锁5分别记录，不相加成全量通过。
5. 原GPU图来自自然波清完后的下一波0.35秒，实际读取`visual/relic-skip-next-wave-gpu.png`。合成Rule32只是瞬态标志，存档仅保留推进状态/原收益；本地Restart/模式取消行为注明兼容适配。
6. `tools/relic_skip_handoff.cs`恢复正常EditMode工程并写交接，`relic_skip_console.cs`读控制台，`export_relic_skip_contract.py`重新检查存档/输入，记录final-runner-state。`finish_relic_skip_reports.py`只在六组实际完成、档案保持、场景/控制台/内部任务满足交接时更新报告。脚本错误和无活动任务的陈旧异步请求分别保留，不把它们计为通过。未请求Player/Git/真机验收。


## 省电模式与设置流程（规则33）

1. 保存轮前主场景、相关脚本及用户主备份hash。matching native scope为 `eco-mode-panel`，查询/别名生成使用select_native_methods.py，ExportSelectedMethods.java搭配verified-noreturn.tsv只读导出；4业务+6异常共10行必须completed。export_eco_contract.py额外验证Cat.Attack、Scrolling及五种Game_Enter，三冻结输入、原资源/meta和用户保存哈希。
2. prepare_eco_settings_slice.py只用于首次生成未存在的输入场景，不覆盖工作工程。Editor EcoSettingsClientEditor.Integrate只在干净正常EditMode执行，搬入52原对象、修复外部Camera/原层级顺序、按实际原Tutorial列表补Eco按钮；RestoreAnimations只补两项源DOTween参数的本地播放适配。两者禁止重复安装；CLI超时先确认实际场景/报告/组件状态，禁止盲目重做。
3. audit_eco_scene.py读取checkpoint与当前场景，以原层级名/同名序号/组件类型及Script GUID恢复身份映射，然后验证所有原字段。Unity自动localID碰撞重排必须纳入；不能仅凭fileID文档SHA变动判断原对象被改。仅允许三个父Transform列表与一个Tutorial引用业务变化。
4. 稳定编译后打开RecoveredTarget，顺序异步PlayMode过滤OriginalEcoModeTests、OriginalOnboardingTests、OriginalForestFeedbackTests、OriginalStartupTests，filter_type=testName。每项先持久化completed结果并确认Editor无内部TestRun/转换/编译，才能开始下一组。临时档案及nonserialized PersistPreferences=false隔离用户；真实鼠标边沿通过StandaloneInputModule。自然战斗使用默认Gun0，五模式检查调用各自实际Game_Enter及Game_Exit。
5. 检查三幅eco GPU图，eco_handoff.cs恢复正常场景并落盘交接，读取控制台和runner状态，重新export_eco_contract.py核对用户档案及当前SceneSHA。finish_eco_reports.py只在最终6/5/4/4四组均实际完成、零错误、场景审计和用户档案通过时发布当前状态；没有新全量、Player、Git或物理设备结果。


## 钻石存钱罐（规则34）

1. 保存diapig-before checkpoint/hash，original-diapig-contract核验冻结输入。选择diapig-client16业务与diapig-access2只读访问方法，Ghidra只读导出并保留首次空引用文件失败日志；select_native_methods已修正0别名时不写空行。两组完整22/8行与首16字节核对；商业与可信时间provider不接入。
2. prepare_diapig_slice.py仅首次产生新输入场景，保留两原脚本meta，不覆盖已有场景。通过Editor delayCall执行DiaPigClientEditor.Integrate一次，合并63原对象/重接Tutorial原引用/禁用不支持的3动作；检查落盘报告，不重复安装。
3. 独立save override、RecoveredTarget启动，顺序跑OriginalDiaPigTests7、OriginalOnboardingTests5、OriginalEcoModeTests6、OriginalForestFeedbackTests4、OriginalStartupTests4。每组completed/0失败且runner无活动任务再启动下一组。实际点击等待原BounceStart入口完成，退出等已有异步流程完成，不修改源参数。
4. 查看两张diapig GPU，运行audit_diapig_scene.py及audit_diapig_preservation.py，所有旧身份/字段通过仅4项允许差异，原metas/用户两档案/冻结输入hash一致。eval_file tools/diapig_handoff.cs异步打开正常scene，等待交接文件，再确认实际EditMode并用diapig_console.cs/runner状态保存最终结果；finish_diapig_reports.py只在所有证据完整时更新最新状态。


## 每日签到（规则35）

1. daily-check-before保存工作场景、源代码与独立用户存档hash。select_native_methods.py daily-check；匹配Ghidra只读导出native-daily-check-reviewed，27行包括21业务+6辅助完整，核验匹配libil2cpp/metadata/Main。
2. prepare_daily_check_slice.py仅一次生成新输入场景、保留两份原meta；Unity delayCall执行DailyCheckClientEditor.Integrate一次。移动原DailyCheck/DailyCheck_Btn两个分支、新增142原对象、原Sibling排序和Tutorial引用重接；推广与测试按钮禁用。不要重复集成或编辑工作场景YAML。
3. 显式Refresh并确认测试类型实际载入；零用例报告不算通过。首个测试代码缺少yield，compiler诊断保留；修正后再次确认程序集。先RecoveredTarget隔离入口；逐组运行OriginalDailyCheckTests6、OriginalOnboardingTests5、OriginalEcoModeTests6、OriginalForestFeedbackTests4、OriginalStartupTests4。读取completed+非零摘要且runner为空后再下一组，不拼接为一次全量。
4. 原DailyCheck无Mute_Panel，保留原行为而修正夹具。所有档案/日期与自动弹出开关均隔离。查看领奖前后两张GPU，运行audit_daily_check_scene.py和audit_daily_check_preservation.py，引用审计以及daily_check_handoff.cs交接。最后独立确认实际scene并读daily_check_console.cs/runner；finish_daily_check_reports.py仅所有证据完整时发布。


## 奖励视觉（规则36）

1. reward-presentation-before保存场景/源码/用户主备份hash。prepare_reward_presentation.py只读冻结Main索引，提取9个Tween、3个Target/Bounce和124527预设。select_native_methods.py reward-attraction/reward-rotation/particle-diamond，逐个只读Ghidra导出，核验业务19/3/16加每组6辅助完整。Bounce迭代器正确d__13，错误d__9历史排除。
2. prepare_reward_fx_slice.py只生成新输入场景一次。Unity Refresh确认实际类型；RewardPresentationClientEditor.Integrate只执行一次，保留原Quaternion而非Euler hint；预检曾拦住把Glow本身要求identity及横幅误用1秒的导入假设，没有改变已有场景。API新增3原对象、9本地旋转及2原Target/Bounce。
3. 源velocity/vortex启用，先运行失败的VelocityAndVortexAreAppliedBeforeAttraction测试，补齐原曲线/倍率/顺序，再Editor API UpdateMotionCurves保存。中间5/5+6/6+7/7不是最终源码结论。最后分组跑OriginalRewardPresentationTests6、OriginalDailyCheckTests6、OriginalDiaPigTests7、OriginalForestFeedbackTests4、OriginalStartupTests4；每组确认completed/非零/全部通过并等待runner为空。
4. 查看两张当前GPU；audit_reward_presentation_scene.py/audit_reward_presentation_preservation.py核验场景/源包/meta/保存；reward_presentation_reference_audit.cs核验引用。reward_presentation_handoff.cs回到正常场景，再独立确认实际场景、Console与runner；finish_reward_presentation_reports.py仅证据齐备时发布。


## 每日任务与普通赛季奖励演出（规则37）

1. `mission-presentation-before` 保存场景/6修改源码/README/报告与用户主备份哈希。`prepare_mission_presentation.py` 只读冻结Main，提取125149/125150/138009与两TMP引用。`select_native_methods.py mission-presentation` 和只读Ghidra导出7业务+6辅助；额外Value_Reload用于输入诊断。
2. `OriginalMissionPresentationTests` 先运行，保留before5结果；修正独立枪集合夹具后max-before1确认17变27错误。补齐原任务/赛季呈现方法、等级+1、满级XP边界。Refresh等待实际类型编译；绝对路径`mission_presentation_integrate.cs`延后OpenScene+EditorAPI Integrate一次，添加2原组件和原字段引用。不要再次运行Integrate。
3. 初次4/5与task0/1是新启用可领取图形尚未Canvas注册的输入夹具；在UI_reload后等两个帧，再做top-raycast和实际鼠标Down/Up，未改背景raycast或原层级。完整5/5后修正截图需等待帧再关窗，接受专项再次5/5。新增失败的RepeatedBinding真实音效检查确认持久回调和运行回调双重领奖；修正接线后完整专项6/6。分别跑共享奖励6、成长导航8、启动4，确认每批completed、非零全通过与runner为空。保留旧规则GPU，回归新GPU另存`mission-regression-*`，还原旧图而不覆盖历史哈希。
4. 实际查看任务flight/settled两图。运行`audit_mission_presentation_scene.py`与`audit_mission_presentation_preservation.py`；Editor `mission_presentation_handoff.cs`恢复普通场景，`mission_presentation_reference_audit.cs`核验原引用；独立确认当前实际scene/Console/runner，证据齐备才运行finish脚本。无Player/Git/真机操作。


## 任务提示与赛季奖励定位（规则38）

1. 保存 `mission-navigation-before` 场景/4源码/主备份指纹和文档；`prepare_mission_navigation.py`只读冻结Main提取原manager124352、提示891、Scroll125462与25槽坐标，不改资产。
2. `select_native_methods.py mission-navigation`、匹配只读Ghidra导出16业务/状态机+6异常辅助；核验3owner、rect ARM64返回寄存器及preferred0x106c190的0.3float。先跑独立导航5失败，随后实现4源文件中的循环/选择器/成功领奖滚动。Refresh确认实际类型，绝对路径`mission_navigation_integrate.cs`用延后Editor API只补一次原提示引用。此接线工具拒绝已接线；不要反复执行。
3. 原5专项通过后补Owner disable/rebind/VIP/Luxury边界，完整6/6。只追加activeInHierarchy/提示GPU断言后聚焦Alert1/1；生产未变，保留源夹具前后哈希，不能算作7个不同用例。分别跑原呈现6、成长8、启动4，读取每批completed计数，保留其start/status。测试SceneLoaded覆盖独立目录且先于Start，不写用户存档。旧GPU复制checkpoint/visual；回归新帧另存`mission-navigation-regression-*`后按原hash恢复旧图。
4. 三GPU实际查看；`audit_mission_navigation_scene.py`证明仅124352的0→891引用；`audit_mission_navigation_preservation.py`验证冻结输入/主备份/meta及当前源。最后eval_file执行handoff、独立actual_editor和console，并记录空runner；证据完整后才执行finish_mission_navigation_reports.py。无Player/设备/Git交付。


## 每日任务排序与蓝点动画核验（规则39）

1. `mission-sorting-before`保存两个将改源码、未改动画源码、场景/文档与主备份hash；`prepare_mission_sorting.py`只读冻结Main提取23原行、原124051及103491参数。`select_native_methods.py mission-sorting`与匹配只读Ghidra导出6业务/闭包+6异常辅助，核验DisplayClass62_0 owner/statusCache、4状态、优先级和type/index比较。
2. `OriginalMissionSortingTests`首批1通过5失败：既有蓝点动画已通过。场景检查证明GO891早有RecoveryWeeklyUiTween且参数匹配；不添加新组件、不改动画源码。只增加OriginalMissions状态/排序辅助，并在Mission_manager.UI_Reload接入Mission_UI_Reload先刷新再SetSiblingIndex；未重排原数组或改存档schema。Refresh后确认实际程序集的方法，再跑完整专项6。
3. 分别跑导航6、原领奖呈现6、成长8、启动4，每批读取非零completed结果，保留start/status，不拼成全集合。专项用独立SaveFolderOverride早于Start、原Button顶层raycast+Down/Up点击任务12/18；VIP/Luxury只fixture标记，不启用付费领取。查看ready-order/claimed-order/alert-small/alert-large四GPU。回归前checkpoint/visual保存旧图，回归变化另存mission-sorting-regression-*后还原旧hash。
4. `audit_mission_sorting_preservation.py`证明整个Scene与既有动画字节不变、原manager meta/冻结Main/native/metadata/试玩主备份不变。最后执行mission_sorting_handoff.cs，独立actual_editor/console/空runner证明干净普通场景。证据齐备才运行finish_mission_sorting_reports.py。没有Player、设备或Git交付。


## 规则40：任务顺序锁警告和赛季按钮门槛

1. mission-rejection-before保存四源码/场景/报告和用户主备份hash，全部历史GPU复制。select_native_methods.py mission-rejection导出8方法+6异常辅助，使用匹配Ghidra只读项目；prepare_mission_rejection.py从native指针/已验证metadata区域解析Mission/SequenceLocked，I2Languages抽取14原译文，并只读冻结Main的原普通Reward Button142243/原NewSeason Button124060。
2. 新OriginalMissionRejectionTests先独立1/6通过5失败；只改manager门槛/拒领反馈与Reward Item两锁标记/正常顺序锁点击，新增原文资源及本地语言选择类，OriginalMissions模型/场景不改。Refresh后重跑完整6，分别再跑Sorting6、Navigation6、Presentation6、Startup4，读取每批非零completed结果。
3. 专项通过SceneLoaded早于Start设置独立SaveFolderOverride；原按钮经top raycast/Down/Up，不直接invoke事件。检验失败点击save bytes/货币/flags/粒子未变，失败音5与原alert文本、滚回、暂停/重复/关闭、paid/ad不可跳过，成功先领前档再解锁/领取下一档及cold reload。等级25打开原弹窗但不调用新赛季重置。实际查看maximum-level/sequence-warning/unlocked-claims三GPU。
4. preserve_mission_rejection_visuals.py将固定旧GPU的当前回归图另存再恢复历史hash。audit_mission_rejection_preservation.py验证scene/model/原meta/冻结输入/两用户保存hash；handoff/actual_editor/console/runner各独立报告确认普通干净场景。全部证据齐备后才运行finish_mission_rejection_reports.py；无Git/Player/设备操作。
