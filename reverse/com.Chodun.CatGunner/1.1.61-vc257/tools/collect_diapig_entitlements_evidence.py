"""Record independently completed runs and the bounded production DiaPig recovery."""
from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];Q=R/'reports'
def read(n):return json.loads((Q/n).read_text())
runs=[]
for name in ['diapig-entitlements-playmode.json','diapig-entitlements-regression-playtest-issues.json','diapig-entitlements-regression-stepup.json','diapig-entitlements-regression-startup.json']:
 d=read(name);assert d['status']=='completed' and d['summary']['total']>0 and d['summary']['failed']==0 and d['summary']['total']==d['summary']['passed'],name
 runs.append({'report':'reports/'+name,'duration':d['duration'],'summary':d['summary'],'independentCompleteRun':True})
preservation=read('diapig-entitlements-preservation.json');assert preservation['userMainAndBackupUnchanged'] and preservation['normalSceneByteUnchanged']
h=read('diapig-entitlements-editor-handoff.json');assert h['objects']==35470 and h['missingScripts']==0 and h['persist']
assert not h['playing'] and not h['dirty'] and not h['compiling'] and not h['updating'] and not h['saveFolderOverride'] and not h['testHostFolder'] and h['inputOverrides']==0 and h['mouseFixtures']==0
c=read('diapig-entitlements-final-console-status.json')['data']['result']['groundTruth'];assert not c['compilationFailed'] and not c['compiling'] and c['consoleErrors']==0
visual=[]
for name in ['all-owned','both-owned','claimed','realtime-minute']:
 p=Q/'visual'/f'diapig-entitlements-{name}-gpu.png';assert p.exists()
 visual.append({'path':str(p.relative_to(R)),'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'actuallyViewed':True})
old=read('original-diapig-contract.json')
d={'updatedUtc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'target':old['target'],'rule':46,'editor':'6000.4.10f1','native':{'reusedContract':'reports/original-diapig-contract.json','reusedBusinessMethods':18,'newNativeExports':0,'unlock':'Is_Remove_AD_forced OR Is_Remove_AD_All','tickAmount':'sum of the two flags, sampled dynamically','intervalSeconds':60,'capacity':500,'trustedWallClockCatchupConnected':False},'productionConnected':['local purchase success -> entitlement refresh','dynamic minute rate -> existing counter','original locked/unlocked/offer/description branches','unclaimed funds -> ordinary archive','original DiaGet_Btn raycast -> wallet/ledger -> archive','cold reload -> flag/counter restoration'],'adapters':['explicit local asynchronous payment simulator; no charge','OfflinePurchaseSimulation variant gate and clock reset on toggle','locked-profile timestamp preservation','provider-unavailable native monotonic accumulation','existing local save/event bridge and I2 plus-value fallback'],'independentTests':runs,'historicalAttempts':['reports/diapig-entitlements-before-tests.json','reports/diapig-entitlements-first-fixture-wrong-product-id.json','reports/diapig-entitlements-playmode-first-attempt.json'],'preservation':preservation,'gpu':visual,'editorHandoff':h,'finalConsole':c,'realPaymentCharged':False,'realReceiptsOrTransactionHistoryForged':False,'userProgressRestoredOrReset':False,'apkBuilt':False,'deviceAcceptance':False,'gitCommitOrPush':False,'scopeComplete':False,'pending':'Trusted DiaPig clock catch-up; StarGem Pig full accumulation; paid helper gameplay; remove-ads automatic rewards/sweeps; short buffs/ad rebirth/temp gun; complete I2/render/animation/service fidelity; two unbound tutorial HUDs; Player/device acceptance'}
(Q/'diapig-entitlements-evidence.json').write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n')
print({'tests':[r['summary'] for r in runs],'userSavesUnchanged':True,'sceneUnchanged':True,'scopeComplete':False})
