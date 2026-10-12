from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];Q=R/'reports'
def read(name):return json.loads((Q/name).read_text())
runs=[]
for name,filter,count in [('enhanced-rebirth-playmode.json','OriginalEnhancedRebirthTests',7),('enhanced-rebirth-regression-progression.json','OriginalProgressionTests',8),('enhanced-rebirth-regression-store.json','PlaytestIssuesRuntimeTests',7),('enhanced-rebirth-regression-startup.json','OriginalStartupTests',4)]:
 d=read(name);assert d['status']=='completed' and d['summary']['total']==d['summary']['passed']==count and d['summary']['failed']==0 and all(filter in x['FullName'] for x in d['results']),name;runs.append({'report':'reports/'+name,'duration':d['duration'],'summary':d['summary'],'independentCompleteRun':True})
h=read('enhanced-rebirth-editor-handoff.json');assert h['objects']==35954 and h['missingScripts']==0 and h['persist'] and h['timeScale']==1 and h['rebirthReferencesBound'] and h['rebirthPagesHidden'] and h['originalAnimator']=='Rebirth'
assert not any(h[k] for k in ['playing','dirty','compiling','updating','testHostFolder','saveFolderOverride','inputOverrides','mouseFixtures']);assert h['runtimeConfirmationAbsentInEditMode'] and h['originalAdMethod']=='Rebirth_Start' and h['originalPaidMethod']=='Purchase'
assert any(ev['functionName']=='Rebirth' and ev['time']==2 for clip in h['clipEvents'] for ev in clip['events'])
p=read('enhanced-rebirth-preservation.json');assert p['sceneByteIdentical'] and p['userMainAndBackupUnchanged'] and p['allProtectedRecordsUnchanged']
console=read('enhanced-rebirth-final-console-status.json')['data']['result']['groundTruth'];assert not console['compiling'] and not console['compilationFailed'] and console['consoleErrors']==0
visual=[]
for suffix in ['confirmation','animation','used']:
 f=Q/'visual'/('enhanced-rebirth-'+suffix+'-gpu.png');assert f.exists();visual.append({'path':str(f.relative_to(R)),'sha256':hashlib.sha256(f.read_bytes()).hexdigest(),'actuallyViewed':True})
e={'rule':57,'updatedUtc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'target':'com.Chodun.CatGunner 1.1.61 vc257 ARM64','editor':'6000.4.10f1','native':read('enhanced-rebirth-native-contract.json'),'independentTests':runs,'historicalAttempts':['reports/enhanced-rebirth-before-implementation.json'],'gpu':visual,'preservation':p,'handoff':h,'finalConsole':console,'realPayment':False,'sceneEdited':False,'apkBuilt':False,'deviceAcceptance':False,'gitDelivered':False,'scopeComplete':False,'pending':'Temporary guns; complete I2/UI/tutorials/VFX; original store SDK, FreeCash/accounts/backend/trusted time; Player/device acceptance'}
(Q/'enhanced-rebirth-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2));print({'rule':57,'independentBatches':len(runs),'preservedRecords':len(p['records']),'scopeComplete':False})
