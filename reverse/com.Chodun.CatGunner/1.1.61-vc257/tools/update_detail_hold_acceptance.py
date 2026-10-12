from pathlib import Path
import csv, datetime, hashlib, json, shutil

R = Path(__file__).resolve().parents[1]
P = R.parents[2] / 'reconstruction/CatGunnerUnityClient'
reports = R/'reports'
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
def run(name, expected):
    data = json.loads((reports/name).read_text())['data']['result']
    assert data['status']=='completed' and data['summary']['total']==expected and data['summary']['passed']==expected and data['summary']['failed']==0
    return {'report':name, 'status':data['status'], 'duration':data['duration'], 'summary':data['summary']}
tests = {'focused':run('live-detail-hold-focused-final-v2-status.json',4),
         'progression':run('live-detail-hold-progression-final-status.json',8),
         'pet_spine':run('live-detail-hold-pet-spine-final-status.json',5)}
before = json.loads((reports/'detail-hold-user-save-before.json').read_text())
after = [{'path':r['path'], 'bytes':Path(r['path']).stat().st_size, 'sha256':sha(Path(r['path'])), 'unchanged':sha(Path(r['path']))==r['sha256']} for r in before]
assert all(r['unchanged'] for r in after)
(reports/'detail-hold-user-save-after.json').write_text(json.dumps(after,indent=2)+'\n')
for r in before:
    target=R/'checkpoints/pre-detail-hold-client/user-save'/Path(r['path']).name
    target.parent.mkdir(parents=True,exist_ok=True)
    if not target.exists():shutil.copy2(r['path'],target)
    assert sha(target)==r['sha256']
handoff=json.loads((reports/'detail-hold-editor-handoff.json').read_text())
assert handoff['ready_for_user_play'] and handoff['pet_arrow_buttons_enabled'] and handoff['hold_rows']==3
doc=json.loads((reports/'VERIFICATION.json').read_text())
doc['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat()
doc['scope_complete']=False
doc['native_outputs']=[r for r in doc['native_outputs'] if r['folder']!='native-detail-hold-ui-reviewed']+[{'folder':'native-detail-hold-ui-reviewed','queries':19,'completed':19,'warning':'13 business methods including iterator plus6 exception helpers; exact input bytes checked; not original author C# or full-client acceptance'}]
addresses=set()
for folder in doc['native_outputs']:
    file=R/folder['folder']/'status.tsv'
    if not file.exists():continue
    for row in csv.DictReader(file.open(),delimiter='\t'):
        if row.get('completed')=='true':addresses.add(int(row['preferred_va'],16))
doc['native_unique_completed_queries']=len(addresses)
doc['current_client_scene_sha256']=sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity')
doc['detail_hold_evidence']={'contract':'original-detail-hold-contract.json', 'rules':'original-game-rules/25_PET_DETAIL_AND_REBIRTH_HOLD.md',
    'scene_integration':'detail-hold-scene-integration-final.json','handoff':handoff,'user_save':after,'tests':tests,
    'visual':['visual/pet-detail-navigation-test-gpu.png','visual/rebirth-hold-upgrade-test-gpu.png'],
    'visual_scope':'Actual GPU screenshots inspected; independent grade5/temporary Ruby and levels fixture; not user progress, pixel or device acceptance',
    'history':['live-detail-hold-before-status.json','live-detail-hold-before-second-status.json','live-detail-hold-focused-first-status.json','live-detail-hold-focused-final-status.json'],
    'history_boundary':'First two runs had fixture issues; first implementation passed3/4 until expectation corrected for13visual objects vs10catalogue grades. Final4/4 includes constructor defaults0.4/0.1 and serialized0.4/0.04.',
    'all_client_complete':False}
doc['unity_playmode']['detail_hold_separate_runs']=tests
doc['unity_playmode']['latest_live_editor_assembly_run']['boundary']='Historical165/165 before pet-detail/hold implementation; full assembly was not rerun this slice. Do not combine separate focused/regression runs into a new all-pass total.'
doc['acceptance']['implemented_slice_playmode']='Current separate runs: detail/hold4/4, progression8/8, pet animation5/5. Historical single full recovery assembly165/165 predates this UI slice; not a new169/169 full run. Player/device/backend not accepted.'
doc['acceptance']['detail_hold']='Native pet detail browse all10grades including uncollected, original13degree visual objects; original sprites/native sizes, first/last guards and unchanged inventory. Native rebirth coroutine initial0.4s/repeated0.04s scene values, three ordinary upgrade kinds/prices, pointer-up/exit, close, exhaustion, max and fresh-delay restart; independent cold reload. Original events/GUIDs preserved; local existing numerical/save adapter explicit.'
doc['acceptance']['progression_boundary']='Ordinary pets, native Idle/Walk/Adventure preview, safe/weapon locking, three auto merge families, pet detail navigation and rebirth hold integrated. SDK/IAP/VIP/Luxury/ad rewards unavailable; no fake success or grants. Contents unlock/tutorial/WeeklyShop, remaining UI/effects/localization/full client/Player/device pending.'
(reports/'VERIFICATION.json').write_text(json.dumps(doc,ensure_ascii=False,indent=2)+'\n')
print('Separate tests:',{k:v['summary'] for k,v in tests.items()},'User save unchanged:',True,'Unique native completed queries:',len(addresses))
