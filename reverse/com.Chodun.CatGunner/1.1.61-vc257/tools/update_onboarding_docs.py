from pathlib import Path
import json
R=Path(__file__).resolve().parents[1];root=R.parents[2];reports=R/'reports';x=json.loads((reports/'VERIFICATION.json').read_text());e=x['onboarding_evidence'];assert e['handoff']['ready_for_user_play'] and all(v['summary']['total']==v['summary']['passed'] for v in e['tests'].values())
labels={'focused':'教程专项','navigation':'八项导航/玩法','content':'解锁门禁','merge':'合成引导','inventory':'库存','startup':'启动','visual_fixture':'升级画面夹具'}
line='各次独立运行：'+ '、'.join(f"{labels[k]}{r['summary']['passed']}/{r['summary']['total']}（{r['duration']:.2f}秒）" for k,r in e['tests'].items())+'；不拼接为一次新全量运行。历史165/165早于本轮及合成引导/门禁/详情长按改动。'
body='''# 28 原五步初始教程

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

原AppsFlyer归因、付费/广告/在线状态没有伪造。旧其它奖励适配器的_getDia统计仍需按原公共方法进一步对齐，本轮原教程增量已核对，不迁移/重写既有统计。

## 验证边界

实际点击升级，1级进挑战、3级显示入口；测试档案用原Gun5配置自动射击清空挑战树，原生命/位置/60秒无修改，再恢复Gun0完成普通购买与顶层raycast拖入第二装备槽，冷重载不重复补钻。Gun5是独立测试装备，不代表初始Gun0挑战胜率或用户档案。另查可支付手势、失败升级、旧档案/已完成跳过、无效请求、Complete与保存捕获分离、3缩放及关闭复位。GPU两图已读取，仅Editor/测试档案证据，不是手机像素/Player验收。

'''+line+'''

整轮试玩主/备份SHA一致，预先快照checkpoints/pre-onboarding-client；正常EditMode、无暂停/编译/脏场景、Persist=true、SaveFolderOverride=null已交接。未构建Player、未提交/推送Git，完整客户端scope_complete=false。
'''
(R/'original-game-rules/28_INITIAL_ONBOARDING.md').write_text(body)
stage='''## 当前阶段：原五步教程与手势（2026-10-11）

恢复Upgrade→Challenge→GunOpen→GunBuy→GunEquip→Done原判断与0.2秒轮询。升级1级离开初始步骤、攻击3级显示挑战、真实速通Stage_Now>0继续；普通钻石不足100时补到100（原_getDia增量*3），原库存/装备状态驱动购买、拖拽装备完成。Complete不直接写档，保存捕获CurrentStep==Done；已完成或攻击>=1的旧档案直接跳过且不补钻。原归因/购买记录不伪造。

原GO758教程根12对象通过Editor API导入，34376对象/零缺失脚本，4张原非raycast手图、第二装备槽箭头和原GUID保留。三份原DOTween缩放参数1秒/1.2/OutQuad/Yoyo用明确本地展示适配器播放/关闭复位；7处缺少的商业/在线/其他HUD引用仍为空，未模拟对应业务。51条原生导出复用（45业务/6辅助），不是新增或完整恢复比例。安全加载/保存/货币事件桥与测试前置SetCleared和生产逻辑分开，详见规则28/合同。

'''+line+'''

测试独立档案用原Gun5自动子弹通关（不改原目标生命/位置/计时），再恢复Gun0进行真实购买和顶层raycast拖到第二装备位；冷重载不重复教程/补钻。默认Gun0挑战胜率仍非此夹具验收。GPU原升级/装备手势两图已读取；不会改用户试玩档案，主/备份整轮SHA一致，三冻结输入和三脚本身份未改。

正常RecoveredClient已恢复EditMode/Persist=true/无覆盖/暂停/编译/脏场景。未构建Player/提交/推送Git；剩余7HUD、WeeklyShop、其余特效/本地化、遗物离线/跳关/缺表、团战任务、其它奖励计数对齐、线上商业服务与Player/真机仍待恢复或验收，scope_complete=false。

'''
p=reports/'RECOVERY_PROGRESS.md';s=p.read_text();marker='## 当前阶段：原枪械首次合成手指引导';s=s.replace(marker,stage+'## 历史阶段：原枪械首次合成手指引导',1);p.write_text(s)
p=root/'README.md';s=p.read_text();s=s.replace('本轮已接入：\n\n','本轮已接入：\n\n- 初始五步教程：攻击升级、速通挑战、开枪械、普通购买、拖拽第二装备位；原0.2秒轮询、3个手势缩放与装备箭头、补到100钻和完成保存/冷重载已接回。已完成或攻击升级过的旧档案直接跳过，不重置进度。手势缩放是保留原参数的本地展示适配，7处其它HUD仍待接入。\n\n',1).replace('完整初始五步教程本轮仅完成原生分析。','初始五步教程已在后续本轮接入。').replace('原完整教程尚待接入。','门禁已读取实际教程步骤。')
s=s.replace('本轮四次独立运行：合成引导专项',line+' 试玩主/备份哈希不变，Unity正常试玩入口已恢复。\n\n上一轮四次独立运行：合成引导专项',1).replace('- [原枪械首次合成引导]','- [原五步初始教程](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/28_INITIAL_ONBOARDING.md)\n- [原枪械首次合成引导]',1)
s=s.replace('完整五步教程/WeeklyShop','剩余教程HUD/WeeklyShop');p.write_text(s)
p=R/'original-game-rules/00_INDEX.md';s=p.read_text().replace('原五步初始教程已分析但尚未接入。','原五步初始教程见后续28。');p.write_text(s.rstrip()+'\n\n- [28 原五步初始教程](28_INITIAL_ONBOARDING.md)：原升级/挑战/开枪械/购买/装备判断、手势与箭头、本地启动/保存适配、旧档案兼容与独立冷重载。\n')
p=reports/'REPRODUCE.md';s=p.read_text();p.write_text(s.rstrip()+'''

## Initial five-step onboarding (2026-10-11)

The earlier merge-cue section is historical. Reuse verified native-tutorial-ui-reviewed51 exports, with45business queries now implemented:17cue/arrow plus28Tutorial_manager. Do not count this turn as51new native discoveries. export_onboarding_contract.py validates original input hashes,3script identities, metadata enum0..5, SaveData bool+0x3c9, native_getDia increment*3 and3originalDOTween pulse records (Ease6 OutQuad,LoopType1 Yoyo).

prepare_onboarding_slice.py creates only a NEW immutable source scene from frozenMain root758; never overwrite existing working/input scene. Controller/3pulse adapter references are reconnected from original manifests by OnboardingClientEditor.Integrate in clean normal EditMode. Use Editor API only for working scene; preserve source image references. Missing7HUD fields are intentional pending branches and must not be replaced with fake commercial behavior.

Bind via RecoveryForestClient after validated profile loading; ContentUnlock uses actual tutorial step. Never reset a user save to see onboarding. Unique OriginalOnboardingTests temporary profiles use Ready(false); existing feature fixtures explicitly SetCleared through tests-only ClientStartupWait.Ready. Keep these test setups out of production behavior.

Wait for AssetDatabase.Refresh/compiler/domain reload to settle before async PlayMode tests. Store each completed report separately: focused5,ContentNavigation category8,OriginalContentUnlockTests5,OriginalMergeTutorialTests5,OriginalInventoryTests6,OriginalStartupTests4; visual-only fixture1 after explicit wallet UI refresh. Preserve first pre-pulse5/5 run and initial merge1/5 same-frame canvas failure as history. Ready now yields one render/layout frame after SetCleared, preserving real raycast assertions. Do not sum them into new full assembly acceptance. Gun5 auto-projectile challenge fixture is not starterGun0 or user-save proof.

Read both GPU images. Execute onboarding_handoff.cs to reopen normal scene; onboarding_console.cs saves original entries before clearing and refuses current errors. Assert ready/Persisttrue/OverrideNull/34376objects/0missing/2arrows/3pulse adapters, verify unchanged user main/bak SHA and3originalinputs/meta. Run update_onboarding_acceptance.py followed by update_onboarding_docs.py only after all completed reports and handoff. No Player/device/Git delivery implied; missingHUD/WeeklyShop/effects/localization/relicconsumers/Raidtasks/othercounterparity/commercial/online remain.
''');print(line)
