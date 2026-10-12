from pathlib import Path
import json,csv,datetime,hashlib
R=Path(__file__).resolve().parents[1];W=R.parents[2];Q=R/'reports';e=json.loads((Q/'speedrun-sweep-evidence.json').read_text());assert e['preservation']['userMainAndBackupUnchanged'] and not e['scopeComplete']
labels=['扫荡专项','原速通','自动奖励','启动'];runs=e['independentTests'];checks='、'.join(f"{label}{r['summary']['passed']}/{r['summary']['total']}（{r['duration']}秒）" for label,r in zip(labels,runs))
summary='本轮接回速通扫荡：原PlusPack2入口、战力不足百分比/填充、武器群攻与暴击战力、普通30钻+模拟广告90钻、全去广告120钻、原返回按钮、到期/停用/取消/重复/迟到回调和独立冷重载均接通。原193%平均生命与24有效秒、森林升级参与、奖励包不放大固定30钻均核对。'+checks+'分别完整通过，未合并为一次全套测试；三张GPU实际读取。试玩主档/备份、工作场景、既有脚本meta和原素材保留，可直接Play。广告/现金继续本地模拟、不扣款；矿山/怪物扫荡、可信时间、剩余UI/特效与服务和真机待办。'
p=W/'README.md';s=p.read_text();old='本轮接回速通、矿山和怪物挑战的全去广告自动奖励：';assert old in s;s=s.replace(old,'上一轮接回速通、矿山和怪物挑战的全去广告自动奖励：',1);at=s.index('上一轮接回速通、矿山和怪物挑战的全去广告自动奖励：');s=s[:at]+summary+' 详见 [规则52](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/52_SPEEDRUN_SWEEP_CLIENT.md)。\n\n'+s[at:];p.write_text(s)
p=Q/'RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前阶段：其它挑战免广告自动奖励','## 历史阶段：其它挑战免广告自动奖励',1);at=s.index('## 历史阶段：其它挑战免广告自动奖励');detail='## 当前阶段：速通扫荡客户端（规则52，2026-10-11）\n\n'+summary+'\n\n'
detail+='17项原生查询完成（11业务、6异常辅助），字节、方法界、Cat字段80/112/160和float0.001重新核验。原manager只门槛，本地补页面/Plus/revision/Busy保护。森林升级参与、武器系数1/7/5/max(1,pellets)/5/5/10、fixed24秒与fixed30钻不套Boss公式。代码保留原两种领奖和扫荡原Bonus_AD_Show回调，未更改场景/文字/布局/动画资源。\n\n'
detail+='恢复前0/1（10.29秒）保留。首轮7/9（59.54秒）保留：动态暴击.025输入在Mono扩展中间精度导致2060而非ARM64 float32的2040，明确乘法float32舍入后取整；缓存夹具误用Boss1000，速通实际5000，改按实际长度。9项完整重跑通过，未拼接局部通过。UI射线与模拟指针、三种GPU结果、独立档案保存/冷重载与禁用真实商店事务均验证。原静态韩文说明/完整I2翻译仍待恢复，显示文字不是公式证明。\n\n'
detail+=f"{len(e['preservation']['records'])}项校验、{e['preservation']['existingScriptMetasUnchanged']}既有脚本meta、{e['preservation']['historicalGpuFramesPreserved']}历史GPU与冻结Main/native/metadata保留。本轮2个既有源文件修改，新增1个纯公式源文件与1个测试文件；新增meta不替换已有GUID。最终干净EditMode、35834对象、缺脚本0、Persist=true、无存档/host/输入覆盖、timescale1，模拟默认true，Console错误0/编译失败false。没有APK/真机/Git提交推送，scopeComplete=false。详见speedrun-sweep-evidence.json。\n\n"
p.write_text(s[:at]+detail+s[at:])
p=Q/'VERIFICATION.json';d=json.loads(p.read_text());d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();d['scope_complete']=False;d['speedrun_sweep_evidence']=e;d['unity_playmode']['latest_rule52_batches']=runs
d['acceptance']['script_compile']='Final Rule52 sources compiled; four independent batches completed; compilationFailed=false, Console errors=0.'
d['acceptance']['implemented_slice_playmode']='Rule52 OriginalSpeedRunSweep9/9, OriginalSpeedRun3/3, AutoChallengeRewards10/10, OriginalStartup4/4: independent complete runs, not a full-game/Player/device result.'
d['acceptance']['visual_slice']='Three actually viewed Rule52 GPU frames: original insufficient power41%, ordinary30/ad120, automatic120/Ok. Original hierarchy/art/animations retained; I2/static descriptions/advanced VFX pending.'
d['acceptance']['speedrun_sweep']='Native formula, original PlusPack2 gate/percent/fill/button, original30+90 or auto120, expired/disabled/canceled/closed/duplicate callbacks and independent save reload. No real ad/store/ranking/time backend.'
d['pending']=e['pending'];folder='native-speedrun-sweep-client-reviewed';assert not any(x['folder']==folder for x in d['native_outputs']);d['native_outputs'].append(dict(folder=folder,queries=17,completed=17,businessMethods=11,exceptionHelpers=6,warning='Matching byte-checked bounded C/ASM; not original C# or game recovery percentage'))
addresses=set()
for x in d['native_outputs']:
 addresses.update(int(row['preferred_va'],16) for row in csv.DictReader((R/x['folder']/'status.tsv').open(),delimiter='\t') if row['completed']=='true')
d['native_unique_completed_queries']=len(addresses);d['native_unique_completed_query_boundary']=f'Union of true completed declared rows: {len(addresses)} unique addresses; not feature recovery percentage.'
d['current_client_scene_sha256']=hashlib.sha256((W/'reconstruction/CatGunnerUnityClient/Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest();p.write_text(json.dumps(d,ensure_ascii=False,indent=2));print(dict(rule=52,runs=len(runs),nativeUniqueAddresses=len(addresses),scopeComplete=False))
