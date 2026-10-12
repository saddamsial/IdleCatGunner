from pathlib import Path
import json,re,struct,hashlib,yaml
from map_game_methods import ROOT,raw,native,pointer
R=ROOT;B=R/'assetripper-baseline/ExportedProject';P=R.parents[2]/'reconstruction/CatGunnerUnityClient';idx=json.loads((R/'reports/original-main-document-index.json').read_text())
with (B/'Assets/Scenes/Main.unity').open('rb') as f:
 def doc(k):
  _,o,n=idx[str(k)];f.seek(o);return yaml.safe_load(f.read(n).decode().split('\n',1)[1])['MonoBehaviour']
 relic=doc(123933);draw=doc(124806);adventure=doc(123441)
st=(R/'transformed/region-0.decoded.bin').read_bytes();sd=(R/'transformed/region-4.decoded.bin').read_bytes();strings={}
for va in [0x5d61f18,0x5d61f28,0x5d63080,0x5d63088,0x5d63048,0x5d63050,0x5d63058,0x5d63040]:
 e=pointer(pointer(va));assert e>>29==5;i=(e&0x1fffffff)>>1;n,o=struct.unpack_from('<2I',st,i*8);strings[hex(va)]=sd[o:o+n].decode()
# Native localization getters provide term keys, not localized display strings.
for path in sorted((R/'native-relic-client-reviewed').glob('Relic_get_*.c')):
 txt=path.read_text();va=int(re.findall(r'PTR_DAT_([0-9a-f]+)',txt)[-1],16)-0x100000
 e=pointer(pointer(va));assert e>>29==5;i=(e&0x1fffffff)>>1;n,o=struct.unpack_from('<2I',st,i*8);strings[path.stem]=sd[o:o+n].decode()
rows=[x.split('\t') for x in (R/'native-relic-client-reviewed/status.tsv').read_text().splitlines()[1:]];assert len(rows)==77 and all(x[3]=='true' for x in rows)
for k in ['Damage_Balance','Money_Balance','CriDmg_Balance']:
 assert len(relic[k])==300
 for v in relic[k]:v['s_digits']=str(v['s_digits'])
assert [v['Type'] for v in relic['Relic_list']]==[0,1,2,11,12,3,4,5,10,12,6,7,8,9,12]
contract={'target':'com.Chodun.CatGunner 1.1.61/vc257/arm64','original_scene_sha256':hashlib.sha256((B/'Assets/Scenes/Main.unity').read_bytes()).hexdigest(),'native_sha256':hashlib.sha256(native).hexdigest(),'metadata_sha256':hashlib.sha256((R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes()).hexdigest(),'native_exports':{'business_methods':71,'helpers':6,'completed':77,'first16bytes_verified':True},'source_manager_component':123933,'rows':relic['Relic_list'],'tables':{k:relic[k] for k in ['Damage_Balance','Money_Balance','CriDmg_Balance']},'core_sprites':adventure['Core_sprites'],'literals':strings,'native_reset_constants':struct.unpack_from('<4i',native,raw(0x106d130)),'animation':{k:draw[k] for k in ['Single_CloseDelay','Multi_Interval','Page_Delay']},'rules':{'draw':'Cost20 per draw from selected one of4 independent core wallets. Types0..2 use five contiguous rows; type3 uses15. Uniform among rows below type max; if all max, uniform entire group. First acquisition unlocks with Count0/Lv0; duplicates Count+=1.','upgrade':'Lv<max && Count>=clamp(2*Lv+2,2,50); increment level and spend duplicate shards. Does not spend cores/diamonds. UI color changes, ordinary native gate has no separate unlock test.','values':'Types0/3/6 raw table;1/4/7 table*1.5 discard fraction;2/5/8 table*2. Types9/12=(Lv+1)*2;10=(Lv+1)*10;11=(Lv+1)*5. Aggregate unlocked only; damage/money/critical baseline100; movement/skip0, offline0/rebirth100.','table_boundary':'Native MaxLv allows300 for types0..8 but shipped/startup tables have indices0..299. Adapter rejects saved Lv300 and blocks299-to300 before mutation; no invented row or silent clamping.', 'startup':'Start calls Value_Reload only; serialized300-entry tables retained. Optional Balance_Reload generates different300-entry tables and is not used by this ordinary startup path.','draw_ui':'12 items/page; ceiling page count confirmed FRINTP/FCVTPS assembly where decompiler printed truncation. Single close gate0.5s; multi0.1s per item and0.3s page wait.'},'adapters':['independent decimal arithmetic preserving shipped coefficients and 1.5 discard order','original saved4 core wallets directly, no fake grant or commercial Core_Get use','strict malformed saved state rejection; absent neutral legacy arrays initialized','local notifications/save hooks replace global managers and analytics','local readable UI labels while full I2 localization remains pending'],'excluded':['AppsFlyer telemetry','core IAP purchases/SDK/ads','dispatch generation and offline rewards pending separately','full I2 localization, full UI animation and device/pixel parity'],'runtime_validation':'pending'}
assert contract['original_scene_sha256']=='e672f743a687af8268ef45408c922d6ddc7edce2cf40b9b2531fe3ede23aba7b'
assert contract['native_sha256']=='80eb8bcbebd058ffb4beac5d8d7d544066587a7a1abee8898874847ff13dc583'
assert contract['metadata_sha256']=='86af4f8faf83d791c0a8679d3643056d8a643ce9d41bf71afd2c4e100f466884'
previous_path=R/'reports/original-relic-client-contract.json'
if previous_path.exists():
 previous=json.loads(previous_path.read_text())
 for key in ['native_sha256','metadata_sha256','original_scene_sha256']:assert previous[key]==contract[key]
 for key in ['validation','runtime_validation','unsupported_ui_types']: 
  if key in previous:contract[key]=previous[key]
 for key in ['adapters','excluded']:
  for item in previous.get(key,[]):
   if item not in contract[key]:contract[key].append(item)
(R/'reports/original-relic-client-contract.json').write_text(json.dumps(contract,indent=2)+'\n')
(P/'Assets/Recovery/Resources/OriginalRelicCatalogue.json').write_text(json.dumps({'Rows':relic['Relic_list'],**contract['tables'],'LevelFormat':strings['0x5d61f18'],'CountFormat':strings['0x5d61f28'],'MaxText':strings['0x5d63080'],'PercentTexts':[strings['0x5d63050'],strings['0x5d63058'],strings['0x5d63048']]},indent=2)+'\n')
print('15 original rows / three300-entry tables /77 native exports',strings,contract['native_reset_constants'])
