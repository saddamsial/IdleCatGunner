from pathlib import Path
import json,csv,datetime,hashlib
R=Path(__file__).resolve().parents[1];W=R.parents[2];Q=R/'reports';e=json.loads((Q/'mine-sweep-evidence.json').read_text());assert e['preservation']['userMainAndBackupUnchanged'] and not e['scopeComplete']
labels=['矿山扫荡专项','原矿山','自动奖励','启动'];runs=e['independentTests'];checks='、'.join(f"{label}{r['summary']['passed']}/{r['summary']['total']}（{r['duration']}秒）" for label,r in zip(labels,runs))
summary='本轮接回矿山扫荡：原PlusPack2与最高奖励记录门槛、原入口与领取按钮、1张票消耗、最高记录奖励/模拟广告四倍/全去广告自动四倍、奖励包1.5倍后截断、矿山任务计数、2/6票上限和耗尽购买面板、到期/停用/跨天/取消/重复/迟到回调和独立冷重载接通。矿山没有战力门槛；扫荡不放大最高记录、不改变森林关卡。'+checks+'分别完整通过，未合并为一次全套测试；三张GPU实际读取。试玩主档/备份、工作场景、既有脚本meta和原素材保留，可直接Play。广告/现金继续本地模拟、不扣款；怪物扫荡、可信时间、剩余UI/特效与服务和真机仍待办。'
p=W/'README.md';s=p.read_text();old='本轮接回速通扫荡：';assert old in s;s=s.replace(old,'上一轮接回速通扫荡：',1);at=s.index('上一轮接回速通扫荡：');s=s[:at]+summary+' 详见 [规则53](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/53_MINE_SWEEP_CLIENT.md)。\n\n'+s[at:];p.write_text(s)
p=Q/'RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前阶段：速通扫荡客户端','## 历史阶段：速通扫荡客户端',1);at=s.index('## 历史阶段：速通扫荡客户端');detail='## 当前阶段：矿山扫荡客户端（规则53，2026-10-11）\n\n'+summary+'\n\n'
detail+='16项原生查询完成（10业务、6异常辅助），入口字节/方法界/SHA核验，Best_Reward96、Reward_Value208、pending264等schema对应。原UI序列化Bonus_AD_Show，两种结算兼容。恢复前0/1（10.38秒）保留；专项恢复后与各回归完整独立跑完，逐批证据见mine-sweep-evidence.json。\n\n'
detail+=f"{len(e['preservation']['records'])}项保护记录、{e['preservation']['existingScriptMetasUnchanged']}既有脚本meta、{e['preservation']['historicalGpuFramesPreserved']}历史GPU保留。2份既有源文件修改，新增专项测试；场景/原序列化文档/布局/资源无改动。最终干净EditMode、35834对象、缺脚本0、Persist=true、无存档/host/输入覆盖、timescale1，本地模拟默认true，Console错误0/编译失败false。无APK/真机/Git提交推送，scopeComplete=false。\n\n"
p.write_text(s[:at]+detail+s[at:])
p=Q/'VERIFICATION.json';d=json.loads(p.read_text());d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();d['scope_complete']=False;d['mine_sweep_evidence']=e;d['unity_playmode']['latest_rule53_batches']=runs
counts=', '.join(f"{l} {r['summary']['passed']}/{r['summary']['total']}" for l,r in zip(labels,runs))
d['acceptance']['script_compile']='Rule53 sources compiled; four complete independent batches; final compilationFailed=false and Console errors=0.'
d['acceptance']['implemented_slice_playmode']='Rule53 '+counts+': independently completed, not full-game/Player/device acceptance.'
d['acceptance']['visual_slice']='Three actually viewed Rule53 GPU frames: original Mine sprite preview, base7/ad28 result, automatic40 with Plus1 and best7. Original scene/layout/art/animations retained; advanced I2/VFX pending.'
d['acceptance']['mine_sweep']='Native best-record gate, tickets/mission3, original callback/buttons, local base+3x or automatic4x, Plus1 truncation, no power gate; disabled/expired/stale callbacks and cold reload. No real ad/store/trusted time/ranking backend.'
d['pending']=e['pending'];folder='native-mine-sweep-client-reviewed';assert not any(x['folder']==folder for x in d['native_outputs']);d['native_outputs'].append(dict(folder=folder,queries=16,completed=16,businessMethods=10,exceptionHelpers=6,warning='Bounded byte-checked C/ASM, not original C# or recovery percentage'))
addresses=set()
for x in d['native_outputs']:addresses.update(int(row['preferred_va'],16) for row in csv.DictReader((R/x['folder']/'status.tsv').open(),delimiter='\t') if row['completed']=='true')
d['native_unique_completed_queries']=len(addresses);d['native_unique_completed_query_boundary']=f'{len(addresses)} unique completed addresses across declared outputs; not feature recovery percentage.'
d['current_client_scene_sha256']=hashlib.sha256((W/'reconstruction/CatGunnerUnityClient/Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest();p.write_text(json.dumps(d,ensure_ascii=False,indent=2));print(dict(rule=53,runs=len(runs),nativeUniqueAddresses=len(addresses),scopeComplete=False))
