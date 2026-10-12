"""Finalize selected core-mode text after complete batches and clean handoff."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
def load(name):return json.loads((Q/name).read_text())
def sha(f):return hashlib.sha256(f.read_bytes()).hexdigest()
tests=[]
for name,count in [('mode-text-final-validation.json',4),('mode-text-reward-regression.json',10),('mode-text-boss-regression.json',11),('mode-text-startup-regression.json',4)]:
    x=load(name)['data']['result'];assert x['status']=='completed' and x['summary']==dict(total=count,passed=count,failed=0,skipped=0,inconclusive=0),x
    tests.append(dict(report=name,summary=x['summary'],duration=x['duration']))
h=load('mode-text-handoff.json');assert not any(h[k] for k in ['dirty','playing','paused','compiling','compilationFailed','missingScripts','inputOverrides'])
assert h['persist'] and h['saveFolderOverride'] is None and not h['testHostFolder'] and h['userFillPPU']==10 and h['fillHeight']==37
c=load('mode-text-console.json')['data']['result']['groundTruth'];assert c['consoleErrors']==0 and not c['compilationFailed']
protection=load('mode-text-preservation.json');assert not protection['existingMetasChanged']
for x in protection['files']:assert sha(Path(x['path']))==x['after'] and (x['unchanged'] or x['expectedCodeChange'])
for x in json.loads((R/'checkpoints/mode-text-before/historical/manifest.json').read_text()):assert sha(Path(x['path']))==x['sha256']
s=load('mode-text-source-contract.json');assert s['staticBindings']==71 and s['staticTerms']==21 and s['nativeQueryIncrease']==0
for f,digest in s['sourceHashes'].items():assert sha(R/f)==digest
v=load('VERIFICATION.json');assert v['native_unique_completed_queries']==951 and 'mode_text_evidence' not in v
visuals=[]
for name in ['speedrun-entrance','mine-entrance','boss-entrance','monster-entrance','speedrun-sweep','mine-sweep','boss-sweep','monster-sweep','speedrun-win']:
    f=Q/'visual'/('mode-text-'+name+'-gpu.png');visuals.append(dict(path=str(f.relative_to(Q)),sha256=sha(f),actuallyViewed=True))
sources=[P/'Assets/Recovery/Scripts'/n for n in ['OriginalModeText.cs','RecoveryClientPresentation.cs']]+[P/'Assets/Recovery/Resources/OriginalModeText.json',P/'Assets/Recovery/Tests/PlayMode/OriginalModeTextTests.cs',P/'Assets/Recovery/Tests/PlayMode/OriginalBossSweepTests.cs']
attempts=sorted(f.name for f in Q.glob('mode-text-*-validation.json') if f.name!='mode-text-final-validation.json')+['mode-text-boss-first-regression.json']
e=dict(rule=67,target=s['target'],updatedUtc=datetime.now(timezone.utc).isoformat(),sourceContract='mode-text-source-contract.json',
       staticBindings=71,staticTerms=21,locales=14,uniqueTermLocaleValues=294,tests=tests,attempts=attempts,
       baseline='0/1: Chinese startup retained source Korean immediate-completion label. Runtime binding added. First full4/4 checked text/logic, but screenshot timing showed initial result animation; final full batch increases capture delay and checks visible text dimensions. Second3/4 passed result pixel sizes but one first menu click missed input-module activation. Third3/4 passed menu entries but exposed a release-frame scheduling miss on the ad Button. Final fixture reads the real PointerInputModule press state before releasing and observes exactly one actual onClick; does not dispatch events directly. Prior batches and first captures archived separately, never combined into one pass.',
       visuals=visuals,preservation='mode-text-preservation.json',fontCache='mode-text-font-cache.json',historicalReports='../checkpoints/mode-text-before/historical/manifest.json',handoff=h,
       console=dict(currentErrors=c['consoleErrors'],currentWarnings=c['consoleWarnings'],history='mode-text-error-history.json',notes='Console not cleared; buffered historical failures separate from current groundTruth.'),
       sources={str(f.relative_to(P)):sha(f) for f in sources},bossRegressionNotes='First old Boss fixture batch7/8 missed Sweep mouse input; then test-only press/receive timing was corrected and both sweep classes rerun together. The legacy projectile observation is refreshed by this regression; original observation remains embedded in unchanged boss-sweep-evidence.json.',bossProjectileObservation=load('mode-text-regression-boss-sweep-projectile-observation.json'),adapters=s['adapters']+[
           'Four source menu entries and challenge Enter/Claim exercised through EventSystem mouse fixture; original Gun20 natural projectile victory awards30 then one local ad completes120 and reload preserves progress',
           'All result variants directly displayed in isolated fixture for text/glyph/geometry only; these captures are not natural completion or backend acceptance',
           'Dynamic counters, rewards, Stage strings, no-primary-term labels, commercial banners and online ranking not changed'],
       nativeQueryIncrease=0,nativeUniqueCompletedQueries=951,scopeComplete=False,playerBuild=False,deviceAcceptance=False,gitDelivery=False)
(Q/'mode-text-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2)+'\n')
summary='接回挑战、矿山、Boss、狩猎核心入口/结算和狩猎提示71处静态原文（21词条×14语言），保留原矩形、图片、动画和持久按钮事件；动态战力/次数/奖励仍由原有控制器负责。专项4/4、资源结算10/10、Boss扫荡11/11、启动4/4分别完整通过；四种实际菜单入口、挑战实际自动射击通关/30钻石/本地广告至120钻石/冷重载及9张GPU核验。用户主档/备份、场景、540既有meta保持，测试字体缓存恢复；Fill倍率10/高度37保留。正常干净EditMode、缺脚本0、当前错误0。'
boundary='本轮完成所选静态语言接线；系统语言/中文字形/显式换行处理为本地适配，不是完整I2。所有结算变体的专项截图为隔离直接展示，完整玩法另由各回归记录限定。原狩猎富文本图标保持原值并已确认可见；动态标签、剩余UI/教程/特效、线上服务及Player/真机仍待恢复。原生查询维持951，不是恢复比例；无APK或Git交付。证据：`reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mode-text-evidence.json`。'
f=P.parents[1]/'README.md';text=f.read_text();assert '## 最新恢复：模式界面原文' not in text
text=text.replace('## 最新恢复：新赛季奖励预览（规则66）','## 历史恢复：新赛季奖励预览（规则66）',1)
f.write_text(text.replace('# IdleCatGunner\n','# IdleCatGunner\n\n## 最新恢复：模式界面原文（规则67）\n\n'+summary+'\n\n'+boundary+'\n',1))
f=Q/'RECOVERY_PROGRESS.md';text=f.read_text().replace('## 当前阶段：新赛季奖励预览（规则66，2026-10-12）','## 历史阶段：新赛季奖励预览（规则66，2026-10-12）',1)
at=text.index('## 历史阶段：新赛季奖励预览');f.write_text(text[:at]+'## 当前阶段：模式界面原文（规则67，2026-10-12）\n\n'+summary+'\n\n'+boundary+'\n\n'+text[at:])
f=R/'original-game-rules/00_INDEX.md';text=f.read_text();f.write_text(text.replace('# 原规则索引：Cat Gunner 1.1.61\n','# 原规则索引：Cat Gunner 1.1.61\n\n- [67 模式界面原文](67_MODE_TEXT.md)：四种模式71处核心静态标签，源路径/重复兄弟/原中文字体，实际入口与挑战通关领奖。\n',1))
v['updated_utc']=datetime.now(timezone.utc).isoformat();v['scope_complete']=False;v['mode_text_evidence']=e
v['pending']='Remaining UI/tutorial/FX; no-primary-term mode/dynamic labels, other mode banners/rankings; full I2 language/settings/secondary-font/RTL/parameter lifecycle, season date/cooldown and fish source-name semantics; full InfVal API/locale/negative branches, pointer/tween chains, compiled particle shader parity and phone Player comparison; trusted server time/live configuration/SDK/account/cloud. Local ads/payments remain user-authorized simulations.'
(Q/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n');print(dict(rule=67,tests=tests,nativeQueryIncrease=0,scopeComplete=False))
