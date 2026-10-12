"""Finalize Rule66 only after complete test batches and clean Editor handoff."""
from pathlib import Path
from datetime import datetime, timezone
import csv, hashlib, json
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
def load(name):return json.loads((Q/name).read_text())
def sha(f):return hashlib.sha256(f.read_bytes()).hexdigest()
tests=[]
for name,count in [('season-preview-final-validation.json',6),('season-preview-text-regression.json',4),('season-preview-mission-regression.json',6),('season-preview-startup-regression.json',4)]:
    x=load(name)['data']['result']
    assert x['status']=='completed' and x['summary']==dict(total=count,passed=count,failed=0,skipped=0,inconclusive=0),x
    tests.append(dict(report=name,summary=x['summary'],duration=x['duration']))
h=load('season-preview-handoff.json')
assert not any(h[k] for k in ['dirty','playing','paused','compiling','compilationFailed','missingScripts','inputOverrides'])
assert h['persist'] and h['saveFolderOverride'] is None and not h['testHostFolder'] and h['userFillPPU']==10 and h['fillHeight']==37
c=load('season-preview-console.json')['data']['result']['groundTruth']
assert c['consoleErrors']==0 and not c['compilationFailed']
protection=load('season-preview-preservation.json');assert not protection['existingMetasChanged']
for row in protection['files']:
    assert sha(Path(row['path']))==row['after'] and (row['unchanged'] or row['expectedCodeChange'])
historical=json.loads((R/'checkpoints/season-preview-before/historical/manifest.json').read_text())
for row in historical:assert sha(Path(row['path']))==row['sha256']
source=load('season-preview-source-contract.json')
assert source['previewButtonsEnabled'] is False
assert len(source['rows'])==2 and len(source['methods'])==11 and len(source['status'])==11 and source['callbackSlotIndex']==5
v=load('VERIFICATION.json');assert all(x['folder']!='native-season-preview-reviewed' for x in v['native_outputs'])
prior=set()
for item in v['native_outputs']:
    for row in csv.DictReader((R/item['folder']/'status.tsv').open(),delimiter='\t'):
        if row['completed']=='true' and not row['error']:prior.add(row['preferred_va'])
assert len(prior)==v['native_unique_completed_queries']==946
current={x['preferred_va'] for x in source['status']}
nativeCount=dict(before=len(prior),after=len(prior|current),new=len(current-prior))
visuals=[]
for name in ['core','first-season','last-three','vip-hidden']:
    f=Q/'visual'/('season-preview-'+name+'-gpu.png')
    visuals.append(dict(path=str(f.relative_to(Q)),sha256=sha(f),actuallyViewed=True))
sources=[P/'Assets/Recovery/Scripts'/n for n in ['NewSeason_UI.cs','OriginalSeasonPreview.cs','Mission_Reward_Item.cs','RecoveryClientPresentation.cs']]
sources += [P/'Assets/Recovery/Resources/OriginalSeasonPreview.json',P/'Assets/Recovery/Tests/PlayMode/OriginalSeasonPreviewTests.cs']
e=dict(rule=66,target=source['target'],updatedUtc=datetime.now(timezone.utc).isoformat(),sourceContract='season-preview-source-contract.json',
       roots=2,previewItems=6,nativeQueries=11,nativeCount=nativeCount,tests=tests,
       attempts=['season-preview-baseline-validation.json','season-preview-corrected-baseline-validation.json','season-preview-first-validation.json','season-preview-second-validation.json','season-preview-third-validation.json'],
       attemptExplanation='Baseline scroll fixture corrected, then 0/1 proved missing preview controller. First5/6 had incorrect callback-slot fixture expectation; original array proved index5. Second4/6 exposed pointer press during source popup entry animation. Third5/6 fixed animation timing but revealed disabled source child Buttons bubble to the parent purchase Panel. Final batch verifies that original route and local VIP500 bonus, with no preview reward flags granted; no production callback changes and no combined partial passes.',
       visuals=visuals,preservation='season-preview-preservation.json',fontCache='season-preview-font-cache.json',historicalReports='../checkpoints/season-preview-before/historical/manifest.json',handoff=h,
       console=dict(currentErrors=c['consoleErrors'],currentWarnings=c['consoleWarnings'],history='season-preview-error-history.json',notes='Console not cleared; historical failed tests/tool commands kept separate.'),
       sources={str(f.relative_to(P)):sha(f) for f in sources},
       adapters=['Runtime-only reattachment to source objects with original fields/GUID; local ready guard; no scene/prefab/layout edits',
                 'Original is_Vip controls offer visibility; explicit local purchase ownership still gates awards',
                 'Selected Value_Reload(status,false,false) epic preview branch only; other existing claim/ad branches unchanged',
                 'All six source preview Buttons remain disabled; stored callbacks point to original sixth main reward slot. Actual child pointer events bubble to parent Purchase+close; local VIP pack500 diamonds verified, preview reward flags and guns unchanged',
                 'Actual EventSystem mouse fixture in isolated save, not phone touch or Player acceptance'],
       scopeComplete=False,playerBuild=False,deviceAcceptance=False,gitDelivery=False)
(Q/'season-preview-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2)+'\n')
summary='接回普通/强制新赛季弹窗的原控制器及6个奖励预览，按当前奖励等级显示最近三格的钻石、武器或强化核心；刷新原武器图/等级/中文类型与奖励状态，VIP持有时隐藏购买提示。保留原入场动画、按钮持久回调、取消与确认重置。专项6/6、任务文字4/4、任务呈现6/6、启动4/4分别完整通过；4张GPU实际核验。用户主档/备份、场景、536既有meta与字体缓存保持，Fill倍率10/高度37保留。Unity已回正常干净EditMode，缺脚本0、当前错误0。'
boundary='这轮完成选定新赛季预览链，实际广告/支付继续使用已授权本地模拟；剩余UI、教程、特效、完整I2/日期冷却、线上服务及Player/真机仍未完成。11查询完成，登记地址'+str(nativeCount['before'])+'→'+str(nativeCount['after'])+'，不是恢复比例。未构建APK或提交Git。证据：`reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/season-preview-evidence.json`。'
f=P.parents[1]/'README.md';s=f.read_text();assert '## 最新恢复：新赛季奖励预览' not in s
s=s.replace('## 最新恢复：每日任务原文（规则65）','## 历史恢复：每日任务原文（规则65）',1)
f.write_text(s.replace('# IdleCatGunner\n','# IdleCatGunner\n\n## 最新恢复：新赛季奖励预览（规则66）\n\n'+summary+'\n\n'+boundary+'\n',1))
f=Q/'RECOVERY_PROGRESS.md';s=f.read_text().replace('## 当前阶段：每日任务原文（规则65，2026-10-12）','## 历史阶段：每日任务原文（规则65，2026-10-12）',1)
at=s.index('## 历史阶段：每日任务原文');f.write_text(s[:at]+'## 当前阶段：新赛季奖励预览（规则66，2026-10-12）\n\n'+summary+'\n\n'+boundary+'\n\n'+s[at:])
f=R/'original-game-rules/00_INDEX.md';s=f.read_text();f.write_text(s.replace('# 原规则索引：Cat Gunner 1.1.61\n','# 原规则索引：Cat Gunner 1.1.61\n\n- [66 新赛季奖励预览](66_SEASON_PREVIEW.md)：两种入口的等级窗口、三种原奖励展示、VIP提示和原按钮回调。\n',1))
v['native_outputs'].append(dict(folder='native-season-preview-reviewed',queries=11,completed=11,selectedBusinessMethods=5,exceptionHelpers=6,warning='Selected season preview controller and item presentation; existing reward formulas reused. Not full I2 or season date lifecycle.'))
v['native_unique_completed_queries']=nativeCount['after'];v['updated_utc']=datetime.now(timezone.utc).isoformat();v['scope_complete']=False;v['season_preview_evidence']=e
v['pending']='Remaining UI/tutorial/FX and full I2 language/settings/secondary-font/RTL/parameter lifecycle, season date/cooldown locale presentation, fish source-name semantics; full InfVal API/locale/negative branches, pointer/tween chains, compiled particle shader parity and phone Player comparison; trusted server time/live configuration/SDK/account/cloud. Local ads/payments remain user-authorized simulations.'
(Q/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
print(dict(rule=66,tests=tests,nativeCount=nativeCount,scopeComplete=False))
