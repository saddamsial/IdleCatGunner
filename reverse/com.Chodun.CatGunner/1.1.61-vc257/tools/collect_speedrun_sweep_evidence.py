from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];Q=R/'reports';W=R.parents[2]
def read(n):return json.loads((Q/n).read_text())
runs=[]
for n in ['speedrun-sweep-playmode.json','speedrun-sweep-regression-speedrun.json','speedrun-sweep-regression-auto.json','speedrun-sweep-regression-startup.json']:
 d=read(n);assert d['status']=='completed' and d['summary']['total']>0 and d['summary']['total']==d['summary']['passed'] and d['summary']['failed']==0,n
 runs.append(dict(report='reports/'+n,duration=d['duration'],summary=d['summary'],independentCompleteRun=True))
p=read('speedrun-sweep-preservation.json');assert p['userMainAndBackupUnchanged'] and p['sceneUnchanged'] and p['existingScriptMetasUnchanged']==230
h=read('speedrun-sweep-editor-handoff.json');assert h['objects']==35834 and h['missingScripts']==0 and h['persist'] and h['timeScale']==1
assert not h['playing'] and not h['dirty'] and not h['compiling'] and not h['updating'] and not h['saveFolderOverride'] and not h['testHostFolder'] and h['inputOverrides']==h['mouseFixtures']==0
assert h['speedSweepUiBound'] and h['speedStartAutoUiBound'] and h['speedSweepResultHidden']
assert h['localRewardedAdDefault'] and h['localPurchaseSimulation']
console=read('speedrun-sweep-final-console-status.json')['data']['result']['groundTruth'];assert not console['compilationFailed'] and not console['compiling'] and console['consoleErrors']==0
visual=[]
for n in ['weak-power','base-result','automatic-result']:
 f=Q/'visual'/f'speedrun-sweep-{n}-gpu.png';assert f.exists();visual.append(dict(path=str(f.relative_to(R)),sha256=hashlib.sha256(f.read_bytes()).hexdigest(),actuallyViewed=True))
native=read('speedrun-sweep-native-contract.json');assert len(native['methods'])==17 and native['allQueriesCompleted']
e=dict(updatedUtc=datetime.datetime.now(datetime.timezone.utc).isoformat(),target='com.Chodun.CatGunner 1.1.61 vc257',rule=52,editor='6000.4.10f1',native=native,connected=['Original PlusPack2 auto entrance, insufficient power percent/fill and active sweep button','Native193% average health and24 effective seconds, stored damage/critical and weapon target factors, forest upgrades','Ordinary30+local ad90, automatic120, fixed reward ignores PlusPack1, original button clicks','Cancel/disable/duplicate/late result guards; expiry; disabled purchases; independent cold reload; cache rejects before mutation'],adapters=native['adapters'],independentTests=runs,historicalAttempts=['reports/speedrun-sweep-before-failure.json','reports/speedrun-sweep-first-attempt.json'],firstAttemptDiagnosis='First7/9: native ARM64 float32 multiplication boundary differed from Mono extended intermediate for runtime.025 critical input (2060 versus2040); force float32 before round/truncate. Test cache boundary wrongly copied Boss1000; actual speedrun catalogue5000, fixture corrected. Complete suite rerun, no invented all-pass concatenation.',gpu=visual,preservation=p,handoff=h,finalConsole=console,realPaymentCharged=False,userProgressRestoredOrReset=False,apkBuilt=False,deviceAcceptance=False,gitCommitOrPush=False,scopeComplete=False,pending='Mine/Monster sweep entry/power and settlement; FreeCash/trusted timing; short buffs/ad rebirth/temp gun; complete I2/UI/service; advanced energy-mesh/SpriteSkin/full skeletal deformation; two unbound tutorial HUDs; Player/device acceptance')
(Q/'speedrun-sweep-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2));print(dict(runs=[x['summary'] for x in runs],userProgressUnchanged=True,scopeComplete=False))
