# 矿山普通玩法（vc257）

唯一输入为手机提取的 com.Chodun.CatGunner 1.1.61/vc257。匹配 ARM64、metadata 与冻结 Main；反编译文本不是原 C#。详见 reports/original-mine-client-contract.json 与 native-mine-client-reviewed-v2。

普通入场每天2次，入场扣次数并增加任务计数类型3。60秒结束后根据采矿积分整除10发普通钻石，Best_Reward更新为历次最大奖励；重复结束无奖励。未结束主动离开不奖励。每个普通矿石3次命中/1积分，稀有矿石5次命中/10积分。Gamemanager.Damage_Tag 对 Ore 标签固定传1点，不随武器伤害/暴击增加。Cat mode2同样将伤害设1、暴击概率设0，保留普通攻速升级而去掉森林波次惩罚。

原1000矿石池使用间距4、中心(-100,0,0)、内24.3/外150圆环。System.Random种子来自Unity Random.Range(0,99999)，两个NextDouble×9999浮点噪声偏移；PerlinNoise尺度.085、阈值.517，按噪声从大到小取最多池容量。ARM64元组HFA寄存器证明比较器实际是b.noise.CompareTo(a.noise)，不能直接从缺失浮点参数的伪代码推断为升序。部分Fisher-Yates标记最多100个稀有矿。每30个环内候选扫描或池位置让出一帧。原OreCount_Max/Now初始化为整个池1000，不随候选数缩减。

主猫零输入采用小半径OverlapSphereNonAlloc→扩大半径→遍历活动Ore列表回退，以XZ平方距离严格小于选最近项。矿石Enemy类型4，原EnemyColl、血条/SpriteFill、Bounce_Custom、两种原图引用接回。死亡在原DustSpawn位置发射5个原尘土粒子；原钻石浮动文字仍待恢复。初始UI层级、导航、进入、结果与返回按钮保留原资源/引用，并通过Editor API合入现有试玩场景。

本机离线日历、存档钱包桥及中途退出取消属于明确的本地适配。普通入场准备至少1.5秒非缩放时间；返回1.5+.2秒缩放时间。付费6次、扫荡、广告4倍、IAP、服务器时间安全与上传未模拟成功。Editor测试不代表手机、全视觉或Player构建验收。
