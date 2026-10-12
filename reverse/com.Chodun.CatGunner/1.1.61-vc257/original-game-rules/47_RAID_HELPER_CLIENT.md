# 47 · 当季团战助手：购买、第四只猫和战斗消费者

目标仅为手机包 `com.Chodun.CatGunner 1.1.61 / vc257 / ARM64`。正常试玩入口仍是 `reconstruction/CatGunnerUnityClient/Assets/Recovery/Scenes/RecoveredClient.unity`，Unity 6000.4.10f1。

## 原包证据

`reports/raid-helper-native-contract.json` 收录本轮37份字节检查后的原生查询（31个业务方法和6个异常边界），以及 C/ASM 哈希；输出位于 `native-raid-helper-client-reviewed/`。反编译输出用于重建，不是原作者 C#。

- `Raid_manager.get_Is_Helper_Active`（0x2b444d8）：索引非 -1，并等于当前团战周索引。原版没有额外的等级/库存占位条件。
- `Helper_GunNum_return`（0x2b44548）：先在50–54号中寻找当前 Boss 弱点类型；找不到时以 `GunTypeCode.From` 结果 Clamp(0,4)+50 回退，再检查数组边界。原静态七类型表的28字节字段数据已核对 SHA256，顺序为 `[2,4,1,5,6,0,3]`。
- `Helper_StarLv_return`（0x2b51b44）：遍历团战三个武器槽，取星级最低值；空武器槽仍参与，不按已装备枪数过滤。
- `Cat_manager.Helper_Reload`（0x2b4424c）：只在团战且权益有效时激活；新激活时移动到领队+原队形偏移 `(7,0,-7)`。普通三猫数组不扩容。`Warp` 与 `Skin_Reload` 包含助手。
- `Cat.Balance_Reload`（0x2b38f10）：助手身份由 `Cat_manager.Helper_Cat` 比较确定，SlotNum=-1。助手最低星级进入原伤害链，再应用团战弱点10倍及暴击链。团战不使用普通攻击/攻速升级与重生加成，仍使用已有皮肤、鱼、遗物和 Buff 消费者。
- `Raid_HelperSlot` 与 `Raid_Helper_Purchase_Popup`：原锁定层、弱点/星级显示、枪图/13档品质层、预览和购买后关闭均恢复。速度格式指针解析得到 `{0}s`。

## 工程连接

恢复原助手分支364个 GameObject、65个枪模型，补回两个原 UI 控制器及精确 MonoScript meta。使用 Unity Editor API 绑定原引用和按钮；没有创建替代 UI 或修改工作场景 YAML。完整文档身份审查见 `reports/raid-helper-scene-document-diff.json`：原132226个身份保留，7份既有文档只增加组件/孩子/助手引用或恢复两处按钮回调；原 RectTransform 没有遗留变化。

原购买 SDK 回调由用户已授权的 `RecoveryLocalStore` 下一帧支付成功模拟替代：`catgunner_raid_helper` 仅记录当季权益，不赠送库存枪、不占普通武器槽、不生成商店收据。`OfflinePurchaseSimulation=false` 时不接受模拟购买或激活本地模拟权益。取消和重复购买不发放。

权益载入使用已有 `Raid_Helper_Season_Index`。本地时钟观察器在常驻服务上每0.25秒核对，并同时比较实际猫的显隐，避免购买回调先激活猫、缓存尚未采样就跨周时漏掉失效。这是本地适配策略，不是已证实的原服务器计时。过期保留旧购买索引；下一季可以重新购买。冷启动恢复权益，森林和其他模式隐藏助手。

部分助手粒子的原材质使用可用的 Unity 内置 `Mobile/Particles/Alpha Blended`。已恢复9个原透明材质引用，避免将材质中未被该 Shader 使用的 Standard `_SrcBlend=1/_DstBlend=0` 错当作透明效果混合状态。原材质和纹理未改动，其余兼容材质仍为既有本地适配。

## 验证与边界

完整独立测试、失败历史、实际弹丸观察、GPU画面、主存档/备份保护和最终 Editor 状态统一记录在 `reports/raid-helper-evidence.json`。测试用独立加密存档；支付按钮通过真实 EventSystem 第一命中目标以及鼠标按下/松开帧执行。

购买、缓存跨周、到期、重新购买、最低星级、退出团战、冷启动和五种弱点枪械都需要各自的运行时检查；没有合并失败运行中的零散通过结果。单独回归普通团战、既有试玩问题、StepUp 和正常启动。

仍未完整复原：源助手分支的 Unity 2D Animation `SpriteSkin`（导出组件149337仍隔离）、高级枪械能量/网格特效及全部骨骼变形、完整I2流程、StarGem Pig完整累计、免广告自动奖励/扫荡、可信时间/线上服务和 Player/真机验收。GPU观察能看到高级能量球仍有明显兼容显示差异，不能称作原版视觉一致。没有构建 APK、提交或推送 Git、充值或重置用户进度。`scope_complete=false`。
