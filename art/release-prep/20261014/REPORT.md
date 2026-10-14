# 安卓打包前素材整理（2026-10-14）

正式入口为 `reconstruction/CatGunnerUnityClient/Assets/Game/Scenes/GameClient.unity`。企鹅、冰块、雪地和现有极地目录已保存到场景与四个正式预制体；编辑状态能直接看到当前主题。没有新增主题图片，也没有生成新 APK。

## 已完成

- 固化 6,308 处素材引用，新增四个角色视觉绑定（含辅助队员）与 24 个 Boss／宠物展示绑定。可见角色使用已批准的七骨骼 SpriteSkin，原角色骨骼、碰撞、动画事件和武器控制保留。
- 保留 1,989 个原碰撞体，以及 25 个皮肤、65 个武器、13 种鱼、13 种宠物、九种 Boss、五种 Raid Boss 的内容和索引。存档格式、数值、奖励、菜单按钮与模式控制不变。
- 固化五组 TMP 货币图集的已批准像素，保持字形索引、名称和排版指标；保留原生攻击粒子、激光、环形特效及其动画图集。
- 复用已保存的角色视觉组件与骨骼。正式场景跳过运行时反射换图与逐帧全场景换图扫描；主题反复启用不再重复创建宠物动画组件。
- 30 处世界渲染 tint、怪物配色和冰川顶色按已有运行时主题固化。`SpriteFill.color.r` 的生命值通道保留。

## 构建内容

安卓构建列表从八个场景收敛为一个正式入口。七个测试／原型入口已禁用，测试通过 `EditorSceneManager.LoadSceneAsyncInPlayMode` 加载工程内夹具。

审计所有运行时 Resources 加载键、按需预制体路径、正式场景依赖、TMP 设置、预加载资源、图标和必带 Shader。275 项 Resources 中保留 42 项，233 项未使用资源通过 AssetDatabase 移入 `Assets/Game/Editor/ArchivedResources/`，原文件、GUID 与 `.meta` 保留。原资源文件合计约 9.27 MiB；此数字是源文件大小，不是 APK 体积变化。

`ProductionBuildPolicy` 在 Android 构建前检查唯一入口、Resources 清单和 Editor 归档依赖，并在处理场景时拒绝非正式入口。不要把测试场景重新加入正式 Build Settings。

依赖的原生动画、骨骼数据、字体、实际玩法目录和已认可特效继续保留。进一步清空备用目录引用的操作被自动审批以玩法内容风险拒绝，因此没有执行；本轮采用经过依赖审计的归档策略。

## 验证

- 31／31 项 PlayMode 回归通过（`test-results-verified.json`）：自然战斗、单次奖励、换装、真实骨骼变形／暂停、Boss／Raid 变体、宠物 RenderTexture 预览、UI 持久化、启动输入和异步面板生命周期。
- 主场景及四个正式预制体 Missing Script 均为零；角色绑定均为七骨骼，冰块目录为 Ice0–Ice3，地面为 SnowGround。
- 233 项归档 GUID 检查通过；5,763 个已批准企鹅／极地素材文件哈希未变。测试产生的字体缓存按本轮执行前快照恢复。
- 最后仅补充静态配色固化，未改玩法代码；编辑态渲染已检查，生命值通道未覆盖。
- 编辑器预览期间本地 Pipeline 连接中断；已停止预览、保存并重开同一 Unity 6000.4.10f1 工程。最终会话证据确认：GameClient、Mode 0、Persist true、未 Playing／Compiling、场景干净、SaveFolderOverride null、测试会话键为空。

这次没有构建、安装或验收新 Android 包。实际包体大小、设备运行及平台裁剪结果应以随后 APK／AAB 的 BuildReport 和真机验证为准。

## 证据

- [实际编辑态世界画面](edit-world.png)
- [素材固化数量与碰撞保持记录](visual-bake.json)
- [Resources 保留清单及 233 项迁移表](resource-audit.json)
- [完整回归结果](test-results-verified.json)
- [场景及预制体静态检查](final-editor-audit.json)
- [最终编辑器会话状态](final-session.json)
- [批准素材哈希检查](protected-check.json)
- [字体缓存恢复检查](font-cache-check.json)

回滚基线提交：`6790b6c39`。正式整理提交与远端同步结果由最终 Git 交付记录确认；仓库其他历史截图、素材实验和本地备份不属于本轮暂存范围。
