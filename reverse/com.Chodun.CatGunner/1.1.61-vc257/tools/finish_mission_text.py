"""Write Rule65 evidence only after full final batches and normal Editor handoff."""
from pathlib import Path
from datetime import datetime,timezone
import csv,hashlib,json
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
def load(name):return json.loads((Q/name).read_text())
def sha(f):return hashlib.sha256(f.read_bytes()).hexdigest()
tests=[]
for name,count in [('mission-text-final-validation.json',4),('mission-text-mission-regression.json',6),('mission-text-startup-regression.json',4)]:
 x=load(name)['data']['result'];assert x['status']=='completed' and x['summary']==dict(total=count,passed=count,failed=0,skipped=0,inconclusive=0),x
 tests.append(dict(report=name,summary=x['summary'],duration=x['duration']))
h=load('mission-text-handoff.json');assert not any(h[k] for k in ['dirty','playing','paused','compiling','compilationFailed','missingScripts','inputOverrides'])
assert h['persist'] and h['saveFolderOverride'] is None and not h['testHostFolder'] and h['userFillPPU']==10 and h['fillHeight']==37
c=load('mission-text-console.json')['data']['result']['groundTruth'];assert c['consoleErrors']==0 and not c['compilationFailed']
protection=load('mission-text-preservation.json');assert not protection['existingMetasChanged']
for row in protection['files']:assert sha(Path(row['path']))==row['after'] and (row['unchanged'] or row['expectedCodeChange'])
source=load('mission-text-source-contract.json');assert source['staticBindings']==96 and source['staticTerms']==13 and len(source['methods'])==9
v=load('VERIFICATION.json');assert all(x['folder']!='native-mission-text-reviewed' for x in v['native_outputs'])
prior=set()
for item in v['native_outputs']:
 for row in csv.DictReader((R/item['folder']/'status.tsv').open(),delimiter='\t'):
  if row['completed']=='true' and not row['error']:prior.add(row['preferred_va'])
assert len(prior)==v['native_unique_completed_queries']==943
current={x['preferred_va'] for x in source['status']};queryCount=dict(before=len(prior),after=len(prior|current),new=len(current-prior))
visuals=[]
for name in ['daily','claimed','passes','season']:
 f=Q/'visual'/('mission-text-'+name+'-gpu.png');visuals.append(dict(path=str(f.relative_to(Q)),sha256=sha(f),actuallyViewed=True))
sources=[P/'Assets/Recovery/Scripts'/n for n in ['OriginalMissionText.cs','Mission_Item_UI.cs','RecoveryClientPresentation.cs']]
sources += [P/'Assets/Recovery/Resources/OriginalMissionText.json',P/'Assets/Recovery/Tests/PlayMode/OriginalMissionTextTests.cs']
e=dict(rule=65,target='com.Chodun.CatGunner 1.1.61 vc257 ARM64',updatedUtc=datetime.now(timezone.utc).isoformat(),sourceContract='mission-text-source-contract.json',
 staticBindings=96,staticTerms=13,taskTerms=8,locales=14,uniqueTermLocaleValues=294,taskRows=23,nativeQueries=9,nativeCount=queryCount,
 tests=tests,attempts=['mission-text-baseline-validation.json','mission-text-first-validation.json','mission-text-corrected-validation.json'],
 attemptExplanation='Baseline0/1 proved source Korean numbered task title remained at Chinese startup. First2/4: one incorrect fixture expected Claim reward instead of shipped Claim; one production duplicate-sibling collision. Full final batch rerun; no combined partial passes.',
 visuals=visuals,preservation='mission-text-preservation.json',fontCache='mission-text-font-cache.json',historicalReports='../checkpoints/mission-text-before/historical/manifest.json',handoff=h,
 console=dict(currentErrors=c['consoleErrors'],currentWarnings=c['consoleWarnings'],history='mission-text-error-history.json',notes='Console not cleared; current status separate from historical tests/tools.'),
 sources={str(f.relative_to(P)):sha(f) for f in sources},
 adapters=['Selected source primary terms, system-language mapping and existing Chinese source font/material adapter; not full I2 lifecycle or pixel equality',
 'Source duplicate-name siblings resolved by original relative ordinal; no scene/prefab/layout edits',
 'Existing task claim, both progress bars and save cold reload verified; not newly restored gameplay or physical-device acceptance',
 'Pass and new-season popups were directly displayed in an isolated fixture for text/glyph/geometry checks; this slice does not claim full season gating, original purchase state parity, or all popup navigation. Three frozen gun preview type labels still show source Korean and remain pending'],
 scopeComplete=False,playerBuild=False,deviceAcceptance=False,gitDelivery=False)
(Q/'mission-text-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2)+'\n')
summary='接回23条每日任务的原名称和带目标次数的说明，经验旁保留原XP图标；接回领取/奖励/赛季确认/通行证96处静态文字，21原词条×14语言。区分两组同名兄弟文字，避免VIP未领奖励提示与标题互相覆盖。专项4/4（'+str(tests[0]['duration'])+'秒）、任务呈现6/6（'+str(tests[1]['duration'])+'秒）、启动4/4（'+str(tests[2]['duration'])+'秒）分别完整通过；实际按钮领取、两种进度条、重复守卫、关闭重开/冷重载和4张GPU已核验。玩家主/备份、工作场景、533既有meta保持；字体缓存恢复。正常干净EditMode、缺脚本0、当前错误0，Fill倍率10/高度37保留。'
boundary='这轮恢复所选原文和任务数字格式，现有任务/赛季/购买玩法保持；完整I2、日期冷却/剩余UI/教程/特效、线上服务和Player/真机仍未完成。3业务/6复用辅助查询完成，登记地址'+str(queryCount['before'])+'→'+str(queryCount['after'])+'，不是恢复比例。没有APK/Git交付。证据：`reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mission-text-evidence.json`。'
f=P.parents[1]/'README.md';s=f.read_text().replace('## 最新恢复：鱼和宠物静态原文（规则64）','## 历史恢复：鱼和宠物静态原文（规则64）',1);assert '## 最新恢复：每日任务原文' not in s
f.write_text(s.replace('# IdleCatGunner\n','# IdleCatGunner\n\n## 最新恢复：每日任务原文（规则65）\n\n'+summary+'\n\n'+boundary+'\n',1))
f=Q/'RECOVERY_PROGRESS.md';s=f.read_text().replace('## 当前阶段：鱼和宠物静态原文（规则64，2026-10-12）','## 历史阶段：鱼和宠物静态原文（规则64，2026-10-12）',1);at=s.index('## 历史阶段：鱼和宠物静态原文');f.write_text(s[:at]+'## 当前阶段：每日任务原文（规则65，2026-10-12）\n\n'+summary+'\n\n'+boundary+'\n\n'+s[at:])
f=R/'original-game-rules/00_INDEX.md';s=f.read_text();f.write_text(s.replace('# 原规则索引：Cat Gunner 1.1.61\n','# 原规则索引：Cat Gunner 1.1.61\n\n- [65 每日任务原文](65_MISSION_TEXT.md)：四类任务名称/目标格式、96处静态标签和同名兄弟定位；实际领取与两条进度/重载验证。\n',1))
v['native_outputs'].append(dict(folder='native-mission-text-reviewed',queries=9,completed=9,selectedBusinessMethods=3,exceptionHelpers=6,warning='Mission type-selected I2 keys and First_Reload only; existing formatting caller reused. Not full I2.'))
v['native_unique_completed_queries']=queryCount['after'];v['updated_utc']=datetime.now(timezone.utc).isoformat();v['scope_complete']=False;v['mission_text_evidence']=e
v['pending']='Remaining UI/tutorial/FX and full I2 language/settings/secondary-font/RTL/parameter lifecycle, season date/cooldown locale presentation, fish source-name semantics; full InfVal API/locale/negative branches, pointer/tween chains, compiled particle shader parity and phone Player comparison; trusted server time/live configuration/SDK/account/cloud. Local ads/payments remain user-authorized simulations.'
(Q/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n');print(dict(rule=65,tests=tests,nativeCount=queryCount,scopeComplete=False))
