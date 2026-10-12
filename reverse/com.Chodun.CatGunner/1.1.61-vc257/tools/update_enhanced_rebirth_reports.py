from pathlib import Path
import json,datetime,csv
R=Path(__file__).resolve().parents[1];Q=R/'reports';W=R.parents[2];e=json.loads((Q/'enhanced-rebirth-evidence.json').read_text());labels=['增强重生专项','普通进度/重生','现有购买流程','启动'];runs=e['independentTests'];checks='、'.join(f"{n}{v['summary']['passed']}/{v['summary']['total']}（{v['duration']}秒）" for n,v in zip(labels,runs))
summary='本轮接通广告增强重生：原广告入口/确认弹窗、三倍红宝石预览、原2秒Animator事件结算、每日1次广告次数、独立购买次数和历史值>989购买门槛、普通重生仍单倍、关闭重开/跨日/模式变化/取消/重复/未经授权回调与中断动画保护、独立存档冷重载均接通。广告/现金仍为本地模拟，不扣款。'+checks+'分别完整通过；三张GPU实际查看。主档/备份、场景字节、303既有meta和原动画/素材保留；35954对象、缺脚本0、最终干净EditMode和Console错误0。临时武器、剩余I2/UI/教程/特效、真实SDK/服务与Player/真机仍待恢复，scopeComplete=false。'
p=W/'README.md';s=p.read_text();old='本轮接通Buff弹窗永久包：';assert old in s
if '本轮接通广告增强重生：' not in s:
 s=s.replace(old,'上一轮接通Buff弹窗永久包：',1);at=s.index('上一轮接通Buff弹窗永久包：');s=s[:at]+summary+' 详见 [规则57](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/57_ENHANCED_REBIRTH_CLIENT.md)。\n\n'+s[at:];p.write_text(s)
p=Q/'RECOVERY_PROGRESS.md';s=p.read_text();old='## 当前阶段：Buff弹窗本地购买与离线规则核对';assert old in s or '## 当前阶段：广告增强重生' in s
if '## 当前阶段：广告增强重生' not in s:
 s=s.replace(old,'## 历史阶段：Buff弹窗本地购买与离线规则核对',1);at=s.index('## 历史阶段：Buff弹窗本地购买与离线规则核对');s=s[:at]+'## 当前阶段：广告增强重生原UI与动画结算（规则57，2026-10-11）\n\n'+summary+'\n\n20项原生查询（14业务/6共享异常辅助）完成，4个跨历史首次查询、10个重新导出；声明目录地址去重882不是功能百分比。原日期键yyyyMMdd核对，旧恢复ISO日期按同日兼容，可信原时间服务仍未恢复。修复前0/1失败独立保留，未与最终各批拼接。本轮7个既有运行脚本、1个新运行页修订组件和1个新测试文件；无场景保存、SDK/APK或Git交付。详情见enhanced-rebirth-evidence.json。\n\n'+s[at:];p.write_text(s)
p=Q/'VERIFICATION.json';d=json.loads(p.read_text());d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();d['scope_complete']=False;d['enhanced_rebirth_evidence']=e;d['unity_playmode']['latest_rule57_batches']=runs;d['pending']=e['pending'];d['acceptance']['script_compile']='Rule57 current sources exercised by independent complete runs; final compilationFailed=false and Console errors0.';d['acceptance']['implemented_slice_playmode']='Rule57 '+checks+' independently complete; not a full-game/Player/device run.';d['acceptance']['visual_slice']='Three actually viewed Rule57 GPU frames: original ad confirmation/triple preview, native Animator circular-overlay transition and used quota after cold reload. Full I2/UI/VFX and human parity acceptance pending.';d['acceptance']['enhanced_rebirth']='Original UI, native daily/ad/paid eligibility and triple preview, animation-event settlement with original byte-identical clip/controller, local ad/payment completion and independent cold reload. No real payment or online entitlement.'
if not any(x['folder']=='native-enhanced-rebirth-client-reviewed' for x in d['native_outputs']):d['native_outputs'].append({'folder':'native-enhanced-rebirth-client-reviewed','queries':20,'completed':20,'businessMethods':14,'exceptionHelpers':6,'warning':'Byte-checked bounded C/ASM; four first historical queries, ten re-exports. Not original C# or recovered-feature percentage.'})
addresses=set()
for output in d['native_outputs']:
 for row in csv.DictReader((R/output['folder']/'status.tsv').open(),delimiter='\t'):
  if row['completed']=='true':addresses.add(row['preferred_va'])
assert len(addresses)==882;d['native_unique_completed_queries']=len(addresses);d['native_unique_completed_query_boundary']='882 unique completed addresses across declared outputs; four first-query addresses across all historical folders in Rule57. Query union is not semantic recovery or feature percentage.'
d['current_client_scene_sha256']=next(x['sha256'] for x in e['preservation']['records'] if x['path'].endswith('/RecoveredClient.unity'));p.write_text(json.dumps(d,ensure_ascii=False,indent=2))
p=R/'original-game-rules/00_INDEX.md';s=p.read_text();entry='- [57 广告增强重生](57_ENHANCED_REBIRTH_CLIENT.md)：原三倍预览/2秒动画结算、每日独立广告和购买次数、原弹窗实际点击与本地模拟、取消/迟到/中断保护、旧ISO日期兼容和冷重载；可信时间/服务/真机仍待恢复。\n\n'
if '57_ENHANCED_REBIRTH_CLIENT.md' not in s:
 at=s.index('\n')+1;s=s[:at]+'\n'+entry+s[at:];p.write_text(s)
p=R/'original-game-rules/56_BUFF_POPUP_LOCAL_PURCHASE.md';s=p.read_text();note='Rule57 subsequently connects ad-enhanced rebirth and its paid confirmation entry. The pending list below records the Rule56 handoff.\n\n'
if note not in s:
 at=s.index('Temporary weapons,');s=s[:at]+note+s[at:];p.write_text(s)
p=Q/'enhanced-rebirth-reconstruction-contract.json';d=json.loads(p.read_text());d['immutableInputHashes']=e['preservation']['immutableInputs'];d['nativeInputSha256']=e['native']['nativeSha256'];d['acceptanceLayers']='Native/serialized audit, Unity compilation, independent PlayMode, actual GPU inspection and clean Editor handoff; no Player/device/original-side-by-side acceptance';p.write_text(json.dumps(d,ensure_ascii=False,indent=2))
print({'rule':57,'independentBatches':len(runs),'declaredNativeQueryAddresses':882,'scopeComplete':False})
