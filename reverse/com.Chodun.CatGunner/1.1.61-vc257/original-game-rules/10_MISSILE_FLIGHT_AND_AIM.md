森林自动移动已接回，找目标/停射/退后/摇杆接管与当前边界见[规则11](11_FOREST_AUTO_MOVEMENT.md)。本文旧自动移动待恢复描述保留为历史记录。

# 导弹：落点、弧线、仰角和回收

唯一目标 com.Chodun.CatGunner 1.1.61/vc257；原生 SHA256 80eb8bcbebd058ffb4beac5d8d7d544066587a7a1abee8898874847ff13dc583。全部地址为 ELF preferred VA，Ghidra加0x100000。本节记录森林导弹分支，不表示完整Cat.Update、其他模式或所有客户端功能已恢复。

## 代码、ABI与配置证据

`native-missile-reviewed`保存5个业务方法和6个已验证异常辅助的有界C/ASM、status.tsv。每个方法按本构建unwind边界/首16字节校验，不覆盖旧反编译。Cat.TryFireMissile 0x2b421b4、Cat.UpdateHandRotation 0x2b3b00c、Cat.Attack 0x2b3d4ac、Bullet.SpawnMissile 0x2b65958、Bullet.Update 0x2b65c44。

TryFireMissile的this/target/damage/text/critical在x0/x1/x2/x3/w4，startPos在s0–2，spread在s3。SpawnMissile start/end在s0–2/s3–5，radius/duration在s6/s7，arcMultiplier0.4通过栈传递。原本C对ARM64 Vector3 HFA返回误把Y/Z当旧别名；恢复以ASM中s9/s10/s14的完整previous XYZ为准，LastPos保存移动前位置。C保持原工具输出，不手改伪代码来假装工具已正确理解ABI。

数学导入0x59fb2f0，通过ADRP/LDR的GOT目标和.rela.plt/.dynsym/.dynstr证明是tanf。metadataRegistration/MethodSpec证明global0x5d62770为GameObject.GetComponent<Bullet>，并非凭调用猜测。机器可复现证据、原配置、字段偏移和当前实现哈希见`original-missile-contract.json`及`tools/export_missile_contract.py`。

原表9把：Gun24/28/33/38/43/48/53/58/63。Damage分别600/1600/6400/24000/96000/360000/4000000/80000000/2000000000；interval0.4/0.35/0.2/0.1/0.1/0.1/0.1/0.1/0.1；radius9/10/11/13/13/13/13/13/13；Speed除Gun38=35外均50。每把原MissileElevationMin1/Max3保留，但本次TryFireMissile和手部瞄准方法不消费它们，没有臆造仰角夹取。

## 发射与瞄准规则

- 先从原pool0获取可用Bullet，池满直接false；尚未抽散布角度或半径，不抢占活弹。
- 落点读取target.transform.position；target空时使用nearHitPoint。只读取发射瞬间位置，之后不追踪目标。
- spread严格大于0.01才散布：rMax=XZdistance*tan(spread*Deg2Rad)，先Range(0,360)角度，后Range(0,rMax)半径；X+=r*cos、Z+=r*sin，Y不变。半径均匀抽样，没有sqrt面积修正。
- duration=散布后最终XZdistance/max(MissileSpeed,0.1)，h=XZdistance*0.4。没套用普通弹50单位寿命限制，也没额外最短duration。
- Cat.Attack只作一次严格暴击判定；导弹不调用普通ApplySpread，但成功后参与非霰弹的动态散布增长。只在成功后播放原后坐力/枪口和已有本地声音适配。
- 手部瞄准：delta=target.transform.position-RightHand.position；delta.y+=4*(XZdistance*0.4)，归一化后aimPoint=hand+delta*10。共用距离门禁、parent.InverseTransformDirection、atan2和LerpAngle、左手枪柄跟随；无目标回到130。

## 飞行、爆炸与复用

Spawn执行Skin_Reload、Mesh_Reload、ResetState；设type5/Layer/radius/_isMissile、起终点/duration/timer0/h。刚体kinematic、position/LastPos=start；全3Ddelta.sqrMagnitude>0.001时设置初始forward。复制伤害/文本/暴击、激活、particle.Clear，并安排duration+0.5后Destroy；没有额外Stop/Play。

Update在活导弹时累加缩放后的Time.deltaTime，t=Clamp01(timer/duration)，position=Lerp(start,end,t)，Y+=4*h*t*(1-t)。移动量平方>0.0001才更新forward，LastPos记完整上帧XYZ。t>=1时当前位置Explode→SpawnFX→DieAndWait。

提前Trigger取coll.ClosestPoint(LastPos)，与EXPLOSIVE共用HitExplosive，不按敌人标签决定是否引爆。范围、层、全局Trigger、完整伤害、Collider-ID重复屏蔽均沿用原爆炸规则09。未正常Update时，duration+0.5超时在当前位置爆炸；is_Die门禁阻止端点/碰撞后的二次超时结算。ResetState清命中/死亡/FX标志；重新SpawnMissile覆盖5个_ms字段，切回SpawnEx后恢复动态直线弹。

## 验收与边界

专项与程序集结果以`reports/live-missile-tests-final-status.json`、`live-missile-assembly-tests-status.json`和`VERIFICATION.json`的completed/summary为准。测试区分直接规则调用、实际Update、实际Physics和原配置自动攻击；临时改目标/槽位/测试生命不写玩家存档。初始槽[0,-1,-1]仍使用Gun0。

ForestCombatAcceptance是显式森林桥接；独立DecimalAmount/伤害文字通知/经济通知、兼容粒子材质仍为已记录适配。Full Cat.Update、AI/AutoMove、UI mode5/Ore、库存/存档选择/升级UI、完整Main/结算、Player构建与手机和全部视觉尚未验收。APK不含生产服务端源代码。
