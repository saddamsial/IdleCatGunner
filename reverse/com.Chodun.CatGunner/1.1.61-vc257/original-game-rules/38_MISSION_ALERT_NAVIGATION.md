# 38 每日任务提示与赛季奖励自动定位

目标只对应 com.Chodun.CatGunner 1.1.61/vc257/ARM64。原引擎6000.0.61f1，验收Editor6000.4.10f1。错误XAPK没有参与；输入指纹、范围与排除项见 `reports/mission-navigation-contract.json`。

## 原生与场景证据

`native-mission-navigation-reviewed` 本轮16业务方法/状态机、6异常辅助全部导出完成。三个迭代器 `<>4__this` 的schema类型均是Mission_manager；使用匹配native/metadata、ELF地址加Ghidra偏移0x100000。原任务Alert_Check逐行按VIP门槛、四类计数与普通/豪华领取标记检查，存在完成未领则显示；没有SeasonClosed判断，不能擅自加日期门槛。AlertLoop先检查再WaitForSeconds(2)，按缩放时间运行。成功普通任务领取在SFX7/经验条Bounce后RestartAlertLoop。

原 First_Unclaimed 逐档检查普通标记和VIP下的高级标记；Next_GetAble仅在第一未领index<内部Reward_Lv时返回，否则-1。广告槽仍是导航目标，未被本地适配跳过或发奖。打开任务窗把任务竖向Scroll位置设1，奖励槽下一帧直接定位：首个可领取档优先，否则当前内部等级，边界钳制0..24。

两个滚动迭代器按原ScrollRect content/viewport和槽位RectTransform，WorldToScreenPoint(null)+ScreenPointToLocalPointInRectangle(null)求局部x。`Clamp01((x-content.rect.xMin-viewportWidth/2)/(contentWidth-viewportWidth))`；内容不超过视口则退出。ARM64 rect ABI中的s2为width、s0为xMin，已查汇编，未把错误伪代码param_3当常量。

成功领奖原顺序：授予与标记→奖励UI→SFX7→仅钻石类型8粒FX→全部奖励检查→下一个可领取档→滚动。平滑滚动取消之前的滚动，等一帧，速度归零，Time.deltaTime累加，t*t*(3-2*t)缓动，0.3秒后落到准确目标。0.3来自preferredVA0x106c190的9a99993e。普通全领，且VIP时高级也全领才显示已有NewSeason_Panel_Forced，不自动授予付费标记、不改变季节日期。

原场景Mission_manager124352指向Alert GO891；之前工作场景引用为空。本轮只用Unity Editor API把此引用接回原Canvas/SafeArea/Main_UI/Btn_list/Mission_Btn/Mission_Alert_obj。原Image124052 sprite c38505ef068f0f241b3b4ada0905a420为蓝色提示点。无新增对象/组件、无替代Canvas；130201原文档中仅124352字段引用变化，130200语义相同。

## 恢复与适配边界

提示/导航选择与时间/缓动/坐标公式为exact-native，原对象/引用为exact-serialized。原Time_manager同步/settled事件仍由既有本地clock/Bind替代；Owner disable、关窗取消本地拥有的滚动是明确生命周期适配。重复Bind先取消旧Model.Changed订阅，避免多个刷新监听；提示任务关闭后仍运行，Owner disable停止、重新启用恢复。

VIP/Luxury存档标记参与原提示选择，不创建付费权益；领取仍明确不可用，广告档仍不可领取。原任务提示DOTween124051循环缩放、I2全语言、原任务排序、拒领顺序锁的提示/自动跳回流程、其它商业/可信时间/完整离线模拟、其它FX/四处HUD/Player与真机仍未完成。任务静态蓝点与奖励列表位置的Editor GPU检查不等于原游戏逐帧或设备验收。

## 验证与保留

独立目录SaveFolderOverride在SceneLoaded/Start之前配置；用户原主/备份未重置。首批专项5项全部失败，记录缺少原蓝点引用、选择方法、自动定位和全领提示。补齐后5/5；增加VIP/Luxury、Owner disable/rebind后完整6/6。随后仅添加activeInHierarchy和蓝点截图检查，独立视觉专项1/1，生产源码未变。这不是合并为7个不同用例，也不是全测试集合。

当前专项、领奖呈现、成长和启动各批实际completed结果与时长在 `reports/mission-navigation-evidence.json`。旧固定GPU路径在回归前复制，回归图另存而后恢复旧图哈希。当前open/next/alert三图实际查看，保留原资源及用户两个存档SHA。现正常RecoveredClient场景干净EditMode/Persist=true/无测试存档覆盖、无输入覆盖、无活动测试；所有引用/缺脚本/Console结果以当前独立审计为准。

试玩：完成任务后主界面任务按钮的蓝点可见；打开任务窗从顶部开始并定位未领赛季档；领取可领取普通奖励后列表平滑移到下一档；暂停时平滑移动停住；重开不会沿用上次滚动协程。原生任务普通XP与8粒钻石演出见规则37。


规则39更正提示动画待办：原GO891的RecoveryWeeklyUiTween早在规则29已经接入；124051的缩放参数与实际暂停/重启循环现已核验，规则38未重复创建该组件。原SDK生命周期与完整I2仍未恢复。任务排序现已在规则39接入。规则38报告与当时源哈希作为历史证据保留。
