# -*- coding: utf-8 -*-
"""Assemble separately completed runtime batches and final normal Editor evidence."""
from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];Q=R/'reports'
def read(n):return json.loads((Q/n).read_text())
runs=[]
for n in ['challenge-auto-playmode.json','challenge-auto-regression-speedrun.json','challenge-auto-regression-mine.json','challenge-auto-regression-monster.json','challenge-auto-regression-plus.json','challenge-auto-regression-startup.json']:
 d=read(n);assert d['status']=='completed' and d['summary']['total']>0 and d['summary']['total']==d['summary']['passed'] and d['summary']['failed']==0,n
 runs.append({'report':'reports/'+n,'duration':d['duration'],'summary':d['summary'],'independentCompleteRun':True})
p=read('challenge-auto-preservation.json');assert p['userMainAndBackupUnchanged'] and p['sceneUnchanged'] and p['existingScriptMetasUnchanged']==230
h=read('challenge-auto-editor-handoff.json');assert h['objects']==35834 and h['missingScripts']==0 and h['bossResultsHidden'] and h['persist']
assert not h['playing'] and not h['dirty'] and not h['compiling'] and not h['updating'] and not h['saveFolderOverride'] and not h['testHostFolder'] and h['inputOverrides']==h['mouseFixtures']==0
assert h['localRewardedAdDefault'] and h['localPurchaseSimulation'] and h['timeScale']==1
console=read('challenge-auto-final-console-status.json')['data']['result']['groundTruth'];assert not console['compilationFailed'] and not console['compiling'] and console['consoleErrors']==0
visual=[]
for n in ['speedrun','mine','monster']:
 f=Q/'visual'/f'challenge-auto-{n}-result-gpu.png';assert f.exists();visual.append({'path':str(f.relative_to(R)),'sha256':hashlib.sha256(f.read_bytes()).hexdigest(),'actuallyViewed':True})
native=read('challenge-auto-native-contract.json');assert len(native['methods'])==15 and native['allQueriesCompleted']
out={'updatedUtc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'target':'com.Chodun.CatGunner 1.1.61 vc257','rule':51,'editor':'6000.4.10f1','native':native,'connected':['SpeedRun natural victory pays120 for full removal, original NoAds exit','Mine natural60s auto mining preserves ticket/raw best, Plus floor, then4x immediate reward','Monster natural90-kill clear retains base accumulation but pays2x per clear; result/exit do not repay','Forced-only removal and disabled purchase simulation retain ordinary ad flow','Local ad cancel/duplicate/disabled/closed callbacks, failure/zero reward and independent cold reload'],'adapters':native['adapters'],'independentTests':runs,'historicalAttempts':['reports/challenge-auto-before-failure.json','reports/challenge-auto-first-attempt.json'],'firstAttemptDiagnosis':'First8/10: Monster first-clear wait30s shorter than native90-monster .35s generation/actual clear path; changed only test wait to70s matching original regression, retained native cadence and quotas. Complete suite rerun, not combined partial passes.','projectileObservations':[read(f'challenge-auto-{n}-observation.json') for n in ['speedrun','mine','monster']],'gpu':visual,'preservation':p,'handoff':h,'finalConsole':console,'realPaymentCharged':False,'realReceiptOrStoreTransactionHistoryForged':False,'userProgressRestoredOrReset':False,'apkBuilt':False,'deviceAcceptance':False,'gitCommitOrPush':False,'scopeComplete':False,'pending':'SpeedRun/Mine/Monster sweep entry/power gates and settlement consumers; FreeCash promotional entitlement/trusted timing; short buffs/ad rebirth/temp gun; complete I2/UI/service workflows; SpriteSkin149337/advanced energy-mesh VFX/full skeletal deformation; two unbound tutorial HUDs; Player/device acceptance'}
(Q/'challenge-auto-evidence.json').write_text(json.dumps(out,ensure_ascii=False,indent=2));print({'independentRuns':[x['summary'] for x in runs],'sceneAndUserProgressUnchanged':True,'scopeComplete':False})
