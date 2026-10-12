# 66 新赛季弹窗动态奖励预览

唯一目标：`com.Chodun.CatGunner 1.1.61 / vc257 ARM64`。原Unity6000.0.61f1；当前工程6000.4.10f1。旧XAPK不参与。

## 原证据

- `exact-native`：NewSeason_UI.OnEnable `0x2b05048`调用Reload `0x2b0504c`；原is_Vip静态字段为Mission_manager偏移0，购买提示仅在该标志false时显示。提示隐藏时不刷新预览。
- `exact-native`：奖励总数C、预览数N、等级L=Clamp(Reward_Lv,0,C)，起点Clamp(Max(L-N,0),0,Max(C-N,0))，越界预览隐藏。当前25奖励/3预览；第25级预览索引22/23/24，第4级1/2/3，第0..3级0/1/2。
- `exact-native`：First_Reload `0x2b04180`设置Epic degree1/当前索引，按奖励type/value显示钻石、武器或核心。武器原Sprite/Shadow/grade color/degree以及Gun_Type原语言文字；复用既有Gun_manager.Present/OriginalWeaponText和原奖励模型，不将奖励生成公式重新计为本轮新增恢复。
- `exact-native`：Reward_Status_return `0x2aa6acc`优先保存的Epic领取标志=>2，否则索引<等级=>1，其余0。Value_Reload `0x2b04394`的本调用固定sequence=false/locked=false，Epic无广告徽章。本轮只恢复该分支；其他领取/广告路径保持既有Reload。
- `exact-serialized`：普通124314/强制124424控制器、原GUID730160ca8b02a764e4eb126dc3b260e4、两个购买面板、各3个预览及数组顺序。保留原场景对象、布局和动画。
- `exact-serialized`：6个预览Button都指向原Mission_Reward_Slot132993.Epic_Reward_Click。原Mission_manager124352数组把132993初始化为索引5（第六格）；该组件导出时_Lv0只是默认值。6个原Button均m_Enabled0，保持禁用；实际指针向父Panel已启用Button123100冒泡，原回调为VIP_Purchase_popup.Purchase加关闭弹窗。保留该结构，不把预览改成独立领取按钮。

## 实现与边界

恢复NewSeason_UI字段/控制器及其原meta；OriginalSeasonPreview在启动后把两个控制器接回现有根对象，按只读原资源路径赋引用，没有场景/Prefab保存。Bind与就绪守卫是本地启动适配；OnEnable/选择窗口/展示条件遵循原证据。购买提示依原is_Vip标志显示，实际领取仍受既有明确本地购买记录检查，不授权生产支付或在线权益。

源窗口普通入口、取消、确认重置、强制入口、关闭重开/冷重载及原禁用预览向父购买Panel冒泡有独立档案验证。本地购买模拟发500钻石并持有VIP，不领取展示的预览奖励或武器。所有按钮使用现有持久回调，经原EventSystem的BaseInput夹具按下/松开；不是手机物理触摸验收。Rule65已恢复的原文字/中文字形与原入场动画保留。

## 验证记录

首次基线0/1先暴露夹具未滚到末尾，修正滚动位置后的基线0/1证实第25级仍显示默认索引0。首次实现专项5/6，失败为夹具把默认_Lv0误当成运行时数组索引0；原数组确认应为5，生产回调未改。第一次截图部分为原入场动画初帧，最终夹具等待0.4秒后重新采集。第二批4/6暴露入场动画期间点击测量不稳定；第三批5/6修正动画等待后发现预览原Button均禁用，事件冒泡到父购买按钮，而非直接调用存储的第六格回调。按原源状态修正购买接收者/本地500钻石断言，生产代码/禁用状态未改。失败批次与初帧单独保留，最终整批重跑，不合并部分通过数。

最终专项、原任务/文字/启动回归、4张实际GPU检查、用户档案/场景/536既有meta与字体缓存保护，以及正常Editor交接状态见`reports/season-preview-evidence.json`。11项原生查询（5业务/6复用辅助）完整完成，查询数不是恢复百分比。

日期/冷却本地化、完整I2、其他UI/教程/特效、可信服务时间/线上服务和Player/真机仍待恢复。本轮无APK或Git交付。
