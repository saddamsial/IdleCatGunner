森林自动移动已接回，找目标/停射/退后/摇杆接管与当前边界见[规则11](11_FOREST_AUTO_MOVEMENT.md)。本文旧自动移动待恢复描述保留为历史记录。

本节旧“导弹待恢复”表述为历史阶段。当前导弹森林分支及51/51检查见[规则10](10_MISSILE_FLIGHT_AND_AIM.md)和最新RECOVERY_PROGRESS；完整Update/AI/其他模式/主流程仍待接入。

# 普通子弹、对象池与命中特效

2026-10-09追加：森林EXPLOSIVE/BLAST_SNIPER已接入，最新完整恢复程序集43/43通过；后续边界见[规则09](09_EXPLOSIVE_AND_BLAST_SNIPER.md)。以下阶段描述为历史证据。

2026-10-09追加：森林PIERCE/LASER已接入，最新完整恢复程序集36/36通过；后续边界见[规则08](08_PIERCE_AND_LASER.md)。下文阶段数字和原未接入描述保留为历史证据。

霰弹阶段更新：最新完整恢复程序集31/31通过；已接回SHOTGUN整轮发射、共享暴击、逐颗随机角度、部分池成功和共同冷却，见 [霰弹轮次](07_SHOTGUN_VOLLEYS.md)。本页旧阶段验收数和单颗霰弹限制保留为历史说明。

后续装备阶段更新：最新完整恢复程序集27/27通过。包内初始档案已加载Gun0/SINGLE、伤害100/暴击125/间隔0.6/移动速度15，运行时开启普通连续攻击；文中关于初始27/LASER/零伤害及默认攻击关闭属于上一阶段的历史状态，序列化占位仍保留。详见 [装备与数值](06_EQUIPMENT_AND_FOREST_BALANCE.md)。

唯一目标 com.Chodun.CatGunner 1.1.61/vc257；地址是本构建 ELF preferred VA。原资产来自冻结 Main，原脚本 GUID 保留，错误 XAPK 不参与。

## 池与发射

Polling_manager 原池 0 有 27 个 Bullet，池 1 有 10 个 Bullet_FX。子弹与 FX 分支共 6,978 个原 GameObject，合入森林后为 11,600；独立 RecoveredBullets 是导入证据，不是新玩法或独立运行场景。所有 Bullet 保留 65 个 Skin_particles 引用，共 1,215 个 Bullet_Mesh；出生 BounceStart 位于 27 个 Bounce_Stat 子节点。

Object_struct.Object_Polling_Smart 0x2b17bb4 从游标找 inactiveInHierarchy 的对象；没有则找 is_Die 的 Bullet，CancelInvoke、关闭对象后返回；全存活返回 null，不生成对象、不抢占存活弹。Object_Polling 0x2b17de4 环形返回当前对象并推进游标，不检查 active 状态，用于 FX。

Cat.TrySpawnBulletEx 使用池 0，池空返回 false；调用 Bullet.SpawnEx。当前接入 SINGLE=0 和 SHOTGUN=3 的单颗弹丸。完整霰弹枪多弹发射、原 Attack/瞄准/攻速/暴击选择尚未接入；其他 enum 为 LASER=1、PIERCE=2、EXPLOSIVE=4、MISSILE=5、BLAST_SNIPER=6，当前明确拒绝，避免替代成普通枪。

## 发射、命中与回收

- ResetState 0x2b656f0 清除死亡/导弹/首击/FX 标志、穿透数和半径，清理 hit IDs、取消旧 Invoke，启用碰撞器、刚体非 kinematic。
- SetupLinear 0x2b657d0 停止并清理原粒子，设置位置/LastPos/forward、速度 forward×Speed，复制 damage/text/critical，激活对象并播放。原 Speed=70。
- SpawnEx 的寿命为 min(传入寿命,50/max(Speed,.1))，正常速度下约 .714 秒；不是无限距离弹。
- OnTriggerEnter 由真实 Collider 触发，普通弹从当前位置减 velocity×fixedDeltaTime 取最近接触点。HitSingle 0x2b66714 依次伤害路由、SpawnFX、DieAndWait。
- DieAndWait 0x2b66330 防重复，设置死亡、速度归零、刚体 kinematic、碰撞器关闭、停止 mesh、清理 Invoke，按原序列化 1 秒延迟 Deactivate。Deactivate 0x2b66e3c 只关闭对象。
- Bullet_Mesh.Active/Stop 0x2b65548/0x2b654c4 保留原粒子组播放与停止/清理。

ForestDamageDispatch 是独立树分支适配，按原 Gamemanager.Damage_Tag 0x2a7ff50 的 EnemyColl→Enemy 标签路由调用 Enemy.Damaged。完整 Gamemanager.Damage_Collider 0x2a7fba8、HasDamage 门禁、Ore 固定伤害分支和 DamageTextManager 未集成。DamageTextPending 只是明确通知；不得据此宣称伤害数字原 UI 已运行。数值采用独立 DecimalAmount，原 InfiniteValue 插件实现未复制。

## FX 与出生动画

Bullet_FX.Spawn 0x2b6700c / Skin_Reload 0x2b6723c 使用原 65 索引粒子；同枪清理/重播，换枪停旧并切换。FXThrottle.CanSpawn 0x2b66e60 使用 65 条记录、Time.time 和每帧最多 3 次；同枪距离平方<2.25 且时间<.05 秒拒绝，边界等于时允许。

10 个原 Destroy 组件保留 Destroy_Time=2 秒，用 WaitForSeconds，暂停时不计时。BounceStart 使用原 _upSizeTime/Middle_value/WantSize，初值 scale=.001，先从 0 到 WantSize，再到 1；两段按原时间比例分配。参数取原组件，未凭外观新造。

原粒子 Material 保留；工作场景使用独立 Recovery/OriginalParticleCompatibility 覆盖，复制原纹理、UV、基础颜色和混合值。原 solid_AB 的 _BaseMap 就是 null，按原 shader 白色默认语义处理，不补造贴图。6,911 个 renderer 的材质及拖尾检查无错误 shader。原完整 URP shader、发光/软粒子/翻页插值等效果尚未逐项恢复，不能宣称视觉等价。

## 验证与后续

完整恢复程序集 19/19 通过（live-projectile-tests-status.json）；材质补修后针对子弹再跑 4/4（live-bullet-material-tests-status.json）。四项新增验证：原资产/池满拒绝/死弹复用，真实子弹碰撞造成 250→150 并致死回收，50 距离上限与旧 Invoke 清理，FX 暂停计时与节流边界。

首轮 3/4 的失败是测试把原 BounceStart 当成根组件；已按原 Bounce_Stat 子层级修正测试，没有搬动资产。首轮报告保留。截图用 Editor-only 临时指定目标/伤害夹具，非原自动瞄准或数值循环；截图结束恢复时间并退出 PlayMode。

依据 native-bullet-hit（19 个业务方法）、native-bullet-dependencies（14 个）、native-bullet-effects-lifecycle（11 个）的完整有界 ASM/伪代码与原组件 JSON。HitPierce 有 PIC 警告，须继续逐 ASM 分支核对。森林射线/瞄准、65枪展示和连续SINGLE已在后续23/23运行验证（显式装备/伤害夹具），见05_TARGET_AIM_AND_NORMAL_ATTACK.md；完整Cat.Update/AutoMove/AI、装备/数值加载、其他武器、伤害数字和经济主流程仍未闭合；没有完整 Main、Player、手机和生产服务验收。
