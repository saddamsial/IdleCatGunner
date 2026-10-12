森林自动移动已接回，找目标/停射/退后/摇杆接管与当前边界见[规则11](11_FOREST_AUTO_MOVEMENT.md)。本文旧自动移动待恢复描述保留为历史记录。

本节旧“导弹待恢复”表述为历史阶段。当前导弹森林分支及51/51检查见[规则10](10_MISSILE_FLIGHT_AND_AIM.md)和最新RECOVERY_PROGRESS；完整Update/AI/其他模式/主流程仍待接入。

# 爆炸与爆破狙击：普通森林分支

唯一输入为com.Chodun.CatGunner 1.1.61/vc257。EXPLOSIVE=4，BLAST_SNIPER=6。原表11把爆炸枪、8把爆破狙击枪，共19项。默认库存/装备仍Gun0；选择测试枪不赋予库存、不写真实存档。

## 原生与配置证据

本构建有界方法：Explode0x2b65edc…0x2b66180；HitExplosive0x2b66c1c…0x2b66c64；HitBlastSniper0x2b66c64…0x2b66e24；Destroy0x2b6708c…0x2b67104。后续命中依赖已纠正的HitPierce0x2b66980和共享SpawnFX_Once0x2b66e24。Cat.Attack0x2b3d4ac的类型4/6分别传ExplosionRadius/BlastSniperExplosionRadius。Ghidra统一加0x100000；13个有界查询包含7个Bullet方法和6个验证过的异常辅助，输出native-explosion-reviewed，入口16字节guard与完整ASM核对。

Physics模块token0x600004d明确是OverlapSphere(Vector3,float,int)，分配Collider[]、遵循全局Trigger查询设置。HashSet<int>.Add/Contains和GetComponent<EnemyColl>身份延用本构建MetadataRegistration/MethodSpec证明，引用分别preferred0x4182ae4/0x4181fa8；独立非inline引用避免旧PIC误读。商业InfVal比较只使用已证实的>=签名，未恢复插件内部。

Gun14爆炸参数：Damage120、Crit150、chance0、interval0.7、ExplosionRadius5。Gun29爆破狙击：Damage1600、Crit2000、chance0、interval0.35、BlastSniperExplosionRadius5.5、PenetratingBulletLifetime2。其余原配置见original-explosion-contract.json，配置source/实现/本轮C与ASM哈希均保存。

## 范围伤害

radius>0才查询；零/负半径不伤害，即使命中目标，也不存在额外直击伤害。按返回数组原顺序处理，跳过null和当时已经inactive的Collider；查询本身不按Enemy标签过滤，只按EnemyLayer。先记录未见过的Collider ID，再取ClosestPoint(center)并分发完整伤害、文本、暴击。没有距离衰减，也不按Enemy身份去重。

同一存活Enemy若有两个不同Collider，两个可能各受一次完整伤害。如果前一次伤害导致整个对象失活，之后数组项会被inactive门禁跳过。共享ID集合还用于后续穿透；同发已溅射的Collider不会之后再计一次直击。

## 碰撞与寿命

HitExplosive不依赖命中对象Enemy标签，执行Explode(hitPos)→SpawnFX(hitPos)→DieAndWait。非敌障碍可引爆周围EnemyLayer目标。回收使用原池、原皮肤/FX、Collider关闭、速度归零和延迟Deactivate。

Destroy先检查is_Die。类型4/5在子弹当前位置爆炸并请求FX，再DieAndWait；类型6只DieAndWait，不再爆炸。类型5导弹飞行尚未恢复，保留这个共用回收分支不表示导弹可发射。碰撞已死后的寿命调用不会二次爆炸。

Cat.Attack4使用普通散射、ExplosionRadius与请求寿命1.5秒；Attack6使用普通散射、BlastSniperExplosionRadius与原PenetratingBulletLifetime（表为2）。SpawnEx仍将寿命限幅min(requested,50/Max(Speed,.1))，原Speed70实际最多约0.714秒。一次暴击选择给全范围伤害；成功增长散射和反馈、池空失败下帧重试延用既有规则。

## 爆破狙击首击与后续

第一次接触前_firstHitDone=false。进入时立即置true；若是Enemy标签且有有效存活EnemyColl，先以Damage>=目标受伤前生命计算是否可继续。无效/已死/非Enemy默认停止。之后执行一次范围爆炸和首次FX；初始目标非致死时立刻停止，致死（含恰好相等）则继续。停止依据是首个目标受伤前生命，不是范围中其他目标是否存活。

后续未见过的Collider走HitPierce。首次范围爆炸不增加_pierceCount，因此第一次后续非致死穿透仍可继续；第二次后续非致死才停。已被首击范围伤害记录的Collider在OnTrigger入口跳过，FX标记共用，也不重复爆炸/敌人FX。再次Spawn清除_firstHitDone/_fxSpawned、ID和计数。

## 验证边界

专项区分直接调用规则测试与真实Physics测试。独立树生命/弹速/Collider/全局查询设置夹具用于边界，finally恢复全局状态；正式场景不保存这些值。真实自动攻击检查读取原Gun14/29数值，选两棵包内第一波250生命树，只改变位置：单次爆炸应各250→130；爆破狙击首击1600同时击倒两棵树，计数减2。

专项首轮6/7，真实攻击测试把原250生命的数字串25000（指数-2）当作250检查，跳过了等待；仅修改夹具为完整数值比较，原生公式/配置/命中实现未改变，失败报告保留。第二轮伤害/死亡通过，但命中后的短枪口/后坐力状态断言失败；独立诊断定位同一断言。反馈检查改在Attack当帧，原动画不延长，失败/诊断报告保留。最终专项7/7（30.25秒）、完整程序集43/43（111.63秒）；最新结果见live-explosion-tests-final-status.json、live-explosion-assembly-tests-status.json与VERIFICATION.json。森林桥接保留独立package初始档案。完整Cat.Update/AutoMove/AI、UI mode5/Ore、库存保存/装备/升级交互、结算/Main、导弹、设备/全部原视觉仍未验收。
