from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
R=Path(__file__).resolve().parents[1];rp=R/'reports';root=R.parents[2]
def load(n):return json.loads((rp/n).read_text())
tests={}
for name,report,total in [('mission','live-mission-presentation-accepted-final-status.json',6),('sharedReward','live-mission-presentation-shared-final-status.json',6),('progression','live-mission-presentation-progression-final-status.json',8),('startup','live-mission-presentation-startup-final-status.json',4)]:
 d=load(report)['data']['result'];assert d['status']=='completed' and d['summary']['total']==d['summary']['passed']==total and d['summary']['failed']==0,report
 tests[name]={'report':report,**{k:d[k] for k in ['status','duration','summary']}}
h=load('mission-presentation-editor-handoff.json');a=load('mission-presentation-preservation-audit.json');diff=load('mission-presentation-scene-document-diff.json');refs=load('mission-presentation-reference-audit.json');console=load('mission-presentation-final-console.json');runner=load('mission-presentation-final-runner.json')['data']['result']['result']
assert h['readyForUserPlay'] and h['objects']==34998 and h['missingScripts']==0
assert diff['preservedExistingIdentities']==130199 and diff['semanticallyUnchangedExistingDocuments']==130196 and diff['newDocumentIdentities']==2 and diff['newOriginalObjects']==0
assert refs['slotReferencesValid'] and refs['expReferencesValid'] and refs['walletReferencesValid'] and refs['walletSharesOriginalTargetParent'] and refs['slotCount']==25 and refs['taskCount']==23
assert console['counts'][0]==0 and not any(runner[k] for k in ['playing','changing','compiling','updating','runs'])
assert all(x['unchanged'] for x in a['userSaves']+a['frozenInputs'])
gpu=[]
for n in ['flight','settled']:
 p=rp/f'visual/mission-diamonds-{n}-gpu.png';gpu.append({'path':str(p.relative_to(rp)),'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'actuallyViewed':True})
a['gpu']=gpu;(rp/'mission-presentation-preservation-audit.json').write_text(json.dumps(a,ensure_ascii=False,indent=2)+'\n')
evidence={'rule':'original-game-rules/37_MISSION_REWARD_PRESENTATION.md','contract':'mission-presentation-contract.json','tests':tests,'boundary':'Four independent completed batches, not a full suite or Player/device acceptance. Before5 had three missing behaviors and one invalid gun fixture; corrected max-level before1 reproduced XP27 vs17. First4/5 and task diagnostic0/1 used raycast before newly enabled Canvas registration; waited two frames without production input changes. Historical5/5 then accepted5/5 after screenshot timing correction. Added real-input sound test exposed duplicate persistent+runtime claim0/1; final6/6 covers correct single-success feedback after repeated Bind. Wrong post-close image retained. Relative eval_file rejected before mutation, absolute queued integration succeeded.','nativeBusinessQueries':7,'nativeExceptionQueries':6,'sourceParameters':'mission-presentation-source-parameters.json','sceneAudit':'mission-presentation-scene-document-diff.json','preservationAudit':'mission-presentation-preservation-audit.json','referenceAudit':'mission-presentation-reference-audit.json','handoff':'mission-presentation-editor-handoff.json','console':'mission-presentation-final-console.json','runner':'mission-presentation-final-runner.json','sceneSha256':a['sceneSha256'],'sourceSha256':a['sourceSha256'],'gpu':gpu,'scopeComplete':False,'differences':load('mission-presentation-contract.json')['knownDifferences']}
(rp/'mission-presentation-evidence.json').write_text(json.dumps(evidence,ensure_ascii=False,indent=2)+'\n')
v=load('VERIFICATION.json');v.update({'updated_utc':datetime.now(timezone.utc).isoformat(),'mission_presentation_evidence':evidence,'mission_presentation_editor_handoff':h,'current_client_scene_sha256':a['sceneSha256'],'scope_complete':False})
v['acceptance']['implemented_slice_playmode']='Mission presentation6/6; shared reward6/6; progression8/8; startup4/4. Four separate current-source completed batches; not a new full-suite/Player/device result.'
v['acceptance']['visual_slice']='Current original Mission window GPU: eight diamond sprites after ordinary reward claim, popup wallet600, ready next reward620, then settled/no particles. Bounded local renderer; no original pixel/device parity.'
v['unity_playmode']['latest_rule37_batches']=tests
(rp/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
progress='''## 当前阶段：每日任务经验与普通赛季钻石演出（规则37，2026-10-11）

普通任务成功领取后接回原经验条Bounce(0.9/0.2秒)，原内部等级+1显示；满级25后新经验不累加，任务本身仍记为领取。普通赛季钻石成功授予/标记/UI/SFX后，从原Dia_obj生成8颗钻石飞向任务窗口钱包；类型0外、拒领、顺序锁、重复、广告和付费入口不生成。到账只SFX14/图标回弹，不二次发奖。任务窗口原Currency/两文本及经验条Bounce接回，共2组件/零新增GameObject。

最新独立完整批次：专项6/6、共享奖励6/6、成长与导航8/8、启动4/4。首轮失败、最大等级夹具修正后的原27vs17失败、Canvas注册前点击失败、修正后完整5/5及截图时序修正后接受5/5均留档。未用直接方法调用替代两项原按钮的真实StandaloneInputModule点击。当前两张任务GPU已查看；关窗过早的历史截图不当作窗口到账验收。

已有130199场景身份全保留、130196语义一致，3修改只经验条/钱包组件列表和经验条Bounce引用。34998对象/零缺脚本，原7份meta/全部所需引用、冻结Main/native/metadata和用户主备份SHA保持。正常场景干净EditMode/Persist=true/无覆盖/无活动测试，现可直接Play。新增音效失败0/1复现原持久回调与运行回调叠加；保留原持久回调，只在缺少有效原领奖回调时加运行回调，重复Bind后真实点击不再附带拒领音。

完整原警示循环/下一个奖励自动滚动/I2、其它普通业务FX/四处HUD/离线模拟/可信时间/商业服务/Player与真机仍待办，fullGameComplete=false。共享特效及钱包事件为规则36的本地适配，不称完整SDK恢复。

'''
p=rp/'RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前阶段：签到/存钱罐','## 历史阶段：签到/存钱罐',1);i=s.index('## 历史阶段：签到/存钱罐');s=s.replace('原服务器时间、VIP/Luxury、剩余7HUD/其它展示','原服务器时间、VIP/Luxury、剩余4HUD/其它展示');p.write_text(s[:i]+progress+s[i:])
p=root/'README.md';s=p.read_text().replace('本轮补齐签到','上一轮补齐签到',1);i=s.index('上一轮补齐签到');p.write_text(s[:i]+'''本轮接回每日任务经验条回弹、普通赛季领奖的8颗钻石到账特效，以及任务窗口钱包刷新；修正经验条等级少1、赛季满级后仍累加经验，以及成功领奖后多响拒领音的重复回调。独立专项6/6、共享奖励6/6、任务成长/导航8/8、启动4/4分别通过，原资产与用户存档保留。2份原组件恢复，无新增对象；演出仍是明确本地适配，完整游戏/服务/真机尚未完成。详见规则37与当前验证报告。

'''+s[i:])
p=rp/'REPRODUCE.md';p.write_text(p.read_text()+'''

## 每日任务与普通赛季奖励演出（规则37）

1. `mission-presentation-before` 保存场景/6修改源码/README/报告与用户主备份哈希。`prepare_mission_presentation.py` 只读冻结Main，提取125149/125150/138009与两TMP引用。`select_native_methods.py mission-presentation` 和只读Ghidra导出7业务+6辅助；额外Value_Reload用于输入诊断。
2. `OriginalMissionPresentationTests` 先运行，保留before5结果；修正独立枪集合夹具后max-before1确认17变27错误。补齐原任务/赛季呈现方法、等级+1、满级XP边界。Refresh等待实际类型编译；绝对路径`mission_presentation_integrate.cs`延后OpenScene+EditorAPI Integrate一次，添加2原组件和原字段引用。不要再次运行Integrate。
3. 初次4/5与task0/1是新启用可领取图形尚未Canvas注册的输入夹具；在UI_reload后等两个帧，再做top-raycast和实际鼠标Down/Up，未改背景raycast或原层级。完整5/5后修正截图需等待帧再关窗，接受专项再次5/5。新增失败的RepeatedBinding真实音效检查确认持久回调和运行回调双重领奖；修正接线后完整专项6/6。分别跑共享奖励6、成长导航8、启动4，确认每批completed、非零全通过与runner为空。保留旧规则GPU，回归新GPU另存`mission-regression-*`，还原旧图而不覆盖历史哈希。
4. 实际查看任务flight/settled两图。运行`audit_mission_presentation_scene.py`与`audit_mission_presentation_preservation.py`；Editor `mission_presentation_handoff.cs`恢复普通场景，`mission_presentation_reference_audit.cs`核验原引用；独立确认当前实际scene/Console/runner，证据齐备才运行finish脚本。无Player/Git/真机操作。
''')
print(json.dumps({'tests':tests,'objects':h['objects'],'scopeComplete':False},ensure_ascii=False))
