# 升级和关卡：matching native 与 serialized 依据

输入精确哈希见 reports/apk-inventory.json。以下为此构建 native-reviewed、native-settings-balance、native-upgrade-flow 和原场景组件，不使用旧包规则。数字计算适配器不等于商业 InfiniteValue 插件全实现。

## 原运行缓存和实际交易

Upgrade_manager.Balance_Reload 0x2bb24dc 建立四个长度 10,001 的缓存。攻击与金币初值 100，每次乘 InfVal(double 1.08) 后 ToPrecision(3)；速度值为 100 + 8×level。价格当前值初始 50，每轮将 DiscardDecimal_return().ToPrecision(3) 写入缓存；随后当前值乘 InfVal(double 1.38)，i>=5000 后改乘 InfVal(2)，再 ToPrecision(4)。这是迭代过程，不能用直接幂公式替代。Price_return 0x2bb0710 读取价格缓存索引 Lv_return(type)。原场景已经序列化完整四张表，工作工程按原 s_digits/s_exponent 导入，没有用浮点公式重新生成。

原缓存锚点：price[0]=50，price[1]=68，price[2]=95；price[5000]=420e698，price[5001]=840e698，price[10000]=375e2203。power/money[10000]=122e326。初始录像按钮显示 100，与此缓存不同，初始等级、实际调用和录像构建仍需闭合，不能宣布价格 UI 一致。

Upgrade 0x2bb15b4/Upgrade_Silent 0x2bb3030：等级>9999 返回 false；钱包不足当前等级缓存价格则返回 false；否则扣钱、等级+1。普通版本还刷新升级列表、Cat_manager balance、在非射击静音时播放 Upgrade 音效、重启对应动画，type==2 时清空金币收益缓存。Silent 版本只执行交易。

AutoUpgrade_All 0x2bb1dfc：扫描所有非满级且能支付的升级，选择等级最小的一项，同等级因严格 `<` 保留前槽；执行 Silent 并重复，直到没有可支付项目。若发生交易，批量刷新升级列表/角色平衡，涉及 type2 时清空金币缓存，播放一次升级音效并重启各动画。返回是否发生交易，不能按函数名写成“每个槽单独升到买不起”。纯事务/选择核心已在 Unity 验证，原 UI/事件尚未接线。

SaveData_return 0x2bb2b50 导出固定三个 int 等级。Upgrade_Ingame.Touch 0x2bb154c 调用 Upgrade(type)；PointerDown 停旧协程并启动 HoldUpgradeRoutine，PointerUp/Disable 停止长按。尚需读取其 MoveNext 状态机，不能把协程工厂反编译完成当作长按主体已恢复。

## CalcPrice 的区别

CalcPrice 0x2bb2924 / token0x06000f8c：level<=5000 时 double 50×Math.Pow(1.38,level) → InfVal → ToPrecision(3)；更高时先算 double 的 level5000 基值，再乘 MathInfVal.Pow(InfVal(2),level-5000,true)，ToPrecision(3)。大等级的 double 溢出、InfVal 精度/异常处理及其调用者未全闭合，不能用独立高精度幂修正后称为原函数。当前交易使用原 Price_balance，独立 DecimalAmount 适配保持缓存金额精确。

## 攻速和关卡

AtkSpeed_return 0x2bb2e70 / AtkSpeed_Real_return 0x2bb2ef8 都取 Speed_balance[Lv_return(1)]；不静默补零。Cat.CalculateAtkCoolMax 0x2b399cc：速度分母限制100..10000，baseCooldown/speed×100，再按 Buff.GetMult(2) 等分支处理，最终冷却 clamp0.05..2秒。重生、普通升级、关卡惩罚参数及依赖须继续核对。

Tree_manager.Balance_Reload 0x2bacc18：生命值/金币缓存各5,000项，起始250/20，后项为前项×3并 ToPrecision(2)。已直接保存原完整缓存。GetStageHealth 0x2ba96cc/GetStageMoney 0x2bab768 范围内读缓存；更高等级命中扩展字典，未命中则末项×PowOfThree(stage-lastIndex)后ToPrecision(2)，记录到字典。负索引走异常。

PowOfThree 0x2bace94 使用指数二分：result=1、factor=3；每个 set bit 对 result×factor 取 ToPrecision(2)，factor 每轮平方取 ToPrecision(2)。这不等价于先完整计算3^n再统一截断。该范围外算法还未接入活动 C#。

GameTime_Max_return 0x2bad0dc 读 offset0x9c 的 float，PlusPack.Is_Active 为真时返回两倍。构造器写180，后续写入可能覆盖；录像挑战60秒不能由此改变为180。

## 设置

三个开关原 XOR1、ON/OFF 刷新和 Sound 调用已恢复并用原按钮验证。Setting 原认证、云页面、省电和完整存档生命周期仍有缺口；详情见 [存档音频依据](02_SAVE_AND_AUDIO.md) 和 [完整进度](../reports/RECOVERY_PROGRESS.md)。
