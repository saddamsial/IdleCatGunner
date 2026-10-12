from pathlib import Path
import json,csv,datetime,hashlib
R=Path(__file__).resolve().parents[1];W=R.parents[2];Q=R/'reports';e=json.loads((Q/'monster-sweep-evidence.json').read_text());assert e['preservation']['userMainAndBackupUnchanged'] and not e['scopeComplete']
labels=['怪物扫荡专项','原怪物','自动奖励','启动'];runs=e['independentTests'];checks='、'.join(f"{label}{r['summary']['passed']}/{r['summary']['total']}（{r['duration']}秒）" for label,r in zip(labels,runs))
summary='本轮接回怪物扫荡：PlusPack2与战力双门槛、原关卡预览/不足红色进度、逐小关前进最多100关、武器群攻系数与Boss专用伤害/攻速（排除森林升级）、下一波/关存档、每关30宠物币/奖励包二倍/模拟广告追加同额/全去广告自动二倍。原入口、奖励和关闭按钮接通；到期/停用/取消/重复/迟到回调及独立冷启动覆盖。'+checks+'分别完整通过，未合并为一次全套；三张GPU实际读取。试玩主档/备份、场景、既有meta和原素材保留，可直接Play。广告/现金仍本地模拟，不扣款。剩余短Buff、临时枪/广告重生、复杂动画/特效与完整UI/服务仍待恢复。'
p=W/'README.md';s=p.read_text();old='本轮接回矿山扫荡：';assert old in s;s=s.replace(old,'上一轮接回矿山扫荡：',1);at=s.index('上一轮接回矿山扫荡：');p.write_text(s[:at]+summary+' 详见 [规则54](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/54_MONSTER_SWEEP_CLIENT.md)。\n\n'+s[at:])
p=Q/'RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前阶段：矿山扫荡客户端','## 历史阶段：矿山扫荡客户端',1);at=s.index('## 历史阶段：矿山扫荡客户端');detail='## 当前阶段：怪物扫荡客户端（规则54，2026-10-11）\n\n'+summary+'\n\n'
detail+='21项原生查询完成（15业务、6异常辅助），入口字节/方法界/SHA与字段schema核验；PetCoin_Accum316是共用奖励快照，pending312。恢复前0/1失败与恢复后独立各批记录均保留；逐次实际结果见monster-sweep-evidence.json。\n\n'
detail+=f"{len(e['preservation']['records'])}项保护记录、{e['preservation']['existingScriptMetasUnchanged']}既有脚本meta、{e['preservation']['historicalGpuFramesPreserved']}历史GPU保留。修改2份既有脚本，新增纯规则与专项测试；场景/布局无改动。最终干净EditMode、35834对象、缺脚本0、Persist=true，无存档/host/输入覆盖、timescale1，Console错误0/编译失败false。没有APK/真机/Git提交推送，scopeComplete=false。\n\n"
p.write_text(s[:at]+detail+s[at:])
p=Q/'VERIFICATION.json';d=json.loads(p.read_text());d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();d['scope_complete']=False;d['monster_sweep_evidence']=e;d['unity_playmode']['latest_rule54_batches']=runs
counts=', '.join(f"{l} {r['summary']['passed']}/{r['summary']['total']}" for l,r in zip(labels,runs))
d['acceptance']['script_compile']='Rule54 sources compiled; four complete independent batches; final compilationFailed=false and Console errors=0.'
d['acceptance']['implemented_slice_playmode']='Rule54 '+counts+': independently completed, not full-game/Player/device acceptance.'
d['acceptance']['visual_slice']='Three actually viewed Rule54 GPU frames: original weak Monster entrance, base/ad double result, automatic double result. Original scene/layout/art preserved; advanced I2/VFX pending.'
d['acceptance']['monster_sweep']='Native power/Plus2 gate, five-level wave advancement capped100, original callbacks/buttons, local base+base or automatic2x with reward pack2x; expiry/stale guards and cold reload. No real ad/store/trusted time/ranking backend.'
d['pending']=e['pending'];folder='native-monster-sweep-client-reviewed';assert not any(x['folder']==folder for x in d['native_outputs']);d['native_outputs'].append(dict(folder=folder,queries=21,completed=21,businessMethods=15,exceptionHelpers=6,warning='Byte-checked C/ASM, not original C# or recovery percentage'))
addresses=set()
for x in d['native_outputs']:addresses.update(int(row['preferred_va'],16) for row in csv.DictReader((R/x['folder']/'status.tsv').open(),delimiter='\t') if row['completed']=='true')
d['native_unique_completed_queries']=len(addresses);d['native_unique_completed_query_boundary']=f'{len(addresses)} unique completed addresses across declared outputs; not feature recovery percentage.'
d['current_client_scene_sha256']=hashlib.sha256((W/'reconstruction/CatGunnerUnityClient/Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest();p.write_text(json.dumps(d,ensure_ascii=False,indent=2));print(dict(rule=54,runs=len(runs),nativeUniqueAddresses=len(addresses),scopeComplete=False))
