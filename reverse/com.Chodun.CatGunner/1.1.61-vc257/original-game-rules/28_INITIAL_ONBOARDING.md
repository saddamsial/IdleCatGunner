# 28 原五步初始教程

仅对应手机 adb 提取的 com.Chodun.CatGunner1.1.61/vc257 arm64。原构建Unity6000.0.61f1，工作工程Unity6000.4.10f1。原Main/native/metadata字节及Tutorial_manager、TutorialArrow_UI、Gun_Merge_Tutorial三份meta/GUID未改；旧XAPK无关联。

## 原生依据

native-tutorial-ui-reviewed的51条导出和首16字节校验已在上轮完成，本轮复用28条Tutorial_manager及迭代器，连同17条合成/箭头为45业务方法，6条异常辅助。不是新增51条，也不构成完整客户端恢复比例。TutorialStep元数据29压缩字段默认值解码为0..5。合同original-onboarding-contract.json同时核对原Main字段路径、原脚本身份、Get_Dia、SaveData_CreateFromCurrentState、LoadData_ContinueLoad。

| 步骤 | 原判断和表现 |
|---|---|
| Upgrade0 | 未完成且攻击升级0开始；每0.2秒检查当前攻击费用，能付钱显示0手势；攻击>=1进Challenge。 |
| Challenge1 | 攻击>=3才显示挑战按钮；SpeedRun.Stage_Now>0进GunOpen。 |
| GunOpen2 | 显示原枪械按钮，2手势随按钮activeInHierarchy；任一装备槽activeInHierarchy或OnGunButtonPressed进GunBuy。 |
| GunBuy3 | Dia<100调用原Get_Dia(100-Dia)；原_getDia统计增量为grant*3，保存捕获不除以3。3手势随普通Draw_Btn；库存任一!=-1进GunEquip。 |
| GunEquip4 | 等一帧取首个非空activeSelf库存对象，原箭头指向第二装备槽；不重选捕获对象。装备1..末任一!=-1，或主装备!=Gun0即完成。 |
| Done5 | 隐藏3手势/箭头，重新显示非空DisableOnTutorial，刷新内容门禁，关闭自身GO；不直接改SaveData。 |

LoadData.TutorialCleared调用SetCleared；攻击>=1的旧档案也直接Done。SetCleared设置内部cleared、停止协程、Complete。RequestIfNeeded原方法为空。保存捕获布尔TutorialCleared=(CurrentStep==5)；失败初始化/启动尚未ready时不会保存或补钻。

## 场景和适配

从冻结Main提取GO758完整教程根及祖先到独立RecoveredOnboardingSource，工作RecoveredClient仅通过Editor API导入12个原对象，保留4张非raycast原图片、坐标/层级，当前34376对象/零缺失脚本。原4_hand复用TutorialArrow_UI的1.2/.15/.8/.15及SmoothStep。11个DisableOnTutorial中4个普通按钮已连接，7个未纳入商业/在线/其他HUD仍为空；原foreach本来跳过空引用，不创建假业务。具体路径见onboarding-scene-restoration.json。

原三份DOTweenAnimation记录123549/124744/124649为duration1、uniform endScale1.2、Ease6=OutQuad、LoopType1=Yoyo、无限循环、scaled time。RecoveryTutorialPulse是明确本地展示适配器：保留参数/原图，关闭重置并重开；不是原DOTween SDK的创建/autoKill生命周期。其它特效和SDK动画仍需继续恢复。

RecoveryForestClient在原有安全验证/独立档案加载后Bind教程，替代未恢复的Gamemanager/LoadData全局启动顺序；原5秒本地自动保存/货币事件桥保留。内容门禁生产读取实际Tutorial_manager.CurrentStep；测试注入谓词仍保留。功能专项测试的ClientStartupWait.Ready默认SetCleared作为显式独立测试前置条件，教程专项使用Ready(false)验证真实流程；该帮助类只存在于测试程序集，不改生产场景/用户档案。首轮合成回归1/5报告保留：测试跳过教程后同帧点击新启用Gun_Btn，Canvas尚未完成渲染更新；帮助类增加一帧等待并保留顶层真实raycast断言。

原AppsFlyer归因、付费/广告/在线状态没有伪造。本规则时其它奖励适配器的_getDia统计仍待对齐；后续规则31已统一速通、Boss、采矿和普通任务奖励的原公共增量，并复用到教程。其它数值消费者仍待复核，不迁移/重写既有统计。

## 验证边界

实际点击升级，1级进挑战、3级显示入口；测试档案用原Gun5配置自动射击清空挑战树，原生命/位置/60秒无修改，再恢复Gun0完成普通购买与顶层raycast拖入第二装备槽，冷重载不重复补钻。Gun5是独立测试装备，不代表初始Gun0挑战胜率或用户档案。另查可支付手势、失败升级、旧档案/已完成跳过、无效请求、Complete与保存捕获分离、3缩放及关闭复位。GPU两图已读取，仅Editor/测试档案证据，不是手机像素/Player验收。

各次独立运行：教程专项5/5（77.18秒）、八项导航/玩法8/8（172.55秒）、解锁门禁5/5（31.50秒）、合成引导5/5（36.97秒）、库存6/6（8.05秒）、启动4/4（23.31秒）、升级画面夹具1/1（7.03秒）；不拼接为一次新全量运行。历史165/165早于本轮及合成引导/门禁/详情长按改动。

整轮试玩主/备份SHA一致，预先快照checkpoints/pre-onboarding-client；正常EditMode、无暂停/编译/脏场景、Persist=true、SaveFolderOverride=null已交接。未构建Player、未提交/推送Git，完整客户端scope_complete=false。
