# 40 任务奖励顺序锁提示与新赛季按钮

目标仅为com.Chodun.CatGunner 1.1.61/vc257 ARM64，原Unity6000.0.61f1，工作Editor6000.4.10f1。输入hash/范围见reports/mission-rejection-contract.json。

## 原代码与资产

native-mission-rejection-reviewed导出8业务方法和6异常辅助，均completed且首16字节核验。Mission_manager.UI_Reload的NewSeason_Btn_obj条件是内部Mission_Reward_Lv>24，与季节是否过期无关。原GO900按钮124060持久回调直接打开原GO1110 NewSeason_Panel_obj，没有直接重置赛季；本轮只恢复可见门槛与原打开路径，现有StartSeason日期/重置适配未纳入恢复。

Reward_Get(0,index)先检查该档未领且index<奖励等级，继而检测SequenceLocked。顺序锁住时调用I2 Mission/SequenceLocked、UI_manager.Alert、SFX5，再通过First_Unclaimed_Reward_Lv_return和ScrollTo_RewardSlot回到最早未领档。该档可以是未领取的VIP轨或广告档，不能跳过、不能因此授予权益或奖励。

Reward_Status_return原状态0未达等级、1可领取、2已领。Reward_Item.Value_Reload仅在状态1时显示两处SequenceLocked_obj及SequenceLocked_obj2，GetAble_obj为状态1且非顺序锁；AD标记排除状态2。原普通奖励按钮GO9587/142243的interactable=1，持久Normal_Reward_Click连接132996原slot；原Value_Reload不把顺序锁按钮禁用，故必须允许其原点击进入拒领反馈。

原字符串指针0x5d5e798解析为Mission/SequenceLocked，I2Languages有14语言，其中zh-CN为“请先领取上一个奖励。”；0x5d5e7a0为Mission/Inventory_Warn，满库存提示未在本轮关闭。native/metadata匹配、原Buttons和14语言文本见reports/mission-rejection-native-evidence.json。

## 集成和适配边界

Mission_manager显示等级25的新赛季按钮；正常奖励点击进入顺序锁警告后用既有0.3秒scaled SmoothStep滚动器，拒领不调用保存、不发钻石粒子。复用已恢复的原Alert对象和Animator/Destroy生命周期；这替代原UI_manager的轮转池，而非恢复原全局池。

OriginalMissionFeedback资源直接抽取原14语言；本地系统语言仅选择原英文/简体/繁体，不等于I2全局切换。原按钮和场景引用不改，不添加场景对象或组件。正常等级已达、未领的顺序锁按钮可点击；广告、付费、过期、不足等级和已领仍保留当前明确本地不可用/拒绝保护。

现有StartSeason只接受本地过期状态，原Season_Reset日期算法与手动提前开赛季仍待恢复。因此“新赛季按钮门槛/原弹窗打开已恢复”不等于“完整新赛季重置流程已恢复”。Paid/VIP只用于测试已有标记，不启用付费领取。

## 验证

专项使用独立存档，在sceneLoaded且早于Start设置SaveFolderOverride。覆盖原持久按钮经top raycast与StandaloneInputModule Down/Up的错误领取、SFX5/无成功音、原提示与滚回、暂停/重复点击/关闭/重开、VIP轨锁与广告不可绕过、过期/已领/未达等级的无警告，以及先领前档后解锁下一档、实际领取一次、保存及cold reload。等级25原按钮点击仅打开原弹窗，不改变等级或创建新赛季。

当前结果以reports/mission-rejection-evidence.json独立完成批次为准。GPU需实际查看；回归旧固定图另存再恢复原hash。场景、原GUID、冻结native/metadata/Main和用户主备份hash需保持。无Player或设备验收。

完整赛季日期/重置、I2、满库存提示、部分任务详细展示、教程HUD、离线模拟、服务、其他UI/FX及设备仍待恢复，scopeComplete=false。
