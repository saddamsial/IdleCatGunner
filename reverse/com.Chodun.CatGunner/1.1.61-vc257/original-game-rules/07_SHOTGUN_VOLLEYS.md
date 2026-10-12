森林自动移动已接回，找目标/停射/退后/摇杆接管与当前边界见[规则11](11_FOREST_AUTO_MOVEMENT.md)。本文旧自动移动待恢复描述保留为历史记录。

本节旧“导弹待恢复”表述为历史阶段。当前导弹森林分支及51/51检查见[规则10](10_MISSILE_FLIGHT_AND_AIM.md)和最新RECOVERY_PROGRESS；完整Update/AI/其他模式/主流程仍待接入。

# 霰弹枪完整轮次发射

2026-10-09追加：森林EXPLOSIVE/BLAST_SNIPER已接入，最新完整恢复程序集43/43通过；后续边界见[规则09](09_EXPLOSIVE_AND_BLAST_SNIPER.md)。以下阶段描述为历史证据。

2026-10-09追加：森林PIERCE/LASER已接入，最新完整恢复程序集36/36通过；后续边界见[规则08](08_PIERCE_AND_LASER.md)。下文阶段数字和原未接入描述保留为历史证据。

目标仅为 com.Chodun.CatGunner 1.1.61 vc257，libil2cpp SHA-256 `80eb8bcbebd058ffb4beac5d8d7d544066587a7a1abee8898874847ff13dc583`。本轮重新核验已有 native-cat-initialization 的完整 Cat.Attack / TryFireShotgun ASM和输入字节，无其他游戏或其他版本输入。规则合同见 reports/original-shotgun-contract.json。

## 地址和参数

- Cat.Attack(Collider target)：preferred VA `0x2b3d4ac`，独立边界止于`0x2b3d9a0`；Ghidra加`0x100000`。
- Cat.TryFireShotgun(Vector3 spawnPos, Vector3 baseDir, InfVal dmg, string dmgStr, bool isCri)：preferred VA `0x2b41fbc`，止于`0x2b421b4`。ARM64 this=x0，spawnPos=s0…s2，baseDir=s3…s5，InfVal间接=x1，string=x2，bool=w3。伪代码缺少部分FP参数，不能照其错误参数表实现。
- 常数：preferred `0x106c218`为0.699999988079071秒，`0x106c26c`为0.01745329238474369（度转弧度）。原 GunType.SHOTGUN=3。

## 原参数

Gun_manager 原65枪目录中共有5项霰弹：

| 原枪号 | 基础伤害 | 弹丸数 | 单颗随机角度 | 原间隔秒 |
|---|---:|---:|---:|---:|
| 3 | 80 | 2 | -10°…10° | 1.0 |
| 4 | 90 | 2 | -10°…10° | 1.100000023841858 |
| 7 | 240 | 2 | -10°…10° | 1.100000023841858 |
| 12 | 250 | 3 | -10°…10° | 1.0 |
| 16 | 350 | 3 | -10°…10° | 0.800000011920929 |

这些伤害是每颗弹丸的基础伤害，不按弹丸数分摊；实际伤害仍由森林数值链计算。原表来自 serialized-components/level0-123082.json；在线Request_Sheet覆盖待恢复。

## 发射顺序和边界

Cat.Attack 先朝向目标、取一次枪口位置、计算水平基础方向，然后只调用一次Random.value判定`value<CriPer`。选出的Damage/CriDmg、文本和isCri用于整轮所有弹丸。当前支持SINGLE/SHOTGUN，其他类型在明确能力边界处抛出未实现异常。

TryFireShotgun 读取`max(1, ShotgunPelletCount)`和ShotgunSpreadAngle。每轮循环先从原pool0取空闲或已死亡的Bullet；取得后才调用`Random.Range(-angle,+angle)`，绕Y旋转基础方向。角度逐颗独立随机，不是均分扇形。全部弹丸使用同一个spawnPos、原GunNum、所选伤害/文本/暴击、type3、radius0、原EnemyLayer和0.7秒生命，保持原Speed70/距离上限/命中与回收规则。

如果取池失败：尚未发出弹丸时return false；已发出任何弹丸则return true，保留此前发出的弹丸。没有预留完整批次，没有回滚，没有抢占存活弹丸，也不再消费失败弹丸的角度随机数。0颗失败会在原冷却更新中设置`AtkCool_Now=AtkCool_Max-Time.deltaTime`，下一帧重试；部分成功清零冷却，等待完整正常间隔。

成功后仅执行一轮两段后坐力、枪口Play和射击声音；0颗失败不执行。霰弹不调用普通ApplySpread，也不修改普通动态散射角；即使前一把枪留有散射值，霰弹只用枪表角度。原全局后台/静音门禁尚未接线，声音继续使用已有明确的本地Sound_manager适配。

## 工作工程和证据范围

CatShotgun.cs恢复helper，CatCombat.cs的原Attack支持SINGLE/SHOTGUN并复用冷却、暴击和反馈。旧AttackSingle/TickSingleAttackCooldown保留为普通枪兼容入口。ForestCombatAcceptance分别控制EnableSingleAttacks和EnableShotgunAttacks；Start会按加载结果设置对应开关。包内初始槽仍是Gun0，未改变玩家初始武器。

测试只在独立的装备槽夹具中选择Gun3或Gun12，再从原目录/数值缓存加载伤害、间隔、粒子与弹丸参数；不修改Gun_Collect、存档或生产权益。原库存装备UI、完整Cat.Update、AutoMove/AI、其他枪类型、经济结算与完整Main仍未恢复。DecimalAmount/小整数文本、粒子兼容材质和本地声音适配的差异保持，测试不是手机或完整原画面验收。


首轮专项报告 live-shotgun-tests-first-status.json 为3/4：失败仅因夹具任取第一棵树而假定其生命为250，原第一波还有等级倍率1.8的树。后续只将选择条件限定为现有250生命的原树，没有修改树概率/倍率或发射运行代码；并将同类旧装备验收/预览选择同步固定，避免顺序依赖。


修正后的专项4/4通过（live-shotgun-tests-second-status.json）：原2/3颗与最低1颗、独立随机角度及0.7秒飞行；严格暴击阈值/一次判定/整轮伤害/不消费普通散射RNG与不增长动态散射；池满无反馈和下帧重试/只有1空位时3颗轮次部分成功；原Gun3伤害80实际4次Collider命中击倒250生命树并减少树计数。此前失败报告保留。


最新完整恢复程序集31/31通过（live-shotgun-assembly-tests-status.json，61.69秒），包括此前所有恢复检查。实际ShotgunPreview图forest-shotgun-impact.png已读取：单轮2颗各80伤害使原树250→90，状态见shotgun-visual-state.json；1个FX符合原节流规则。仅装备槽/目标位置/池/RNG是隔离夹具，截图后恢复timeScale1、退出PlayMode、无脏场景，见shotgun-editor-handoff.json。开场正式槽仍是[0,-1,-1]。
