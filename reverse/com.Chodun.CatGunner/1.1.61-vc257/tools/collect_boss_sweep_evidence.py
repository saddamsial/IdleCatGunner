"""Assemble individually completed runs, original-byte contracts and observed normal editor handoff."""
from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];Q=R/'reports'
def read(n):return json.loads((Q/n).read_text())
runs=[]
for n in ['boss-sweep-playmode.json','boss-sweep-regression-boss.json','boss-sweep-regression-plus.json','boss-sweep-regression-playtest-issues.json','boss-sweep-regression-startup.json']:
 d=read(n);assert d['status']=='completed' and d['summary']['total']>0 and d['summary']['total']==d['summary']['passed'] and d['summary']['failed']==0,n
 runs.append({'report':'reports/'+n,'duration':d['duration'],'summary':d['summary'],'independentCompleteRun':True})
p=read('boss-sweep-preservation.json');assert p['userMainAndBackupUnchanged'] and p['sceneUnchanged'] and p['existingScriptMetasUnchanged']==229
h=read('boss-sweep-editor-handoff.json');assert h['objects']==35834 and h['missingScripts']==0 and h['bossSweepUiBound'] and h['bossAutoUiBound'] and h['bossResultsHidden'] and h['persist']
assert not h['playing'] and not h['dirty'] and not h['compiling'] and not h['updating'] and not h['saveFolderOverride'] and not h['testHostFolder'] and h['inputOverrides']==h['mouseFixtures']==0
console=read('boss-sweep-final-console-status.json')['data']['result']['groundTruth'];assert not console['compilationFailed'] and not console['compiling'] and console['consoleErrors']==0
visual=[]
for n in ['weak-power','base-result','automatic-result','automatic-victory']:
 f=Q/'visual'/f'boss-sweep-{n}-gpu.png';assert f.exists();visual.append({'path':str(f.relative_to(R)),'sha256':hashlib.sha256(f.read_bytes()).hexdigest(),'actuallyViewed':True})
native=read('boss-sweep-native-contract.json');assert len(native['methods'])==23 and native['allQueriesCompleted']
out={'updatedUtc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'target':'com.Chodun.CatGunner 1.1.61 vc257','rule':49,'editor':'6000.4.10f1','native':native,'connected':['Original Boss PlusPack2 UI -> active ordinary-cat preview -> gated sweep','Sweep stage+1 and base150/Plus300 -> original modal -> local ad additional2x -> original close','Full ad-removal -> instant triple Boss victory/sweep reward -> original NoAds return','Separate forced-ad removal and PlusPack1/2 expiry -> UI refresh and fixed settlement amount','Independent cold reload restores Boss progress, diamonds, purchase ledger; no pending transient result replay'],'adapters':native['adapters'],'independentTests':runs,'historicalAttempts':['reports/boss-sweep-before-failure.json','reports/boss-sweep-first-attempt.json'],'originalAnimationTiming':read('boss-sweep-animation-timing.json'),'projectileObservation':read('boss-sweep-projectile-observation.json'),'gpu':visual,'preservation':p,'handoff':h,'finalConsole':console,'realPaymentCharged':False,'realReceiptOrStoreTransactionHistoryForged':False,'userProgressRestoredOrReset':False,'apkBuilt':False,'deviceAcceptance':False,'gitCommitOrPush':False,'scopeComplete':False,'pending':'Boss actual-combat balance branch parity; SpeedRun/Mine/Monster automatic reward and sweep consumers; FreeCash promotional entitlement/trusted timing; short buffs/ad rebirth/temp gun; complete I2/UI/service workflows; SpriteSkin149337/advanced energy-mesh VFX/full skeletal deformation; two unbound tutorial HUDs; Player/device acceptance'}
(Q/'boss-sweep-evidence.json').write_text(json.dumps(out,ensure_ascii=False,indent=2));print({'independentRuns':[x['summary'] for x in runs],'unchangedScene':True,'userProgressUnchanged':True,'scopeComplete':False})
