# 怪物挑战普通模式（vc257）

唯一输入为手机提取的 com.Chodun.CatGunner 1.1.61 / vc257，匹配 ARM64、metadata 与冻结 Main。反编译不是原作者 C#。主要证据见 reports/original-monster-client-contract.json、native-monster-client-reviewed、native-monster-dependencies-reviewed 与 native-monster-radius-reviewed。

Monster_manager 静态构造器 0x2b4ffe4 的五关敌人数为90/120/160/200/240，间隔为.35/.2/.17/.12/.08秒。两个20字节初始化来自metadata偏移9608824/9595064；FieldInfo编码分别索引33/25，并通过 PrivateImplementationDetails SHA256逐字节验证。场上怪物不超过2个时改用.04秒追赶间隔，已生成配额但未清关则.1秒等待。Lv_Now×.2概率生成大怪，血量为当前波×3并ToPrecision(2)。普通图和大怪图为Wave%10×2+flag，共20图；黏液颜色为10色轮换。

WaveBaseHealth_Pure 0x2b4eb20 与 WaveBaseHealth_return 0x2b4dbf0 使用原2000项血量缓存，首项500，之后乘3并截取2位有效数字。超过缓存继续逐次乘3/ToPrecision(2)，回退查询重置缓存起点。InfVal.ToPrecision 0x4558464→ToExponent→set_exponent证据证明截断，不做四舍五入；本地 BigInteger 十进制适配只恢复本路径，不宣称整个商业 InfiniteValue 库已恢复。

出生点为以(-100,0,0)为中心的旋转椭圆：半轴宽clamp(camera.aspect×60,30,60)、高60，均匀角度0至2π，半径额外±5，再以.707106769旋转XZ。普通怪速度为(max(.1,distance−20)/37.5)朝基地，大怪分母50。受伤比值damage/Health_Max夹在0至1；向外击退速度20×比值，持续.05+.299999982×比值秒，每帧线性回归正常速度。死亡停协程/速度，回池、击杀加1，原FX_Spawn位置发射5个黏液粒子。

原BarrierCollider通过EnemyColl.enemyScript调用Monster.Barrier_Touched。突破HP减1；未耗尽则回池并补生一个敌人、不计入击杀配额；HP小于1立即失败并冻结其余怪。原序列化HP_Max为1，故普通初始配置一次突破即失败。HP_Disc原属性名虽为AngRadiansEnd，原管理器传入的是HP比例×360，Shapes setter直接存浮点，不进行单位转换。本工程保留该值；形状可见几何使用明确的本地兼容环，不擅自改成原源码未证明的度数转换。

每关击败配额即即时发30普通宠物币，PetCoin_Accum记录本次已得到的数量，Lv加1，五关后Wave加1并Lv归零；2秒后下一关。失败或放弃展示本次已发数量，不再次发奖。广告额外2倍、付费自动/扫荡、在线排名上传没有模拟成功。

小猫mode4跳过森林普通攻击/攻速升级和森林波次惩罚，保留普通重生/中性皮肤等已支持修饰；射线60条、攻击距离60。射线额外记录最近屏外敌人的位置，仅作为移动提示，不朝屏外目标开火。自动移动朝基地周围半径14上的目标方向站位，无目标回基地；距离目标点小于1停止。Cat.ClampToMonsterRadius 0x2b3d234把主猫约束在半径14内，并剔除向外的径向速度，保留切向/Y速度。

普通进入2秒加载、1秒后显示原说明；相机正交45，返回恢复40，返回等待1.5+.2秒。原240怪物、碰撞链接、血条、怪物/基地/原页面、导航与结果按钮通过Unity Editor API合入同一RecoveredClient，保留原脚本.meta。重复/迟到回调防护、中途退出取消协程及独立试玩存档钱包属于本地生命周期适配。Shapes商业渲染库、GPU MonsterBounce、全部像素/原手机对照尚未验收。专项与完整PlayMode结果分别记录，不合并成未实际运行的通过数字。
