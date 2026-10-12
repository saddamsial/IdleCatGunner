# 原规则索引：Cat Gunner 1.1.61

- [77 加载背景位于全部HUD下方](77_WALKING_BACKDROP_BELOW_ALL_HUD.md)

- [69](69_MOBILE_PERFORMANCE_SAFEAREA_LANGUAGE.md)
- [70](70_MODE_HUD_MONSTER_FLOOR_MISSION_CLAIM.md)
- [71](71_NOTCH_PROGRESS_BACKDROP.md)
- [72](72_DRAW_FISH_OFFERS_SLEEP_PASS.md)
- [73](73_MINE_CIRCLE_LOADING_REBIRTH_NUMBERS.md)
- [74](74_PET_WALLET_REFRESH.md)
- [75](75_ORIGINAL_PROGRESS_BACKDROP_FULLSCREEN_LOADING_TRAVEL_CORE.md)
- [76](76_RAID_TICKET_LOADING_MENU_COMPACT_NUMBERS.md)

- [68 剩余静态UI与Android试玩包](68_MOBILE_UI_AND_APK.md)：259处静态原文、教程/FX回归、独立ARM64签名包及16KiB模拟器闭环。

- [67 模式界面原文](67_MODE_TEXT.md)：四种模式71处核心静态标签，源路径/重复兄弟/原中文字体，实际入口与挑战通关领奖。

- [66 新赛季奖励预览](66_SEASON_PREVIEW.md)：两种入口的等级窗口、三种原奖励展示、VIP提示和原按钮回调。

- [65 每日任务原文](65_MISSION_TEXT.md)：四类任务名称/目标格式、96处静态标签和同名兄弟定位；实际领取与两条进度/重载验证。

- [64 鱼和宠物静态原文](64_COMPANION_STATIC_LOCALIZATION.md)：27处原primary绑定/20词条/14语言、信息与详情往返/删除取消/获得提示，保留隐藏遗留图鉴和原概率表。

- [63 攻击目标准星动画](63_TARGET_MARKER_ROTATION.md)：原实际倾斜、负方向/3秒线性增量循环、隐藏续相位与暂停；正常自动战斗和独立存档验证。

- [62 武器页静态语言绑定](62_WEAPON_STATIC_LOCALIZATION.md)：9处原路径/8词条/14语言，中文说明与信息图鉴入口、字体生命周期；完整I2和其他页面独立待恢复。

- [60 试玩UI、队友骨骼与已通关倍速](60_PLAYTEST_UI_PRESENTATION.md)：原信息/65枪图鉴、数字缩写、菜单排列、进度条验证、激光透明混合与2倍实际移动。

- [59 武器原文与呈现](59_WEAPON_PRESENTATION.md)：七类原类型/说明、196原文本、中文完整字形与静态排版、库存点击音效、原两秒非模态获得提示/暂停/重启及独立保存保护。

- [58 临时广告武器](58_TEMPORARY_WEAPON_OFFER.md)：首合成编号14限时30分钟、原库存点击/倒计时、领取后永久装备收藏、到期/错位存档保护、广告忙/取消/迟到边界和独立保存；线上配置与SDK为明确本地替代。


- [57 广告增强重生](57_ENHANCED_REBIRTH_CLIENT.md)：原三倍预览/2秒动画结算、每日独立广告和购买次数、原弹窗实际点击与本地模拟、取消/迟到/中断保护、旧ISO日期兼容和冷重载；可信时间/服务/真机仍待恢复。


唯一目标 com.Chodun.CatGunner / vc257。全部地址为本构建 ELF preferred VA；Ghidra 加0x100000，文件偏移按 PT_LOAD 转换。原包哈希见 reports/apk-inventory.json。

- [全功能清单、当前实现与运行缺口](../reports/RECOVERY_PROGRESS.md)
- [升级、自动升级与关卡缓存](01_UPGRADE_AND_STAGE.md)
- [161 字段存档、文件协议与原始音频](02_SAVE_AND_AUDIO.md)
- [森林池、输入、移动和射击接线边界](03_FOREST_AND_MOVEMENT.md)
- [普通子弹、命中特效和对象池](04_PROJECTILES_AND_POOL.md)
- [目标、瞄准、65 枪展示与连续普通攻击](05_TARGET_AIM_AND_NORMAL_ATTACK.md)
- [初始装备、伤害和森林攻速](06_EQUIPMENT_AND_FOREST_BALANCE.md)
- [霰弹枪整轮发射、暴击和部分池成功](07_SHOTGUN_VOLLEYS.md)
- [穿透枪和激光：命中、重复抑制与停止条件](08_PIERCE_AND_LASER.md)
- [爆炸与爆破狙击：范围、首击与回收](09_EXPLOSIVE_AND_BLAST_SNIPER.md)
- [导弹：固定落点、弧线、仰角和回收](10_MISSILE_FLIGHT_AND_AIM.md)
- [森林自动移动：找目标、停射、退后和接管](11_FOREST_AUTO_MOVEMENT.md)
- [森林自动续关、原 HUD、金币升级与独立存档](12_FOREST_CLIENT_FLOW.md)
- [Boss 挑战：游走、自动追踪、结算与返回](13_BOSS_CHALLENGE.md)
- [验证分层记录](../reports/VERIFICATION.json)
- [本构建复现步骤](../reports/REPRODUCE.md)

metadata/type/field/method 导航、完整组件解析和 native 伪代码都不是全功能恢复。商业 SDK 以合法真实依赖或明确的兼容适配接入；在线流程纳入清单，生产服务源码不能从 APK 恢复，也不会伪造广告/交易/账号成功。

- [14：矿山普通玩法、命中、布局和结算边界](14_MINE.md)

- [15：怪物挑战、基地防线、波次与普通奖励](15_MONSTER_CHALLENGE.md)

- [16：团战普通入场、独立选枪、连续 Boss 和星石结算](16_RAID.md)
- [17：三槽星级强化、失败保底、森林与团战伤害](17_STAR_UPGRADES.md)

- [18 猫咪皮肤](18_SKINS.md)：原25项、普通购买/选择、累计加成、三猫外观与保存；完整视觉/真机未验收。

- [19 遗物](19_RELICS.md)：原15项、4核心、普通抽取/碎片升级/12项分页/保存与战斗重生增益；普通派遣产核心已接入，离线/跳关/缺表最高级待恢复。

- [20 普通派遣](20_ADVENTURE.md)：3组15地图、门票充能、宠物实体锁、取消与到期核心/经验、原选择/奖励弹窗及保存；预览/可信时间/全视觉待恢复。

- [21 普通保险箱与武器锁](21_SAFE.md)：第40关、6/16格、钻石逐格扩容、存取自动锁定、详情解除和独立保存；商业自动合成/视觉反馈仍待恢复。

- [22 启动过渡与旧 Raid 档案兼容](22_STARTUP_AND_LEGACY_RAID.md)：原行走加载界面、零输入战斗、空数组补齐与初始化失败存档保护。

- [23 鱼类、自动合成与共用 UI](23_FISH_AUTO_MERGE_UI.md)：13阶/20鱼缸、普通与钻石抽取、游动/拖动合成/删除/加成保存，三类自动合成本地试玩与原资格边界，837条共用UI组件。

- [24 宠物骨骼动画与派遣预览](24_PET_ANIMATION_AND_ADVENTURE_PREVIEW.md)：原Walk/Idle与朝向门禁、13骨骼/286组件、19格实体顺序与锁定排除、RT预览和独立档案重载；官方Spine及BiRP兼容适配单独记录。

- [25 宠物详情与重生长按](25_PET_DETAIL_AND_REBIRTH_HOLD.md)：全部10级往返/首尾门禁、原图片大小与加成显示，原0.4/0.04秒长按、逐级扣费与停止/独立重载；原按钮事件/GUID保留。

- [26 八个普通内容入口与关卡解锁](26_CONTENT_UNLOCK.md)：原3/4/6/10/12/12/35/40门槛、历史最远关卡、仅已解锁/下一批显示、原锁图标与回调、重生及冷重载；完整教程尚未接入。

- [27 原枪械首次合成引导](27_GUN_MERGE_TUTORIAL.md)：原Hand/SmoothStep、有效低阶筛选、非raycast实际拖拽/首次合成停止/独立重载；原五步初始教程见后续28。

- [28 原五步初始教程](28_INITIAL_ONBOARDING.md)：原升级/挑战/开枪械/购买/装备判断、手势与箭头、本地启动/保存适配、旧档案兼容与独立冷重载。

- [29 WeeklyShop、普通团战任务与循环特效](29_WEEKLY_SHOP_RAID_MISSIONS.md)：原页面/每周枪械轮换/预览/倒计时、8项任务/独立领奖/赛季重置、10份源循环参数；购买完成与线上权益仍未接通。

- [30 森林输入、纸币洒落与伤害数字](30_FOREST_INPUT_CASH_DAMAGE.md)：补齐工作场景输入模块、三项升级实际模块分派、原5/15张纸币、bitmap字形/动画曲线与原GPU表达式移植；物理鼠标/手机和原管理器全链仍待验收。

- [31 金币、采矿钻石反馈与普通奖励计数](31_CURRENCY_REWARD_FEEDBACK.md)：原money/dia字形/曲线、0.2秒共用门禁、采矿小数提示、普通Get_Dia存储增量和Currency生命周期；矿场兼容材质与原地面平铺。

- [41 赛季重置、离线模拟、挑战材质和本地广告](41_SEASON_OFFLINE_LOCAL_ADS.md)：完整普通赛季重置确认、原离线结算页、部分广告本地变体、速通/Boss/怪物渲染修复；原服务和未恢复入口独立保留。

- [61 Hatch滚动、鱼合成统计与飘字缩写](61_HATCH_FISH_FLOATING_NUMBERS.md)：原向右滚动/全宽渲染、同阶自动合成与冷重载、鱼统计原显示规则和伤害/金币缩写；保留用户进度。
