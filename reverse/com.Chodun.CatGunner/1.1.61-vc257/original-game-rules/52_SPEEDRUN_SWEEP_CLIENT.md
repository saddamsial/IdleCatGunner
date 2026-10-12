# 规则52：速通挑战原扫荡入口、战力与奖励

唯一目标为手机提取 `com.Chodun.CatGunner 1.1.61 / vc257 / ARM64`；原Unity6000.0.61f1，工作工程6000.4.10f1。旧XAPK无关。广告与现金使用用户已授权的本地模拟，未接入真实SDK、生产商店、收据或账户。

## 原规则

原 `SpeedRun_Start_UI.Reload` 用 `PlusPack.Is_Active(2)` 切换 NonAuto/Auto。有权益但战力不足时显示原不足说明、整数百分比和SlicedFilledImage填充，达标时原按钮扫荡。原manager只检查战力；本地恢复还检查页面、权益、模式和正在领奖状态。

门槛：`GetStageHealth(stage) * clamp(stage*15+20,20,190) * 193 / 100 / 24`，最后ToPrecision(5)。固定24有效秒，不使用Boss的70%时间规则，也不因加时包减小门槛。

战力只计原普通Cat_list中activeInHierarchy的小猫，使用当前Damage/CriDmg；暴击百分比是float32 `CriPer*100` 后nearest-even取整并夹在0..100。攻击间隔调用 `CalculateAtkCoolMax(isForest=false,skipUpgrade=false)`，因此森林攻击/攻速升级参与，森林波数减速不参与。群攻系数：SINGLE1、LASER7、PIERCE5、SHOTGUN=max(1,弹丸数)、EXPLOSIVE5、MISSILE5、BLAST_SNIPER10。每只贡献是加权伤害×(系数×100)/(int)(间隔×100)，跳过间隔<=0.001，求和后ToPrecision(5)。不是按真实场上敌人数量模拟。

扫荡立即阶段+1，普通到账30钻；全去广告自动到账120钻。普通广告追加90钻并关闭结果；PlusPack奖励包不放大速通奖励。原结果页静态30/120文字保留。Bonus原持久回调是Bonus_AD_Show，NoAds与Skip是Sweep_Close；森林仍是模式0，不启动地图或普通挑战计时。

全去广告条件的原FreeCash促销、SendDgResult排行提交、关闭时的插屏广告保留为未接入服务边界。只去除强制广告仍走普通30+90流程。

## 原生和资产证据

`native-speedrun-sweep-client-reviewed/` 17项查询全部完成：业务11、已确认异常辅助6。入口16字节、ELF PT_LOAD转换、metadata/unwind方法界和方法范围SHA分别验证；短throw helper的入口检查覆盖16字节，但方法范围SHA按真实8字节界计算，不混为一物。

关键方法：Power_SpeedRun_return `0x2a808d4`，AtkCool_SpeedRun_return `0x2b39be8`，SweepRequiredPower_return `0x2ba9510`，is_SweepAble `0x2ba985c`，SweepValue_return `0x2ba98f4`，Game_Sweep `0x2ba9adc`，SweepBonus_Get `0x2ba9474`，Sweep_Close `0x2ba9fbc`，原入口Reload `0x2ba9cb8`。匹配Cat字段Damage80/CriDmg112/CriPer160及阈值float0.001已核验。C/ASM是原生伪代码，不是原作者C#。

原按钮/文字审计见 `reports/speedrun-sweep-original-ui.json`，完整原生契约和本地适配见 `reports/speedrun-sweep-native-contract.json`。原图、场景、对象、脚本GUID均保留。

## 验证和保留

恢复前独立测试0/1（10.29秒）：原Gun20+模拟PlusPack2夹具点击扫荡入口应推进至1，却仍为0。失败完整保留在 `speedrun-sweep-before-failure.json`。专项和原流程回归的最终独立批次及图像见 `speedrun-sweep-evidence.json`，不合并为全套通过。

测试使用独立临时档案，权益和装备都是明确夹具，不写用户档案；只有最后缓存边界夹具明确注入超高伤害以测试拒绝变更，不能当自然战斗证据。原按钮点击检查EventSystem顶层射线与指针输入；不是手机触屏验收。

开始前235项校验、230既有脚本meta、255历史GPU保留。不可变旧场景gzip及241历史截图备份SHA核验后硬链接，当前可变文件不硬链接。现有SpeedRun_manager和SpeedRun_Start_UI修改，新增纯公式OriginalSpeedRunSweepRules；场景不修改。重复回归覆盖的GPU另存本轮版本后恢复历史SHA。

本地差异：DecimalAmount除法24保护位和现有precision5，不是完整InfVal；页面/权益/revision/Busy检查补强异步模拟；超出5000条已验证生命缓存的下一阶段在钱包/阶段变更前拒绝；UI每0.25秒观察战力和本地期限，可信服务器时间未恢复。

全游戏scopeComplete=false。矿山/怪物扫荡、FreeCash和可信时间、短Buff/广告重生/临时枪、I2/其余UI/服务、部分骨骼和能量网格特效、Player/真机仍待恢复。本轮没有APK构建或Git提交/推送。
