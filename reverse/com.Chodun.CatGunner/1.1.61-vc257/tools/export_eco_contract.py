"""Recheck matching inputs, native gates, original source assets and user saves."""
from pathlib import Path
import hashlib, json, struct, re
R = Path(__file__).resolve().parents[1]
P = R.parents[2]/'reconstruction/CatGunnerUnityClient'
B = R/'assetripper-baseline/ExportedProject'
reports = R/'reports'
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
frozen = []
for row in json.loads((reports/'relic-skip-source-and-user-save-audit.json').read_text())['frozen_inputs']:
    p = Path(row['path']); assert sha(p) == row['sha256']; frozen.append({**row,'unchanged':True})
native = Path(frozen[1]['path']).read_bytes()
phoff = struct.unpack_from('<Q',native,32)[0]; phsize, phnum = struct.unpack_from('<HH',native,54)
segments = [struct.unpack_from('<II6Q',native,phoff+i*phsize) for i in range(phnum)]
def raw(va):
    s = next(s for s in segments if s[0] == 1 and s[3] <= va < s[3]+s[5]); return s[2]+va-s[3]
queries = {}
for p in reports.glob('native-*-queries.tsv'):
    for line in p.read_text().splitlines():
        cols = line.split('\t')
        if len(cols) != 4: continue
        try: va = int(cols[0],16)
        except ValueError: continue
        queries[va] = (cols,p.name)
methods = []
selected = [('native-eco-mode-panel-reviewed','Setting_EcoMode_Change',0x2b21548),('native-eco-mode-panel-reviewed','Setting_EcoMode_Off',0x2b21688),('native-eco-mode-panel-reviewed','Mute_Panel_OnEnable',0x2b44ac8),('native-eco-mode-panel-reviewed','Mute_Panel_OnDisable',0x2b44b14),('native-cat-initialization','Cat_Attack',0x2b3d4ac),('native-settlement-scrolling-reviewed','Scrolling_Start',0x2b27404),('native-settlement-scrolling-reviewed','Scrolling_Update',0x2b2745c)]
selected += [('native-speedrun-client-reviewed','SpeedRun_manager_Game_Enter',0x2ba8828),('native-boss-client-reviewed','Boss_manager_Game_Enter',0x2b45fdc),('native-mine-client-reviewed','Mine_manager_Game_Enter',0x2b4957c),('native-monster-client-reviewed','Monster_manager_Game_Enter',0x2b4d7a4),('native-raid-client-reviewed','Raid_manager_Game_Enter',0x2b577f8)]
for folder, name, va in selected:
    cols,q = queries[va]; assert native[raw(va):raw(va)+16].hex() == cols[2]; assert int(cols[3],16) > va
    c = R/folder/(name+'.c'); asm = c.with_suffix('.asm'); assert c.exists() and asm.exists()
    methods.append({'name':name,'preferred_va':hex(va),'ghidra_va':hex(va+0x100000),'exclusive_bound':cols[3],'first16bytes_verified':True,'query':q,'c':str(c.relative_to(R)),'c_sha256':sha(c),'asm_sha256':sha(asm)})
status = [line.split('\t') for line in (R/'native-eco-mode-panel-reviewed/status.tsv').read_text().splitlines()[1:]]
assert len(status) == 10 and all(r[3] == 'true' and not r[4] for r in status)
schema = json.loads((reports/'resolved-type-schema.json').read_text()); fields = {}
for name, wanted in [('Setting',{'is_eco','EcoMode_Btn_img','EcoCat_img','ExoMode_Color_Disable','ExoMode_Color_Able','Camera_obj','EcoPanel_obj'}),('Cat_manager',{'is_Shoot_Mute'}),('Skin_manager',{'instance','Selected_num','Skin_sprites'})]:
    t = next(t for t in schema if t['image']=='Assembly-CSharp.dll' and t['name']==name)
    fields[name] = [{k:f[k] for k in ['name','token','native_offset','serialization_visibility']} for f in t['fields'] if f['name'] in wanted]
assets = []
for name in ['Setting','Mute_Panel','Scrolling','Hatch']:
    a = B/('Assets/Scripts/Assembly-CSharp/'+name+'.cs.meta'); b = P/('Assets/Recovery/Scripts/'+name+'.cs.meta')
    assert sha(a)==sha(b); assets.append({'asset':str(b.relative_to(P)),'sha256':sha(b),'original_meta_preserved':True})
for guid in ['74fb5d5f851aefd4dac1c30dbc23d44f','e005db95ff0734b4284f93c520c4dfdc','bdf47b9dd70cda54b8acd2df649231e7']:
    matches = [m for m in (B/'Assets').rglob('*.meta') if '\nguid: '+guid+'\n' in m.read_text()]
    assert len(matches)==1; meta=matches[0]
    for a in [meta,Path(str(meta)[:-5])]:
        b=P/a.relative_to(B); assert sha(a)==sha(b); assets.append({'asset':str(b.relative_to(P)),'sha256':sha(b),'byte_identical':True})
before = json.loads((reports/'eco-mode-before.json').read_text()); saves=[]
for row in before:
    if '/Library/Application Support/' not in row['path']: continue
    p=Path(row['path']); assert sha(p)==row['sha256']; saves.append({**row,'unchanged_from_turn_start':True})
contract = {'target':'com.Chodun.CatGunner 1.1.61/vc257/arm64','frozen_inputs':frozen,'methods':methods,'native_export_status':{'business':4,'helpers':6,'completed':10},'fields':fields,
    'type_usage_proof':{'Ghidra_PTR_05e5d5b0':'ELF 0x5d5d5b0 relocation -> cell 0x5ea6b68 -> encoded 0x2000cf55 -> kind1/type26538 = Cat_manager; static offset0 is is_Shoot_Mute','Ghidra_PTR_05e62670':'encoded 0x200135f3 -> type39673 Setting; static is_eco offset0x10','Ghidra_PTR_05e5d4e0':'encoded 0x200138a3 -> type40017 Skin_manager; static instance0x10, Selected_num0x30, Skin_sprites0x50'},
    'rules':{'EcoMode_Change':'XOR static is_eco; use original enabled/disabled image colors; original Main Camera GO350 active=!is_eco; original EcoPanel GO694 active=is_eco; sprite=Skin_sprites[Selected_num] on both transitions. No gameplay/timeScale/FPS/rewards/persistence mutation.',
             'EcoMode_Off':'Only calls Change if currently enabled; otherwise returns without touching UI/sprite.',
             'Mute_Panel':'OnEnable sets Cat_manager.is_Shoot_Mute=true; OnDisable false. Native Cat.Attack retains projectile/recoil/muzzle FX and calls Shoot SFX only when !is_Shoot_Mute && !Setting.is_eco. BGM/other SFX unchanged by these gates.',
             'exit':'Source Main_UI order puts EcoMode_Panel_UI before Btn_list. Same original EcoMode_Btn remains reachable and invokes Change. No invented full-screen tap exit; frozen scene contains no EcoMode_Off persistent callback.',
             'mode_entry':'Five native Game_Enter bodies call Setting.EcoMode_Off after Tree.Game_Exit and before arena setup. Common RecoveryForestClient.SuspendForestForMode now reconnects that call before arena methods access Camera.main.',
             'settings':'Original Setting_Btn opens GO3171, Close_Btn closes it, and native mute toggles use six original ON/OFF objects. Existing local audio preference bridge retained; cloud/restore/email controls disabled when unsupported.',
             'scroll':'Original Hatch source137352 and Scrolling124384, Speed(-.1,-.1), source Pattern texture retained.',
             'animation':'Two source DOTween records 125065/123640: infinite Yoyo/InOutQuad/scaled-time; cat scale1s to(1.05,.85,1), text anchoredPosition2s to(0,120,0). Explicit local RecoveryEcoTween presenters reproduce source parameters; SDK lifecycle not reconstructed.'},
    'original_roots':[9651,694,1069,1810],'preserved_assets':assets,'adapters':['Runtime scene-unload state cleanup; never persists Eco mode.','Existing local audio PlayerPrefs bridge, now exposed in normal client; nonserialized test-only PersistPreferences=false prevents fixture writes.','Two local tween presenters reset on reopen; source SDK autoKill/tween lifetime not reconstructed.','Unconfigured commercial/online/email actions remain disabled.'],
    'remaining':['OfflineProgressManager/Simulator and offline relic consumer','Missing relic table row300','Six remaining absent tutorial HUD controls','Remaining UI/effects/localization and numeric consumers','SDK/cloud/online/trusted clock','Player/device/power consumption acceptance'],'scope_complete':False}
(reports/'original-eco-mode-contract.json').write_text(json.dumps(contract,ensure_ascii=False,indent=2)+'\n')
audit={'target':contract['target'],'frozen_inputs':frozen,'preserved_assets':assets,'user_save':saves,'scene_before_sha256':next(r['sha256'] for r in before if r['path'].endswith('RecoveredClient.unity')),'scene_sha256':sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity'),'source_scope':'52 original objects moved from immutable-source extraction via Editor APIs, native references rebound, source sibling order restored; two explicit local tween components; existing tutorial EcoMode_Btn reference reconnected.','sources':[{'path':str(p.relative_to(P)),'sha256':sha(p)} for p in [P/'Assets/Recovery/Scripts'/n for n in ['Setting.cs','Mute_Panel.cs','Cat_manager.cs','CatCombat.cs','RecoveryEcoTween.cs','RecoveryForestClient.cs']]],'scope_complete':False}
(reports/'eco-mode-source-and-user-save-audit.json').write_text(json.dumps(audit,ensure_ascii=False,indent=2)+'\n')
print('12 native method gates,10 new export rows,3 frozen inputs, original metas/textures and both user saves checked')
