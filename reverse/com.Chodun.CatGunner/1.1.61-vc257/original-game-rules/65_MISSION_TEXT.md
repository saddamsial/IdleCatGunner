# 65 每日任务名称、目标说明与赛季静态原文

唯一目标：`com.Chodun.CatGunner 1.1.61 / vc257 ARM64`。原Unity6000.0.61f1；工作工程使用既有6000.4.10f1。旧XAPK不参与。

## 来源和行为

- 原生`Mission_manager.Mission_Name_str_return` preferred VA `0x2aa4768`、`Mission_Explain_str_return` `0x2aa5b08`：类型0/1/2/3分别选择TreeCount/StageClear/Rebirth/PlayMine的原I2名称和说明，非法类型返回null。8个key的原指针经匹配ELF relocation及metadata字符串表解出，不按任务名称猜测。
- 复用已核对`Mission_manager.UI_First_Reload` `0x2aa55ac`：说明以MissionValue作为`{0}`参数；`Mission_Item_UI.First_Reload` `0x2b03d5c`把数值经验、名称、格式化说明写入三个独立字段。去掉临时英文说明、序号前缀韩文名称和额外的XP后缀；不改经验、目标、计数、奖励或存档。
- 冻结Main/I2：每日任务、奖励、赛季确认和通行证页面96个静态primary绑定、13词条；动态任务8词条。21词条×14语言共294个独立原文值。动态任务说明只恢复已证明的单个`{0}`，没有完整I2参数/RTL/settings生命周期。
- 原普通/强制NewSeason面板各有两个同名`I2_txt(Outline)`兄弟，对应不同term。使用原同名兄弟序号定位，不能让Transform.Find把两种文本写到同一个对象。

## 实现和适配边界

`export_mission_text.py`只读冻结输入，输出原资源及SHA、原生完成状态、managed字段、边界/字节和伪代码/汇编hash。`OriginalMissionText`按现有Canvas相对路径与同名兄弟序号绑定静态标签。`Mission_Item_UI.ReloadText`跟随现有Reload调用，复用原包中文字体与可释放运行时材质。所有场景、Prefab、布局及GUID保留；不是完整I2插件或原字体像素等价。

现有任务领取、排序、经验/奖励条、广告和本地模拟购买流程保持；本轮验证它们，不把此前已恢复的玩法重复计为新增。Next Season日期/冷却、其他UI/教程/特效、可信联网时间/服务端以及Player/真机对照仍待恢复。

GPU中的新赛季三个武器预览仍使用原静态韩文类型；不归入本轮已恢复文字。通行证和赛季弹窗以独立展示夹具检查所选文字/字形/原矩形，不声称所有弹窗导航、赛季门禁和购买状态与原版完全一致。

## 验证

基线1项失败：中文启动仍显示`0.나무 부수기`。首次专项2/4：1项夹具误把原`领取`断言为`领取奖励`；1项暴露两组同名标签冲突。失败批次完整保留，修复后整批重跑；不拼接部分通过结果。最终结果、GPU实际查看、当前存档/场景/meta/字体缓存保护和Editor交接状态见`reports/mission-text-evidence.json`。

原生新查询为3项业务方法及6项复用异常辅助；地址数量不是恢复百分比。完整恢复尚未完成，没有本轮APK/Git交付。
