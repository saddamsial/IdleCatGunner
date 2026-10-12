森林自动移动已接回，找目标/停射/退后/摇杆接管与当前边界见[规则11](11_FOREST_AUTO_MOVEMENT.md)。本文旧自动移动待恢复描述保留为历史记录。

本节旧“导弹待恢复”表述为历史阶段。当前导弹森林分支及51/51检查见[规则10](10_MISSILE_FLIGHT_AND_AIM.md)和最新RECOVERY_PROGRESS；完整Update/AI/其他模式/主流程仍待接入。

# 初始装备与森林数值加载

2026-10-09追加：森林EXPLOSIVE/BLAST_SNIPER已接入，最新完整恢复程序集43/43通过；后续边界见[规则09](09_EXPLOSIVE_AND_BLAST_SNIPER.md)。以下阶段描述为历史证据。

2026-10-09追加：森林PIERCE/LASER已接入，最新完整恢复程序集36/36通过；后续边界见[规则08](08_PIERCE_AND_LASER.md)。下文阶段数字和原未接入描述保留为历史证据。

霰弹阶段更新：最新完整恢复程序集31/31通过；已接回SHOTGUN整轮发射、共享暴击、逐颗随机角度、部分池成功和共同冷却，见 [霰弹轮次](07_SHOTGUN_VOLLEYS.md)。本页旧阶段验收数和单颗霰弹限制保留为历史说明。

仅对应 com.Chodun.CatGunner 1.1.61 vc257。`native-equipment-balance` 为本构建25个业务方法与6个异常辅助的有界 ASM/伪代码，全部31个查询完成。结合既有 Cat.Balance_Reload 和 CalculateAtkCoolMax，不等于所有管理器已恢复。

## 原装备数据与角色映射

`level0-123082.json` 是 Gun_manager：Gun_list 含65把枪和7个 GunType；Selected_items 为 `[0,-1,-1]`，Gun_Collect 仅索引0为true。第一把枪名称“초보자 권총”、SINGLE、伤害100、AtkSpeed浮点值0.6000000238418579。第二把枪伤害80/间隔0.5，后续枪械参数见原组件及导出的 OriginalEquipmentCatalogue.json。它们是包内默认配置，原 Gun_manager.Balance_Reload 另会启动 Request_Sheet 协程；在线表覆盖尚未恢复。

Cat_manager.Balance_Reload preferred VA `0x2b43744` 先按顺序移除 Selected_items 中的 -1，保留重复枪号；使用压缩后的序列给 Cat_list 依次 Balance_Reload，剩余角色 SetActive(false)。角色槽不是库存索引。工作桥接只加载第一名猫的初始档案，不包含其他角色/Helper/阵型/库存装备事件。

Cat 原组件保存的 GunNum27、LASER、零伤害、moveSpeed13 是加载前占位状态，原件继续保留。进入工作 Forest 时读取第一装备槽，覆盖成 Gun0/SINGLE、Damage100、CriDmg125、CriPer0、移动速度15、间隔0.6，绑定原枪口、随机发射点、粒子、当前枪展示及 gun/5 特效。

## Cat.Balance_Reload 的普通森林分支

preferred VA `0x2b38f10` 的 UI.currentType=0 路径：

1. 基础移动速度非AI为15、AI为17；乘 `(Pet_Speed_Accum + Relic.MoveSpeed_Value)/100`。普通森林使用36射线/范围40。
2. 枪Damage先乘 Upgrade.Power_return/100，再乘 Rebirth.Damage_return/100。
3. 继续乘 Skin.Damage_Accum/100、`(100+Fish.TotalDamage)/100`、Relic.Dmg_Value/100，DiscardDecimal。
4. 接着乘 Damage Buff，再应用槽位星级；CritDamage 从上述伤害乘 `(125+Fish.TotalCriVal)/100`、Relic.CriDmg_Value/100，再DiscardDecimal。暴击概率是 Fish.TotalCriPer/100。
5. 森林清空时额外将移动速度翻倍。其他模式的特殊伤害/距离及Raid增益本轮没有接线。

当前 OriginalEquipmentCatalogue.ApplyPackageForest 接回普通森林数据链，参数可显式读取原升级缓存。初始档案由匹配组件证明：升级级别0；皮肤仅第0项解锁且三增益0；宠物槽全-1；鱼均未解锁；遗物均未解锁；槽星级全0；转生前两个Value_balance[0]为0。Native Skin_Value_Reload、Pet_Reload、Rebirth *_return、Relic .cctor/Value_Reload、Fish空解锁集合和Star等级0分支证明：对应百分比均100，鱼附加与遗物移速为0。无活动buff/未清空阶段作为独立初始档案状态，没有给真实广告/付费权益赋值。

非中性宠物/皮肤/遗物/鱼/转生/星级获取及保存生命周期未接线。星级非0时桥接明确拒绝，不能默认忽略它。也不读取手机或现有玩家存档。

## 攻速

Cat.CalculateAtkCoolMax preferred VA `0x2b399cc`，ASM核验了浮点参数和四个整数寄存器（不能只照抄伪代码参数位置）：

- 非Raid：`speed = SkinSpeed + RebirthSpeed - 200`；Raid：`SkinSpeed - 100`。
- 未跳过升级时，加 `Upgrade.AtkSpeed_Real_return()`，其值直接读取Speed_balance[速度等级]，不是AtkSpeed_return的阶段惩罚返回值。
- 普通森林减 `30 * Tree_manager.Level_Now`。
- 把speed夹到100…10000；计算 `(枪间隔 / speed) * 100`，再除攻速Buff倍率，最后夹到0.05…2秒。
- Native Buff.GetMult 返回无增益1、普通3、超级4。完整buff活动/广告/计时器未加载；初始档案用1。

测试独立数值锚点包括0.6→0.55555556（速度等级1=108），speed140波次1→间隔0.54545455、波次2因最低100恢复0.6，以及增益先除再最终限幅的边界。

## 实现与验收边界

百分比、乘法与丢弃小数使用独立 BigInteger/DecimalAmount 适配。包内缓存系数/指数不变，未复制商业InfiniteValue内部实现。原InfVal有效位归一化、短单位文本和所有大数舍入尚未等价恢复；当前小整数文本适配不能当作原伤害数字UI或高等级精度验收。

ForestCombatAcceptance.Start 通过明确的 LoadPackageEquipment=true 加载包内初始档案；成功且SINGLE才开启连续攻击。原完整 Gamemanager/Cat_manager 启动、存档恢复、UI装备、升级事件重算、波次自动重算、AutoMove/AI、其他武器和伤害数字仍未闭合。

新增4项PlayMode检查全部通过，见 live-equipment-tests-first-status.json。真实射击检查仅移动一棵原树作为目标夹具，保持原生命值250及包内玩家枪/伤害/暴击/散射/间隔，无注入玩家数值；三次真实Collider命中后死亡、树计数减1。另验证配置重载不污染源数据、槽位压缩规则、原升级缓存Damage108/CriDmg135、枪口切换和无装备不制造替代枪。完整程序集结果及视觉证据见最新 RECOVERY_PROGRESS/VERIFICATION。
