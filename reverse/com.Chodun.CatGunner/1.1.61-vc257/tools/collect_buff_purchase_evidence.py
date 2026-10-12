from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];Q=R/'reports'
def read(name):return json.loads((Q/name).read_text())
runs=[]
for name,filter,count in [('buff-purchase-playmode.json','OriginalBuffPurchaseTests',5),('buff-purchase-regression-short-buff.json','OriginalShortBuffTests',10),('buff-purchase-regression-store.json','PlaytestIssuesRuntimeTests',7),('buff-purchase-regression-startup.json','OriginalStartupTests',4)]:
 d=read(name);assert d['status']=='completed' and d['summary']['total']==d['summary']['passed']==count and d['summary']['failed']==0 and all(filter in x['FullName'] for x in d['results']),name;runs.append({'report':'reports/'+name,'duration':d['duration'],'summary':d['summary'],'independentCompleteRun':True})
h=read('buff-purchase-editor-handoff.json');assert h['objects']==35954 and h['missingScripts']==0 and h['persist'] and h['timeScale']==1 and h['shortBuffBound'] and h['shortBuffPopupHidden']
assert not any(h[k] for k in ['playing','dirty','compiling','updating','testHostFolder','saveFolderOverride','inputOverrides','mouseFixtures']);assert h['buffPopupRuntimeAdapterAbsentInEditMode'] and h['buffPurchaseBranchSerializedHidden'] and h['buffPopupOriginalPurchaseMethod']=='Purchase'
p=read('buff-purchase-preservation.json');assert p['sceneByteIdentical'] and p['userMainAndBackupUnchanged'] and p['allProtectedRecordsUnchanged']
console=read('buff-purchase-final-console-status.json')['data']['result']['groundTruth'];assert not console['compiling'] and not console['compilationFailed'] and console['consoleErrors']==0
visual=[]
for suffix in ['available','owned']:
 f=Q/'visual'/('buff-purchase-'+suffix+'-gpu.png');assert f.exists();visual.append({'path':str(f.relative_to(R)),'sha256':hashlib.sha256(f.read_bytes()).hexdigest(),'actuallyViewed':True})
e={'rule':56,'updatedUtc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'target':'com.Chodun.CatGunner 1.1.61 vc257 ARM64','editor':'6000.4.10f1','native':read('buff-purchase-native-contract.json'),'independentTests':runs,'historicalAttempts':['reports/buff-purchase-first-attempt.json','reports/buff-purchase-pre-visual-fixture.json'],'gpu':visual,'preservation':p,'handoff':h,'finalConsole':console,'realPayment':False,'sceneEdited':False,'apkBuilt':False,'deviceAcceptance':False,'gitDelivered':False,'scopeComplete':False,'pending':'Temporary guns/ad rebirth; complete I2/UI/tutorials/VFX; original store SDK, FreeCash/accounts/backend/trusted time; Player/device acceptance'}
(Q/'buff-purchase-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2));print({'rule':56,'independentBatches':len(runs),'preservedRecords':len(p['records']),'scopeComplete':False})
