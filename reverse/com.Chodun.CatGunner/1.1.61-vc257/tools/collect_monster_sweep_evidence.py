from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];Q=R/'reports';W=R.parents[2]
def read(n):return json.loads((Q/n).read_text())
runs=[]
for n,key,total in [('monster-sweep-playmode.json','OriginalMonsterSweepTests',9),('monster-sweep-regression-monster.json','OriginalMonsterTests',5),('monster-sweep-regression-auto.json','AutoChallengeRewardsTests',10),('monster-sweep-regression-startup.json','OriginalStartupTests',4)]:
 d=read(n);assert d['status']=='completed' and d['summary']['total']>0 and d['summary']['total']==d['summary']['passed'] and d['summary']['failed']==0,n
 assert d['summary']['total']==total and all(key in x['FullName'] for x in d['results']),n
 runs.append(dict(report='reports/'+n,duration=d['duration'],summary=d['summary'],independentCompleteRun=True))
p=read('monster-sweep-preservation.json');assert p['userMainAndBackupUnchanged'] and p['sceneUnchanged'] and p['existingScriptMetasUnchanged']==231
h=read('monster-sweep-editor-handoff.json');assert h['objects']==35834 and h['missingScripts']==0 and h['persist'] and h['timeScale']==1
assert not h['playing'] and not h['dirty'] and not h['compiling'] and not h['updating'] and not h['saveFolderOverride'] and not h['testHostFolder'] and h['inputOverrides']==h['mouseFixtures']==0
assert h['monsterSweepUiBound'] and h['monsterSweepResultHidden']
assert h['localRewardedAdDefault'] and h['localPurchaseSimulation']
console=read('monster-sweep-final-console-status.json')['data']['result']['groundTruth'];assert not console['compilationFailed'] and not console['compiling'] and console['consoleErrors']==0
visual=[]
for n in ['weak-entrance','base-result','automatic-result']:
 f=Q/'visual'/f'monster-sweep-{n}-gpu.png';assert f.exists();visual.append(dict(path=str(f.relative_to(R)),sha256=hashlib.sha256(f.read_bytes()).hexdigest(),actuallyViewed=True))
native=read('monster-sweep-native-contract.json');assert len(native['methods'])==21 and native['allQueriesCompleted']
e=dict(updatedUtc=datetime.datetime.now(datetime.timezone.utc).isoformat(),target='com.Chodun.CatGunner 1.1.61 vc257',rule=54,editor='6000.4.10f1',native=native,connected=['Original PlusPack2/current power gate; active ordinary cats and boss-specific stats exclude forest upgrades','Per-level native threshold and weapon multipliers; advance only consecutive cleared levels capped100','Original progress preview and serialized mouse sweep/bonus/close buttons; next wave/level saved','Base30/level, reward pack2x, ordinary ad+base or full-remove automatic2x; shared PetCoin_Accum snapshot','Disabled/cancelled/duplicate/stale callbacks, mode/page/purchase expiry and independent cold reload'],adapters=native['adapters'],independentTests=runs,historicalAttempts=['reports/monster-sweep-before-failure.json','reports/monster-sweep-first-attempt.json'],gpu=visual,preservation=p,handoff=h,finalConsole=console,editorBridgeObservation=read('monster-sweep-handoff-tooling-observation.json'),realPaymentCharged=False,userProgressRestoredOrReset=False,apkBuilt=False,deviceAcceptance=False,gitCommitOrPush=False,scopeComplete=False,pending='FreeCash/trusted timing; short buffs/ad rebirth/temp gun; complete I2/UI/service; advanced energy-mesh/SpriteSkin/full skeletal deformation; two unbound tutorial HUDs; Player/device acceptance')
(Q/'monster-sweep-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2));print(dict(runs=[x['summary'] for x in runs],userProgressUnchanged=True,scopeComplete=False))
