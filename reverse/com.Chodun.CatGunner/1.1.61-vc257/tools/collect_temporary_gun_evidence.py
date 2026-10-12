from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];Q=R/'reports'
def read(name):return json.loads((Q/name).read_text())
runs=[]
for name,filter,count in [('temporary-gun-playmode.json','OriginalTemporaryGunTests',8),('temporary-gun-regression-inventory.json','OriginalInventoryTests',6),('temporary-gun-regression-auto-merge.json','OriginalFishAndAutoMergeTests',18),('temporary-gun-regression-store.json','PlaytestIssuesRuntimeTests',7),('temporary-gun-regression-startup.json','OriginalStartupTests',4)]:
 d=read(name);assert d['status']=='completed' and d['summary']['total']==d['summary']['passed']==count and d['summary']['failed']==0 and all(filter in x['FullName'] for x in d['results']),name;runs.append({'report':'reports/'+name,'duration':d['duration'],'summary':d['summary'],'independentCompleteRun':True})
h=read('temporary-gun-editor-handoff.json');assert h['objects']==35954 and h['missingScripts']==0 and h['persist'] and h['timeScale']==1 and h['originalInventoryReferencesBound'] and h['inventoryPagesHidden'] and h['runtimeInventoryAbsentInEditMode']
assert not any(h[k] for k in ['playing','dirty','compiling','updating','testHostFolder','saveFolderOverride','inputOverrides','mouseFixtures']);assert h['localTemporaryWeaponOffer'] and h['localAdSimulation'] and h['localPurchaseSimulation']
p=read('temporary-gun-preservation.json');assert p['sceneByteIdentical'] and p['userMainAndBackupUnchanged'] and p['allProtectedRecordsUnchanged']
console=read('temporary-gun-final-console-status.json')['data']['result']['groundTruth'];assert not console['compiling'] and not console['compilationFailed'] and console['consoleErrors']==0
visual=[]
for suffix in ['offer','acquired','countdown']:
 f=Q/'visual'/('temporary-gun-'+suffix+'-gpu.png');assert f.exists();visual.append({'path':str(f.relative_to(R)),'sha256':hashlib.sha256(f.read_bytes()).hexdigest(),'actuallyViewed':True})
baseline=read('temporary-gun-baseline-failure.json');assert baseline['summary']['total']==baseline['summary']['failed']==1 and baseline['summary']['passed']==0
sourceNotes=read('../checkpoints/temporary-gun-before/source-backup-notes.json')
e={'rule':58,'updatedUtc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'target':'com.Chodun.CatGunner 1.1.61 vc257 ARM64','editor':'6000.4.10f1','native':read('temporary-gun-native-contract.json'),'reconstructionContract':read('temporary-gun-reconstruction-contract.json'),'independentTests':runs,'historicalAttempts':['reports/temporary-gun-baseline-failure.json','reports/temporary-gun-startup-disk-failure.json'],'diskCleanup':read('../checkpoints/temporary-gun-before/temporary-disk-cleanup.json'),'gpu':visual,'preservation':p,'sourceBackupNotes':sourceNotes,'handoff':h,'finalConsole':console,'realPayment':False,'sceneEdited':False,'apkBuilt':False,'deviceAcceptance':False,'gitDelivered':False,'scopeComplete':False,'pending':'Complete remaining I2/UI/tutorials/VFX; original store SDK, FreeCash/accounts/backend/trusted time/live config; Player/device and original side-by-side human acceptance'}
(Q/'temporary-gun-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2));print({'rule':58,'independentBatches':len(runs),'preservedRecords':len(p['records']),'scopeComplete':False})
