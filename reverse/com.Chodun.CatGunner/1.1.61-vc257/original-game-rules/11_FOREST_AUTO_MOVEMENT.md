# 森林主角自动移动

只对应手机提取的 `com.Chodun.CatGunner 1.1.61 / vc257 / arm64`。原包和冻结 AssetRipper 基线未改；本章恢复森林 UI mode0 的主角路径，其他模式和队友 AI 不在本章的完成范围。

## 原生证据

`native-auto-move-reviewed` 保存完整有界 C 和 ARM64 ASM：Cat.Update、HandleAutoMove、FindNearestTreeByGrid、FindBossTarget、AutoSmoothStop、ClearAutoTarget、ResolveAttackTarget、ScreenSpeedMultiplier、构造/静态构造及退后方向辅助，共11项业务/字段证据；另6项已验证异常辅助。17项导出均完成；导出完成本身不代表全部方法已接入运行。

所有查询校验 ELF preferred VA 的首16字节与 unwind 边界。Ghidra 重定位为 +0x100000。MethodSpec 确认自动目标依次使用 `Component.GetComponent<Collider>` 和 `GetComponentInChildren<Collider>`。退后辅助读取 Vector3 类型静态字段偏移0x54；matching metadata 表明它是 `backVector`，ASM返回完整 XYZ。ScreenSpeedK 的静态写入是0x3f99999a，即1.2；CamCorrection 为绕Y轴45度，投影系数为0.5773502588。

ARM64 的向量/四元数参数与返回寄存器均复核：屏幕速度使用旋转后的X/Z，平滑移动始终保留 Rigidbody 原Y速度。不能照抄C伪代码中错误合并的 scalar/loop变量。旧静态构造伪代码曾在 write barrier 后截断，新有界导出用独立非内联引用保留后续静态赋值；旧输出保留。

## 每帧顺序与输入

战斗中：射线计时 → 自动/手动攻击目标解析 → 散布 → 移动 → 双手瞄准 → 面部 → 攻击冷却。AutoMove 为真且摇杆平方长度 `<0.0001` 时自动移动，否则清自动目标并执行手动移动；解析自动攻击目标的条件包含等于边界，移动选择在等于边界时仍走手动，保留原生差异。

`ForestCombatAcceptance` 接回这个森林顺序。`ForestMovementAcceptance` 在当前战斗桥接开启时不重复写 Rigidbody；单独停用目标桥接后仍可做独立手动/物理验收。停用移动适配器的武器夹具不会被自动移动污染。原 Cat.Update 的 breadcrumb/leader history、其他模式、AI 和完整 Gamemanager 仍待接入。

## 目标与移动

原字段来自 `serialized-components/level0-147400.json`：AutoMove=true、搜索间隔0.3、停止距离10、最小敌距5、Z偏移最大-15、插值距离3..10、减速区间2、近邻半径8、Z权重0.4。原序列化速度13经过初始森林数值加载变15。

搜索以激活的 Tree_Grid 下界排序；Z区间为网格Z到Z+45，插入排序保留相同下界的原数组顺序。遍历激活树及激活 Enemy，分数是XZ距离；超出近邻半径8时加 `0.4*max(0,目标Z-主角Z)`。严格小于才换目标；下界大于最佳分数时跳过后续网格。Level_Now=4时再比较Boss树；没有激活网格时提前返回，不单独扫描Boss。无额外自创生命/死亡字段筛选。

计时到0.3或目标为空时重选；目标失活会立即重选。自动攻击用目标/子节点Collider的ClosestPoint，目标有效且从Ray_trans到Collider Transform的完整3D距离不超过40才射击；超范围清攻击目标和锁，但仍保存ClosestPoint。

移动距离采用攻击ClosestPoint的XZ；无攻击目标时采用移动目标XZ。距离≤10停下；若已有攻击目标且距ClosestPoint<5，则退到5.5距离，重合时用Vector3.back。退后位移≤0.05停下。靠近时目标Z偏移按距离3..10插值到-15，并限制为停止距离×0.9；原AutoStopRatio=0.8在该原生方法未被读取。目标位移<0.3时平滑停下。距离10..12间以cubic smoothstep减速，最低比例0.2。

速度采用 `moveSpeed*ratio*ScreenSpeedMultiplier`，按 `Lerp(deltaTime*8)` 平滑。此处常数8独立于AI的VelocitySmoothSpeed字段。停下时平滑速度平方<0.01归零；ClearAutoTarget仅在平方>0.001时清平滑速度，不直接改刚体。Walk=false的停止帧可以仍有短暂减速残余。

## 验收与边界

专项测试同时验证规则边界、目标筛选和默认森林入口的真实物理链：零摇杆输入、原初始Gun0伤害100、两棵原250生命树，仅调整目标位置；实际移动/停射/伤害/死亡/计数减2/切换目标。没有注入伤害、库存或存档。

首轮9/10，唯一失败是隔离测试重新激活网格时唤回了未清理的序列化树；夹具改为清理包含非激活树在内的全部树，运行规则未改变。首次失败报告保留。最终专项10/10（33.35秒），完整程序集61/61（173.21秒）。完整回归首轮旧瞄准夹具60帧等待导致1.183度残余，保持原角度断言改为按缩放时间等待2秒，专项1/1后完整复验通过；运行瞄准平滑未改。

默认森林画面不调整位置、枪槽、树、池、属性或输入，原Gun0/100伤害、零输入下自动前进18.35米、计数30→29、目标Tree_6→Tree_4/Walk true→false，原猫与枪口可见。两张540×960截图实际读取，SHA/状态和最终干净EditMode交接记录见 `reports/VERIFICATION.json` 与 `reports/RECOVERY_PROGRESS.md`。

森林自动移动完成不等于完整客户端完成：波次结算/经济、升级库存/装备存档、队友AI、其他模式、完整启动Main，以及Player/手机/视觉和真实在线服务仍需后续恢复与验收。

可复现证据：`tools/export_auto_move_contract.py` → `reports/original-auto-move-contract.json`，包含原生与当前实现SHA、类型证明、原字段、ABI修正及接入边界。
