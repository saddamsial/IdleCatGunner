# 42 自动升级限时广告与原界面

唯一目标 com.Chodun.CatGunner 1.1.61 vc257 ARM64，原 Unity 6000.0.61f1，当前工程 6000.4.10f1。错误 XAPK 未使用。原生 SHA 与边界见 reports/auto-upgrade-contract.json。

## 原生证据

Upgrade_manager、AutoUpgrade_UI 与 AutoUpgrade_AdBuff 共 21 个方法查询及 6 个已验证异常辅助保存在 native-auto-upgrade-client-reviewed；各查询已核对首 16 字节和受限方法边界。AutoUpgrade_AdBuff.Start/Update 是空方法，没有凭它们添加额外行为。批量购买核心沿用 native-upgrade-flow/Upgrade_manager_AutoUpgrade_All.c，钱包脏标记沿用 native-client-flow-reviewed-v4/Upgrade_list_Update.c。

原入口调用 Admob 奖励广告类型 12（0xC）；TodayKey 用 Time_manager.Now 的 yyyyMMdd；广告奖励 600 秒，记录日期，保存并在未关闭自动购买时立即调用 AutoUpgrade_All。入口须未持有 Is_AutoUpgrade_Pack、剩余时间为 0、当天未领。到次日仍有剩余时间时不能重新领取。剩余时间加载夹取 0..600，空日期转空字符串。冷重载和离线模拟不从这一预算扣减现实离开时间。

每帧扣 min(Time.deltaTime, 0.5)，真实广告展示时暂停；付费包拥有者不消耗限时预算。关闭自动购买仅设置 Setting.is_AutoDisable，不暂停倒计时；再次打开仅清除这个瞬时开关，后续钱包变化才触发自动购买。预算耗尽夹为 0 并保存/通知 UI。

元数据指针确认静态字节归属 Setting.is_AutoDisable，日期为 yyyyMMdd，TimeStr 格式为 {0}:{1:00}：向零取整总秒，分钟不补零。对应原偏移和编码见 reports/auto-upgrade-literal-resolution.json，不凭显示猜测字符串。

原批量购买选择可支付的最低等级，等级相同按攻击、速度、赚钱顺序；购买直到无可支付升级或上限 10000。批量完成即刷新全部升级面板和队伍属性，赚钱等级改变时等价重算当前属性，原动画对象重新启动。原 Cat_manager.is_Shoot_Mute 为 false 才播放升级音，避免弹窗期间重复声音。

## 原对象与本地桥接

从冻结 Main 提取 Auto_obj 与 Shop_manager/AutoUpgrade_UI 分支，源切片 47 个对象包括 6 个祖先，实际接回 41 个原对象。保留原图片、布局、Button 持久回调、脚本 GUID 与7 个序列化字段引用（原类型共 8 字段，含瞬时 _buffShowing）。原 Auto_Btn 打开、背景/关闭按钮关闭、AD_Bonus_Btn 领限时奖励、On/Off 对应原启停方法；教程 DisableOnTutorial 第 3 项恢复原 Auto_Btn。新增 RecoveryAutomaticUpgrade 承担原全局管理器与现有恢复客户端之间的状态/事件桥接，按本地恢复客户端的启动和帧顺序调度。批量后的即时 SaveNow 沿用本地生命周期保护；原 AutoUpgrade_All 本身未显示 Save 调用，原广告回调在执行批量之前保存。

用户授权的 RecoveryRewardedAds 在下一帧模拟完成，无广告 SDK、联网或付费权益授予。请求前及回调时重检当天/预算/原弹窗是否仍开启；忙状态防连点，关闭弹窗取消本次奖励。默认普通试玩和未来离线构建同样使用此模拟开关。每日时间继续是明确本机时钟适配，不能声称可信服务器日期恢复。

原 Shop_manager/IAP 回调不可用，相关购买按钮保留原视觉并禁用，不模拟购买 AutoUpgradePack。付费标记仅从已有状态读取；测试中的付费场景使用独立测试档，不写用户档案。IAP Changed 的订阅不冒充真实购买通知。既有 DecimalAmount 代替商业 InfVal，极大值精度仍有明确限制。原 DOTween 回弹沿用已有本地播放适配；动态字体仍按原字体脸与参数更新工作图集，冻结基线保留。

## Editor 旧会话存档保护

暂停前捕获到 SaveNow 的空引用日志，与 Play 中导入脚本后非序列化 archive 丢失相吻合；这是从日志与类型生命周期作出的推断，不声称复现了整个 Unity 域重载。ReadyForPlay 额外要求有效 archive 与 State，丢失服务的旧会话停止更新/升级/保存；OnDisable 的非序列化库存、成长模型和敌人列表允许为空，防止停止会话时再抛异常。独立测试人工置空保存器/库存，验证不改变文件字节、时间戳或存档关卡，并验证安全停用。此为本地 Editor 保护；需要退出并重新 Play，不是无缝脚本热重载恢复。此前尚未保存的运行中状态没有据此伪造为已保存。

## 验证与剩余

专项使用随机 SaveFolderOverride，不读取用户钱包；最终隔离验证还启用 Editor SessionState 测试器全程目录，覆盖测试器预备/恢复普通场景，交接前清除。用户已明确重新试玩并要求保留新进度，最后两轮比较的是最新稳定停用后的主档和备份，不回滚较早暂停快照。真实按钮走 StandaloneInputModule Down/Up 和顶层射线。首次 1/1 缺入口测试按预期失败；完整首轮 15 项中 14 项通过，发现批量升级 HUD 未立即刷新，保留失败记录并修复原主动刷新链。最终结果、GPU 截图、保存保护、场景引用核验与 Editor 交接见 reports/auto-upgrade-evidence.json。

短时 Buff、增强重生、临时广告武器、扫荡、其余商店/IAP/云档/排行、完整 I2 与原 GPU/Shapes 等视觉仍未完成。全游戏 scope_complete 保持 false；本轮不包含 Player 构建或手机逐项验收。

最终六次独立完整批次：专项17/17（65.48秒）、教程5/5（84.87秒）、启动4/4（25.63秒）、赛季/离线/共享广告17/17（92.07秒）、森林按钮/反馈4/4（31.15秒）、成长8/8（18.44秒）分别完成；不是一次全套通过。 场景35083对象、零缺脚本，41原对象新增；130377既有身份保留，5文档允许字段变化已严格限域。用户确认重新试玩的新进度已保留，最终隔离验证前后的最新主备份SHA保持；两个完成回弹后的实际GPU画面已读取。正常Editor交接和剩余边界均保存。
