from pathlib import Path
import json,re,struct,hashlib,yaml
from map_game_methods import ROOT,raw,native,pointer
R=ROOT;B=R/'assetripper-baseline/ExportedProject';P=R.parents[2]/'reconstruction/CatGunnerUnityClient';idx=json.loads((R/'reports/original-main-document-index.json').read_text())
with (B/'Assets/Scenes/Main.unity').open('rb') as f:
 def doc(k):
  _,o,n=idx[str(k)];f.seek(o);return yaml.safe_load(f.read(n).decode().split('\n',1)[1])['MonoBehaviour']
 skin=doc(123519); popup=doc(124065)
 cats=[{'original_component':k,'gameObject':doc(k)['m_GameObject']['fileID'],'skin_renderer':doc(k)['skin_spriteRenderer']['fileID'],'hand_renderer':doc(k)['hand_spriteRenderer']['fileID']} for k in [136808,136809,136810,147400]]
assert struct.unpack_from('<2i',native,raw(0x106f668))==(10,5)
prices=list(struct.unpack('<25i',bytes.fromhex(str(skin['Price_Balance']))))
assert prices==[i*100 for i in range(25)]
assert skin['Skin_list']==[{'Damage':i*16,'Speed':i*10,'Money':i*5} for i in range(25)]
# YAML interprets the unquoted packed boolean string as an integer. Read its exact source.
with (B/'Assets/Scenes/Main.unity').open('rb') as f:
 _,o,n=idx['123519'];f.seek(o);source=f.read(n).decode();initial=bytes.fromhex(re.search(r'  Skin_Unlock: (\w+)',source)[1])
assert list(initial)==[1]+[0]*24
st=(R/'transformed/region-0.decoded.bin').read_bytes();sd=(R/'transformed/region-4.decoded.bin').read_bytes();strings={}
for va in [0x5d63810,0x5d63398,0x5d649c8]:
 e=pointer(pointer(va));assert e>>29==5;i=(e&0x1fffffff)>>1;n,o=struct.unpack_from('<2I',st,i*8);strings[hex(va)]=sd[o:o+n].decode()
rows=[x.split('\t') for x in (R/'native-skin-client-reviewed/status.tsv').read_text().splitlines()[1:]];assert len(rows)==40 and all(x[3]=='true' for x in rows)
contract={'target':'com.Chodun.CatGunner 1.1.61/vc257/arm64','native_sha256':hashlib.sha256(native).hexdigest(),'metadata_sha256':hashlib.sha256((R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes()).hexdigest(),'original_scene_sha256':hashlib.sha256((B/'Assets/Scenes/Main.unity').read_bytes()).hexdigest(),'native_exports':{'business_methods':34,'helpers':6,'completed':40,'first16bytes_verified':True},'rows':skin['Skin_list'],'prices':prices,'initial_unlock':list(initial),'colors':skin['Skin_Colors'],'portrait_sprites':skin['Skin_sprites'],'bone_sprites':skin['Skin_Bone_sprites'],'item_components':skin['Skin_item_list'],'cat_renderers':cats,'literals':strings,'roots':[480,1160],'popup_original_component':124065,'rules':{'balance':'Damage=16*i; Speed=10*i; Money=5*i; Price=100*i','purchase':'Locked && Dia>=price: Lose_Dia(price,reason2), then unlock. Does not select. _useDia += price*3 in native Lose_Dia. Local save hook replaces global5s throttle and external analytics.','select':'Unlocked only; set Selected_num; update all ordinary cat sprites and hand colors; no bonus change on selection. Paid helper excluded.','bonuses':'100 + sum of each stat across all unlocked skins, independent of selected skin. Skin money multiplier follows rebirth and precedes pet in native money chain.','ui':'Previous/next bounded; locked overlay, purchase/selected/select exclusive; price interactable and white/disabled color based on diamond balance.'},'adapters':['independent recovery profile, strict malformed nonempty state rejection, absent neutral legacy skin array initialized to original first skin','original serialized skin renderer references restored through Editor API','local wallet notifications and save hooks; existing decimal numeric backend','original TMP material/font compatibility'],'excluded':['developer Unlock_All / Skin_Value_Zero','AppsFlyer analytics','paid helper entitlement','full I2 localization and device/pixel parity'],'runtime_validation':'pending'}
assert contract['native_sha256']=='80eb8bcbebd058ffb4beac5d8d7d544066587a7a1abee8898874847ff13dc583'
assert contract['metadata_sha256']=='86af4f8faf83d791c0a8679d3643056d8a643ce9d41bf71afd2c4e100f466884'
assert contract['original_scene_sha256']=='e672f743a687af8268ef45408c922d6ddc7edce2cf40b9b2531fe3ede23aba7b'
previous_path=R/'reports/original-skin-client-contract.json'
if previous_path.exists():
 previous=json.loads(previous_path.read_text())
 for key in ['native_sha256','metadata_sha256','original_scene_sha256']:assert previous[key]==contract[key]
 for key in ['validation','runtime_validation','unsupported_ui_types']:
  if key in previous:contract[key]=previous[key]
 for entry in previous.get('excluded',[]):
  if entry not in contract['excluded']:contract['excluded'].append(entry)
(R/'reports/original-skin-client-contract.json').write_text(json.dumps(contract,indent=2)+'\n')
(P/'Assets/Recovery/Resources/OriginalSkinCatalogue.json').write_text(json.dumps({'Rows':skin['Skin_list'],'Prices':prices,'PercentFormat':strings['0x5d63810'],'PriceFormat':strings['0x5d63398']},indent=2)+'\n')
print('25 original rows/prices/colors/portraits/bones; 40 verified native exports')
