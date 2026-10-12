# 鱼类、自动合成与共用 UI

仅对应 com.Chodun.CatGunner 1.1.61/vc257 的匹配 arm64 输入。原 ELF SHA-256 为 `80eb8bcbebd058ffb4beac5d8d7d544066587a7a1abee8898874847ff13dc583`。原生伪代码是复核依据，不是原 C# 源码。源 Main、资产和原 MonoScript GUID 保留。

## 鱼缸与数值

原 Fish_manager 序列化 13 阶配置、Fish/Real/Outline 精灵、20 个 Fish_Item 池、详情页、新鱼展示、删除区域/确认弹窗和普通/钻石抽取按钮通过 Unity Editor API 接入 RecoveredClient。Frozen Main 没有改动，也没有手改工作场景 YAML。原 Fish_Btn 的 Contents_Unlock_manager.Content_Btn_Fish 外部引用未随鱼切片纳入，当前按钮直接打开鱼缸属于本地试玩入口适配；原内容解锁经理、WeeklyShop/VIP展示门禁仍待整合。

鱼缸容量20。同阶两鱼合成下一阶，12阶不能再合成；原列表先删较大的索引、再删较小索引，最后追加新鱼。UI同步重新映射其余索引，删除确认使用原索引和等级检查，取消不消耗鱼。每条库存鱼都累计攻击/暴击率/暴击伤害，包括同阶重复鱼；这些加成已接入普通角色平衡和实际存档。

| 阶 | 攻击百分比 | 暴击率百分比 | 暴击伤害百分比 |
|---|---:|---:|---:|
|0|4|1|8|
|1|12|2|20|
|2|36|6|50|
|3|110|16|120|
|4|320|39|310|
|5|970|98|780|
|6|2900|100|2000|
|7|8700|100|4900|
|8|26000|100|12000|
|9|79000|100|31000|
|10|240000|100|76000|
|11|710000|100|190000|
|12|2100000|100|480000|

普通每天5次额度中前3次无需广告，后2次原本需要广告，本地不伪造奖励；钻石抽取200钻。原概率区间60/30/10%，普通0/1/2阶，钻石1/2/3阶；原 Random.value==100 的回退分支也保留。每日时钟为明确的 DateTime.Now 离线适配，不代表原时间账本或服务器时间。日期回退不重新发额度。

鱼以原15..35速度、2..5秒换向、水平±1/垂直±0.3方向游动，保持鱼缸边界；原排序为 clamp(round(300-y)+(12-grade)*10,0,2000)，拖动9999、移动合成9998。工作 Unity 6 对隐藏画布启用的重置在激活后补设 overrideSorting。原 BounceStart 入场、按下0.9缩放、释放1.05→0.98→1回弹已接入；详情左右翻页、融合提示和删除取消/确认保留原图片/颜色。

## 三类自动合成

原 Gun/Pet/Fish 的权益判断为 PlusPack.Is_Active(2)。独立 `RecoveryAutoMergeAccess.EntitlementProvider` 预留真实权益接线；不把购买记录改成成功。为了在 Unity 中直接体验，RecoveryForestClient 的 `OfflineAutoMergePreview=true` 允许离线试玩，原说明中另加 `[Local offline auto merge preview]`；关闭该开关且无权益时拒绝自动合成。鱼体 Canvas 会盖住原隐藏开关的位置，试玩开关另设2001排序（鱼非拖动排序上限2000），保持能点击；这是明确的本地显示兼容处理。宠物原隐藏按钮在试玩开关启用时显示属于本地入口适配，未宣称恢复 WeeklyShop/VIP 商业解锁。

武器按阶（gunId/5）从低到高选对，最高可自动合成阶为 min(6,AutoMerge_Degree,最高已收藏阶-1)；宠物按 petId 同样计算。鱼按0..11阶选对。武器排除暂停锁/广告物品，宠物排除派遣实体锁；正在拖动、删除确认或库存版本变化会阻止陈旧事务。原0.4秒移动、20距离与0.15秒成对间隔使用场景原字段。原 Fish_Item.BeginAutoMerge/EndAutoMerge 在移动期间屏蔽 CanvasGroup 射线、结束恢复，同时清除拖动点击抑制；因此鱼移动经过开关仍可关闭Auto。隐藏页面中断移动、恢复交互/位置，重新打开可继续；未完成的物品不会被删。

原 Gun/Pet 按压、释放、弹出协程常量经 matching bytes/ASM 复核：弹出0→1.1→0.95→1.02→1（0.15/0.08/0.06/0.05秒）；释放1.05→0.98→1（0.08/0.06/0.05秒）。正常抽取、自动合成和保险箱取出调用这些动画。一般换位仍为明确的网格即时对齐适配，不冒称完整 DOTween 复现。

## 已接回的共用组件与边界

原1219条 BounceBtn/SFX_BtnScript/Hatch/OnOff 组件记录按原层级和同名节点序号查找工作场景；837条找到原节点（其中26随鱼切片保留，811条新增），382条所在页面尚未集成。原81个禁用的嵌套动画/音效组件也保持禁用，避免重复反馈。恢复原按钮按压/回弹参数、点击音效映射、RawImage Hatch UV尺寸和 On/Off 子对象，未把全部1219条称为恢复完成。禁用按钮不启动按压反馈是明确的交互兼容处理。

源切片保留原 BounceStart；未恢复的 DOTween/Localize/Mute 和商业组件仍记录在切片差异报告。Spine 宠物世界动画/派遣 RenderTexture 预览、目标旋转、怪物 GPU 动效、完整粒子/飘字、全语言、广告/IAP/VIP/云服务仍待后续。新鱼 Degree_objs 原件仅7项，超过对应范围的图示不补造；图片仍使用13阶原精灵。

## 复核文件

- `native-fish-client-reviewed/`：鱼类经理、池、物品、详情、删除、抽取等130条业务查询及6条异常辅助。
- `native-auto-merge-ui-reviewed/`：28条武器/合成/动画业务查询及6条辅助。
- `native-fish-animation-ui-reviewed/`：22条展示/共用按钮/实际协程查询及6条辅助。
- `native-pet-auto-ui-reviewed/`：14条宠物自动合成/实际协程查询及6条辅助。
- `reports/original-fish-auto-ui-contract.json`：精确输入与逐方法输出摘要。
- `reports/fish-client-scene-restoration.json`、`shared-ui-client-restoration-first.json`：Editor整合记录。
- 最新实测状态以 `reports/VERIFICATION.json` 和独立 PlayMode 结果为准；静态分析、场景接线、PlayMode、GPU截图、Player和手机验收互不替代。
