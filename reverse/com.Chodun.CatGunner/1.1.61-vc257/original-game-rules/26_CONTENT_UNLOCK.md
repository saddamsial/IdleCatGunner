# 26 普通内容解锁与八个原入口

仅使用 com.Chodun.CatGunner 1.1.61 / versionCode257 / arm64。原 Main/native/metadata 不修改，恢复原 Contents_Unlock_manager MonoScript GUID、原 Content_Info 字段和 Content_Type 数值，不关联旧 XAPK。

## 原生规则

`native-content-unlock-ui-reviewed` 与 `reports/native-content-unlock-ui-queries.tsv`：20业务方法（含cctor、Content_Info构造器）+6异常辅助，26/26首16字节校验与有界C/ASM完成。preferred VA到Ghidra +0x100000，合同记录token、边界和输出哈希，导出完成不是作者源码或完整客户端验收。

原静态初始表通过 matching metadata FieldInfo 使用链和原32字节SHA验证：preferred pointer `0x5d5e4e0`，blob SHA `36F10BBAD162CAAB5563B7010CDC05C7340B439659CEFAA9683F10593AF502EB`。Content_Type 原值0..7由metadata29压缩有符号字段常量确认，而不是按普通Int32误读常量区。

| Type | 值 | 原显示关卡门槛 |
|---|---:|---:|
| Rebirth | 0 | 3 |
| Mine | 1 | 4 |
| Fish | 2 | 6 |
| Boss | 3 | 10 |
| Pet | 4 | 12 |
| Monster | 5 | 12 |
| Adventure | 6 | 35 |
| Raid | 7 | 40 |

MaxStage_Display `0x2a9e050` = Tree_manager.Stage_Value_Max / 10 + 1；树管理器不存在返回0。使用历史最远值，不使用当前 Stage_Now，因此重生/回旧关不重新锁住内容。Is_Unlocked `0x2a9e130` 比较显示关卡>=门槛。Next_Unlock_Stage_return `0x2a9e240` 遍历全部enum，取未解锁门槛最小值，全解锁返回-1。Is_Next排除已解锁项，比较门槛是否等于next；宠物/怪物挑战同为12，因此两枚下一入口一起显示。

Reload `0x2a9e3d4`：教程管理器存在且CurrentStep !=5时，只隐藏所有 Content_list.Btn_obj；无教程或step5，显示已解锁OR下一批，Locked_obj仅对下一批激活。原教程不存在时判定false，不写 TutorialCleared。Try_Open `0x2a9e588` 在未解锁时调用StageUnlock格式化Alert，不打开面板、不授予资源。

原Main组件124225、GO1041位于Canvas/UI_manager/Contents_Unlock_manager，Content_list是八个既有导航按钮和既有锁定子对象。每个原Button仅一个Content_Btn_*持久回调，源记录在OriginalContentUnlock.json。工作Scene通过Editor API恢复原根RectTransform（空子层级、layer5、100x100、中间anchors/pivot）和八条引用/原方法，不手改工作YAML或替换原按钮图片。

## 明确的适配与未完成范围

RecoveryForestClient作为已存在的离线编排器绑定原管理器，以其Forest最远值替代原Tree_manager单例依赖；Update仅检测显示关卡/教程谓词改变后刷新，替代尚未恢复的UI_manager刷新链，不改存档。八个通过门禁的原回调调用现有各模式/面板的恢复入口以执行已恢复的刷新与生命周期，原生callback内细节与本地编排分开记录。

复用原Alert及Animator，解锁提示暂用英文 `Unlock at Stage N`；全I2未恢复。Tutorial_manager尚未接入，走原生不存在分支；测试中的可注入step仅验证可见性，不把试玩存档标记成完成教程。既有八项导航验收使用独立未持久化档案的显式最远关卡夹具；不放宽生产门禁、不注入用户进度。

专项检查原门槛前后、同门槛双入口、全部解锁-1、原真实最上层UI射线、锁定提示及全部八个面板开/关、教程可见性谓词、重生与唯一临时目录冷重载。原先未连接组件的1/5失败报告保留；最终结果以独立final-status为准。相关导航/玩法和启动回归单独报告，不合并为新全量通过总数。GPU截图来自独立显示关卡11夹具，不是用户进度或手机对照。

教程步骤/引导箭头/禁止操作链、WeeklyShop、其他特效与原UI流程、遗物离线/跳关消费者、完整本地化、Player/真机/原图像对照仍待恢复或验收；广告/IAP/VIP/线上服务不伪造成功。

## 本轮实际验证

本轮独立运行：解锁专项5/5（31.57秒），原导航/玩法回归8/8（173.73秒），宠物合成/抽取动画及遗物入口补查3/3（24.36秒），启动回归4/4（23.46秒）。各自保存完整结果，不拼接为一次全量通过；历史165/165早于详情/长按及本轮门禁改动。

整合前1/5、首次整合4/5、导航首轮8/8失败各自保留；分别为组件缺失、Adventure实际本地根夹具及按钮OnEnable后未等UI帧。只修正夹具，不放宽生产门禁。正常EditMode交接34364对象、零缺失脚本，主/备份整轮哈希相同，原三冻结输入及管理器meta相同。


## 后续阶段

原初始五步教程已于后续[规则28](28_INITIAL_ONBOARDING.md)接入。本文及对应早期合同中教程尚未接入/不存在的描述保留为历史证据；当前内容门禁读取实际教程步骤。
