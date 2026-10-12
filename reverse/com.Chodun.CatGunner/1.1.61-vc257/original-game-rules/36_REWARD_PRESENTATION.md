# 36 — 签到/存钱罐光效与普通签到钻石到账

目标仅 com.Chodun.CatGunner 1.1.61/vc257/ARM64；工作编辑器6000.4.10f1，原构建6000.0.61f1。旧 XAPK 不作为输入。完整客户端尚未完成。

## 证据

- 冻结 Main：DailyCheck 七项 DOTweenAnimation 141631/133455/135531/141734/126027/148614/136767；DiaPig 横幅132270/132438。原参数完整记录于 reports/reward-presentation-source-parameters.json。
- 七个签到Glow的实际Quaternion得到z=211.49263°，Euler hint148.50737°不能当实际姿态，更不能重置0°。Rotate/Fast/Linear/Incremental，duration1、end=-180°；最短变化约-31.49263°/圈。存钱罐两项起点0°、end180°、duration2，为+90°/秒。全部loops=-1、scaled time、delay0。
- DOTween.dll QuaternionPlugin.SetChangeValue/GetEulerValForCalculations/EvaluateAndApply三项匹配native导出；Fast绝对差<=180保留符号。导出完整不表示全SDK恢复。
- Dia_Attraction、Dia_Attraction_Target、Bounce及Bounce迭代器d__13共19个业务/6个辅助匹配导出。初始同名d__9属于BounceStart，移入reports/native-export-history/bounce-start-iterator，排除实现证据。
- ParticleImage.dll共16业务/6辅助匹配导出，核对发射、圆形随机分支、初始化、局部空间点吸引/禁用模块、scaled时钟与普通存活/完成分支。不是全SDK或全分支证明。

## 接入与差异

1. RecoveryRewardRotation是本地播放适配，9项参数/源姿态保留。父旋转必须identity；启用重启、禁用恢复是本地生命周期选择，未证明与原DOTween隐藏页面相位一致。推广HUD第8项签到Tween继续排除。
2. 原DiaAttraction分支经新输入切片/Unity Scene API移动3原对象，含原Particle Image与禁用拖尾子对象。RecoveryDiamondParticles使用自己的GUID，原钻石sprite b3b08776c3125814bbceeff0ee2d87ce、白色60尺寸、circle半径50、寿命0.5–1、初速度1–15及原weighted速度/两条吸引曲线；未用Dummy冒充SDK。
3. 有目标才生成，世界坐标先转本地。此预设emitOnSurface=1的native分支用Random.insideUnitCircle×radius；速度按径向归一化，局部位置以速度曲线×deltaTime×100积分，呈现位置按两条原吸引曲线插值再LerpUnclamped到当前点目标。源噪声/重力/拖尾/贴图分帧禁用，涡旋与附加速度启用：velocitySpace=0，X/Z常量0，Y原曲线×1加到本帧速度后再积分；涡旋strength原曲线×8×deltaTime×100°把积分后的位置绕本地原点旋转，再进行点吸引。对应native偏移0x627/0x628与0x626及ARM64 049b91b8–049b9240。
4. 普通签到成功先按规则35发钻，再请求8颗粒子，再计数/日期/UI及Purchase音效。每颗寿命结束调用Dia_FX_End：尝试音效14，再让最近启用目标Bounce。动画不重复发奖励，Sound_manager原重复/冷却门控保留。
5. Target_Enable原Add、不强行去重；Target_Disable Remove首项，目标回退最后一项。接回已存在签到目标123162和任务目标125403。Shop目标124702因Shop_UI尚未恢复保持待办。任务领奖的所有Spawn入口尚未逐条接入，本轮真实业务入口仅普通签到。
6. Bounce保留0.9/0.2秒两段线性、重复触发重置time、结束恢复mysize、Size_reload_Fit与resetAnim。原Awake为空，本工程Awake显式Size_reload替代缺失全局初始化；Dia_Attraction执行顺序-1000是独立入口Awake顺序桥接。
7. Renderer禁止Raycast。退出/禁用清粒子且不发迟到回调是本地清理策略；池、随机消耗次序、通用mesh/job路径和隐藏相位仍不同。保留原图/GUID/层级，没有新增购买授权。

## 验证与待办

实际独立批次/GPU检查、用户主备份/冻结输入/场景语义审计和正常入口交接见reports/reward-presentation-evidence.json/VERIFICATION.json。初始静止光效失败与第一次4/5中的错误横幅路径夹具保留，不拼接通过。source rotation0 + lifetime rotation0 + constant-one by-speed curve使sprite呈现角1°，Renderer保留此常量。图像展示原钻石从已领取格散开及移动，不算真机/原版逐帧验收。

待办：其余ParticleImage预设/完整SDK、推广及第8签到Tween、I2、Shop_UI/4处教程HUD、其它业务Spawn调用、可信日期/商业服务、离线模拟、Player/真机/原版逐帧。scope_complete=false。


后续状态：规则37已接回普通赛季钻石Spawn、任务经验条回弹与任务窗口钱包；本规则的“仅签到调用者”描述属于规则36完成时边界。当前见 [37_MISSION_REWARD_PRESENTATION.md](37_MISSION_REWARD_PRESENTATION.md)。
