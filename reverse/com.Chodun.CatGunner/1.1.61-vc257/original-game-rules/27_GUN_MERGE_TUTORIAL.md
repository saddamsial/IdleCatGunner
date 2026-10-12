# 27 枪械首次合成引导

仅对应手机提取的com.Chodun.CatGunner1.1.61/versionCode257/arm64。使用原Main、native、metadata与原Gun_Merge_Tutorial/TutorialArrow_UI脚本身份，不关联旧XAPK。

## 已实现的原规则

Gun_Merge_Tutorial.Reload preferredVA0x2b69758，Hide0x2b6b0a4，OnEnable0x2b6aff0与ReloadNextFrame.MoveNext0x2b6b15c。引导根不在activeInHierarchy时不操作；经理不存在或Has_Merged为true则隐藏。按原ActiveItems枚举顺序取前两件非null、activeSelf、uint(GunNum+4)<=8、非广告、非锁定武器。有效库存域为0..64，所以提示实际只选0..4；不额外检测相同武器类型、拖动或自动合成开关。若不足两件，清空箭头两端并隐藏；否则启用原箭头并SetTargets。OnEnable等待一帧再刷新；Gun_manager.ReloadGunUI在原列表和装备槽更新后、自动合成UI/启动前刷新提示。

首次合成沿用已恢复库存事务的Has_Merged字段；实际手动或自动合成完成后提示消失，独立保存重载保留。显示提示不修改库存、货币、资格、Has_Merged或教程完成记录。原归因日志属于排除范围，不伪造Merge_Tutorial_Logged。

TutorialArrow_UI原Awake/OnEnable/OnDisable/SetTargets/GetTargetPos/IsValid/MoveLoop/ScaleTo及两迭代器已接回。每轮先定位target0、scale1，以SmoothStep缩至0.8（0.15秒），从target0移到实时target1（1.2秒），SmoothStep放回1（0.15秒），等待0.15秒后重复。使用Time.deltaTime/WaitForSeconds；目标失活时退出移动，SetTargets停止旧协程再按有效引用启动，OnDisable停止并清空句柄。位置经过父RectTransform的WorldToScreenPoint/ScreenPointToLocalPointInRectangle、camera=null和原offset计算；无RectTransform父时使用target.anchoredPosition。默认参数从原只读常量区和场景分别核对。

原GO1661管理器和GO730箭头层级已经存在，Editor API只补回两条组件与经理引用，未重建页面/改写工作YAML。原子对象GO195 Hand图片、raycastTarget=false与SpriteGUID c87086e8c08e0ea41a7daaaa490ec64b保留。现有枪械库存/物品池/本地保存编排是已记录的适配层；本轮没有增加广告或商店成功回调。

## 原生分析与尚未接入的初始教程

native-tutorial-ui-reviewed有45业务（含迭代器）+6辅助，51/51首16字节匹配、有界C/ASM完成；其中17条为已实现合成提示/指针家族，其余28条属于尚未接入的五步教程。导出数不代表完整客户端功能完成。

Tutorial_manager原序列为攻击升级0、挑战1、枪械打开2、抽取3、装备4、Done5。Start在已cleared或攻击升级等级>=1时直接Complete；Upgrade/Challenge等轮询间隔0.2秒，GunBuy仅在Dia<100时补足100。原完整教程根和DisableOnTutorial的11个HUD引用中7个仍未纳入当前普通客户端，这些触发、原手指、全HUD显示/禁用及保存完成链仍待整合。本轮只是保存分析证据，不注入那100钻、不把试玩记录标记为完成教程。

## 检查与边界

专项覆盖两端原引用/参数、低阶筛选与锁/AD/首次合成门禁、移动缩放与页面关闭重开/无效目标、原最上层射线和实际拖拽合成、独立冷重载。整合前第一个测试启动在刷新/domain reload期间未完成，重试夹具错误地假定每只队友有独立移动桥，修正后才实际得到组件缺失0/1；三份历史状态保留。最终结果以各独立final-status为准，不合并成新全量通过总数。

GPU图merge-tutorial-hand-test-gpu.png已实际读取，显示独立SINGLE/SHOTGUN测试武器之间的原Hand；它不是用户库存或手机/全像素对照。完整新手教程、WeeklyShop、其他UI/粒子/飘字/本地化、遗物离线/跳关/缺表、团战任务、Player/真机/原服务端仍未完成或验收。

## 本轮完成结果

本轮四次独立运行：合成引导专项5/5（38.03秒）、库存6/6（7.93秒）、鱼类/自动合成/共用UI18/18（62.69秒）、启动4/4（22.01秒）；不合并为新全量总数。完整165/165属于合成引导、内容门禁及详情/长按改动前的历史结果。

正常场景交接34364对象/零缺失脚本、主/备份未改、原Hand Sprite及两脚本GUID保留。各报告及合同见VERIFICATION.json的merge_tutorial_evidence。


## 后续阶段

原初始五步教程已于后续[规则28](28_INITIAL_ONBOARDING.md)接入。本文及对应早期合同中教程尚未接入/不存在的描述保留为历史证据；当前内容门禁读取实际教程步骤。
