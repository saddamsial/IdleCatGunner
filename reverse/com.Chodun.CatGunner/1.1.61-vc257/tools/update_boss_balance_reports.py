# -*- coding: utf-8 -*-
"""Publish Rule50 completed slices with explicit native/runtime/preservation limits."""
from pathlib import Path
import json,csv,datetime,hashlib
R=Path(__file__).resolve().parents[1];W=R.parents[2];Q=R/'reports'
e=json.loads((Q/'boss-balance-evidence.json').read_text());assert e['preservation']['userMainAndBackupUnchanged'] and not e['scopeComplete']
labels=['专项','Boss扫荡','PlusPack','试玩问题','启动'];runs=e['independentTests']
checks='、'.join(f"{label}{r['summary']['passed']}/{r['summary']['total']}（{r['duration']}秒）" for label,r in zip(labels,runs))
summary='本轮修正Boss实战装备平衡：原生模式3不使用森林攻击力/攻速升级，与Boss扫荡预览一致；重生、皮肤、鱼类、遗物、增益与槽位升星继续生效。紧凑队友、挑战内刷新/换武器、退出森林恢复升级和独立冷重载已验证。独立Gun20在森林升级100/500的条件下仍按500伤害、0.05秒间隔，以真实自动子弹击败原50000生命Boss，自然结算150且重复回调不多发。'+checks+'分别完整通过；不是一次全套测试。试玩主档、备份、工作场景与原资源保留，可直接Play。其它模式自动奖励/扫荡、可信时间、部分骨骼/特效及剩余UI/服务和真机仍待恢复。广告/现金继续明确本地模拟、不扣款。'
p=W/'README.md';s=p.read_text().replace('本轮接回Boss扫荡与免广告自动结算：','上一轮接回Boss扫荡与免广告自动结算：',1)
at=s.index('上一轮接回Boss扫荡与免广告自动结算：')
s=s[:at]+summary+' 详见 [规则50](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/50_BOSS_ACTUAL_COMBAT_BALANCE.md)。\n\n'+s[at:];p.write_text(s)
p=Q/'RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前阶段：Boss扫荡与免广告自动结算','## 历史阶段：Boss扫荡与免广告自动结算',1);at=s.index('## 历史阶段：Boss扫荡与免广告自动结算')
detail='## 当前阶段：Boss实战装备平衡（规则50，2026-10-11）\n\n'+summary+'\n\n'
detail+='15项原生查询（业务9、异常辅助6）全部完成，匹配入口字节、ELF/unwind方法边界及metadata字段。UI_manager.currentType实例偏移0x20；Boss入场设置3，Cat.Balance_Reload的unsigned(mode-3)<3跳过森林Power/Speed；CalculateAtkCoolMax(1,0,0)与预览一致，最小0.05重新核对。不是Game_manager静态字段。\n\n'
detail+='修复前独立单项0/1（9.54秒）失败证据保留；修复后完整专项7/7验证慢速原武器、队友压缩槽位/星级、其它倍率、保存重载与自然子弹通关。实际Gun20剩余约53秒胜利，零摇杆、不提前调用胜利或注入伤害，仅自然结算后触发重复守卫验证；不代表初始Gun0可通关。两张GPU实际读取，原胜利页150基础/450广告选项显示正确。\n\n'
detail+=f"{len(e['preservation']['records'])}项基线、{e['preservation']['existingScriptMetasUnchanged']}份既有脚本meta、{e['preservation']['historicalGpuFramesPreserved']}张历史GPU与冻结原Main/native/metadata不变；回归覆盖帧另存后恢复。工作场景SHA不变，只改OriginalEquipmentCatalogue/RecoveryForestClient两份源文件，新Boss标记NonSerialized，不改存档/场景/资源/布局。\n\n"
detail+='最终正常干净EditMode、35834对象、缺脚本0、Persist=true，无隔离host/存档/输入覆盖或鼠标夹具，模拟广告/购买默认true，当前Console错误0、编译失败false。原先规则49列出的Boss实战平衡差异由本轮关闭；其余待办保留。没有APK构建、真机验收或Git提交/推送，scope_complete=false。证据见boss-balance-evidence.json与规则50。\n\n'
p.write_text(s[:at]+detail+s[at:])
p=Q/'VERIFICATION.json';d=json.loads(p.read_text());d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();d['scope_complete']=False;d['boss_balance_evidence']=e;d['unity_playmode']['latest_rule50_batches']=runs
d['current_client_scene_sha256']=hashlib.sha256((W/'reconstruction/CatGunnerUnityClient/Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest()
d['acceptance']['script_compile']='Final sources compiled; Rule50 five batches individually completed; compilationFailed=false, Console errors=0.'
d['acceptance']['implemented_slice_playmode']='Rule50 BossBalance7/7, BossSweep11/11, PlusPack12/12, PlaytestIssues15/15, startup4/4; separate complete runs, no whole-suite/Player/device result.'
d['acceptance']['visual_slice']='Two actually viewed Rule50 GPU frames: original Boss entry, natural projectile victory with150 base/450 ad option. Original art/layout retained; complete I2/SpriteSkin/advanced VFX still pending.'
d['acceptance']['boss_actual_balance']='Byte-verified native UI mode3 excludes forest power/speed but retains other modifiers; compact teammate slot stars, weapon/upgrade reload, return-to-forest, isolated cold reload and natural Gun20 projectile victory. No injected damage/early win, no user-save mutation.'
d['pending']=e['pending'];folder='native-boss-balance-client-reviewed'
if not any(x['folder']==folder for x in d['native_outputs']):d['native_outputs'].append({'folder':folder,'queries':15,'completed':15,'businessMethods':9,'exceptionHelpers':6,'warning':'Matching byte-checked bounded C/ASM; not original C# or feature recovery percentage'})
addresses=set()
for x in d['native_outputs']:
 records=list(csv.DictReader((R/x['folder']/'status.tsv').open(),delimiter='\t'));addresses.update(int(row['preferred_va'],16) for row in records if row['completed']=='true')
d['native_unique_completed_queries']=len(addresses);d['native_unique_completed_query_boundary']=f'Union of true completed rows in declared native_outputs: {len(addresses)} unique addresses; not feature recovery percentage.'
p.write_text(json.dumps(d,ensure_ascii=False,indent=2));print({'rule':50,'runs':len(runs),'nativeUniqueAddresses':len(addresses),'scopeComplete':False})
