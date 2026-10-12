from pathlib import Path
import csv, datetime, hashlib, json
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';reports=R/'reports'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
def run(name,expected):
    data=json.loads((reports/name).read_text())['data']['result']
    assert data['status']=='completed' and data['summary']['total']==expected and data['summary']['passed']==expected and data['summary']['failed']==0
    return {'report':name,'duration':data['duration'],'summary':data['summary'],'status':data['status']}
tests={'focused':run('live-content-unlock-focused-final-status.json',5),'navigation':run('live-content-unlock-navigation-final-status.json',8),'supplemental':run('live-content-unlock-supplemental-final-status.json',3),'startup':run('live-content-unlock-startup-final-status.json',4)}
before=json.loads((reports/'content-unlock-user-save-before.json').read_text())
after=[{'path':r['path'],'bytes':Path(r['path']).stat().st_size,'sha256':sha(Path(r['path'])),'unchanged':sha(Path(r['path']))==r['sha256']} for r in before]
assert all(row['unchanged'] for row in after)
(reports/'content-unlock-user-save-after.json').write_text(json.dumps(after,indent=2)+'\n')
handoff=json.loads((reports/'content-unlock-editor-handoff.json').read_text());assert handoff['ready_for_user_play'] and handoff['contentRows']==8
contract=json.loads((reports/'original-content-unlock-contract.json').read_text());assert all(row['unchanged'] for row in contract['inputs']) and contract['original_monoscript_meta']['unchanged']
doc=json.loads((reports/'VERIFICATION.json').read_text());doc['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();doc['scope_complete']=False
doc['native_outputs']=[row for row in doc['native_outputs'] if row['folder']!='native-content-unlock-ui-reviewed']+[{'folder':'native-content-unlock-ui-reviewed','queries':26,'completed':26,'warning':'20 business methods plus6exception helpers; bounded native input byte checked; not author C# or full-client acceptance'}]
addresses=set()
for folder in doc['native_outputs']:
    file=R/folder['folder']/'status.tsv'
    if not file.exists():continue
    for row in csv.DictReader(file.open(),delimiter='\t'):
        if row.get('completed')=='true':addresses.add(int(row['preferred_va'],16))
doc['native_unique_completed_queries']=len(addresses)
doc['current_client_scene_sha256']=sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity')
doc['content_unlock_evidence']={'contract':'original-content-unlock-contract.json','rules':'original-game-rules/26_CONTENT_UNLOCK.md','scene':'content-unlock-scene-restoration.json','handoff':handoff,'user_save':after,'tests':tests,'visual':'visual/content-unlock-stage11-test-gpu.png','visual_scope':'Actual GPU inspected: independent historical display frontier11, current forest HUDStage1-1; Pet/Monster both locked, Adventure/Raid hidden. Not user progress/device/pixel acceptance.',
    'history':['live-content-unlock-before-status.json','live-content-unlock-focused-first-status.json','live-content-unlock-navigation-first-status.json'],'history_boundary':'Before integration1/5 due missing original manager; first integrated4/5 until fixture uses actual local Adventure menu root. First navigation run failed8/8 because the fixture raycast newly enabled buttons before their UI OnEnable frame; added a frame wait only to independent test fixtures. Keep distinct runs, no aggregate full-suite total.',
    'tutorial_scope':'Original Tutorial_manager not integrated. Native absence branch false, no TutorialCleared record altered. Injected step only independent predicate tests.',
    'complete_client':False}
if (reports/'content-unlock-final-console.json').exists() and (reports/'content-unlock-console-clean-handoff.json').exists():
    console_before=json.loads((reports/'content-unlock-final-console.json').read_text())['data']['result']['result']
    console_after=json.loads((reports/'content-unlock-console-clean-handoff.json').read_text())['data']['result']['result']
    assert console_before['counts'][0]==0 and console_after['counts']==[0,0,0]
    assert not console_after['playing'] and not console_after['paused'] and not console_after['compiling']
    doc['content_unlock_evidence']['console']={'before':console_before,'after':console_after,'entries':'content-unlock-final-console-entries.json','warning_scope':'2existing GPU memoryless depth load/store warnings; no new error; original entries preserved before clearing for clean user Editor.'}
doc['unity_playmode']['content_unlock_separate_runs']=tests
doc['acceptance']['implemented_slice_playmode']='Current separate runs: content gates5/5, original navigation/gameplay8/8, pet auto merge/spawn and relic entry3/3, startup4/4. Historical single full recovery assembly165/165 predates detail/hold and gates; no new full assembly run or combined total claimed. Player/device/backend not accepted.'
doc['acceptance']['content_unlock']='Original8content thresholds3/4/6/10/12/12/35/40, historical frontier/10+1, unlocked OR next visibility, tiedPet/Monster, lock overlays, stage alert and original Content_Btn_* callbacks. All8 actual UI raycasts, panel open/close and independent rebirth/cold reload verified. Original manager GUID and emptyRectTransform retained; local owner/refresh/English alert adapters explicit. Tutorial controller itself still absent.'
doc['acceptance']['progression_boundary']='Ordinary pets/rebirth/tasks/modes, native pet Idle/Walk/preview, safe/locking, three auto merge families, pet detail/rebirth hold and ordinary8content-entry gates integrated. Tutorial controller, WeeklyShop, remaining UI/effects/localization/Player/device pending. SDK/IAP/VIP/Luxury/ad rewards unavailable; no fake success or grants.'
doc['pending']='See current RECOVERY_PROGRESS.md: original tutorial steps/WeeklyShop, remaining UI/DOTween/particles/floating damage, relic offline/skip/missing table300, Raid tasks, full localization, ads/IAP/cloud/online and Player/device acceptance remain. Ordinary8content-entry gates, pet Idle/Walk/Adventure preview integrated.'
(reports/'VERIFICATION.json').write_text(json.dumps(doc,ensure_ascii=False,indent=2)+'\n')
print('Separate current test summaries:',{k:v['summary'] for k,v in tests.items()},'User save unchanged:',True,'Unique native completed:',len(addresses))
