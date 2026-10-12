from pathlib import Path
import json,csv,hashlib,re,struct,ast
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient';folder=R/'native-weapon-detail-client-reviewed'
ns={'__file__':str(R/'tools/map_game_methods.py')};exec(Path(ns['__file__']).read_text().split('module =')[0],ns);native,raw,pointer=ns['native'],ns['raw'],ns['pointer']
def literal(ptr):
 u=pointer(pointer(ptr));assert u>>29==5;i=(u&0x1fffffff)>>1;n,o=struct.unpack_from('<2I',(R/'transformed/region-0.decoded.bin').read_bytes(),i*8);return (R/'transformed/region-4.decoded.bin').read_bytes()[o:o+n].decode()
rows=list(csv.DictReader((folder/'status.tsv').open(),delimiter='\t'));assert len(rows)==26 and all(x['completed']=='true' and not x['error'] for x in rows)
lang=R/'assetripper-baseline/ExportedProject/Assets/Resources/I2Languages.asset';source=lang.read_text();names=['SINGLE','LASER','PIERCE','SHOTGUN','EXPLOSIVE','MISSILE','BLAST_SNIPER'];terms=[]
for name in names:
 for suffix in ['', '_ex']:
  c=(folder/('Gun_get_'+name+suffix+'.c')).read_text();ptrs=list(dict.fromkeys(re.findall(r'PTR_DAT_([0-9a-f]{8})',c)));key=literal(int(ptrs[1],16)-0x100000);assert key=='Gun/'+name+suffix,(name,key)
  m=re.search(r'    - Term: '+re.escape(key)+r'\n      TermType: 0\n      Languages:\n(.*?)      Flags:',source,re.S);assert m,key
  values=[]
  for line in m[1].splitlines():
   v=re.match(r'      - (.*)',line)
   if v:values.append(ast.literal_eval(v[1]) if v[1].startswith('"') else v[1].strip("'"))
  assert len(values)==14 and all(values),(key,len(values));terms.append({'Type':name,'Description':bool(suffix),'Key':key,'Values':values,'nativeKeyPointer':hex(int(ptrs[1],16)-0x100000)})
text={'LocaleCodes':json.loads((P/'Assets/Recovery/Resources/OriginalStarCatalogue.json').read_text())['LocaleCodes'],'Rows':[{k:v for k,v in t.items() if k in ['Type','Description','Key','Values']} for t in terms]}
(P/'Assets/Recovery/Resources/OriginalWeaponText.json').write_text(json.dumps(text,ensure_ascii=False,indent=2)+'\n')
methods=[]
for line in (Q/'native-weapon-detail-client-queries.tsv').read_text().splitlines():
 va,name,first,end=line.split('\t');a,b=int(va,16),int(end,16);assert native[raw(a):raw(a)+16].hex()==first;methods.append(dict(preferredVa=va,name=name,end=end,first16=first,sha256=hashlib.sha256(native[raw(a):raw(a)+b-a]).hexdigest(),outputs={str((folder/(name+'.'+ext)).relative_to(R)):hashlib.sha256((folder/(name+'.'+ext)).read_bytes()).hexdigest() for ext in ['c','asm']}))
prior=set()
for item in json.loads((Q/'VERIFICATION.json').read_text())['native_outputs']:
 if item['folder']==folder.name:continue
 for x in csv.DictReader((R/item['folder']/'status.tsv').open(),delimiter='\t'):
  if x['completed']=='true' and not x['error']:prior.add(x['preferred_va'])
current={m['preferredVa'] for m in methods}
out=dict(rule=59,target='com.Chodun.CatGunner 1.1.61 vc257 ARM64',nativeSha256=hashlib.sha256(native).hexdigest(),allCompleted=True,businessMethods=20,exceptionHelpers=6,methods=methods,terms=terms,languageSource={'path':str(lang),'sha256':hashlib.sha256(lang.read_bytes()).hexdigest()},speedFormat=literal(0x5d5e6d0),registeredQueryCount={'before':len(prior),'after':len(prior|current),'new':len(current-prior)},nativeRules={'type':'Gun_list[gun].type -> seven generated I2 getters','description':'Explain_Return maps same enum to corresponding _ex term, invalid returns null','detail':'original name from catalogue; damage original InfVal_change adapter remains; float.ToString wrapped in {0}s','acquired':'disable, original sprites/colors/grade/type; enable restarts original Open2sec Animator; original Background remains hidden; Destroy_Time2 scaled lifetime autohides','click':'original Gun_Item.OnPointerUp valid press/non-drag/non-auto routes normal detail or temporary ad then Button1 entry volume (nullable override zero), pitch1'},adapters=['System-language selection for these14 original terms only; full I2 language state/options not recovered','Existing IPointerClickHandler routing rather than exact original OnPointerUp; original state guards remain','Independent DecimalAmount display remains, not exact original InfVal formatter','Original animation/layout preserved; extracted original text resource added; runtime original SC font/material Chinese compatibility adapter','Local rewarded ads and purchases remain user-authorized simulations; no SDK/charge/production service'],scopeComplete=False)
assert literal(0x5d59050)=='';out['invalidTypeNameLiteral']='';out['audioAbi']={'call':'Gun_Item.OnPointerUp 0x2b71778 -> Sound_manager.PlaySfx 0x2b1f10c','registers':{'w1':1,'x2':0,'s0':1},'meaning':'Button1, nullable volume override absent -> original entry volume; pitch1'};out['originalNewGunComponent']=json.loads((Q/'weapon-detail-original-newgun-component.json').read_text());out['originalToastLifecycle']=json.loads((Q/'weapon-detail-original-toast-lifecycle.json').read_text());out['originalAnimationAssets']=json.loads((Q/'weapon-detail-original-animation-assets.json').read_text());assert out['speedFormat']=='{0}s';(Q/'weapon-detail-native-contract.json').write_text(json.dumps(out,ensure_ascii=False,indent=2));print({'queries':len(methods),'texts':len(terms),'languages':14,'union':out['registeredQueryCount']})
