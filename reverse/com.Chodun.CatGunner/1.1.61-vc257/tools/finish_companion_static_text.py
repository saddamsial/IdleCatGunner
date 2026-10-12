from pathlib import Path
from datetime import datetime, timezone
import hashlib, json

R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
def load(name):return json.loads((Q/name).read_text())
def sha(f):return hashlib.sha256(f.read_bytes()).hexdigest()
tests=[]
for name,count in [('companion-text-final-validation.json',5),('companion-text-fish-regression.json',18),('companion-text-startup-regression.json',4)]:
    x=load(name)['data']['result']
    assert x['status']=='completed' and x['summary']==dict(total=count,passed=count,failed=0,skipped=0,inconclusive=0),x
    tests.append(dict(report=name,summary=x['summary'],duration=x['duration']))
h=load('companion-text-handoff.json')
assert not any(h[k] for k in ['dirty','playing','paused','compiling','compilationFailed','missingScripts','inputOverrides'])
assert h['persist'] and h['saveFolderOverride'] is None and not h['testHostFolder'] and h['userFillPPU']==10 and h['fillHeight']==37
c=load('companion-text-console.json')['data']['result']['groundTruth'];assert c['consoleErrors']==0 and not c['compilationFailed']
protection=load('companion-text-preservation.json');assert not protection['existingMetasChanged']
for row in protection['files']:assert sha(Path(row['path']))==row['after'] and (row['unchanged'] or row['expectedCodeChange'])
source=load('companion-text-source-contract.json');assert len(source['bindings'])==27 and source['uniqueTerms']==20
sources=[P/f'Assets/Recovery/Scripts/{n}.cs' for n in ['RecoveryClientPresentation','OriginalCompanionStaticText']]
sources += [P/'Assets/Recovery/Tests/PlayMode/OriginalCompanionStaticTextTests.cs',P/'Assets/Recovery/Resources/OriginalCompanionStaticText.json']
visuals=[]
for name in ['fish','fish-information','fish-detail','fish-delete','new-fish','pet','pet-information','pet-detail','new-pet']:
    f=Q/'visual'/('companion-text-'+name+'-gpu.png')
    visuals.append(dict(path=str(f.relative_to(Q)),sha256=sha(f),actuallyViewed=True))
e=dict(rule=64,target='com.Chodun.CatGunner 1.1.61 vc257 ARM64',updatedUtc=datetime.now(timezone.utc).isoformat(),
    sourceContract='companion-text-source-contract.json',bindings=27,uniqueTerms=20,locales=14,uniqueTermLocaleValues=280,bindingValues=378,
    nativeQueryIncrease=0,tests=tests,attempts=['companion-text-baseline-validation.json','companion-text-first-validation.json','companion-text-corrected-validation.json'],
    attemptExplanation='Baseline0/1 proved Korean source text remained at Chinese startup. First3/5 clicked the blocked center of popup Background; corrected5/5 uses an outer blank point. Final5/5 additionally waits0.4sec for original bounce/Animator before GPU capture. No passes combined across batches.',
    visuals=visuals,preservation='companion-text-preservation.json',fontCache='companion-text-font-cache.json',historicalReports='../checkpoints/companion-text-before/historical/manifest.json',handoff=h,
    console=dict(currentErrors=c['consoleErrors'],currentWarnings=c['consoleWarnings'],history='companion-text-error-history.json',notes='No console clearing. Any transient fixture compilation/eval failures retained in history; current status checked after final import.'),
    sources={str(f.relative_to(P)):sha(f) for f in sources},
    adapters=['Selected static primary-term runtime binding with system-language and existing Chinese source font/material adapter; not full I2 lifecycle or original pixel parity',
              'Information popups and original open/close/probability behavior were already retained; this slice restores their selected texts and verifies actual input',
              'Fish/Pet details and new-item previews use isolated fixture calls; this test slice does not claim that every acquisition/navigation path is newly recovered'],
    exclusions=source['excluded'],scopeComplete=False,playerBuild=False,deviceAcceptance=False,gitDelivery=False)
(Q/'companion-text-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2)+'\n')
summary='接回鱼和宠物27处静态原文：抽取/信息、装备/合成说明、属性、删除确认/取消、信息弹窗标题和获得提示，20词条×14语言、378绑定值。现有信息开关/详情/原入场动画和概率表保留；实际鼠标打开/关闭/外围背景/重开、宠物详情翻页、删除取消、中文字形与源矩形、反复语言刷新和材质释放验证。专项'+str(tests[0]['summary']['passed'])+'/5（'+str(tests[0]['duration'])+'秒）、鱼/自动合成18/18（'+str(tests[1]['duration'])+'秒）、启动/冷重载4/4（'+str(tests[2]['duration'])+'秒）分别完整通过，9张GPU实际查看，未拼接为一次全量测试。用户主档/备份、场景、'+str(protection['existingMetaCount'])+'既有meta保持；字体测试缓存恢复，Fill倍率10/高度37保留。正常干净EditMode、缺脚本0、当前Console错误0。'
boundary='本轮为选定原primary term接线和已有UI流程验证。原隐藏宠物Collection按钮引用枪械图鉴，保持隐藏，没有构造宠物图鉴。完整I2/动态名称/剩余UI/教程/特效、线上服务和Player/真机仍待恢复；没有APK或Git交付。证据：`reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/companion-text-evidence.json`。'
f=P.parents[1]/'README.md';s=f.read_text().replace('## 最新恢复：攻击目标准星动画（规则63）','## 历史恢复：攻击目标准星动画（规则63）',1)
assert '## 最新恢复：鱼和宠物静态原文' not in s
f.write_text(s.replace('# IdleCatGunner\n','# IdleCatGunner\n\n## 最新恢复：鱼和宠物静态原文（规则64）\n\n'+summary+'\n\n'+boundary+'\n',1))
f=Q/'RECOVERY_PROGRESS.md';s=f.read_text().replace('## 当前阶段：攻击目标准星动画（规则63，2026-10-12）','## 历史阶段：攻击目标准星动画（规则63，2026-10-12）',1);at=s.index('## 历史阶段：攻击目标准星动画');f.write_text(s[:at]+'## 当前阶段：鱼和宠物静态原文（规则64，2026-10-12）\n\n'+summary+'\n\n'+boundary+'\n\n'+s[at:])
f=R/'original-game-rules/00_INDEX.md';s=f.read_text();f.write_text(s.replace('# 原规则索引：Cat Gunner 1.1.61\n','# 原规则索引：Cat Gunner 1.1.61\n\n- [64 鱼和宠物静态原文](64_COMPANION_STATIC_LOCALIZATION.md)：27处原primary绑定/20词条/14语言、信息与详情往返/删除取消/获得提示，保留隐藏遗留图鉴和原概率表。\n',1))
v=load('VERIFICATION.json');assert v['native_unique_completed_queries']==943
v['updated_utc']=datetime.now(timezone.utc).isoformat();v['scope_complete']=False;v['companion_static_text_evidence']=e
v['pending']='Full I2 language/settings/secondary-font/parameter/RTL lifecycle, dynamic fish names and remaining original UI/tutorial flows. Selected weapon static terms restored by Rule62, normal-client Target/Triangle rotation by Rule63, selected fish/pet static terms by Rule64. Full InfVal API/locale/flags/negative branches, remaining pointer/tween chains, compiled particle shader parity and phone Player comparison; trusted server time/live configuration/SDK/account/cloud. Local ads/payments remain user-authorized simulations.'
(Q/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
print(dict(rule=64,tests=tests,nativeCount=943,scopeComplete=False))
