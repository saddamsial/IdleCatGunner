# -*- coding: utf-8 -*-
"""Publish Rule51 per-mode results without implying whole-game/device/service completion."""
from pathlib import Path
import json,csv,datetime,hashlib
R=Path(__file__).resolve().parents[1];W=R.parents[2];Q=R/'reports'
e=json.loads((Q/'challenge-auto-evidence.json').read_text());assert e['preservation']['userMainAndBackupUnchanged'] and not e['scopeComplete']
labels=['专项','原速通','原矿山','原怪物','PlusPack','启动'];runs=e['independentTests'];checks='、'.join(f"{label}{r['summary']['passed']}/{r['summary']['total']}（{r['duration']}秒）" for label,r in zip(labels,runs))
summary='本轮接回速通、矿山和怪物挑战的全去广告自动奖励：速通立即120钻，矿山基础/奖励包取整后四倍，怪物每小关立即两倍宠物币且HUD累计保留基础值，结果页不再补发。三种原NoAds返回按钮可直接点击回森林。仅去除强制广告仍走普通奖励和模拟广告流程；停用/取消/关闭/重复回调、失败/零奖励、票券/最佳记录及独立冷重载经过验证。'+checks+'分别完整通过；不是一次全套测试。试玩主档、备份、工作场景、原脚本meta与素材保留，可直接Play；现金/广告继续本地模拟，不扣真实款。其它模式扫荡、可信时间、部分骨骼/特效及剩余UI/服务和真机仍待恢复。'
p=W/'README.md';s=p.read_text().replace('本轮修正Boss实战装备平衡：','上一轮修正Boss实战装备平衡：',1);at=s.index('上一轮修正Boss实战装备平衡：');p.write_text(s[:at]+summary+' 详见 [规则51](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/51_CHALLENGE_AUTOMATIC_REWARDS.md)。\n\n'+s[at:])
p=Q/'RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前阶段：Boss实战装备平衡','## 历史阶段：Boss实战装备平衡',1);at=s.index('## 历史阶段：Boss实战装备平衡')
detail='## 当前阶段：其它挑战免广告自动奖励（规则51，2026-10-11）\n\n'+summary+'\n\n'
detail+='15项原生查询（业务9、异常辅助6）全部完成，ELF字节/unwind/metadata静态字段重新核对。速通/矿山四倍与怪物每关两倍是各自Game_Win/Reward_Panel_Reload/LevelClear原分支；怪物累计栏只累基础，结果页只更新显示。全去广告静态字段偏移9，强制-only不参与；未伪造FreeCash促销或线上服务。三种NoAds原持久回调Game_Exit保留。\n\n'
detail+='修复前0/1（11.51秒）保留，应发28却发7。首轮8/10（233.19秒）两项怪物测试等待30秒短于90只/.35秒生成与真实清除流程，验收改为原回归70秒上限，原配额/时序不变，完整专项重跑。三条自然观察分别为原Gun20速通胜利、矿山60秒采矿和怪物首关真实90击杀，零摇杆，不提前注入积分/伤害/击杀或调用结算；指定73/9积分与直接结算的公式夹具单独标记。三张GPU已实际读取，三种原按钮均通过顶层射线与指针点击。\n\n'
detail+=f"{len(e['preservation']['records'])}项基线、{e['preservation']['existingScriptMetasUnchanged']}份既有脚本meta、{e['preservation']['historicalGpuFramesPreserved']}张历史GPU与冻结Main/native/metadata不变；新回归覆盖帧另存后恢复旧SHA。只有SpeedRun_manager/Mine_manager/Monster_manager三份源文件改动；场景、布局、资源、脚本GUID和存档结构未改。复用已验SHA的不可变旧场景gzip及部分GPU备份硬链接，未链接当前可变文件。\n\n"
detail+='最终正常干净EditMode、35834对象、缺脚本0、Persist=true，无隔离host/存档覆盖/输入夹具，模拟广告/购买默认true，当前Console错误0、编译失败false。没有APK构建、真机验收或Git提交/推送，scope_complete=false，证据见challenge-auto-evidence.json与规则51。\n\n'
p.write_text(s[:at]+detail+s[at:])
p=Q/'VERIFICATION.json';d=json.loads(p.read_text());d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();d['scope_complete']=False;d['challenge_auto_evidence']=e;d['unity_playmode']['latest_rule51_batches']=runs;d['current_client_scene_sha256']=hashlib.sha256((W/'reconstruction/CatGunnerUnityClient/Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest()
d['acceptance']['script_compile']='Final sources compiled; Rule51 six batches individually completed; compilationFailed=false, Console errors=0.'
d['acceptance']['implemented_slice_playmode']='Rule51 AutoChallengeRewards10/10, OriginalSpeedRun3/3, OriginalMine5/5, OriginalMonster5/5, PlusPack12/12, startup4/4; separate complete runs, no whole-suite/Player/device result.'
d['acceptance']['visual_slice']='Three actually viewed Rule51 GPU result frames for SpeedRun/Mine/Monster with original NoAds return; original art/layout/animation retained. I2/SpriteSkin/advanced VFX pending.'
d['acceptance']['challenge_automatic_rewards']='Native SpeedRun/Mine4x, Monster2x-per-clear with base accumulation, full-versus-forced removal, original NoAds buttons, natural projectiles/timer/clear, cancel/duplicate/disabled/late callback gates and independent reload. No real ad/store/trusted-time/FreeCash backend.'
d['pending']=e['pending'];folder='native-challenge-auto-client-reviewed'
if not any(x['folder']==folder for x in d['native_outputs']):d['native_outputs'].append({'folder':folder,'queries':15,'completed':15,'businessMethods':9,'exceptionHelpers':6,'warning':'Matching byte-checked bounded C/ASM; not original C# or feature recovery percentage'})
addresses=set()
for x in d['native_outputs']:
 records=list(csv.DictReader((R/x['folder']/'status.tsv').open(),delimiter='\t'));addresses.update(int(row['preferred_va'],16) for row in records if row['completed']=='true')
d['native_unique_completed_queries']=len(addresses);d['native_unique_completed_query_boundary']=f'Union of true completed declared rows: {len(addresses)} unique addresses; not feature recovery percentage.'
p.write_text(json.dumps(d,ensure_ascii=False,indent=2));print({'rule':51,'runs':len(runs),'nativeUniqueAddresses':len(addresses),'scopeComplete':False})
