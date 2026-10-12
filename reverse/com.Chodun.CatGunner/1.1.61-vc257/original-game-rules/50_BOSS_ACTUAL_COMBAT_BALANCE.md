# 规则50：Boss 实战的武器伤害与攻速

目标固定为从手机提取的 `com.Chodun.CatGunner 1.1.61 / vc257 / ARM64`。原 XAPK 不参与本次恢复。工程使用用户已有 Unity 6000.4.10f1。

## 已确认的差异与恢复

规则49的 Boss 扫荡战力预览已排除森林升级，但实际进入 Boss 后，普通猫仍错误使用森林攻击力/攻速升级。这让同一装备的预览和实际战斗使用不同规则。本轮将 Boss 模式接入已有装备计算的跳过森林升级分支。重生、皮肤、鱼类、遗物、增益、紧凑队伍槽位的星级继续生效。Boss 结束后切回森林，会重新应用玩家保留的升级等级。

修改仅限 `OriginalEquipmentCatalogue.cs` 与 `RecoveryForestClient.cs`；新增 BossMode 标记为 NonSerialized。没有改场景、资源、原动画、布局、原脚本 GUID 或存档结构，也没有把测试装备/货币注入玩家档案。

## 原生证据

`native-boss-balance-client-reviewed/` 本轮 15 项 C/ASM 查询全部完成，其中业务9、异常辅助6；入口16字节、ELF preferred VA 与 PT_LOAD 换算、独立 unwind 边界和方法字节 SHA 已重新核对。匹配 metadata 的 `UI_manager.currentType` 类型为 `UI_type`，实例偏移 `0x20`，不是 Game_manager 的字段。

- `UI_manager.UI_Reload` `0x2b2a560` 将参数写入 currentType。
- `Boss_manager.Game_Enter` `0x2b45fdc` 调用 UI_Reload(3)，随后重算普通猫；退出 `0x2b46450` 调用 UI_Reload(0)，重新应用森林平衡。
- `Cat.Balance_Reload` `0x2b38f10` 判断 unsigned(currentType-3)<3，即 Boss3、Monster4、Raid5 都跳过森林 Power_return。Boss仍经过重生/皮肤/鱼/遗物百分比、取整、增益和升星；团战专属分支保持原有适配。
- `Cat.CalculateAtkCoolMax` `0x2b399cc` 在 Boss 模式收到 skipUpgrade=true、forest=false、raid=false：速度=皮肤速度+重生速度-200，限制100..10000；间隔=(基础间隔/速度)*100/增益，最后限制0.05..2秒。0.05 的原 float32 位于 preferred VA `0x106c094`，字节 `cdcc4c3d`。
- `Cat.AtkCool_Boss_return` `0x2b39c0c` 明确传入 `(1,0,0)`，与 Boss 实战分支对应。`ExpectedDamage_Boss_return`、`Cat_manager.Balance_Reload` 和 Boss 开始/退出也在本批重新审查。

详见 `reports/boss-balance-native-contract.json`，选取输入与引用分别保存在 `native-boss-balance-client-queries.tsv`、`native-boss-balance-client-references.tsv`。异常辅助识别用于防止伪造末尾逻辑；反编译结果不是原作者 C# 源码。

## 验证边界

修复前单项测试实际失败：有森林攻击力升级时，Boss伤害高于原武器基础伤害。失败记录保留在 `boss-balance-before-failure.json`。修复后专项包含慢速原武器的伤害/攻速、挑战中刷新升级/换武器、退出回森林、独立存档冷重载、紧凑队友槽位与升星、其他倍率保留，以及实际子弹自然通关和重复结算防护。

自然通关使用独立 Gun20，森林攻击等级100/攻速等级500；原武器500伤害、0.05秒间隔，对原50000生命与60秒计时。没有操作摇杆、注入伤害或提前调用胜利。只有自然胜利后才调用重复回调检查。该夹具不代表初始 Gun0 或玩家目前存档能直接通关。

`boss-balance-projectile-observation.json` 保存自然结算数据。两张GPU实际读取，分别为 Boss 入场和150基础奖励/450广告选项的原胜利页面；原韩文静态文字与 FreeCash 页面尚未完整恢复语言/服务。各测试批次及最终编辑器状态见 `boss-balance-evidence.json`，不把分批结果称为一次全套通过。

## 保留与待办

本轮开始前保存工作场景无损 gzip、既有脚本与测试快照，记录235项基线（场景、230份既有脚本meta、主档/备份、manifest/lock）及222张历史GPU的 SHA。冻结原 Main、native 和 metadata 保持同一输入。回归覆盖的历史GPU另存本轮副本后恢复旧证据；具体保留检查见 `boss-balance-preservation.json`。

继续保留用户已授权的本地广告/现金购买模拟，不发生真实扣款，也不伪造商店收据或服务器。未构建APK、提交Git或做真机验收。SpeedRun/Mine/Monster其他自动奖励和扫荡、短时增益/增强重生/临时武器、完整I2/UI服务流程、可信联网时钟、SpriteSkin/高级能量网格特效与部分骨骼变形等仍待恢复，全游戏 scopeComplete=false。
