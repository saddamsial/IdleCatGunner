"""Export only matching serialized package equipment; never read player saves."""
from pathlib import Path
import json,hashlib
R=Path(__file__).resolve().parents[1]
P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
def component(n):
 p=R/'serialized-components'/('level0-'+str(n)+'.json')
 return json.loads(p.read_text())['data'],{'path':str(p.relative_to(R)),'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}
g,gs=component(123082);skin,ss=component(123519);pet,ps=component(123446);star,sts=component(124414);reb,rs=component(124798)
index=json.loads((R/'reports/component-decoding-index.json').read_text())
fid=next(x['path_id'] for x in index if x['type']=='Fish_manager');fish,fs=component(fid)
rid=next(x['path_id'] for x in index if x['type']=='Relic_manager');relic,rels=component(rid)
assert len(g['Gun_list'])==65 and g['Selected_items']==[0,-1,-1]
assert pet['Selected_items']==[-1,-1,-1] and star['Slot_Lv']==[0,0,0]
assert not any(x['is_Unlock'] for x in fish['Fish_info_list'])
assert not any(x['is_Unlock'] for x in relic['Relic_list'])
assert skin['Skin_Unlock']==[True]+[False]*24 and skin['Skin_list'][0]=={'Damage':0,'Speed':0,'Money':0}
assert reb['Upgrade_list'][0]['Value_balance'][0]['s_digits']=='0' and reb['Upgrade_list'][1]['Value_balance'][0]['s_digits']=='0'
data={'Gun_list':g['Gun_list'],'Selected_items':g['Selected_items'],'Gun_Collect':g['Gun_Collect'],
 'Skin_Damage_Percent':100,'Skin_Speed_Percent':100,'Pet_Speed_Percent':100,'Relic_MoveSpeed_Add':0,
 'Rebirth_Damage_Percent':100,'Rebirth_Speed_Percent':100,'Relic_Damage_Percent':100,'Relic_Critical_Percent':100,
 'Fish_Damage_Add':0,'Fish_Critical_Add':0,'Fish_Critical_Chance':0,'Star_Slot_Lv':star['Slot_Lv']}
out=P/'Assets/Recovery/Resources/OriginalEquipmentCatalogue.json'
out.write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
report={'target':'com.Chodun.CatGunner 1.1.61 vc257','output':str(out),'sha256':hashlib.sha256(out.read_bytes()).hexdigest(),
 'guns':65,'initial_equipped':g['Selected_items'],'sources':[gs,ss,ps,sts,rs,fs,rels],
 'neutral_values':'Native Skin_Value_Reload, Pet_Reload, Rebirth *_return, Relic .cctor/Value_Reload, Fish empty unlock set, Star lv0. No active buff or cleared-stage boost.',
 'boundary':'Package initial-profile adapter. Existing player saves, online sheet overrides, ownership changes, service lifecycles and full manager initialization are not loaded.'}
(R/'reports/equipment-catalogue-export.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
print('Exported',report['guns'],'guns; initial slots',report['initial_equipped'])
