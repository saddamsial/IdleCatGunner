"""Record distinct evidence layers; keep unfiltered public-package failures visible."""
from pathlib import Path
import json,xml.etree.ElementTree as E,csv,datetime
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
def report(name):return json.loads((R/'reports'/name).read_text())
def tests(name):
 root=E.parse(R/'reports'/name).getroot()
 cases=[{'name':x.get('fullname'),'result':x.get('result')} for x in root.iter('test-case')]
 return {'report':name,'total':int(root.get('total')),'passed':int(root.get('passed')),'failed':int(root.get('failed')),'skipped':int(root.get('skipped')),'cases':cases}
old=tests('settings-playmode.xml');old.pop('cases')
latest=tests('recovery-final-playmode.xml');own=[c for c in latest['cases'] if c['name'].startswith(('OriginalSettingsTests.','OriginalBalanceTests.','OriginalSaveTests.','OriginalForestTests.','OriginalPresentationTests.'))]
methods={};native_sets=[]
for folder in ['native-reviewed','native-settings-balance','native-audio','native-save','native-upgrade-flow','native-battle','native-forest-grid','native-forest-lifecycle','native-cat-initialization','native-forest-combat','native-bullet-hit','native-bullet-dependencies','native-bullet-effects-lifecycle','native-cat-target-attack','native-equipment-balance','native-penetrating-hit-reviewed','native-explosion-reviewed','native-missile-reviewed','native-auto-move-reviewed','native-client-flow-reviewed-v4']:
 p=R/folder/'status.tsv'
 if not p.exists():continue
 with p.open() as f:rows=list(csv.DictReader(f,delimiter='\t'))
 for row in rows:
  if row['completed']=='true':methods[row['preferred_va']]=row['name']
 native_sets.append({'folder':folder,'queries':len(rows),'completed':sum(x['completed']=='true' for x in rows),'warning':'Bounded native pseudocode/ASM, not automatically restored C# behavior'})
index=report('game-method-map-summary.json');stage=report('asset-export-staging.json');components=report('component-decoding-index.json');errors=report('component-decoding-errors.json')
data={'updated_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'target':{'package':'com.Chodun.CatGunner','version':'1.1.61','version_code':257,'source':'adb package extraction; wrong XAPK not used'},
 'scope_complete':False,'input_apks_crc_and_device_hash_matches':2,'original_objects_read':157237,'staged_objects_payload_sha_unchanged':stage['objects_unchanged'],
 'metadata':{'definitions':18762,'fields':79822,'methods':142632,'native_signatures':60194,'serialization':report('serialization-resolution-summary.json'),'interpretation':'Verified contracts and indices, not restored behavior'},
 'component_contracts':{'decoded':len(components),'unresolved':len(errors),'unresolved_details':errors},
 'game_method_pointers':index,'native_outputs':native_sets,'native_unique_completed_queries':len(methods),
 'unity_project':str(P),'unity_editor_version':'6000.4.10f1','original_engine_version':'6000.0.61f1',
 'active_scene':'Assets/Recovery/Scenes/RecoveredForest.unity','scene_slices':[{'name':'RecoveredSettings','original_game_objects':88},{'name':'RecoveredForest','original_game_objects_before_input_merge':4615,'merged_input_original_game_objects':7,'merged_projectile_original_game_objects':6978,'merged_target_original_game_objects':2,'total_original_game_objects':11602},{'name':'RecoveredJoystick','original_game_objects':7}],'complete_original_Main':'Isolated immutable baseline; not integrated into active client',
 'audio':{'original_clips_decoded':len(report('audio-extraction.json')),'guid_preserved_wav_imports':len(report('audio-import-manifest.json')),'source':'Matching external .resource FSB; no substitutes'},
 'balance_catalogue':report('balance-catalogue-export.json'),'save_contract':report('save-contract-export.json'),
 'unity_playmode':{'earlier_focused_batch_run':latest,'earlier_batch_own_recovery_cases':len(own),'earlier_batch_own_recovery_passed':sum(x['result']=='Passed' for x in own),'other_public_package_cases':latest['total']-len(own),'earlier_unfiltered_package_run':old,'all_package_tests_passed':False},
 'acceptance':{'script_compile':'passed in latest Unity test build','implemented_slice_playmode':'Historical batch: 8 recovery cases and 3 additionally selected public package cases passed','full_main_runtime':False,'complete_player_build':False,'reconstructed_phone_runtime':False,'original_visual_parity':False,'original_audio_device_parity':False,'production_service_acceptance':False},
 'pending':'See RECOVERY_PROGRESS.md full feature matrix. Native output and caches do not mean all functions restored. No original phone private save read or modified.'}
live=report('live-auto-move-assembly-tests-status.json')['data']['result']
assert live['status']=='completed' and live['summary']['total']==61 and live['summary']['passed']==61
data['unity_playmode']['latest_live_editor_assembly_run']={'report':'live-auto-move-assembly-tests-status.json',**live}
data['acceptance']['implemented_slice_playmode']='51/51 recovery assembly cases passed in live Unity6 Editor'
data['acceptance']['visual_slice']='Original Settings/forest/bones/manual input and actual normal projectile impact/health bar reviewed in GameView; capture target/damage explicit; full game parity pending'
data['unity_playmode']['first_movement_fixture_failure']={'report':'live-movement-tests-first-status.json','summary':report('live-movement-tests-first-status.json')['data']['result']['summary'],'reason':'Original scene FreezePositionY clears injected test Y; isolated fixture corrected, scene constraints retained'}
data['bullet_frontier']=report('original-bullet-frontier.json')
data['projectile_reference_restoration']=report('forest-bullet-reference-restoration.json')
data['unity_playmode']['first_bullet_fixture_failure']={'report':'live-bullet-tests-first-status.json','summary':report('live-bullet-tests-first-status.json')['data']['result']['summary'],'reason':'Fixture searched root for BounceStart; actual original component is on Bounce_Stat child; fixture corrected, asset identity retained'}
data['unity_playmode']['after_material_repair_bullet_run']={'report':'live-bullet-material-tests-status.json',**report('live-bullet-material-tests-status.json')['data']['result']}
data['acceptance']['normal_projectile']='27 original bullets/10 FX, real Collider hit/tree health and death, pool-full rejection/dead reuse, 50-unit distance cap, delayed return and FX scaled-time/throttle verified'
data['acceptance']['shooting_boundary']='Native forest rays/manual idle lock/non-missile aim/normal cooldown and critical branch checked using fixture inputs. Full Cat.Update/AutoMove/AI/equipment/balance/multi-pellet/other weapons/native DamageTextManager/Gamemanager/Ore pending'
for filename in ['projectile-material-validation.json','projectile-visual-state.json','projectile-editor-handoff.json','forest-combat-reference-restoration.json','original-combat-contract.json','cat-combat-field-restoration.json','continuous-attack-visual-state.json','combat-editor-handoff.json']:
 if (R/'reports'/filename).exists():data[filename.removesuffix('.json')]=report(filename)

data['unity_playmode']['combat_first_run']={'report':'live-combat-tests-first-status.json','summary':report('live-combat-tests-first-status.json')['data']['result']['summary'],'reason':'Missing original dynamic Gun_list muzzle binding now restored'}
data['unity_playmode']['combat_second_run']={'report':'live-combat-tests-second-status.json','summary':report('live-combat-tests-second-status.json')['data']['result']['summary'],'reason':'Native gradual face interpolation required correct fixture settling wait'}
data['acceptance']['continuous_single_attack']='Forest native rays/idle lock/aim/cooldown/critical selection and real normal projectile death verified; original 65 Gun bindings/muzzles/recoil retained; equipment/damage fixture explicit, default attacks disabled'
data['forest_contract']=report('original-forest-contract.json')
data['movement_contract']=report('original-movement-contract.json')
data['movement_pending_fields_historical']=report('cat-movement-field-restoration.json')
data['cat_combat_fields_current']=report('cat-combat-field-restoration.json')
data['acceptance']['forest_slice']='501 trees, 5 wave pools, maps, damage/death/respawn, 9-bone SpriteSkin and manual pointer movement checked in live Editor; normal projectile and target/aim/continuous SINGLE attack with explicit equipment/damage inputs checked; startup/rewards/full equipment/balance/AutoMove/AI/full Cat.Update pending'
data['acceptance']['physics_input_foundation']='Original TagManager, DynamicsManager, TimeManager and InputManager imported; previous defaults retained in quarantine'
data['acceptance']['shader_and_font_compatibility']='Public TMP shader, original source-font Alpha8 rebake, original Sprite GUID/texture repair; independent particle compatibility overrides retaining original textures/UV/color/blend and null solid texture default'
data['unity_playmode']['earlier_target_attack_run']={'report':'live-combat-assembly-tests-status.json',**report('live-combat-assembly-tests-status.json')['data']['result']}
data['unity_playmode']['equipment_focused_run']={'report':'live-equipment-tests-first-status.json',**report('live-equipment-tests-first-status.json')['data']['result']}
data['acceptance']['continuous_single_attack']='Package initial gun0/SINGLE, damage100/critical125/chance0/interval0.6; actual ray/aim/cooldown/Collider hits kill original250-health tree in three hits without injected player stats; target position isolated'
data['acceptance']['shooting_boundary']='Explicit package initial-profile adapter, not original manager lifecycle or existing save. Full Cat.Update/AutoMove/AI/non-neutral modifiers/ownership/upgrade UI/online sheet/other weapons/native DamageTextManager/Gamemanager/Ore pending'
data['acceptance']['forest_slice']='501 tree pool/5waves/maps/bones/pointer movement and ordinary projectile/target/aim checks; package initial profile loads movement15 and gun0, default SINGLE attacks enabled at runtime; full startup/economy/progression remain pending'
data['acceptance']['numeric_adapter']='Exact serialized caches and native formula through independent BigInteger/DecimalAmount; original InfVal significant-digit normalization/large-number rounding/abbreviation not accepted'
for name in ['equipment-catalogue-export.json','forest-equipment-bridge-restoration.json','package-equipment-visual-state.json','equipment-editor-handoff.json']:
 if (R/'reports'/name).exists():data[name.removesuffix('.json')]=report(name)
data['unity_playmode']['earlier_equipment_assembly_run']={'report':'live-equipment-assembly-tests-status.json',**report('live-equipment-assembly-tests-status.json')['data']['result']}
data['unity_playmode']['shotgun_focused_run']={'report':'live-shotgun-tests-second-status.json',**report('live-shotgun-tests-second-status.json')['data']['result']}
data['unity_playmode']['shotgun_first_fixture_failure']={'report':'live-shotgun-tests-first-status.json','summary':report('live-shotgun-tests-first-status.json')['data']['result']['summary'],'reason':'First arbitrary tree may be degree1 health450, not250; fixture selects existing250-health original tree. Native probabilities and firing unchanged'}
data['acceptance']['shotgun_volley']='Original2/3pellets, minimum1, individual random angles, single strict critical choice, no dynamic spread, partial pool success/no rollback, normal cooldown on partial success/next-frame retry on zero, and real4 hits at80 kill original250-health tree verified'
data['acceptance']['visual_slice']='Original settings/forest/bones/manual input, normal hit and shotgun first volley reviewed; shotgun250 to90 from two80 pellets; equipped-slot/target-position/pool/RNG fixture explicit; full parity pending'
data['acceptance']['shooting_boundary']='SINGLE/SHOTGUN manual forest paths and package initial profile restored through explicit bridges; full Cat.Update/AutoMove/AI/non-neutral modifiers/manager ownership/save/UI/online sheet/other guns/native DamageTextManager/Gamemanager/Ore pending'
for name in ['original-shotgun-contract.json','forest-shotgun-bridge-restoration.json','shotgun-visual-state.json','shotgun-editor-handoff.json']:
 if (R/'reports'/name).exists():data[name.removesuffix('.json')]=report(name)
data['unity_playmode']['earlier_shotgun_assembly_run']={'report':'live-shotgun-assembly-tests-status.json',**report('live-shotgun-assembly-tests-status.json')['data']['result']}
data['unity_playmode']['penetrating_focused_run']={'report':'live-penetrating-tests-first-status.json',**report('live-penetrating-tests-first-status.json')['data']['result']}
data['acceptance']['penetrating_forest']='PIERCE pre-hit health/equality/nonlethal first hit/consecutive kills beyond two/repeated-id/invalid-or-dead target/pool reset; LASER four survivors once each/obstacle stop; actual physics and auto-attack for gun8/19 and configured2s lifetime verified'
data['acceptance']['shooting_boundary']='SINGLE/SHOTGUN/PIERCE/LASER manual forest through explicit package-profile bridges; UI mode5/Ore, full Cat.Update/AutoMove/AI/ownership/save/UI/online table/explosive/missile/BlastSniper/economy/main remain pending'
for name in ['original-penetrating-contract.json','penetrating-generic-identities.json','forest-penetrating-bridge-restoration.json','penetrating-visual-state.json','penetrating-editor-handoff.json']:
 if (R/'reports'/name).exists():data[name.removesuffix('.json')]=report(name)
data['unity_playmode']['earlier_penetrating_assembly_run']={'report':'live-penetrating-assembly-tests-status.json',**report('live-penetrating-assembly-tests-status.json')['data']['result']}
data['unity_playmode']['explosion_focused_run']={'report':'live-explosion-tests-final-status.json',**report('live-explosion-tests-final-status.json')['data']['result']}
data['unity_playmode']['explosion_first_fixture_failure']={'report':'live-explosion-tests-first-status.json','summary':report('live-explosion-tests-first-status.json')['data']['result']['summary'],'reason':'Original health250 is coefficient25000/exponent-2, direct digit-string comparison skipped waiting; fixture compares full DecimalAmount value; source stats/attack/hit code unchanged'}
data['unity_playmode']['explosion_feedback_fixture_failure']={'report':'live-explosion-tests-second-status.json','summary':report('live-explosion-tests-second-status.json')['data']['result']['summary'],'diagnostic_report':'live-explosion-diagnostic-status.json','reason':'Both real tree damage/death checks passed; transient muzzle/recoil state was asserted after travel ended, moved to immediate Cat.Attack check; animation timing unchanged'}
data['acceptance']['explosive_forest']='Original radius/layer/global trigger query/full damage/Collider-ID dedup/current inactive gate; impact/expiry and dead guards; BlastSniper initial pre-health kill decision, one blast/shared IDs and later piercing; native gun14/29 auto attacks with real Physics verified'
data['acceptance']['visual_slice']='Original forest/cat/Gun14/cyan blast and two130/250 healthbars reviewed in540x960 GameView; exact package gun/profile stats and target-position/slot/pool-only fixture; compatibility particle material/full visual parity pending'
data['acceptance']['shooting_boundary']='Six forest types through explicit package-profile bridges; MISSILE flight/aim, UI mode5/Ore, full Cat.Update/AutoMove/AI/manager ownership/save/UI/online sheet/economy/main remain pending'
for name in ['original-explosion-contract.json','forest-explosion-bridge-restoration.json','explosion-visual-state.json','explosion-editor-handoff.json']:
 if (R/'reports'/name).exists():data[name.removesuffix('.json')]=report(name)
data['unity_playmode']['earlier_explosion_assembly_run']={'report':'live-explosion-assembly-tests-status.json',**report('live-explosion-assembly-tests-status.json')['data']['result']}
data['unity_playmode']['missile_focused_run']={'report':'live-missile-tests-final-status.json',**report('live-missile-tests-final-status.json')['data']['result']}
data['unity_playmode']['missile_first_fixture_failure']={'report':'live-missile-tests-first-status.json','summary':report('live-missile-tests-first-status.json')['data']['result']['summary'],'reason':'Seven native/physical checks passed; reuse velocity exact Vector3 equality failed on floating rotation epsilon although displayed70/0/0; changed test to distance tolerance0.001, no runtime code change'}
data['acceptance']['missile_forest']='Pool-first scatter/angle then uniform radius/strict0.01/transform snapshot/fallback/minspeed; kinematic parabola/scaled time/previous XYZ/forward, duration+0.5 without50cap/current-position timeout, actual endpoint and early Physics explosion/dead guard, reset and linear reuse; originalGun24/38 auto missiles kill two original250-health trees and decrement count2 verified'
data['acceptance']['shooting_boundary']='Seven forest weapon types with explicit initial-profile bridge; full Cat.Update/AutoMove/AI, UI mode5/Ore, original manager/ownership/save/UI/modifiers/online sheet/economy/Main remain pending'
for name in ['missile-preview-error-history.json','missile-preview-trajectory-diagnostic.json','original-missile-contract.json','forest-missile-bridge-restoration.json','missile-flight-visual-state.json','missile-impact-visual-state.json','missile-editor-handoff.json']:
 if (R/'reports'/name).exists():data[name.removesuffix('.json')]=report(name)
data['acceptance']['visual_slice']='Original forest/cat/Gun24 golden missile arc and golden impact reviewed in540x960 GameView; one real missile splashes two original250-health trees to-350/deactivated/count28to26; preview slot/positions/pools/timeScale0.05 explicit; compatibility shaders/full visual parity pending'
data['unity_playmode']['earlier_missile_assembly_run']={'report':'live-missile-assembly-tests-status.json',**report('live-missile-assembly-tests-status.json')['data']['result']}
data['unity_playmode']['auto_move_focused_run']={'report':'live-auto-move-tests-final-status.json',**report('live-auto-move-tests-final-status.json')['data']['result']}
data['unity_playmode']['auto_move_first_fixture_failure']={'report':'live-auto-move-tests-first-status.json','summary':report('live-auto-move-tests-first-status.json')['data']['result']['summary'],'reason':'Inactive grids serialized children were not cleared; enabling second grid revived unintended trees. Fixture now clears FindObjectsInactive.Include; runtime rules unchanged.'}
data['unity_playmode']['auto_move_assembly_first_fixture_failure']={'report':'live-auto-move-assembly-tests-first-status.json','summary':report('live-auto-move-assembly-tests-first-status.json')['data']['result']['summary'],'reason':'Native deltaTime face smoothing test waited at most60 frames; changed automatic startup pose plus fast Editor frames left1.183 degrees error. Kept original angular assertion and allowed up to2 scaled seconds; runtime smoothing unchanged.'}
if (R/'reports/live-auto-move-aim-fixture-status.json').exists():data['unity_playmode']['auto_move_aim_fixture_recheck']={'report':'live-auto-move-aim-fixture-status.json',**report('live-auto-move-aim-fixture-status.json')['data']['result']}
data['acceptance']['forest_auto_move']='Forest hero native target scoring/search timer/closest collider point, stop/retreat/Z offset cap/screen projection/deceleration/smoothing/input takeover; default frame loop moves/stops/shoots/kills two original250-health trees and retargets with zero input and original Gun0 damage100. Other modes/AI remain pending.'
data['acceptance']['forest_slice']='Original501 tree pool/5 wave layouts/maps/bones, hand control and forest automatic movement, all seven projectile paths; initial Gun0 damage100/crit125/interval0.6/speed15. Startup/economy/settlement/advancing waves remain pending.'
data['acceptance']['shooting_boundary']='Seven forest weapon types and forest hero automatic movement through initial-profile bridge; full Cat.Update companion AI/breadcrumb/leader-history, other modes including Ore, original manager/ownership/save/UI/modifiers/online table/economy/Main pending.'
for name in ['original-auto-move-contract.json','auto-move-walking-visual-state.json','auto-move-stopped-visual-state.json','auto-move-editor-handoff.json']:
 if (R/'reports'/name).exists():data[name.removesuffix('.json')]=report(name)
if (R/'reports/auto-move-stopped-visual-state.json').exists():
 data['acceptance']['visual_slice']='Default original forest/Gun0 without position/pool/stat/input/save fixtures: movement then killing/retargeting/stopping observed and two540x960 captures reviewed. Compatibility shaders/full original visual and phone parity remain pending.'
# The latest client scene contains the earlier weapon/movement slice plus the
# ordinary forest flow. Keep those earlier results and failures as history.
data['unity_playmode']['earlier_auto_move_assembly_run']=data['unity_playmode']['latest_live_editor_assembly_run']
live=report('live-client-flow-assembly-final-status.json')['data']['result']
assert live['status']=='completed' and live['summary']['total']==69 and live['summary']['passed']==69 and live['summary']['failed']==0
data['unity_playmode']['latest_live_editor_assembly_run']={'report':'live-client-flow-assembly-final-status.json',**live}
for key,name in [('client_flow_focused_run','live-client-flow-tests-pointer-repair-status.json'),('client_flow_before_canvas_repair','live-client-flow-assembly-before-canvas-repair-status.json'),('client_flow_after_progress_repair','live-client-flow-tests-progress-repair-status.json')]:
 data['unity_playmode'][key]={'report':name,**report(name)['data']['result']}
data['unity_playmode']['client_flow_first_failure']={'report':'live-client-flow-tests-first-status.json','summary':report('live-client-flow-tests-first-status.json')['summary'],'reason':'Seven startup/cleanup failures: omitted original progress references and cleanup scene absent from Build Settings; references and build list repaired, failures retained.'}
data['unity_playmode']['client_flow_discovery_failure']={'report':'live-client-flow-tests-not-discovered.json','meaning':'Zero discovered cases during assembly import failure; not a passing run.'}
data['active_scene']='Assets/Recovery/Scenes/RecoveredClient.unity'
data['scene_slices'].append({'name':'RecoveredClient','total_game_objects':11730,'canvases':1,'source':'Copied accepted forest plus original HUD/progress/audio; shared original Canvas ancestry and sibling order restored via Editor APIs'})
data['acceptance']['implemented_slice_playmode']='69/69 recovery assembly cases passed in live Unity6 Editor; focused client flow8/8. Includes actual UI raycast and PointerDown/Up/Click routing.'
data['acceptance']['forest_slice']='501 trees/5wave pools/10maps/bones, seven weapon paths and zero-input forest hero automatic movement; default Gun0; ordinary180s timer, win/fail, five-wave progression and next-stage loading, immediate death money, original HUD, three upgrades and independent recovery save.'
data['acceptance']['client_flow']='Original business rules bound by local RecoveryForestClient. Tests use explicit isolated temporary wallets/forced tree deaths; actual default earned-money observations are separate visual evidence. Not full original Main or phone runtime.'
data['acceptance']['shooting_boundary']='Seven forest weapon types and automatic hero movement supported. Original inventory/equipment changes, companions, nonneutral modifiers, other modes/Ore, online table and original full manager lifecycle remain pending.'
data['acceptance']['visual_slice']='Default independent local recovery profile: native Gun0, unchanged target positions/pools/stats and zero movement input. Actual GameView including original overlay HUD captured and reviewed. Original language/localization, shader compatibility, all-page and phone parity remain pending.'
data['acceptance']['click_input']='Original shared Canvas866/SafeArea415/Main_UI455 ancestry and sibling order restored after real raycast found joystick interception. Upgrade panels screen positions unchanged;8/8 flow verifies actual pointer routing and world joystick remains available. No physical phone touch acceptance.'
data['acceptance']['save_boundary']='Recovered UTF8 JSON/Base64/tmp/main/bak codec in independent RecoveredClient-vc257 folder;161 fields preserved. Money/upgrades/forest progress bound, local5s autosave; no phone private save access. Nonneutral profile rejected without replacement; collections/season and original scheduler pending.'
for name in ['original-client-flow-contract.json','forest-client-canvas-merge.json','client-upgrade-raycast-stack.json','original-client-ui-sibling-order.json','client-flow-preservation-audit.json','client-earned-wallet-visual-state.json','client-upgraded-wallet-visual-state.json','client-natural-next-wave-visual-state.json','client-editor-handoff.json','client-preview-error-history.json','client-final-console-status.json']:
 if (R/'reports'/name).exists():data[name.removesuffix('.json')]=report(name)
if (R/'reports/client-natural-next-wave-visual-state.json').exists():
 data['acceptance']['default_natural_wave']='Zero-input unmodified targets/pools/stats, own earned upgrade1/1/0 profile: naturally cleared30 trees and loaded Stage1-2 with60 trees, rounds_started2/failures0/timer179.724, wallet1144; actual1080x1920 GameView reviewed and progress saved. Not all stages or phone acceptance.'
(R/'reports/VERIFICATION.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
print('Latest live Editor run:',live.get('summary'))
print('Verification updated:',len(components),'decoded components; live assembly',live.get('summary'),'; historical batch',latest['passed'],'/',latest['total'])

# Keep the newer progression acceptance after the historical forest report.
if (R/'reports/live-progression-assembly-final-status.json').exists():
 import runpy
 runpy.run_path(str(R/'tools/update_progression_verification.py'))
