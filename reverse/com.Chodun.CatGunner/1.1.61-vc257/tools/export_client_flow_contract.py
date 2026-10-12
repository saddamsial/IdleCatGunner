"""Freeze vc257 flow evidence and distinguish business rules from local bindings."""
from pathlib import Path
import json, hashlib, csv, re, struct
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
folder=R/'native-client-flow-reviewed-v4'
with (folder/'status.tsv').open() as f:rows=list(csv.DictReader(f,delimiter='\t'))
assert all(row['completed']=='true' for row in rows)
methods=json.loads((R/'reports/game-method-map.json').read_text())
selected=[]
for row in rows:
    path=folder/(row['name']+'.c')
    selected.append({**row,'c_sha256':sha(path),'asm_sha256':sha(folder/(row['name']+'.asm'))})
sources=['RecoveryForestClient','GameSlider','SlicedFilledImage','Upgrade_Ingame','Currency','OriginalSaveArchive','OriginalBalanceCatalogue']
contract={
 'target':{'package':'com.Chodun.CatGunner','version':'1.1.61','version_code':257,'abi':'arm64-v8a'},
 'native_sha256':'80eb8bcbebd058ffb4beac5d8d7d544066587a7a1abee8898874847ff13dc583',
 'metadata_sha256':'86af4f8faf83d791c0a8679d3643056d8a643ce9d41bf71afd2c4e100f466884',
 'native_exports':{'folder':folder.name,'queries':len(rows),'completed':len(rows),'methods':selected,'meaning':'Bounded C/ASM export, not automatically restored full C# source'},
 'forest':{'evidence':'exact-native','spawn_position':[-100,0,0],'base_timer_seconds':180,'wave_range':[0,4],
    'advance':'waves0..3 increment; wave4 becomes next stage wave0',
    'win_order':['gaming false','progress1','advance stage/wave','update maximum stage*10+wave','Win SFX11','Win UI on','loading coroutine'],
    'fail_order':['gaming false','current tree progress','Fail UI on','Fail SFX12','same stage/wave loading coroutine'],
    'loading_seconds':{'at_max':[2,1.5,.2],'below_max':[1,.75,.2]},
    'loading_order':['wait','loading UI on','wait','GameStart','wait','win/fail/loading UI off'],
    'relic_skip_original':'Strict Random.value*100<skipPercent, an extra advance only if candidate stage*10+wave<maximum; fresh profile skip0; nonneutral manager not integrated',
    'premium_timer_original':'PlusPack.Is_Active(0) doubles timer. No production entitlement granted; current local initial profile uses180.'},
 'economy':{'evidence':'exact-native','credit_trigger':'Enemy.Die BEFORE Tree.Die_Reload; not particle arrival',
    'gates':['is_Die false','is_gaming true','is_MoneyDontDrop false'],
    'chain':['UpgradeMoney percent','RebirthMoney percent','SkinMoney percent','PetMoney percent','RelicMoney percent','active Money buff multiplier'],
    'current_binding':'Initial neutral profile, ordinary UpgradeMoney catalogue. Nonneutral collections and buffs explicitly pending.',
    'credits':['wallet','accumulated wallet','money changed event'],'no_extra_wave_cash':True,
    'upgrades':{'types':['Power','Speed','Money'],'price_source':'original10001-entry cache at current level','max_level':10000,'affordable':'wallet>=price',
        'success':['subtract price','increment level','refresh hero damage/cooldown','refresh original panel','Upgrade SFX4','restart original animation object'],
        'hold_delay':.4,'hold_interval':.1,'hold_stops':'pointer up, disable, or first failed upgrade'}},
 'ui':{'evidence':'exact-serialized plus exact-native control','stage_literal':'Stage {0}-{1}','stage_numbers':'stage+1,wave+1',
    'stage_fill':'wave/4','progress_literal':'{0}%','percent':'truncate(value*100)','level_literal':'Lv.{0}','max_literal':'Max',
    'roots':[947,277,36876,308,1095,746,755,1372,38821,5572,5571],
    'external_progress_roots':[795,57,1290],'external_progress_components':[123917,123014,117282],
    'persistent_callbacks':'Original Button.onClick→Upgrade_Ingame.Touch preserved, no duplicate runtime listener',
    'shared_canvas':{'count':1,'game_objects':11730,'original_roots':[866,415,455],
        'safe_area_order':{'FloatingJoystick':0,'Main_UI':1,'Ingame':7},
        'repair_report':'forest-client-canvas-merge.json','original_order_report':'original-client-ui-sibling-order.json',
        'meaning':'Original shared ancestry merged through Editor APIs; upgrade screen positions unchanged. Actual pointer routing and world joystick checked separately.'},
    'renderer':'Original MaskableGraphic, fields, directional nine-slice cell clipping restored through public VertexHelper. Atlas/material tracking, alpha hit testing and full visual parity remain compatibility boundaries.'},
 'local_state':{'evidence':'offline-substitute integration with recovered original codec','codec':'UTF8 JSON→Base64; .tmp/main/.bak rotation and fallback',
    'folder':'Application.persistentDataPath/RecoveredClient-vc257','phone_save_read':False,'original_161_fields_preserved':True,
    'bound_fields':['Money','Money_Accum','Upgrade_Lv','Stage_Now','Level_Now','Stage_Value_Max','initial Selected_items'],
    'local_autosave_seconds':5,'autosave_native_parity':False,'unsupported_profiles':'rejected without replacing existing files',
    'no_paid_or_ad_entitlements_granted':True},
 'implementation_sha256':{name:sha(P/('Assets/Recovery/Scripts/'+name+'.cs')) for name in sources},
 'scene':'Assets/Recovery/Scenes/RecoveredClient.unity','original_forest_acceptance_scene_preserved':True,
 'pending':['full Main startup and all pages','inventory/equipment changes and companions','nonneutral rebirth/pet/skin/relic/fish/buff managers','missions/season rollover/rewards','other game modes',
    'native floating money text and tree death particle pool','original commercial InfVal precision/abbreviation','full visual/Player/phone/service acceptance'],
 'full_client_restored':False
}
(R/'reports/original-client-flow-contract.json').write_text(json.dumps(contract,ensure_ascii=False,indent=2)+'\n')
print('Client flow evidence:',len(rows),'bounded exports; source hashes frozen; full client remains incomplete')
