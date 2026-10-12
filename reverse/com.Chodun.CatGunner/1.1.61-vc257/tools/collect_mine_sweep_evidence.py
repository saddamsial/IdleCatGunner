from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];Q=R/'reports';W=R.parents[2]
def read(n):return json.loads((Q/n).read_text())
runs=[]
for n in ['mine-sweep-playmode.json','mine-sweep-regression-mine.json','mine-sweep-regression-auto.json','mine-sweep-regression-startup.json']:
 d=read(n);assert d['status']=='completed' and d['summary']['total']>0 and d['summary']['total']==d['summary']['passed'] and d['summary']['failed']==0,n
 runs.append(dict(report='reports/'+n,duration=d['duration'],summary=d['summary'],independentCompleteRun=True))
p=read('mine-sweep-preservation.json');assert p['userMainAndBackupUnchanged'] and p['sceneUnchanged'] and p['existingScriptMetasUnchanged']==231
h=read('mine-sweep-editor-handoff.json');assert h['objects']==35834 and h['missingScripts']==0 and h['persist'] and h['timeScale']==1
assert not h['playing'] and not h['dirty'] and not h['compiling'] and not h['updating'] and not h['saveFolderOverride'] and not h['testHostFolder'] and h['inputOverrides']==h['mouseFixtures']==0
assert h['mineSweepUiBound'] and h['mineSweepResultHidden']
assert h['localRewardedAdDefault'] and h['localPurchaseSimulation']
console=read('mine-sweep-final-console-status.json')['data']['result']['groundTruth'];assert not console['compilationFailed'] and not console['compiling'] and console['consoleErrors']==0
visual=[]
for n in ['entrance','base-result','automatic-result']:
 f=Q/'visual'/f'mine-sweep-{n}-gpu.png';assert f.exists();visual.append(dict(path=str(f.relative_to(R)),sha256=hashlib.sha256(f.read_bytes()).hexdigest(),actuallyViewed=True))
native=read('mine-sweep-native-contract.json');assert len(native['methods'])==16 and native['allQueriesCompleted']
e=dict(updatedUtc=datetime.datetime.now(datetime.timezone.utc).isoformat(),target='com.Chodun.CatGunner 1.1.61 vc257',rule=53,editor='6000.4.10f1',native=native,connected=['Original PlusPack2 + best record gate; no power requirement; highest base record unchanged','Original Mine ticket consumption and mission3 once; 2/6 daily cap; exhausted original purchase popup','Plus1 float multiplier1.5 then integer truncation; ordinary base+ad3x or auto4x','Original entrance/Bonus_AD_Show/close buttons clicked through raycast and input; original reward sprite preview','Cancellation/disable/duplicate/stale result guards; seven-day expiry; purchase simulation disabled; cold reload'],adapters=native['adapters'],independentTests=runs,historicalAttempts=['reports/mine-sweep-before-failure.json','reports/mine-sweep-first-pass.json','reports/mine-sweep-banner-attempt-observation.json'],gpu=visual,preservation=p,handoff=h,finalConsole=console,realPaymentCharged=False,userProgressRestoredOrReset=False,apkBuilt=False,deviceAcceptance=False,gitCommitOrPush=False,scopeComplete=False,pending='Monster sweep power/entry/settlement; FreeCash/trusted timing; short buffs/ad rebirth/temp gun; complete I2/UI/service; advanced energy-mesh/SpriteSkin/full skeletal deformation; two unbound tutorial HUDs; Player/device acceptance')
(Q/'mine-sweep-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2));print(dict(runs=[x['summary'] for x in runs],userProgressUnchanged=True,scopeComplete=False))
