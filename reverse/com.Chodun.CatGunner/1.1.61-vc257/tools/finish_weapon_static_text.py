from pathlib import Path
from datetime import datetime, timezone
import hashlib, json

R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
def load(name):return json.loads((Q/name).read_text())
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
tests=[]
for name,total in [('weapon-static-text-first-validation.json',2),('weapon-static-text-weapon-regression.json',4)]:
    x=load(name)['data']['result'];assert x['status']=='completed' and x['summary']==dict(total=total,passed=total,failed=0,skipped=0,inconclusive=0),x
    tests.append(dict(report=name,summary=x['summary'],duration=x['duration']))
h=load('weapon-static-text-handoff.json');assert not any(h[k] for k in ['dirty','playing','paused','compiling','compilationFailed','missingScripts','inputOverrides'])
assert h['persist'] and h['saveFolderOverride'] is None and not h['testHostFolder'] and h['userFillPPU']==10 and h['fillHeight']==37
c=load('weapon-static-text-console.json')['data']['result'];assert c['groundTruth']['consoleErrors']==0 and not c['groundTruth']['compilationFailed']
protection=load('weapon-static-text-preservation.json');assert not protection['existingMetasChanged']
for row in protection['files']:assert sha(Path(row['path']))==row['after'] and (row['unchanged'] or row['expectedCodeChange'])
originalStyle=R/'checkpoints/hatch-fish-feedback-before/Scripts/RecoveryWeaponTextStyle.cs'
style=P/'Assets/Recovery/Scripts/RecoveryWeaponTextStyle.cs'
reversedStyle=style.read_text().replace('public void Restore()','void OnDestroy()').replace('            material=null;\n','').replace('        void OnDestroy()=>Restore();\n','')
assert originalStyle.read_text()==reversedStyle
assets=[P/f'Assets/Recovery/Scripts/{name}.cs' for name in ['OriginalWeaponText','RecoveryWeaponTextStyle','RecoveryClientPresentation','OriginalWeaponStaticText']]
assets += [P/'Assets/Recovery/Tests/PlayMode/OriginalWeaponStaticTextTests.cs',P/'Assets/Recovery/Resources/OriginalWeaponStaticText.json']
e=dict(rule=62,target='com.Chodun.CatGunner 1.1.61 vc257',updatedUtc=datetime.now(timezone.utc).isoformat(),sourceContract='weapon-static-text-source-contract.json',tests=tests,visuals=[dict(path='visual/'+n,sha256=sha(Q/'visual'/n),actuallyViewed=True) for n in ['weapon-static-text-inventory-gpu.png','weapon-static-text-information-gpu.png']],preservation='weapon-static-text-preservation.json',fontCache='weapon-static-text-font-cache.json',historicalGPU='../checkpoints/weapon-static-text-before/historical-visual.json',handoff=h,console=dict(error=0,currentWarnings=c['groundTruth']['consoleWarnings'],warningReport='weapon-static-text-warnings.json',notes='Two current Metal memoryless depth load/store warnings; historical compiler warnings include existing obsolete Unity APIs. No console clearing in this turn.'),sources={str(f.relative_to(P)):sha(f) for f in assets},styleChangeAudit=dict(beforeHash=sha(originalStyle),afterHash=sha(style),baseline='Historical Rule61 checkpoint matches exact reverse of this turn patch, not an independent fresh pre-edit file hash'),adapters=['System-language selection only for these static primary terms; full I2 language settings, secondary fonts, RTL and parameter lifecycle excluded','Chinese source-font rendering uses existing local generated fallback and runtime materials; not original pixel parity'],scopeComplete=False,playerBuild=False,deviceAcceptance=False,gitDelivery=False)
(Q/'weapon-static-text-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2)+'\n')
summary='本轮接回武器页9处静态语言绑定：装备/同阶合成说明、保险库、自动合成说明、前往商店、信息、图鉴和抽取标题；8个原词条、14语言、112个独立原文本值。动态名称/数字保持各自业务控制器，中文在原矩形显示，字体材质可重复刷新并释放。专项2/2（13.86秒）、原武器呈现回归4/4（30.96秒）分别完整通过，两个GPU已查看；不是一次全套结果。主档/备份、场景、两个页面Prefab、524既有meta保持，字体测试缓存恢复。用户Fill倍率10/高度37保留；Unity已回正常干净EditMode，缺脚本0、错误0，存在2条Metal memoryless警告。'
boundary='这是选定静态词条接线，完整I2语言设置、其他UI/教程/特效、服务端和Player/真机对照仍待恢复。没有APK或Git交付。证据：`reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/weapon-static-text-evidence.json`。'
readme=P.parents[1]/'README.md'
s=readme.read_text().replace('## 最新恢复：Hatch、鱼统计与飘字（规则61）','## 历史恢复：Hatch、鱼统计与飘字（规则61）',1)
assert '## 最新恢复：武器页静态语言绑定' not in s
readme.write_text(s.replace('# IdleCatGunner\n','# IdleCatGunner\n\n## 最新恢复：武器页静态语言绑定（规则62）\n\n'+summary+'\n\n'+boundary+'\n',1))
f=Q/'RECOVERY_PROGRESS.md';s=f.read_text().replace('## 当前阶段：Hatch、鱼统计与飘字（规则61，2026-10-12）','## 历史阶段：Hatch、鱼统计与飘字（规则61，2026-10-12）',1);at=s.index('## 历史阶段：Hatch');s=s[:at]+'## 当前阶段：武器页静态语言绑定（规则62，2026-10-12）\n\n'+summary+'\n\n'+boundary+'\n\n'+s[at:];f.write_text(s)
f=R/'original-game-rules/00_INDEX.md';s=f.read_text();f.write_text(s.replace('# 原规则索引：Cat Gunner 1.1.61\n','# 原规则索引：Cat Gunner 1.1.61\n\n- [62 武器页静态语言绑定](62_WEAPON_STATIC_LOCALIZATION.md)：9处原路径/8词条/14语言，中文说明与信息图鉴入口、字体生命周期；完整I2和其他页面独立待恢复。\n',1))
v=load('VERIFICATION.json');v['updated_utc']=datetime.now(timezone.utc).isoformat();v['scope_complete']=False;v['weapon_static_text_evidence']=e
v['pending']='Full I2 language/settings/secondary-font/parameter/RTL lifecycle and other original UI/tutorial flows; selected weapon static primary terms restored by Rule62. Full InfVal API/locale/flags/negative branches and pointer/tween chains; compiled particle shader parity and phone Player comparison; trusted server time/live configuration/SDK/account/cloud. Local ads/payments remain user-authorized simulations.'
if isinstance(v.get('playtest_ui_evidence'),dict):v['playtest_ui_evidence']['pending']=v['pending']
(Q/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
print(dict(rule=62,tests=tests,sourceAssets=len(assets),scopeComplete=False))
