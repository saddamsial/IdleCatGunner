森林自动移动已接回，找目标/停射/退后/摇杆接管与当前边界见[规则11](11_FOREST_AUTO_MOVEMENT.md)。本文旧自动移动待恢复描述保留为历史记录。
> 后续规则63已在正常 RecoveredClient 中补回原 Target/Triangle 循环旋转；本文件以下静态标记描述为规则05历史状态。早期独立 RecoveredForest 测试场景仍使用其原静态接线。


本节旧“导弹待恢复”表述为历史阶段。当前导弹森林分支及51/51检查见[规则10](10_MISSILE_FLIGHT_AND_AIM.md)和最新RECOVERY_PROGRESS；完整Update/AI/其他模式/主流程仍待接入。

# 森林目标、瞄准与连续普通攻击

2026-10-09追加：森林EXPLOSIVE/BLAST_SNIPER已接入，最新完整恢复程序集43/43通过；后续边界见[规则09](09_EXPLOSIVE_AND_BLAST_SNIPER.md)。以下阶段描述为历史证据。

2026-10-09追加：森林PIERCE/LASER已接入，最新完整恢复程序集36/36通过；后续边界见[规则08](08_PIERCE_AND_LASER.md)。下文阶段数字和原未接入描述保留为历史证据。

霰弹阶段更新：最新完整恢复程序集31/31通过；已接回SHOTGUN整轮发射、共享暴击、逐颗随机角度、部分池成功和共同冷却，见 [霰弹轮次](07_SHOTGUN_VOLLEYS.md)。本页旧阶段验收数和单颗霰弹限制保留为历史说明。

后续装备阶段更新：最新完整恢复程序集27/27通过。包内初始档案已加载Gun0/SINGLE、伤害100/暴击125/间隔0.6/移动速度15，运行时开启普通连续攻击；文中关于初始27/LASER/零伤害及默认攻击关闭属于上一阶段的历史状态，序列化占位仍保留。详见 [装备与数值](06_EQUIPMENT_AND_FOREST_BALANCE.md)。

只对应 com.Chodun.CatGunner 1.1.61/vc257。ELF SHA 为 80eb8bcbebd058ffb4beac5d8d7d544066587a7a1abee8898874847ff13dc583；地址为 ELF preferred VA，Ghidra 加 0x100000。原 Main/包未修改，使用用户 Unity 6000.4.10f1。

## 搜索和锁定

原 Cat 字段 RayCount=36、Attack_Length=40、Raycast_Cool_Max=.1。HandleRaycastTimer 0x2b3ba74 累加 deltaTime，达到间隔后清零并搜索，不保留超出的余数。FindNearestEnemyByRaycast 0x2b4126c 从原 Ray_trans 发射 36 条 XZ 射线，角度 360/RayCount×i，方向 (sin,0,cos)，使用原 EnemyLayer；只选择屏幕内的最近距离，等距离保持先找到的射线。Monster 的屏外追踪分支未接入森林。

IsOnScreen 0x2b38de0 缓存 Camera.main；相机缺失时返回 true。世界点 viewport.z>0，x/y 在 [-.02,1.02] 内，边界包含；IsValidTarget 0x2b4171c 检查 Collider 非空、activeInHierarchy 和屏幕位置，不额外猜测健康/碰撞器 enabled 门禁。

ResolveAttackTarget 0x2b3bad0 的手动/闲置锁定分支恢复为明确命名的 ResolveManualAttackTarget：移动输入平方>.0001 时使用当前射线目标；静止时保留有效且距离<=40 的 _lockedAttackTarget，否则改用当前射线结果。原 AutoMove 的 _autoTarget 选择和靠近分支未接入。目标指示器按原目标位置激活/隐藏，死亡/退出目标有原 ClearNearObj 0x2b3aeb4 清理。

## 原枪械引用与展示

Cat.Gun_list 原数组为 65 项。原 Gun 组件仅持有 Shoot_trans、Shoot_Random_trans、Shoot_particle，全部依据对应组件 JSON 恢复。Cat.Shoot_particle 的原初始序列化值是 null，运行时由 Balance_Reload 0x2b38f10 从 Gun_list[GunNum] 赋值。ReloadGunPresentation 只恢复该方法的展示尾部：复制三项枪口引用、只激活所选枪、清零散射、Gun_Degree_FX_list 的 gun/5 索引；不冒充完整 Balance_Reload。

原角色初始 GunNum=27、_gunInfo.type=LASER、Damage/CriDmg=0 保留。独立场景桥接先补当前枪展示引用，默认不启用连续射击。正常装备、攻击数值、暴击与冷却重算仍依赖未恢复的库存/升级/宠物/重生等业务。

原 _gunInfo、Damage/CriDmg、Gun_bounce、Rebound_bounce、Gun_list 六项先前缺失的字段合同现已接入。OriginalAmount 是独立十进制运算适配，保留原 s_digits/s_exponent，不复制 InfiniteValue 插件。

## 瞄准、枪口和散射

FaceTowardEnemy 0x2b419d0 使用原 +45° 相机校正选择左/右 Pivot 姿态。UpdateHandRotation 0x2b3b00c 的普通/非导弹分支按近点 XZ 与原手高度取方向，保留手到自身/目标距离门禁，经父级 InverseTransformDirection 求 Atan2，再 LerpAngle(currentHandZ,desired,HandRotateSpeed×deltaTime)。没有目标时回到 130°。左手直接朝 Gun_Pivot_trans，在平方距离>=.0001 时写 Z。导弹的抬高轨迹瞄准未恢复。

UpdateFaceRotation 0x2b3b64c 恢复非 AI 分支：目标方向或摇杆绕 -45° 的方向，经 +45° 校正和左右符号求角；无方向为90°，用 angle/180 的 clamped Lerp 在原私有 FaceAngleMin=20/Max=160 之间取角，再按 FaceRotateSpeed×deltaTime 的 LerpAngle 渐近插值。不是固定帧数完成的 Tween。

GetFirePosition 0x2b41b8c 有随机枪口时按原 Random.Range 索引选择，否则 CalcBulletSpawnPos 0x2b424cc。两者都沿 Quaternion.Euler(40,-45,0)×forward 投影到 y=2，XZ保留投影偏移。CalcBulletDir 0x2b41c7c 只用 XZ，平方<=.0001 回退 forward。ApplySpread 0x2b41da8 在角度<.01 时不取随机值，否则 Y 轴旋转 [-spread,spread]。

散射最大角 = Lerp(min,max,1-Clamp01((ln(max(AtkCool_Max,.05))+2.9957323)/3.6888795))。ELF .rela.plt 导入证明 0x59fb2d0 为 logf（自然对数），非 log10f；0x59fb270/0x59fb2e0 为 sincosf/atan2f。获得首个目标时清零散射与 AtkCool_Now；无目标按 MoveTowards 以 decay×max(maxAngle,1)×deltaTime 衰减，命中发射成功后按 SpreadGrowthRate 的 clamped Lerp 增长。

## 连续 SINGLE 路径与射击反馈

AttackSingle 只恢复 Attack 0x2b3d4ac 的 SINGLE 分支。先转向、取原枪口、计算 XZ方向，Random.value<CriPer 选择 Damage/CriDmg 与原字符串，散射后通过 TrySpawnBulletEx 发射，原寿命=.7 秒。池满返回 false，此时不播放后坐力/枪口/音效，也不增长散射。成功后才增长散射、播放原两段 Bounce、Shoot_particle；声音走已恢复的本地 Sound_manager，原完整全局声音门禁尚未闭合。

TickSingleAttackCooldown 恢复原 Update 的冷却/重试片段：累加 deltaTime，达到最大且有目标时先清零再尝试发射；失败置为 AtkCool_Max-deltaTime，下一帧重试。原 Cat.Update 的 AI、自动移动、面包屑、Monster限制和全部模式门禁尚未接入；ForestCombatAcceptance 是明确命名的森林手动控制桥接，默认 EnableSingleAttacks=false。

Gun_bounce 原 WantSize=(.7,1.1,1)、_upSizeTime=.2；Rebound_bounce 原 WantPos=(-.6,0,0)、_upPosTime=.2。Bounce_Start 重置时间；已经 Bouncing 时复用当前协程，不重复启动。每次一帧后更新，两段各一半时间，完成恢复 scale=one/position=zero。Awake/OnEnable/resetAnim 和两个 MoveNext 均有原生证据。

## 呈现边界和验证

Target 原 GameObject 1748 与 Triangle 子节点来自冻结 Main，原 Sprite/纹理保留，使用公开 Sprites/Default 兼容材质；父 Shapes.Disc 原本 disabled，保持隔离；Triangle 原 DOTweenAnimation（3秒 Linear、无限 Incremental 旋转）参数保留在导出，目前只恢复静态标记，未恢复该插件动画。枪口粒子也使用独立兼容材质，完整 URP 渲染源未恢复。

原生追加查询在 native-cat-target-attack：21 个业务/状态机方法、6 个门禁证明异常辅助，所有查询 completed=true；这不是完整功能数量。合同见 original-combat-contract.json，接线见 forest-combat-reference-restoration.json。

测试使用独立 SINGLE/伤害输入，不读取手机私有档或伪造装备所有权。覆盖屏幕/锁定/射线选择、枪口平面与方向、散射边界、原瞄准、真实连续命中致死、原粒子/后坐力、池满无反馈和下帧重试。首轮 1/4 暴露原动态枪口依赖，补齐 Gun 后第二轮 3/4（实际连续攻击已通过），剩余闲置脸部断言误按12帧等待已修正；最新完整恢复程序集 23/23 通过，见 live-combat-assembly-tests-status.json 与 VERIFICATION.json。GameView 截图 forest-continuous-attack.png 已读取，continuous-attack-visual-state.json 记录实际目标搜索、瞄准、枪口/命中特效及生命250→150；截图使用显式 SINGLE/伤害夹具，结束后恢复时间与 EditMode。没有完整 Player、手机、全 Main 或生产服务验收。
