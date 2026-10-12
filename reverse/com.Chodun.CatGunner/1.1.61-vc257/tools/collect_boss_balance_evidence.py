"""Assemble individually completed runs, original-byte contracts and observed normal editor handoff."""
from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];Q=R/'reports'
def read(n):return json.loads((Q/n).read_text())
runs=[]
for n in ['boss-balance-playmode.json','boss-balance-regression-sweep.json','boss-balance-regression-plus.json','boss-balance-regression-playtest-issues.json','boss-balance-regression-startup.json']:
 d=read(n);assert d['status']=='completed' and d['summary']['total']>0 and d['summary']['total']==d['summary']['passed'] and d['summary']['failed']==0,n
 runs.append({'report':'reports/'+n,'duration':d['duration'],'summary':d['summary'],'independentCompleteRun':True})
p=read('boss-balance-preservation.json');assert p['userMainAndBackupUnchanged'] and p['sceneUnchanged'] and p['existingScriptMetasUnchanged']==230
h=read('boss-balance-editor-handoff.json');assert h['objects']==35834 and h['missingScripts']==0 and h['bossSweepUiBound'] and h['bossAutoUiBound'] and h['bossResultsHidden'] and h['persist']
assert not h['playing'] and not h['dirty'] and not h['compiling'] and not h['updating'] and not h['saveFolderOverride'] and not h['testHostFolder'] and h['inputOverrides']==h['mouseFixtures']==0
console=read('boss-balance-final-console-status.json')['data']['result']['groundTruth'];assert not console['compilationFailed'] and not console['compiling'] and console['consoleErrors']==0
visual=[]
for n in ['combat','victory']:
 f=Q/'visual'/f'boss-balance-{n}-gpu.png';assert f.exists();visual.append({'path':str(f.relative_to(R)),'sha256':hashlib.sha256(f.read_bytes()).hexdigest(),'actuallyViewed':True})
native=read('boss-balance-native-contract.json');assert len(native['methods'])==15 and native['allQueriesCompleted']
out={'updatedUtc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'target':'com.Chodun.CatGunner 1.1.61 vc257','rule':50,'editor':'6000.4.10f1','native':native,'connected':['Actual Boss entry excludes forest power/speed upgrades, matching native preview','Boss retains rebirth/skin/fish/relic/buff/star and compact ordinary teammate slots','Balance refresh and weapon replacement while in Boss mode','Return to forest restores retained power/speed upgrades','Independent cold reload and natural projectile victory with duplicate settlement guard'],'adapters':native['adapters'],'independentTests':runs,'historicalAttempts':['reports/boss-balance-before-failure.json'],'projectileObservation':read('boss-balance-projectile-observation.json'),'gpu':visual,'preservation':p,'handoff':h,'finalConsole':console,'realPaymentCharged':False,'realReceiptOrStoreTransactionHistoryForged':False,'userProgressRestoredOrReset':False,'apkBuilt':False,'deviceAcceptance':False,'gitCommitOrPush':False,'scopeComplete':False,'pending':'SpeedRun/Mine/Monster automatic reward and sweep consumers; FreeCash promotional entitlement/trusted timing; short buffs/ad rebirth/temp gun; complete I2/UI/service workflows; SpriteSkin149337/advanced energy-mesh VFX/full skeletal deformation; two unbound tutorial HUDs; Player/device acceptance'}
(Q/'boss-balance-evidence.json').write_text(json.dumps(out,ensure_ascii=False,indent=2));print({'independentRuns':[x['summary'] for x in runs],'unchangedScene':True,'userProgressUnchanged':True,'scopeComplete':False})
