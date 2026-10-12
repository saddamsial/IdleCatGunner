森林自动移动已接回，找目标/停射/退后/摇杆接管与当前边界见[规则11](11_FOREST_AUTO_MOVEMENT.md)。本文旧自动移动待恢复描述保留为历史记录。

本节旧“导弹待恢复”表述为历史阶段。当前导弹森林分支及51/51检查见[规则10](10_MISSILE_FLIGHT_AND_AIM.md)和最新RECOVERY_PROGRESS；完整Update/AI/其他模式/主流程仍待接入。

# 穿透与激光：普通森林分支

2026-10-09追加：森林EXPLOSIVE/BLAST_SNIPER已接入，最新完整恢复程序集43/43通过；后续边界见[规则09](09_EXPLOSIVE_AND_BLAST_SNIPER.md)。以下阶段描述为历史证据。

唯一输入为 com.Chodun.CatGunner 1.1.61 / vc257。PIERCE=2，LASER=1。原 Gun_manager 有13把穿透枪、10把激光枪，共23项配置；均使用 PenetratingBulletLifetime=2。初始库存仍只拥有Gun0，测试装备槽不写存档，也不制造库存。

## 原生证据和反编译修复

Bullet.HitPierce preferred0x2b66980…0x2b66c1c；HitLaser0x2b667f4…0x2b66980；SpawnFX_Once0x2b66e24…0x2b66e3c；Cat.Attack0x2b3d4ac。Ghidra地址统一加0x100000，ELF段和16字节入口guard独立核验。

旧 native-bullet-hit/Bullet_HitPierce.c 把位于Ghidra0x2c66b10的HashSet<int>.Add调用解释成PIC分支，吸收了泛型函数并删除后续命中逻辑。保留该错误输出作为历史证据。新增引用函数、明确非inline和独立函数边界后，native-penetrating-hit-reviewed/Bullet_HitPierce.c完整恢复计数、伤害前生命比较、伤害分发、FX和停止分支，逐段与完整ASM吻合。

元数据用法全局 preferred0x5d639e0解析为MethodSpec48044/HashSet<int>.Add，0x5d639e8为48051/Contains，0x5d5d560为164181/Component.GetComponent<EnemyColl>。从本构建MetadataRegistration0x5c21d30的methodSpecs/genericInst表及已验证方法/签名索引解析，结果见 penetrating-generic-identities.json。比较调用0x4554530在模块地址索引明确为InfVal.op_GreaterThanOrEqual；不反编译或复制商业InfVal内部。

字段偏移：Bullet._hitIds=0xd0，_pierceCount=0xd8，_fxSpawned=0xdc，_firstHitDone=0xcc。此路径使用_fxSpawned，一次FX标记不能误写成_firstHitDone。Enemy.Health_Now=0x28，is_Die=0x24。

## 命中规则

- OnTrigger先检查死亡和碰撞体实例ID；已经命中的同一个Collider不会重复伤害、计数或请求FX。判定的是Collider ID，不是整个Enemy ID。
- PIERCE命中非Enemy标签对象：请求FX后DieAndWait。Enemy标签但缺EnemyColl、缺enemyScript或已死亡：只登记Collider ID，不伤害、不计穿透次数、不请求FX、不死亡。
- PIERCE有效敌人：登记ID并递增穿透次数，先计算Damage>=受伤前Health_Now，再分发完整伤害。第一有效命中无论致死与否都继续；第二个及以后只有非致死才停止。一击击杀可以连续穿过超过两个目标。每个目标伤害不衰减。
- LASER在Enemy标签命中时登记ID、分发完整伤害并继续，不检查穿透次数或生命；非Enemy标签对象请求FX后死亡。
- 两者第一次敌人FX请求前先设置_fxSpawned，之后不再请求敌人FX；即使原FXThrottle拒绝第一次请求，也不会下一目标重试。非Enemy分支另行请求FX。
- 原UI_manager.currentType==5在有效命中后强制死亡。此分支及Ore生命周期尚未接入，当前实现明确限普通森林。

## 发射与回收

Cat.Attack类型1/2一次严格Random.value<CriPer选择伤害/文本/暴击，执行普通动态散射；成功后增长散射并播放一次枪口/后坐力反馈，失败使用已有下帧重试冷却。传原type、radius0、EnemyLayer及该枪PenetratingBulletLifetime。SpawnEx再限幅为min(请求寿命,50/Max(Speed,.1))，原Speed70实际约0.714秒；2秒并不代表一定飞行2秒。

使用原27个Bullet池/10个FX池、65枪皮肤/枪口、原树Collider和原死亡/延迟回收流程。再次Spawn清除旧Invoke、命中ID、次数和FX标记，并重新开启Collider。ForestCombatAcceptance增加显式穿透/激光开关；开场仍从包内初始档案加载Gun0。

## 验证与边界

专项包含规则边界/相同Collider/死亡或无效链接/池重用、超过两个非致死目标的激光、真实物理直线多目标穿透差异、两种武器的森林自动攻击以及降低夹具弹速后验证原配置2秒寿命。规则测试用原Collider直接发送OnTrigger；多目标和自动攻击测试由真实Physics触发，分别记录，不把消息测试称为物理验收。

最新结果见 reports/live-penetrating-assembly-tests-status.json 和 VERIFICATION.json。完整Cat.Update/AutoMove/AI、库存装备UI/管理器存档、其他模式、爆炸/导弹/爆破狙击、经济奖励/完整Main、Player/设备和完整视觉仍未验收。独立DecimalAmount比较/文本不是商业InfVal精度、舍入和缩写内部恢复。
