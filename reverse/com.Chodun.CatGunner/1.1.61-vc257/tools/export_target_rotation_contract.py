"""Frozen scene/native evidence for only Target/Triangle local rotation."""
from pathlib import Path
import csv, hashlib, json, re
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';Q=R/'reports'
ns={'__file__':str(R/'tools/map_game_methods.py')};exec(Path(ns['__file__']).read_text().split('module =')[0],ns);native,raw=ns['native'],ns['raw']
index={int(k):v for k,v in json.loads((Q/'original-main-document-index.json').read_text()).items()};scene=R/'assetripper-baseline/ExportedProject/Assets/Scenes/Main.unity';stream=scene.open('rb')
def read(k):_,o,n=index[k];stream.seek(o);return stream.read(n).decode()
component=read(123889);transform=read(39293)
def vec(s,key):return {k:float(v) for k,v in re.findall(r'(\w): ([^,}]+)',re.search(re.escape(key)+r': \{([^}]+)\}',s)[1])}
def number(key):return float(re.search(r'  '+re.escape(key)+r': ([\d.-]+)',component)[1])
assert {k:number(k) for k in ['duration','delay','animationType','targetType','optionalRotationMode','easeType','loopType','loops','isIndependentUpdate','isRelative','isFrom','autoGenerate','autoPlay']}==dict(duration=3,delay=0,animationType=4,targetType=11,optionalRotationMode=0,easeType=1,loopType=2,loops=-1,isIndependentUpdate=0,isRelative=0,isFrom=0,autoGenerate=1,autoPlay=1)
data=dict(SourceComponent=123889,Duration=number('duration'),EndEuler=vec(component,'endValueV3'),SourceQuaternion=vec(transform,'m_LocalRotation'),SourcePosition=vec(transform,'m_LocalPosition'),SourceScale=vec(transform,'m_LocalScale'))
assert data['EndEuler']==dict(x=45,y=-15,z=-180)
resource=P/'Assets/Recovery/Resources/OriginalTargetRotation.json';resource.write_text(json.dumps(data,indent=2)+'\n')
methods=[]
for scope in ['target-tween','reward-rotation']:
 folder=R/('native-'+scope+'-reviewed');status=list(csv.DictReader((folder/'status.tsv').open(),delimiter='\t'));assert all(x['completed']=='true' and not x['error'] for x in status)
 for line in (Q/('native-'+scope+'-queries.tsv')).read_text().splitlines():
  va,name,first,end=line.split('\t');a,b=int(va,16),int(end,16);assert native[raw(a):raw(a)+16].hex()==first
  if name.startswith('Throw_') or name.startswith('Managed_Exception'):continue
  methods.append(dict(name=name,preferredVa=va,end=end,first16=first,inputSha256=hashlib.sha256(native[raw(a):raw(b)]).hexdigest(),reused=scope=='reward-rotation',outputs={str((folder/(name+'.'+ext)).relative_to(R)):hashlib.sha256((folder/(name+'.'+ext)).read_bytes()).hexdigest() for ext in ['c','asm']}))
prior=set()
for item in json.loads((Q/'VERIFICATION.json').read_text())['native_outputs']:
 if item['folder']=='native-target-tween-reviewed':continue
 for x in csv.DictReader((R/item['folder']/'status.tsv').open(),delimiter='\t'):
  if x['completed']=='true' and not x['error']:prior.add(x['preferred_va'])
current={x['preferredVa'] for x in methods if not x['reused']}
contract=dict(rule=63,target='com.Chodun.CatGunner 1.1.61 vc257 ARM64',nativeSha256=hashlib.sha256(native).hexdigest(),sceneSha256=hashlib.sha256(scene.read_bytes()).hexdigest(),sourceDocuments={str(k):hashlib.sha256(read(k).encode()).hexdigest() for k in [1748,781,39293,123889,82855]},configuration=data,sourceEulerHint=vec(transform,'m_LocalEulerAnglesHint'),actualSourceEuler=json.loads((Q/'target-rotation-source-quaternion.json').read_text())['data']['result']['result']['euler'],actualChange=json.loads((Q/'target-rotation-source-quaternion.json').read_text())['data']['result']['result']['change'],methods=methods,registeredQueryCount=dict(before=len(prior),after=len(prior|current),new=len(current-prior)),sourceSpriteGuid=re.search(r'm_Sprite: \{[^}]*guid: (\w+)',read(82855))[1],nativeRules={'creation':'Awake autoGenerate/isActive creates once; Start skips already generated; metadata has no OnEnable/OnDisable hooks. OnDestroy kills original tween.','coordinate':'CreateTween animationType4 is DOLocalRotate; targetType11 Transform, mode0 Fast.','change':'QuaternionPlugin Fast retains signed absolute differences <=180; only the original nonrelative rotation here is implemented. Actual source Euler is45,345,~0, not hint45,15,~0.','evaluation':'linear scaled time, incremental infinite loops: startEuler + change * elapsed/duration. No callbacks or delay in this component.','visibility':'existing Cat target owner changes position/active only; animation phase continues across target change and visibility. Local adapter lazily applies hidden progress when re-enabled instead of a global inactive-transform update.'},adapters=['Runtime component and frame scheduler replace DOTween tween allocation/global manager; not full plugin lifecycle or all quaternion modes','Original sprite, tilt, transform offsets/scale and existing compatibility material retained; disabled Shapes.Disc not enabled'],scopeComplete=False)
(Q/'target-rotation-native-contract.json').write_text(json.dumps(contract,indent=2)+'\n');print(dict(methods=len(methods),newQueries=contract['registeredQueryCount'],sourceComponent=123889))
