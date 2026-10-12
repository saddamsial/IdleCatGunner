"""Recheck matching native inputs, query gates, original banner assets and saved profile."""
from pathlib import Path
import json,hashlib,struct,re
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'assetripper-baseline/ExportedProject';reports=R/'reports'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
prior=json.loads((reports/'currency-feedback-source-and-user-save-audit.json').read_text())
frozen=[]
for v in prior['frozen_inputs']:
 p=Path(v['path']);h=sha(p);assert h==v['sha256'];frozen.append({**v,'sha256':h,'unchanged':True})
native=Path(frozen[1]['path']).read_bytes()
phoff=struct.unpack_from('<Q',native,32)[0];phsize,phnum=struct.unpack_from('<HH',native,54)
segments=[]
for i in range(phnum):
 typ,flags,off,va,pa,size,mem,align=struct.unpack_from('<II6Q',native,phoff+i*phsize)
 if typ==1:segments.append((va,va+size,off))
def raw(va):
 for start,end,off in segments:
  if start<=va<end:return off+va-start
 raise ValueError(hex(va))
queries={}
for p in reports.glob('native-*-queries.tsv'):
 for line in p.read_text().splitlines():
  cols=line.split('\t')
  if len(cols)==4:
   try:va=int(cols[0],16)
   except ValueError:continue
   if va not in queries:queries[va]=(cols,p.name)
selected=[('native-client-flow-reviewed-v4','Tree_manager_Game_Win',0x2bad174),('native-client-flow-reviewed-v4','Tree_manager_Game_Start',0x2baac18),('native-client-flow-reviewed-v4','Tree_manager_Game_Fail',0x2bad740),('native-client-flow-reviewed-v4','_Loading_Then_Start_d__47_MoveNext',0x2bae2dc),('native-battle','Tree_manager_StageAdvance',0x2bad6ac),('native-relic-client-reviewed','Relic_manager_Value_Reload',0x2b31f8c)]
selected.extend(('native-settlement-scrolling-reviewed',name,va) for va,name in [(0x2b27404,'Scrolling_Start'),(0x2b2745c,'Scrolling_Update'),(0x2b274e8,'Scrolling__ctor')])
methods=[]
for folder,name,va in selected:
 cols,q=queries[va];assert native[raw(va):raw(va)+16].hex()==cols[2];end=int(cols[3],16);assert end>va
 c=R/folder/(name+'.c');asm=c.with_suffix('.asm');assert c.exists() and asm.exists(),c
 methods.append({'name':name,'preferred_va':hex(va),'ghidra_va':hex(va+0x100000),'exclusive_bound':hex(end),'query':q,'first16bytes_verified':True,'c':str(c.relative_to(R)),'c_sha256':sha(c),'asm_sha256':sha(asm)})
status=[x.split('\t') for x in (R/'native-settlement-scrolling-reviewed/status.tsv').read_text().splitlines()[1:]]
assert len(status)==9 and all(x[3]=='true' for x in status)
schema=json.loads((reports/'resolved-type-schema.json').read_text());fields={}
for name,wanted in [('Scrolling',{'Speed','img'}),('Tree_manager',{'Stage_Now','Level_Now','Stage_Value_Max','_pendingGameSkipUI','GameSkip_UI'}),('Relic_manager',{'Skip_Value'})]:
 d=next(x for x in schema if x['image']=='Assembly-CSharp.dll' and x['name']==name)
 fields[name]=[{k:f[k] for k in ['name','token','native_offset','serialization_visibility']} for f in d['fields'] if f['name'] in wanted]
assets=['Assets/AnimatorController/GameWin_0.controller','Assets/AnimationClip/Win_0.anim','Assets/Texture2D/Pattern.png']
preserved=[]
for rel in assets:
 for suffix in ('','.meta'):
  a=B/(rel+suffix);b=P/(rel+suffix);assert sha(a)==sha(b),(rel,suffix)
  preserved.append({'asset':rel+suffix,'sha256':sha(b),'byte_identical_to_baseline':True})
for name in ['Scrolling','Tree_manager']:
 a=B/('Assets/Scripts/Assembly-CSharp/'+name+'.cs.meta');b=P/('Assets/Recovery/Scripts/'+name+'.cs.meta');assert sha(a)==sha(b)
 preserved.append({'asset':str(b.relative_to(P)),'sha256':sha(b),'byte_identical_to_baseline':True})
before=json.loads((reports/'relic-skip-before.json').read_text());saves=[]
for v in before:
 if '/Library/Application Support/' in v['path']:
  p=Path(v['path']);h=sha(p);assert h==v['sha256'];saves.append({'path':v['path'],'sha256':h,'bytes':p.stat().st_size,'unchanged_from_turn_start':True})
contract={'target':'com.Chodun.CatGunner 1.1.61/vc257/arm64','frozen_inputs':frozen,'methods':methods,'new_native_exports':{'business':3,'helpers':6,'completed':9},'reused_native_methods':6,'native_fields':fields,'original_banner_components':json.loads((reports/'original-settlement-scrolling-components.json').read_text()),'preserved_assets':preserved,'rules':{'advance':'One normal Advance. When unlocked aggregated Skip_Value>=1, consume one Unity Random.value. If roll*100<Skip_Value, advance a temporary candidate once. Accept only candidateStage*10+candidateLevel<old Stage_Value_Max. Then update maximum from resulting current wave. No chain or chance clamp.','rewards':'One real win mission increment. Skipped wave has no killed-tree income, tree mission increment or extra win mission. No diamond award.','notification':'Private transient flag at Tree_manager+0x50. Game_Start sets GameSkip_UI active from it and clears it. Original GameWin_0 controller/Win_0 clip moves/scales Panel for1.5s. It has no disable event; next Game_Start controls root. Loading clears Win/Fail/Loading after0.2s, not the skip root.','scrolling':'Start caches RawImage on same object. Update offsets uvRect.x/y by original serialized Speed times scaled Time.deltaTime; width/height retained, no modulo, no OnEnable reset. Original three banners Speed(-0.1,0), uv width26.2.'},'adapters':['Per-client decimal/save/event bridge retained; no random injection in production.','Existing local Restart and mode-entry cancellation explicitly discard a pending cue and hide it; this is compatibility behavior, not original empty Game_Restart source.','Independent original Gun5/Lv50 Skip test fixture does not alter user save or original tree HP/positions/timers.'],'remaining':['OfflineProgressManager/OfflineProgressSimulator and offline rewards','Remaining UI/components/animations beyond these three banners','Online/SDK flows and device/pixel acceptance'],'scope_complete':False}
(reports/'original-relic-skip-contract.json').write_text(json.dumps(contract,indent=2)+'\n')
audit={'target':contract['target'],'frozen_inputs':frozen,'user_save':saves,'preserved_assets':preserved,'scene_before_sha256':next(v['sha256'] for v in before if v['path'].endswith('RecoveredClient.unity')),'scene_sha256':sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity'),'scene_changes':'Only three original Scrolling components added through Editor APIs; existing geometry/assets untouched.','current_sources':[{'path':str(p.relative_to(P)),'sha256':sha(p)} for p in [P/'Assets/Recovery/Scripts'/n for n in ['Scrolling.cs','Tree_manager.cs','OriginalForestRules.cs','RecoveryForestClient.cs']]],'scope_complete':False}
(reports/'relic-skip-source-and-user-save-audit.json').write_text(json.dumps(audit,indent=2)+'\n')
print('9 native methods checked (6 reused +3 new),9 new export rows incl6 helpers; original assets and user saves unchanged')
