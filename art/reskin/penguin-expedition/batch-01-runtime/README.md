# 企鹅破冰探险 · 第一批接入

本批已接入 Unity `6000.4.10f1` 的 `Assets/Recovery/Scenes/RecoveredClient.unity`。最新要求：企鹅不戴围巾；不做裂纹、碎裂或冰片散落。目标打完按原流程消失，保留原枪械、子弹、伤害数字和奖励反馈。

## 范围

- 主角改为黑白企鹅，橙色嘴脚，没有服饰；身体使用独立视觉节点，原枪械瞄准、射击与骨骼节点保留。
- 森林目标换为四种尺寸的冰柱簇；雪地、上下冰川边界沿用原地形的尺寸、透明轮廓与位置。
- 场景只新增可关闭的 `PenguinExpeditionTheme` 组件。源 Sprite、Prefab、场景 GUID、碰撞体、攻击数值、奖励规则和存档格式没有替换。
- UI、商店图标、小猫头像、其他玩法和角色皮肤属于后续批次。本批只处理主角与森林战斗场景，不代表全部页面完成换肤。

## 文件

- 游戏导入素材：`Assets/Recovery/PenguinExpedition/`。
- `generated/`：内置 imagegen 生成原图。`prompts.json`：本批完整制作提示词。仅做透明边界裁剪、尺寸缩放和地形 alpha 适配后导入。
- `source/`：通过 Unity 读取实际场景引用后导出的原地形。
- `backup/`：改前场景、场景 meta 和改前字体缓存。旧版本碎裂预览在 `superseded-fracture-preview/`，已废弃，不属于当前效果。
- `captures/`：1080×1920 的真实 Editor Game view GPU 截图和连续帧；不是 imagegen 预览图。`observation.json` 记录隔离存档与实际自然战斗状态。
- `tests-final.json`：最终两个 PlayMode 检查结果；检查自然战斗、无碎裂组件、奖励只发一次、主题关闭与重新开启。早期失败记录用于追踪接入和场景退出修复，不作为通过证据。

## 查看与回退

打开 `RecoveredClient` 场景并按 Play 即可查看。正常启动不带预览存档覆盖；本轮验证使用独立临时存档，不写入玩家原存档。关闭客户端对象上的 `PenguinExpeditionTheme` 组件可以切回原视觉。也可以使用改前场景副本通过 Unity 打开并恢复；不要覆盖 `.meta`。

脚本位于工程 `AgentScripts/`：`InstallPenguin.cs` 用 Unity API 导入与安装；`PreviewPenguin.cs` 配置隔离预览并捕获连续帧；`FinalizePenguin.cs` 清理覆盖并恢复字体缓存。

本轮证据仅为 Editor 编译、PlayMode 和真实 GPU 画面，未做 APK 构建或真机验收。没有提交或推送 Git。
