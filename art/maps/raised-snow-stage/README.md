# 普通冲关：圆形雪地高台与平滑停镜头

2026-10-13，基于用户选择的“平滑停镜头”和“单层圆形高台，外围灰色雪地”方向。

## 场地

- 普通冲关半径 100，冰块中心仍集中在半径 16–76 的区域，原波次、血量、奖励与自动寻找目标保留。
- 顶部使用 `Assets/Recovery/PenguinExpedition/snow-ground.png`，适量提白。外围使用同一贴图去色并压暗，形成灰色雪地。
- 顶部沿用原移动平面 Y=0，外围下降到 Y=-10。单层 `Raised snow cliff` 从外侧地面延伸到雪面；不再生成 `Original outer cliff`、`Snow wall rim` 多层围墙。
- 64 段空气墙与圆形运动约束将企鹅/队友/宠物限制在高台顶部；有效角色中心半径 98。约束检查下一次物理运动，避免持续顶着边缘时反复越界纠正。
- 已认可的脚印脚本、材质、着色器和雪地 PNG 未修改，SHA-256 见 `protected-footprints.json`。

## 镜头

- `CircularArenaCamera` 只接管普通冲关的原 `Follow` 摄像机支架。场内有轻微阻尼，接近边缘时渐缓并停下，企鹅仍可继续前进到空气墙。
- 根据实际正交投影及屏幕比例预留企鹅移动的画面空间。只根据角色模型包围盒保护可见性，子弹与粒子不会影响构图。
- 切换矿山时恢复原 Follow 行为；回到冲关、重开或角色瞬移时重置镜头，避免从旧位置缓慢飞回。
- 可调参数：`Damping=0.16`、`SlowingDistance=12`、`SafeViewport=(0.12,0.20,0.76,0.60)`；场地高差 `WallHeight=10`。

## 预览和证据

- `overview.png`：实际 Unity GPU 俯瞰图，展示圆形高台、单层侧壁、灰色外场和第 5 波冰块布局；使用独立概览摄像机。
- `gameplay.png`：原游戏摄像机及 HUD。
- `edge-gameplay.png`、`smooth-camera.gif`：原游戏摄像机下，真实摇杆 pointer down/drag/up 驱动，企鹅从半径 78 朝边缘行走，随后释放摇杆并等待脚印消失。录制时暂停自动攻击以便观察镜头。
- `preview.json`：隔离预览配置及逐帧角色/镜头位置。预览使用独立存档，结束后清除临时 test-host override 并恢复保存的场景。
- `tests-raised-platform.json`、`tests-snow-footprints.json`、`tests-client-flow.json`：各自独立的 PlayMode 测试报告。覆盖高台贴图/高差、镜头减速、企鹅可见性、持续边缘输入、矿山切换、冰块布置、脚印及原升级/奖励/波次/存档流程。
- Pipeline 测试列表回调曾停滞，未产生报告的启动不计为通过。最终镜头/边界及脚印复测通过 `AgentScripts/RunArenaChecks.cs` 指定同一组编译后的测试，调用 Unity 原生 TestRunnerApi 执行并沿用 Pipeline 的跨域报告器；无需修改测试框架或项目包。
- `tests-before.json`、`tests-held-input-before.json` 保存实现前或修复前的预期失败报告，用于说明相应检查确实发现了缺失场地或边缘超出问题。
- `before.tar.gz` 保存本次修改前的场景和相关代码/材质。验证范围是 Unity Editor/PlayMode 与实际 GPU 画面，未进行手机或 APK 验收。

## 实现位置

`reconstruction/CatGunnerUnityClient/Assets/Recovery/Scripts/` 中的 `CircularArenaCamera.cs`、`CircularSnowTerrain.cs`、`CircularForestMap.cs`；贴图使用 `CircularSnow.shader`、`CircularSnow.mat`、`GreyLowerSnow.mat`。场景经 Editor API 安装和保存，脚本 `AgentScripts/InstallCircularStage.cs` 可重跑。
