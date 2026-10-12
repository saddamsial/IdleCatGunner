# 团战普通客户端链路：vc257

唯一输入 com.Chodun.CatGunner 1.1.61/vc257/arm64；旧鱼枪 XAPK 没有参与。工作工程 Unity 6000.4.10f1。完整 Main 和匹配 native/metadata 冻结不变。

## 原生规则与原资产

- Raid_manager 的普通入场：Ticket_Reload 后 Free_Use_Count < 2 才加一次并进入；全部未选时采用森林三槽的对应位置作为默认值。普通每日上限 2 次。
- 原选枪使用具体位置索引：0..2 为已装备，3.. 为 Owned_Gun_list，之后是 Safe_Gun_list。重复枪名可以来自不同位置，同一个位置不能重复选。按 Raid_Damage_return 降序、位置索引升序排序；打开页面时自动选前三个可用位置；至少保留一把。
- DailyGun.WeekStart_return 为周一零点；WeekIndex_return 以 2024-01-01 为纪元，每周一个索引，正模 5 决定 Boss。弱点类型来自 Gun_list[30 + BossIndex].type；对应类型 10 倍伤害。
- Boss_Health_return 的静态基值为 10000000。扩展缓存使用上一项 × (3.0 × Pow(1.0,前一项序号))，存三位有效数字，返回时截为两位。ARM64 同时核对 1.0 与 3.0，不能套用导出场景中的旧 200 条递增表。Balance_Reload 会覆盖整个旧表。
- Cat.Balance_Reload：团战跳过普通攻击升级与重生攻击，保留皮肤、鱼、遗物、普通 buff、星级及弱点链；当前工作客户端仅支持已验证的中性收藏/星级档案。攻速跳过普通升级与重生速度，保留皮肤/buff，范围 36/40；自动目标是原 Raid_Boss。
- 入场加载 2 秒；Game_Start 增加本季尝试计数、生成 Boss，再执行普通 60 秒计时。付费时间加成不模拟。
- Enemy type5 原碰撞伤害、HUD血条和死亡派发接回 Raid_Boss。清空一条血立即计分，原对象 Reload 下一条血；继续保持本季的同一套外观。Raid_Boss.Game_End 的 native 方法为空，不添加猜测死亡动画。
- 星石每十级一档 25/20/10，31级起每级5；Reward_Panel_Reload 累加已清级的奖励并授予星石。普通结束保存本季最高成绩和弱点枪类型的历史最高。提前退出不结算；已消费的入场次数保留。
- 原团战分支 1241 个输入对象、3 个武器槽、20 个选择格、5 套 Boss 外观及原动画/碰撞体已合入现有单 Canvas 工程；源 .meta GUID 保留。

## 明确的适配与未完成范围

独立恢复档案使用本机时钟推进普通每日/每周日历；没有恢复 Time_manager.CanRolloverDaily/RecordGain 的可信服务、联网/反作弊判定，也不修改 TimeLedger/TimeStrike 等字段。日期倒退和未来日期不增加入场次数；异常日期明确拒绝，保留存档。它不能作为原服务器赛季或排行榜证明。

BigInteger 十进制、有效位截断、整数金额/枪械类型显示、字体与 Sprite 材质是兼容适配，不等同完整商业 InfVal/本地化/原渲染。返回使用现有森林生命周期适配。重复结算、取消异步加载和迟到回调有本地防重复保护。武器选择是原运行时状态，没有新增保存字段、移动武器或赠送装备。

排行榜、联网上传、团战任务、星石储蓄罐（StarGem_Pig）、星级升级、付费助手、付费额外时间、广告/IAP入场尚未接通；对应动作明确不可用。既有森林、队友、背包、宠物、重生和其他四个模式保持原证据边界。手机录屏像素对齐、Player 构建和真机验收未完成。

## 可检查证据

- reports/original-raid-client-contract.json：输入哈希、native 查询完成状态、静态数组 SHA、字符串指针与规则合同。
- native-raid-client-reviewed / native-raid-dependencies-reviewed / native-raid-calendar-demo-reviewed：preferred VA、Ghidra VA、首16字节核验、有界 C/ASM。完成的导出不等于原 C# 源码。
- tools/prepare_raid_slice.py、reports/raid-slice-preparation.json：从冻结 Main 读取索引、移除范围外引用与脚本的记录。实际合并使用 RaidClientEditor 和 Unity Editor API。
- checkpoints/pre-raid-client：接入前场景和 .meta 回滚副本。
- reports/raid-client-scene-restoration.json、raid-material-compatibility.txt：依赖与材质适配记录。
- 最终专项实际5/5通过（83.25秒），完整恢复程序集实际106/106通过（622.26秒）；首轮动画等待失败及第二轮结果分别保留。真实零输入60秒战斗、GPU截图、存档前后SHA和正常编辑器入口见 reports/raid-* 及 live-raid-*.json。测试使用 Persist=false 的独立档案，不读取或写入试玩档案；尚无Player/真机与全部像素验收。

后续星级链已在[17_STAR_UPGRADES](17_STAR_UPGRADES.md)接通并独立验证；本页106例与中性星级限制是当时团战恢复阶段的历史边界。
