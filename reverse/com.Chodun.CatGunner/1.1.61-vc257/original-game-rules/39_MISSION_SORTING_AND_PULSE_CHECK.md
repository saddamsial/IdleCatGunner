# 39 每日任务排序与既有提示动画核验

只对应手机包 com.Chodun.CatGunner 1.1.61/vc257/ARM64。原引擎6000.0.61f1，当前Editor6000.4.10f1。输入hash、范围与排除项见 `reports/mission-sorting-contract.json`。

## 原任务排序

`native-mission-sorting-reviewed` 六业务/闭包方法和六异常辅助全部完成，闭包 `<>c__DisplayClass62_0` owner确认Mission_manager，其statusCache为RewardStatus_Type[]。native Mission_UI_Reload先更新各原任务行值，再建立原index数组与状态缓存，通过comparison排序；最后逐项Transform.SetSiblingIndex(rank)。不重排Mission_Item_UI_List，也不重绑定原按钮。

Mission_Status_return先判断对应四类计数是否达到MissionValue，不够返回0；够时普通未领返回1；普通已领且豪华未领返回3；两项均领返回2。该方法不检查SeasonClosed/VIP。原优先级如下，数值越小越靠前：

|状态|无Luxury|有Luxury|
|---|---|---|
|0 未完成|2|1|
|1 普通任务可领取|0，VIP任务无VIP时为1|0，VIP任务无VIP时为1|
|2 普通和豪华均已领取|3|2|
|3 普通已领/豪华未领|1|0|

同优先级按任务type0树/1波次/2重生/3矿区升序；同type再按原index升序。已领普通经验的任务不能统一挪到最底：状态3仍有其原优先级。通过cache/排序得到的界面顺序是派生信息，不写入存档或改任务编号。

本轮 `OriginalMissions.MissionStatus/MissionSortPriority/MissionDisplayOrder` 还原判断/比较；`Mission_manager.Mission_UI_Reload` 在现有原行Reload后按返回索引SetSiblingIndex。原数组、行对象、GUID、持久按钮回调与Mission_Index保持。UI_Reload接入该方法，任务数值变化、普通领取、重开与新存档加载均刷新。只改这两个生产源码；工作场景字节、既有动画源码保持轮前hash。

原UI_First_Reload依赖I2名称/格式化、UI_Reload中NewSeason_Btn的满级门槛以及Value_Reload的完整Luxury/VIP展示仍非本轮关闭的子路径。当前行控件保留已有离线/付费不可用/过期拒绝处理；排序的原状态并不创建这些权益。export6不是宣称六个原方法所有分支都实现。

## 提示动画待办更正

规则38将原DOTween124051提示缩放列为待办，但核查场景发现规则29已有RecoveryWeeklyUiTween在原GO891上。因此本轮没有新增动画组件、没有改动画源码，也没有重复接线。原参数/当前组件均为sourceScale=(0.89393,0.89393,0.89393)、absolute uniform endScale1.1、每段duration1、Ease6=OutQuad、无限Yoyo、scaled time。原图仍为sprite c38505ef068f0f241b3b4ada0905a420的蓝点。

实际PlayMode采样峰值>1.09、起始<0.91，Time.timeScale=0时保持，disable/enable复位到来源scale，GPU小/大两阶段均查看。原参数为exact-serialized，现有呈现器仍是明确本地适配；enable/disable相位重置、创建/autoKill等不是完整DOTween SDK生命周期。更正历史待办不将现有动画计为新恢复源码。

## 验证与边界

专项6项先运行：既有动画1项通过、缺失排序/状态5项失败；新增排序后独立完整6/6。黄金顺序覆盖四类可领任务、同优先级VIP/Luxury与索引；原重生/矿区行经过top raycast、StandaloneInputModule Down/Up真实点击后，各自领取一次XP20，无额外钻石；重复领取不再增加、独立archive持久化正确。三次窗口重开和cold scene reload保留原catalogue identity与排序，未改变用户存档。

实际各批completed结果及当前source/scene/GPU hash见 `reports/mission-sorting-evidence.json`。专项、旧任务导航、原领奖呈现、成长与启动各自独立结果，不合并为全集合通过。固定旧GPU在回归前复制，回归图另存后还原旧hash。正常场景交付状态以当前handoff/actualEditor/console/runner为准；没有Player构建或真机/原版逐帧验收。

仍待完整I2/原任务详细展示/顺序锁拒领提示跳回、四处教程HUD、离线模拟与relic row300、可信时间/商业和后台服务、其他UI/特效及Player/device验收，scopeComplete=false。
