# 30：森林输入、纸币洒落与伤害数字

仅对应手机提取的 `com.Chodun.CatGunner 1.1.61 / vc257 / arm64`。工作入口仍为 `RecoveredClient.unity`，Unity 6000.4.10f1。完整客户端恢复尚未完成。

## 按钮无法点击的原因

本轮正常场景检查发现一个活跃 EventSystem，但没有任何 BaseInputModule，`currentInputModule=null`。此前直接调用持久事件或 ExecuteEvents 的检查无法覆盖操作系统输入入口。冻结 Main 的原组件123223是 InputSystemUIInputModule；当前工作工程没有对应包，且 `activeInputHandler=0` 使用旧输入系统。

通过 Editor API 在既有 EventSystem 上补齐 StandaloneInputModule 并保存工作场景。`ForestClientEditor.EnsureInputModule()` 只在没有模块时添加，不复制 EventSystem、不绕过教程门禁。此模块是当前输入系统的兼容接线，不宣称原 InputSystem 包已经恢复。

新专项通过测试用 BaseInput 提供鼠标按下/松开边沿，真实 EventSystem/StandaloneInputModule 分派三项升级；不调用 ExecuteEvents 或 Button.onClick。逐项核对一次点击只升一级、原价格扣费和独立存档重载。测试 inputOverride 仅用于测试场景，交接场景无 override。

正常 Play 的额外原生 app 自动点击尝试没有产生可确认的升级增量，保存于 `forest-hardware-deliberate-click-before.json` 与 `forest-hardware-click-after.json`。输入模块回归与人工鼠标/触屏验收分开，不能称本轮已通过物理鼠标或手机验收。临时正常 Play 使用 unsaved Persist=false、内存货币和教程完成夹具，随后恢复 Persist=true；未改变用户档案。

## 录屏和原始特效

查看用户录屏 `Screenrecorder-2026-10-08-18-53-03-74.mp4` 的5.0至7.5秒：攻击显示白色棕描边数字，树死亡时洒出绿色纸币。参考帧见 `reports/visual/reference-video-cash-and-damage-5s.png`。

原 Main 的 GO2663 / component148042 为 Money_Polling，Particle_index=0，Money 粒子子节点使用原 `Fx_Cash.png`，本地模拟、3秒寿命。原 Tree.Die_Reload VA `0x2babeb4` 在 MoneySpawn_trans.position 发射普通5张、Boss15张；Tree_SpeedRun.Die_Reload `0x2baba50` 发射5张。工作代码接回这些原调用，原收入结算不变；重复死亡只发射和结算一次。

原 GO8804 Text_Setting 的四项分别指向 Money_Cri、Damage、Dia、Damage (Cri) GameObject prefab。原 Damage/Critical 使用 bitmap Font、spriteGap=-18、1秒持续、50组动画曲线；Money1.5秒/50组，Dia1.5秒/12组/-10间距。原脚本 .meta、四组 prefab/font/纹理均逐字节核验保留。

恢复 DamageTextAnimation/Setting 序列化合同和原65点曲线采样插值。RecoveryDamageTextPresenter 是明确的本地可复用 Mesh 适配：读取原 glyph UV/宽高/曲线、相机坐标基、0.02世界比例、1.5单位坐标分桶及0.12秒节流；普通命中/暴击事件驱动，暴击前缀为原字面量 `+`。无 Canvas Graphic、Collider 或 raycast，不负责伤害、货币和保存。

## 字体 GPU 程序

原 Font.material 引用 GUI/Text Shader，但原 DamageTextMesh.Init 新建 `Hidden/DamageText` 材质并采样该字体图。直接沿用 GUI/Text Shader 会丢失 RGBA 描边颜色。

`extract_damage_shader.py` 从冻结原包的 unity_builtin_extra / 4800000 和 globalgamemanagers.assets / 23 找到两份完全相同的编译 Shader，解压 GLES3/Vulkan 程序。原 GLES3 顶点程序为对象到裁剪矩阵变换及 UV/颜色传递；片段为 `texture(_MainTex, uv) * vertexColor`。原混合 SrcAlpha/OneMinusSrcAlpha、Cull/DepthWrite/DepthTest 关闭。工作 shader 是这些已读取表达式和 Pass 状态的 HLSL/Metal 移植，未宣称作者 Shader 源码恢复。

原始管理器内部 GPU 曲线缓存和全部数字用途没有完整重建；当前池为本地适配，本规则完成时money/dia设置保留但尚未接全局奖励文字链；后续规则31已接树金币和矿石钻石小数提示，完整管理器及无实际调用者的整数位置钻石路径仍待恢复。该边界与已经显示的实际战斗伤害数字分开。

## 当前验证

- 最终 `OriginalForestFeedbackTests` 单次4/4（27.00秒；此前最终源码运行26.54秒亦单独保留，末次只更正观察报告的独立档案标签）：三项升级输入模块分派/扣费/保存；初始 Gun0 原数值零输入战斗、真实树死亡和GPU图；普通5/Boss15粒子及无重复收入；原字形动画到期回收/复用/无UI遮挡。
- `OriginalClientFlowTests` 单次8/8（81.87秒）：升级射线、长按、HUD/自动战斗、收入、五波推进、超时重试及独立保存；不是八个内容菜单的完整导航验收。
- 启动专项及最终交接结果见 `reports/VERIFICATION.json` 的 forest_feedback_evidence；各次运行独立记录，不合计成一次全量通过。
- 最终4/4的GPU图 `forest-real-tree-cash-gpu.png` 已读取：原纸币与白色棕描边100同时可见。自然战斗夹具仅使用独立初始档案，不改树血量或命中坐标。专项教程 SetCleared 是夹具前置，与生产教程分开。

新增原生导出 forest-feedback 34/34、damage-glyphs 12/12，含重叠辅助；首16字节和边界门禁核验，详见 status.tsv/native-summary。查询数量不是功能恢复比例。初轮未发现测试以及测试程序集 Newtonsoft 引用编译失败、早期错误 prefab 字段类型/字体材质诊断均保留，不算通过。

场景由 Editor API 修改；新源切片仅从冻结 Main 提取四个原节点。`audit_forest_feedback.py` 核对两份用户档案、三个冻结输入、五个原 script meta 和十二份数字资源。Player、手机与全像素对照未验收；未提交或推送 Git。
