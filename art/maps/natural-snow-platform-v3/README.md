# 圆形高台：垂直冰崖、自然雪缘与底部衔接

2026-10-13，用户认可圆形高台与平滑停镜头后，针对侧壁重复拼贴、雪缘过圆、底部悬浮感进行局部视觉迭代。

本轮将 `Raised snow cliff` 接入新生成的正面垂直冰崖贴图 `vertical-ice-cliff-v3.png`，不再使用 `glacier-down` 的斜向素材。保留旧贴图和材质用于其他场景及回退。新增侧壁使用正确的垂直 UV 和轻微的朝向明暗。

高台外轮廓由风蚀般的大起伏及细小雪缘构成，顶部雪面向外形成薄雪檐，白色积雪以不同长度垂到冰崖上。底部加入接地阴影、柔边雪脚、成簇雪堆与碎冰，避免整齐的圆柱及生硬的贴图接缝。装饰合并为少数网格，不添加碰撞体；使用独立 `System.Random`，不消耗游戏的冰块/奖励随机序列。

可走范围、64 段空气墙、平滑镜头和已认可的脚印保持原样；保护列表及 SHA-256 检查见 `protected.json`、`protected-check.json`。主要雪面与灰色地面继续使用原 `snow-ground.png`。

`before.tar.gz` 保存改前场景、脚本、材质、测试和关联 meta。`overview.png` 为本轮 Unity GPU 概览；`edge-gameplay.png` 与 `smooth-camera.gif` 为实际游戏摄像机、原生摇杆驱动的边缘预览。记录使用隔离存档，结束后恢复保存场景并清除测试目录覆盖。

`CircularSnowTerrain.cs` 生成视觉几何，`VerticalIceCliff.shader` 与 `SnowPlatformDecor.shader` 负责侧壁和积雪装饰；`AgentScripts/InstallNaturalSnowPlatform.cs` 通过 Unity 导入/场景 API 接入材质。原 `InstallCircularStage.cs` 的重装路径同步为新侧壁，避免重新装回斜向拼贴。

验证范围为 Unity Editor、相关原生 PlayMode 测试与实际 GPU 画面；不等同于真机或 APK 视觉验收。视觉是否符合用户预期仍由本轮预览反馈确认。

本轮完整报告：`tests-camera-boundary.json` 为 6/6，通过不同屏幕比例、持续边缘输入及矿山进出检查；`tests-terrain-footprints.json` 为 8/8，通过全部波次冰块布局、自动寻敌、边界、脚印暂停/消失及重开清理检查。使用原生 `TestRunnerApi`，沿用 `RunArenaChecks.cs` 的跨域报告方式。
