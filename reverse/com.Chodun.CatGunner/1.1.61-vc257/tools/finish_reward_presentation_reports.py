"""Publish only separately completed current-source batches and audited handoff."""
from pathlib import Path
from datetime import datetime,timezone
import json,hashlib
R=Path(__file__).resolve().parents[1];rp=R/'reports';root=R.parents[2]
def load(n):return json.loads((rp/n).read_text())
tests={}
for name,report,total in [('reward','live-reward-presentation-final-status.json',6),('daily','live-reward-presentation-daily-status.json',6),('diapig','live-reward-presentation-diapig-status.json',7),('feedback','live-reward-presentation-feedback-status.json',4),('startup','live-reward-presentation-startup-status.json',4)]:
 d=load(report)['data']['result'];assert d['status']=='completed' and d['summary']['total']==d['summary']['passed']==total and d['summary']['failed']==0,report
 tests[name]={'report':report,**{k:d[k] for k in ['status','duration','summary']}}
h=load('reward-presentation-editor-handoff.json');a=load('reward-presentation-preservation-audit.json');diff=load('reward-presentation-scene-document-diff.json');refs=load('reward-presentation-reference-audit.json');console=load('reward-presentation-final-console.json');runner=load('reward-presentation-final-runner.json')['data']['result']['result']
assert h['readyForUserPlay'] and h['objects']==34998 and h['missingScripts']==0
assert diff['preservedExistingIdentities']==130176 and diff['semanticallyUnchangedExistingDocuments']==130163 and diff['newOriginalObjects']==3
assert not refs['missingGuids'] and refs['allBounceReferencesValid'] and refs['fxOwnerValid'] and not refs['fxRaycastTarget'] and refs['targets']==2 and len(refs['rotations'])==9 and refs['velocityYKeys']==4 and refs['vortexKeys']==2 and refs['vortexMultiplier']==8 and refs['spriteRotation']==1
assert console['counts'][0]==0 and not any(runner[k] for k in ['playing','changing','compiling','updating','runs'])
assert all(x['unchanged'] for x in a['user_saves']+a['frozen_inputs'])
gpu=[]
for n in ['flight','attraction']:
 p=rp/f'visual/reward-diamonds-{n}-gpu.png';gpu.append({'path':str(p.relative_to(rp)),'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'actually_viewed':True})
a['gpu']=gpu;(rp/'reward-presentation-preservation-audit.json').write_text(json.dumps(a,ensure_ascii=False,indent=2)+'\n')
evidence={'rules':'original-game-rules/36_REWARD_PRESENTATION.md','contract':'reward-presentation-contract.json','tests':tests,'boundary':'Five separate completed runs, not a full assembly/Player/device run. Initial2/2 failures included static glow and wrong multi-match fixture; subsequent4/5 wrong banner path, pre-motion5/5+daily6/6+pig7/7 are historical. Motion missing-method1/1 failure retained; final6-case reward suite includes motion numeric boundary.','native_business_exports':{'game_attraction_and_bounce':19,'particle_image':16,'dotween':3},'exception_helpers_per_scope':6,'native_scope_boundary':'Exports matched frozen inputs; only documented preset/native branches implemented, not whole SDK.','source_parameters':'reward-presentation-source-parameters.json','scene_audit':'reward-presentation-scene-document-diff.json','preservation_audit':'reward-presentation-preservation-audit.json','reference_audit':'reward-presentation-reference-audit.json','handoff':'reward-presentation-editor-handoff.json','console':'reward-presentation-final-console.json','runner':'reward-presentation-final-runner.json','scene_sha256':a['scene_sha256'],'gpu':gpu,'differences':['Local rotation reset-on-enable differs from unproved DOTween hidden phase','Local circle preset renderer, original assets/curves, different pool/RNG consumption/general SDK','Bounce initialization and early attraction Awake order are local bootstrap bridges','Only ordinary DailyCheck production spawn wired; Shop target and other business spawns pending'],'scope_complete':False}
(rp/'reward-presentation-evidence.json').write_text(json.dumps(evidence,ensure_ascii=False,indent=2)+'\n')
v=load('VERIFICATION.json');v.update({'updated_utc':datetime.now(timezone.utc).isoformat(),'reward_presentation_evidence':evidence,'current_client_scene_sha256':a['scene_sha256'],'reward_presentation_editor_handoff':h,'scope_complete':False})
v['acceptance']['implemented_slice_playmode']='Reward6/6; DailyCheck6/6; DiaPig7/7; forest real input/feedback4/4; startup4/4. Five separate current-source batches; no fresh full suite, Player or device result.'
v['acceptance']['visual_slice']='Original diamond sprite scattering and moving on current GPU captures, preset velocity/vortex/attractor restored under bounded local renderer; no original frame/device parity.'
v['unity_playmode']['latest_rule36_batches']=tests
(rp/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
progress='''## 当前阶段：签到/存钱罐光效与签到钻石到账（规则36，2026-10-11）

接回七个签到格与两个存钱罐横幅的原参数循环。签到实际Quaternion角211.49263，不能使用Euler hint或统一重置0；Fast最短变化约-31.49263°/1秒；横幅180°/2秒。原DiaAttraction分支新增3原对象，已有签到/任务两个目标和Bounce接回。普通签到先结算再生成8颗原钻石：原sprite、60尺寸、50半径、0.5–1寿命、1–15速度、weighted速度/两吸引曲线，以及启用的Y速度/涡旋曲线(倍率1/8)与×100积分/转角顺序已核对。每颗结束尝试SFX14/图标收缩；不会二次发奖。

原控制流/数据与本地呈现适配明确区分：并非全DOTween/ParticleImage SDK，启用重置相位、池/RNG消耗与初始化仍不同；只接普通签到业务Spawn，Shop_UI目标/其它入口/推广/I2待办。当前专项6/6、签到6/6、存钱罐7/7、真实森林输入/反馈4/4、启动4/4各自独立完成。源模块遗漏被新增失败测试捕获后补齐，轮前失败/夹具错误/中间批次保留，不拼接通过。

原130176场景身份全部保留、130163语义一致；13改动只UI_manager子列表及原Glow/Target/Bounce对象组件列表。34998对象/零缺脚本，五份原meta及引用核验，冻结原包输入/试玩主备份hash相同。正常场景已回到干净EditMode/Persist=true/无覆盖/无活动测试。GPU已查看，未构建Player、未真机或原版逐帧验收。完整恢复未完成，scope_complete=false。

'''
p=rp/'RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前阶段：每日签到','## 历史阶段：每日签到',1);i=s.index('## 历史阶段：每日签到');p.write_text(s[:i]+progress+s[i:])
p=root/'README.md';s=p.read_text().replace('本轮接回每日签到','上一轮接回每日签到',1);i=s.index('上一轮接回每日签到');s=s[:i]+'''本轮补齐签到七格与存钱罐两幅旋转光效，普通签到领取时出现8颗原钻石特效，粒子结束触发图标收缩与原音效；余额在领取时结算，不重复发奖。保留原图、姿态和曲线，粒子/循环播放为明确本地适配，尚未恢复完整插件。最终专项6/6、签到6/6、存钱罐7/7、森林按钮/伤害纸币4/4、启动4/4分别通过，试玩存档保留。详见规则36与当前验证报告。

'''+s[i:];s=s.replace('6处其它HUD仍待接入','4处其它HUD仍待接入');p.write_text(s)
p=rp/'REPRODUCE.md';p.write_text(p.read_text()+'''

## 奖励视觉（规则36）

1. reward-presentation-before保存场景/源码/用户主备份hash。prepare_reward_presentation.py只读冻结Main索引，提取9个Tween、3个Target/Bounce和124527预设。select_native_methods.py reward-attraction/reward-rotation/particle-diamond，逐个只读Ghidra导出，核验业务19/3/16加每组6辅助完整。Bounce迭代器正确d__13，错误d__9历史排除。
2. prepare_reward_fx_slice.py只生成新输入场景一次。Unity Refresh确认实际类型；RewardPresentationClientEditor.Integrate只执行一次，保留原Quaternion而非Euler hint；预检曾拦住把Glow本身要求identity及横幅误用1秒的导入假设，没有改变已有场景。API新增3原对象、9本地旋转及2原Target/Bounce。
3. 源velocity/vortex启用，先运行失败的VelocityAndVortexAreAppliedBeforeAttraction测试，补齐原曲线/倍率/顺序，再Editor API UpdateMotionCurves保存。中间5/5+6/6+7/7不是最终源码结论。最后分组跑OriginalRewardPresentationTests6、OriginalDailyCheckTests6、OriginalDiaPigTests7、OriginalForestFeedbackTests4、OriginalStartupTests4；每组确认completed/非零/全部通过并等待runner为空。
4. 查看两张当前GPU；audit_reward_presentation_scene.py/audit_reward_presentation_preservation.py核验场景/源包/meta/保存；reward_presentation_reference_audit.cs核验引用。reward_presentation_handoff.cs回到正常场景，再独立确认实际场景、Console与runner；finish_reward_presentation_reports.py仅证据齐备时发布。
''')
print(json.dumps({'tests':tests,'objects':h['objects'],'scope_complete':False},ensure_ascii=False))
