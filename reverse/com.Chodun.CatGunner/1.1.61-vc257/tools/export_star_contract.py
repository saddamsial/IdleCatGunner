"""Exact vc257 star initializer/literal guards and independent numeric anchors."""
from pathlib import Path
import json, hashlib, struct, math, decimal, re
from map_game_methods import ROOT, pointer, native, raw
R=ROOT; m=(R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes()
native_sha='80eb8bcbebd058ffb4beac5d8d7d544066587a7a1abee8898874847ff13dc583'
metadata_sha='86af4f8faf83d791c0a8679d3643056d8a643ce9d41bf71afd2c4e100f466884'
assert hashlib.sha256(native).hexdigest()==native_sha and hashlib.sha256(m).hexdigest()==metadata_sha
types=json.loads((R/'reports/metadata-type-index.json').read_text())
e=pointer(pointer(0x5d63b40));assert e>>29==4
idx=(e&0x1fffffff)>>1;assert idx==36
byval,field_index=struct.unpack_from('<2i',m,0xf72694+idx*8)
field=next(t for t in types if t['byval_type_index']==byval)['fields'][field_index]
blob=m[9608960:9609040]; rates=list(struct.unpack('<20i',blob))
assert hashlib.sha256(blob).hexdigest().upper()==field['name']=='AE5203495C151C4C45F6458D93B5D328E0C31EAE61946243D5D5D8BDAB1D4BCD'
growth=struct.unpack_from('<d',native,raw(0x1070928))[0];assert growth==1.07
string_table=(R/'transformed/region-0.decoded.bin').read_bytes();data=(R/'transformed/region-4.decoded.bin').read_bytes()
literals=[]
for va in [0x5d63b50,0x5d63b58,0x5d63338,0x5d62d68,0x5d5acc0,0x5d5d528,0x5d63b60,0x5d63b68,0x5d63b70,0x5d719b8]:
 e=pointer(pointer(va));assert e>>29==5;i=(e&0x1fffffff)>>1;n,o=struct.unpack_from('<2I',string_table,i*8)
 literals.append({'preferred_pointer':hex(va),'index':i,'literal':data[o:o+n].decode()})
assert literals[-1]['literal']=='G17'
mult=1.; bonuses=[0]
for level in range(1,21):
 mult=mult*math.pow(growth,level-1)*1.5
 # Native double constructor G17 then ToPrecision(2); independent decimal oracle.
 value=decimal.Decimal(format((mult-1)*100,'.17g')); step=decimal.Decimal(1).scaleb(value.adjusted()-1)
 bonuses.append(int(value.quantize(step,rounding=decimal.ROUND_DOWN)))
exports=[]
for scope in ['star-client','star-numeric','star-feedback']:
 rows=[line.split('\t') for line in (R/('native-'+scope+'-reviewed/status.tsv')).read_text().splitlines()[1:]]
 assert all(row[3]=='true' for row in rows)
 exports.append({'scope':scope,'completed':len(rows),'business_methods':len(rows)-6,'first16bytes_verified':True})
scene=R/'assetripper-baseline/ExportedProject/Assets/Scenes/Main.unity'
assert hashlib.sha256(scene.read_bytes()).hexdigest()=='e672f743a687af8268ef45408c922d6ddc7edce2cf40b9b2531fe3ede23aba7b'
contract={'target':'com.Chodun.CatGunner 1.1.61/vc257/arm64','unity_working':'6000.4.10f1','native_sha256':native_sha,'metadata_sha256':metadata_sha,'original_scene_sha256':hashlib.sha256(scene.read_bytes()).hexdigest(),
 'native_exports':exports,'initializer':{'preferred_pointer':'0x5d63b40','fieldref':idx,'metadata_offset':9608960,'sha256':field['name'],'token':field['token'],'success_rates':rates},
 'growth':{'preferred_va':'0x1070928','double':growth,'step':'1.5 * Pow(1.07,targetLevel-1)','cumulative':'multiply unrounded double accumulator at every level; bonus=ToPrecision((mult-1)*100,2); multiplier100=100+bonus'},
 'bonus_percent_anchors':bonuses,'cost_next_level':[50*i for i in range(1,21)],'rules':{'max_level':20,'unlock_stage_value':390,'pity_target_from':18,'pity_added_per_fail':1,'pity_rate_cap':5,'roll':'Unity integer Random.Range(0,100); success iff roll < rate','charge':'deduct before random, both success and failure pay; failure retains level and adds fail count; success adds level and resets fail count','slot':'Star levels belong to three slots; cats use Array.IndexOf(Cat_list,this), including compacted weapon gaps; Raid uses same slot stars. Swapping guns does not swap stars.'},
 'ui_literals':literals,'original_roots':[1201,274,1753],'meta_preservation':['StarUpgrade_manager','StarUpgrade_popup','Alert'],
 'adapters':['independent recovery wallet/save hooks','BigInteger decimal backend and plain numeric text','strict nonempty corrupt profile rejection; absent/empty star arrays become neutral three-slot state','local success feedback replacing commercial ParticleImage; original emitter source retained','direct dynamic title using original NotoSansSC face and official SDF material; original outline fallback incompatible; currency original textures use official TMP/Sprite'],
 'excluded':['AppsFlyer log','commercial full ParticleImage/InfVal source','full localization and visual parity','backend/player/device acceptance'],'runtime_validation':'pending'}
lang=R/'assetripper-baseline/ExportedProject/Assets/Resources/I2Languages.asset'
resource=R.parents[2]/'reconstruction/CatGunnerUnityClient/Assets/Recovery/Resources/OriginalStarCatalogue.json'
catalogue=json.loads(resource.read_text())
assert catalogue['SuccessRates']==rates
source_text=lang.read_text()
term_map={'SlotUpgrade':'SlotUpgrade','Success':'StarUpgradeSuccess','Fail':'StarUpgradeFail','NotEnoughGem':'NotEnoughGem'}
for key,term in term_map.items():
 match=re.search(r"    - Term: StarUpgrade/"+re.escape(term)+r"\n      TermType: 0\n      Languages:\n(.*?)      Flags:",source_text,re.S)
 assert match is not None
 values=[line.removeprefix('      - ') for line in match.group(1).splitlines()]
 assert len(values)==14 and values==catalogue[key]

contract['localization_source']={'source':str(lang.relative_to(R)),'sha256':hashlib.sha256(lang.read_bytes()).hexdigest(),'locale_codes':catalogue['LocaleCodes'],'terms':{k:catalogue[k] for k in ['SlotUpgrade','Success','Fail','NotEnoughGem']},'adapter':'Chinese system locale uses original zh-CN; all other locales use original English; full I2 lifecycle pending'}
old=R/'reports/original-star-client-contract.json'
if old.exists():
 previous=json.loads(old.read_text())
 for key in ['validation','runtime_validation']:
  if key in previous:contract[key]=previous[key]
(R/'reports/original-star-client-contract.json').write_text(json.dumps(contract,ensure_ascii=False,indent=2)+'\n')
print('Star: initializer80 bytes and10 literals verified; bonuses',bonuses)
