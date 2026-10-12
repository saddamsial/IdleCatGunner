森林自动移动已接回，找目标/停射/退后/摇杆接管与当前边界见[规则11](11_FOREST_AUTO_MOVEMENT.md)。本文旧自动移动待恢复描述保留为历史记录。

本节旧“导弹待恢复”表述为历史阶段。当前导弹森林分支及51/51检查见[规则10](10_MISSILE_FLIGHT_AND_AIM.md)和最新RECOVERY_PROGRESS；完整Update/AI/其他模式/主流程仍待接入。

# 森林、原输入和角色运动

2026-10-09追加：森林EXPLOSIVE/BLAST_SNIPER已接入，最新完整恢复程序集43/43通过；后续边界见[规则09](09_EXPLOSIVE_AND_BLAST_SNIPER.md)。以下阶段描述为历史证据。

2026-10-09追加：森林PIERCE/LASER已接入，最新完整恢复程序集36/36通过；后续边界见[规则08](08_PIERCE_AND_LASER.md)。下文阶段数字和原未接入描述保留为历史证据。

霰弹阶段更新：最新完整恢复程序集31/31通过；已接回SHOTGUN整轮发射、共享暴击、逐颗随机角度、部分池成功和共同冷却，见 [霰弹轮次](07_SHOTGUN_VOLLEYS.md)。本页旧阶段验收数和单颗霰弹限制保留为历史说明。

后续装备阶段更新：最新完整恢复程序集27/27通过。包内初始档案已加载Gun0/SINGLE、伤害100/暴击125/间隔0.6/移动速度15，运行时开启普通连续攻击；文中关于初始27/LASER/零伤害及默认攻击关闭属于上一阶段的历史状态，序列化占位仍保留。详见 [装备与数值](06_EQUIPMENT_AND_FOREST_BALANCE.md)。

只对应 com.Chodun.CatGunner 1.1.61/vc257。地址为 ELF preferred VA，原代码、原字段/资源与兼容层分别记录。没有使用错误 XAPK。

## 森林池和地图

- 原场景 Tree_manager 1599、Map_obj 1838、Cat 29892 及相机分支共 4,615 原 GameObject。普通树池为 5×100，Boss_tree 是独立第 501 棵。原 Boss 资产 is_Boss=false，不能依据这个布尔值猜测池身份。
- 每波数量为 clamp(30+stage×10, max100)×(wave+1)，第 5 波另加 Boss。边界 localZ=50×(wave+1)+60，地图/地面皮肤 stage%10。
- Tree_Grid 排序 Morton(x,z)=Spread(x)|(Spread(z)<<1)，以 floor(k*N/count) 选槽。选中树顺序先取 X/Z 两次 [-1.5,1.5] 抖动，再取品级概率；10 列、每槽间距 5。
- 五波品级概率依次 [80,20,0,0]、[50,45,5,0]、[20,55,25,0]、[5,35,60,0]、[0,15,85,0]，严格小于累计值；默认回退品级0。原 .cctor FieldRef 的 80 字节 blob SHA256 a393c0c13bbdf298cc15cb47754116c0873c6188b8cdfb7264ee5eb34e7ff7b9。
- 生命倍率 [1,1.8,3,35]；金币倍率 [1,1.8,3,100]。原 5,000 项基础缓存直接读取；超出缓存的大数精度语义仍待完整验证，不能以 naive Pow 代替。
- Enemy 的树分支 Spawn 重置死亡并隐藏血条；Damaged/Die 有游戏状态门禁、重复死亡守卫。计数/树回收和重生已接入。钱币、任务、Bounce/粒子、原胜负/结算的依赖尚未接入，委托通知只是显式适配点。

证据：[森林原生合同](../reports/original-forest-contract.json)、native-forest-grid、native-forest-lifecycle；工作场景 Assets/Recovery/Scenes/RecoveredForest.unity。

## 原摇杆和手动移动

原 Joystick/FloatingJoystick 的字段、Canvas 分支、背景和手柄来自原文档 147193/34879。独立输入分支合并至森林，未生成替换游戏界面。

- 按下定位并显示背景；拖动依背景半径与 Canvas.scaleFactor 换算。死区内归零、超单位圆归一化，保持原轴限制和 22.5/67.5/112.5/157.5° 吸附边界；松手归零并隐藏。
- Cat.Awake 0x2b38cd0 仅在非 AI 时登记 instance。原 hero moveSpeed=13，原 Animator、Rigidbody、Pivot/手部等引用保留。
- HandleMovement 0x2b3aa78：direction.sqrMagnitude>.0001 时 Walk=true；方向先 X÷1.2、Y×1.2，再 Quaternion.Euler(0,-45,0) 转成 XZ，乘 moveSpeed。运动和静止分支都保留旧 velocity.y。原场景锁定 Y 轴，实际运动只在森林平面。
- 无目标时横向<=0 面朝左。存在 nearObj 时用 Quaternion.Euler(0,45,0)*(target-self) 的 X 判定朝向；朝向不反转移动方向。左 Pivot=(40,-45,0)，右=(-40,135,0)。静止无目标不改朝向。
- ApplyHandZ 0x2b3a370 保留手部 X/Y，只写 Z。原 Start 手部基准 Z=130 由单独测试接线应用。
- Warp 0x2b42da4 写 Rigidbody.position 与 transform.position，清空速度、自动目标和平滑缓存，朝右。

证据：[移动原生常数](../reports/original-movement-contract.json)、native-forest-combat/Cat_HandleMovement.asm、native-cat-initialization/Cat__cctor.asm、[引用接线](../reports/forest-movement-reference-restoration.txt)。移动阶段62字段的历史报告保留；本轮6项业务类型/原65枪口及目标标记已补回，原68序列化字段逐项核验，见 cat-combat-field-restoration.json。

**接线差异**：ForestMovementAcceptance 仅调用已恢复的手动移动；完整原Cat.Update、自动移动/AI和装备/数值加载尚未闭合；森林目标搜索、手/脸瞄准、65枪展示和普通连续攻击已通过独立输入验证，见05_TARGET_AIM_AND_NORMAL_ATTACK.md。AutoMove 原 true 保留，不能把这段测试接线说成完整角色逻辑。ForestRuntimeAcceptance 不是原 Gamemanager 启动。

## 骨骼、相机和兼容呈现

原猫咪 9 根骨骼、根骨、原 Sprite 权重/bindposes 和 bounds 通过公开 2D Animation 14.0.4 的 SpriteSkin 接入用户 6000.4 Editor，运行 isValid 检查通过。原 2 个 Follow 引用恢复。原 TagManager/碰撞矩阵/InputManager/TimeManager 导入，旧默认留在 quarantine。公开包依赖是框架，没有使用其他游戏资产。

SpriteSkin 的公开包 GUID 替代原导出 GUID；树图等使用公开内置 Sprites/Default；血条用独立兼容 shader 读原 color.r 填充值，源 shader/整个渲染管线未恢复。原完整 Main 和资源基线不变。

## 普通子弹已接入

原 Cat.TrySpawnBulletEx、27/10 对象池、线性 SINGLE/单颗 SHOTGUN、真实命中、FX 和延迟回收已通过 PlayMode。完整 Cat.Update/自动瞄准和其他武器仍未接入，细节见 [子弹与对象池](04_PROJECTILES_AND_POOL.md)。原池分支追加 6,978 个 GameObject，合并森林共 11,600 个；原完整 Main 不变。

## 验证

最新完整恢复程序集23/23 PlayMode通过，报告live-combat-assembly-tests-status.json。真实 EventSystem 指针驱动角色刚体位移；静态速度锚点、动画、松手/朝向、Warp、树池/伤害/血条/重生和原 SpriteSkin 检查各自记录。

竖屏截图 visual/forest-movement-idle.png 和 forest-movement-drag.png 已读取，见 reports/visual/captures.json 的 SHA 与说明。拖动截图为稳定显示临时暂停时间，实际运动由 PlayMode 验证；截图后恢复时间和 EditMode。未做完整 Player、手机、全 Main 或服务端验收。
