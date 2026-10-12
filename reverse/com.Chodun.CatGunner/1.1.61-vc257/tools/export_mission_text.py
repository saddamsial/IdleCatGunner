"""Export frozen primary mission terms and native-selected task templates."""
from pathlib import Path
import csv, hashlib, json, re, struct
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
script=(R/'tools/export_companion_static_text.py').read_text()
exec(script[:script.index('source = language.read_text()')].replace('R = Path(__file__).resolve().parents[1]','R = R'))
source=language.read_text()
def values(key):
 m=re.search(r'    - Term: '+re.escape(key)+r'\n      TermType: 0\n      Languages:\n(.*?)      Flags:',source,re.S);assert m,key
 result=[scalar(v[1]) for line in m[1].splitlines() if (v:=re.match(r'      - (.*)',line))]
 assert len(result)==14 and all(result),(key,result)
 return result
rows=[];excluded=[]
go_transforms={go:tid for tid,go in transforms.items()}
def sibling_ordinal(go):
 parent=parents[go]
 block=read(parent).split('  m_Children:',1)[1].split('  m_Father:',1)[0]
 siblings=[transforms[int(t)] for t in re.findall(r'fileID: (\d+)',block)]
 return [g for g in siblings if names[g]==names[go]].index(go)
for c,g,key in labels:
 full=path(g)
 if not full.startswith('Canvas/SafeArea/Mission_maanger/'):continue
 if not key or key=='-':excluded.append(dict(component=c,path=full,key=key));continue
 v=values(key);assert all('{[' not in x and '[i2p_' not in x and '{0}' not in x for x in v),key
 rows.append(dict(Path=full.removeprefix('Canvas/'),Key=key,Values=v,SourceComponent=c,SourceGameObject=g,SameNameOrdinal=sibling_ordinal(g)))
assert len(rows)==96
ns={'__file__':str(R/'tools/map_game_methods.py')};exec(Path(ns['__file__']).read_text().split('module =')[0],ns)
table=(R/'transformed/region-0.decoded.bin').read_bytes();strings=(R/'transformed/region-4.decoded.bin').read_bytes()
def literal(ptr):
 u=ns['pointer'](ns['pointer'](ptr));assert u>>29==5
 n,o=struct.unpack_from('<2I',table,((u&0x1fffffff)>>1)*8);return strings[o:o+n].decode()
tasks=[]
names=[0x5d5e710,0x5d5e708,0x5d5e718,0x5d5e720];explains=[0x5d5e780,0x5d5e778,0x5d5e788,0x5d5e770]
for kind,stem in enumerate(['TreeCount','StageClear','Rebirth','PlayMine']):
 for description,ptr in [(False,names[kind]),(True,explains[kind])]:
  key=literal(ptr);assert key=='Mission/'+stem+('_Explain' if description else '_Name'),key
  v=values(key);assert all(x.count('{0}')==(1 if description else 0) for x in v)
  tasks.append(dict(Type=kind,Description=description,Key=key,Values=v,NativeKeyPointer=hex(ptr)))
status=list(csv.DictReader((R/'native-mission-text-reviewed/status.tsv').open(),delimiter='\t'))
assert len(status)==9 and all(x['completed']=='true' and not x['error'] for x in status)
resource=P/'Assets/Recovery/Resources/OriginalMissionText.json'
resource.write_text(json.dumps(dict(LocaleCodes=json.loads((P/'Assets/Recovery/Resources/OriginalWeaponText.json').read_text())['LocaleCodes'],Rows=rows,Tasks=tasks),ensure_ascii=False,indent=2)+'\n')
report=dict(rule=65,target='com.Chodun.CatGunner 1.1.61 vc257 ARM64',staticBindings=len(rows),staticTerms=len({x['Key'] for x in rows}),taskTerms=tasks,excluded=excluded,
 sourceHashes={str(f.relative_to(R)):hashlib.sha256(f.read_bytes()).hexdigest() for f in [scene,language,R/'extracted/split_config.arm64_v8a/lib/arm64-v8a/libil2cpp.so',R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat']},
 nativeRules=['type0..3 -> original primary I2 names/explanations; unsupported type returns null','UI_First_Reload formats explanation with MissionValue before passing text to First_Reload','First_Reload writes numeric Exp without extra XP suffix; keeps separate original XP image'],
 status=status,resourceSha256=hashlib.sha256(resource.read_bytes()).hexdigest())
report['ghidraImageBase']='0x100000'
report['managedTypes']=[x for x in json.loads((Q/'resolved-type-schema.json').read_text()) if x['image']=='Assembly-CSharp.dll' and x['name']=='Mission_Item_UI']
report['methods']=[]
for line in (Q/'native-mission-text-queries.tsv').read_text().splitlines():
 va,name,first,end=line.split('\t');a,b=int(va,16),int(end,16);native=ns['native'];raw=ns['raw'];assert native[raw(a):raw(a)+16].hex()==first
 report['methods'].append(dict(preferredVa=va,end=end,first16=first,sha256=hashlib.sha256(native[raw(a):raw(a)+b-a]).hexdigest(),outputs={str((R/'native-mission-text-reviewed'/(name+'.'+ext)).relative_to(R)):hashlib.sha256((R/'native-mission-text-reviewed'/(name+'.'+ext)).read_bytes()).hexdigest() for ext in ['c','asm']}))
caller=R/'native-mission-sorting-reviewed/Mission_manager_UI_First_Reload.c'
report['formattingCaller']=dict(path=str(caller.relative_to(R)),sha256=hashlib.sha256(caller.read_bytes()).hexdigest())
(Q/'mission-text-source-contract.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
print(dict(staticBindings=len(rows),staticTerms=report['staticTerms'],taskTerms=len(tasks),locales=14))
