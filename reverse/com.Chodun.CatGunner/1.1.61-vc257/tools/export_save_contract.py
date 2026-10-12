"""Generate data-only save DTOs from verified native field contracts."""
from pathlib import Path
import json
R=Path(__file__).resolve().parents[1]
P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
ts={t['index']:t for t in json.loads((R/'reports/resolved-type-schema.json').read_text())}
selected={};aliases={7335:'OriginalSaveData',7332:'AdventureMapSave',7333:'AdventureMapTypeSave',7334:'RelicSave',7371:'GainEntrySave',7603:'DiaPigSave'}
primitive={'System.String':'string','System.Boolean':'bool','System.Int32':'int','System.Int64':'long','System.Single':'float','System.Double':'double'}
def signature(s):
 name=s['name']
 if name in primitive:return primitive[name]
 if name=='InfiniteValue.InfVal':return 'OriginalAmount'
 if s['kind']==29:return signature(s['element'])+'[]'
 if s['kind']==21 and s['generic_base']['name']=='System.Collections.Generic.List`1':return 'List<'+signature(s['arguments'][0])+'>'
 i=s.get('type_definition_index');assert i in aliases,(name,i)
 visit(i);return aliases[i]
def visit(i):
 if i in selected:return
 selected[i]=[]
 for f in ts[i]['fields']:
  assert f['signature']['attrs']&7==6 and not f['signature']['attrs']&0x10,f
  selected[i].append((f['name'],signature(f['signature'])))
visit(7335)
source=['using System;','using System.Collections.Generic;','','namespace CatGunner.Recovery','{',
 '// Data contract only: 161 original SaveData fields and six nested DTOs.',
 '// Constructor values below follow matching native SaveData::.ctor; live state collection remains pending.']
for i,fields in selected.items():
 source.append('    [Serializable] public sealed class '+aliases[i]+'\n    {')
 for name,typ in fields:
  suffix=''
  if i==7335:
   if name in ['Money','Money_Accum','Ruby']:suffix=' = new OriginalAmount {s_digits="0",s_exponent=0}'
   if name in ['SentWaveRatios','ProcessedTxnIds','PurchaseHistory','FishInventory']:suffix=' = new '+typ+'()'
   if name in ['AD_Gun_SlotIndex','AD_Gun_Num','Raid_Season_Index','Pig_Season_Index','RaidMission_Season_Index','Raid_Helper_Season_Index']:suffix=' = -1'
  source.append('        public '+typ+' '+name+suffix+';')
 source.append('    }')
source.append('}')
p=P/'Assets/Recovery/Scripts/OriginalSaveData.cs';p.write_text('\n'.join(source)+'\n')
(R/'reports/save-contract-export.json').write_text(json.dumps({'main_fields':len(selected[7335]),'types':{aliases[i]:len(f) for i,f in selected.items()},'evidence':'exact-native-schema; native ctor sentinels and collection construction reviewed; InfiniteValue numeric serialization uses independent DTO adapter; no phone private data collected'},indent=2)+'\n')
print('Generated',len(selected[7335]),'save fields',len(selected),'data contracts')
