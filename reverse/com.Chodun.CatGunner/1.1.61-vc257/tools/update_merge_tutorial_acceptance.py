from pathlib import Path
import csv,datetime,hashlib,json

R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';reports=R/'reports'
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
def run(name,total):
    data=json.loads((reports/name).read_text())['data']['result'];assert data['status']=='completed' and data['summary']['total']==total and data['summary']['passed']==total and data['summary']['failed']==0
    return {'report':name,'status':data['status'],'duration':data['duration'],'summary':data['summary']}
tests={'focused':run('live-merge-tutorial-focused-final-status.json',5),'inventory':run('live-merge-tutorial-inventory-final-status.json',6),'fish_auto_ui':run('live-merge-tutorial-fish-auto-final-status.json',18),'startup':run('live-merge-tutorial-startup-final-status.json',4)}
handoff=json.loads((reports/'merge-tutorial-editor-handoff.json').read_text());assert handoff['ready_for_user_play'] and handoff['arrowCount']==1 and handoff['missingScripts']==0
before=json.loads((reports/'tutorial-user-save-before.json').read_text());after=[{**row,'sha256':sha(Path(row['path'])),'unchanged':sha(Path(row['path']))==row['sha256']} for row in before];assert all(row['unchanged'] for row in after)
(reports/'tutorial-user-save-after.json').write_text(json.dumps(after,indent=2)+'\n')
contract=json.loads((reports/'original-merge-tutorial-contract.json').read_text());assert all(row['unchanged'] and sha(Path(row['path']))==row['expected'] for row in contract['inputs']);assert all(row['unchanged'] for row in contract['original_monoscript_meta'])
assert all(sha(P/'Assets/Recovery/Scripts'/(name+'.cs'))==value for name,value in contract['runtime_sources'].items())
doc=json.loads((reports/'VERIFICATION.json').read_text());doc['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();doc['scope_complete']=False
doc['native_outputs']=[row for row in doc['native_outputs'] if row['folder']!='native-tutorial-ui-reviewed']+[{'folder':'native-tutorial-ui-reviewed','queries':51,'completed':51,'warning':'45 business including iterators+6helpers; only17cue/arrow-family queries integrated; full onboarding analyzed but pending. Not author source/full-client acceptance.'}]
addresses=set()
for row in doc['native_outputs']:
    file=R/row['folder']/'status.tsv'
    if file.exists():
        for query in csv.DictReader(file.open(),delimiter='\t'):
            if query.get('completed')=='true':addresses.add(int(query['preferred_va'],16))
doc['native_unique_completed_queries']=len(addresses)
doc['current_client_scene_sha256']=sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity')
doc['merge_tutorial_evidence']={'contract':'original-merge-tutorial-contract.json','rules':'original-game-rules/27_GUN_MERGE_TUTORIAL.md','scene':'merge-tutorial-scene-restoration.json','handoff':handoff,'tests':tests,'user_save':after,'visual':'visual/merge-tutorial-hand-test-gpu.png','visual_scope':'GPU inspected: original Hand between independent low-grade SINGLE/SHOTGUN fixtures on original gun page, original static Korean preserved. Not user progress or device/pixel comparison.',
    'history':['live-merge-tutorial-before-status.json','live-merge-tutorial-before-retry-status.json','live-merge-tutorial-before-corrected-status.json'],'history_scope':'First start interrupted by refresh/domain reload, no result; retry fixture assumed optional companion movement component; corrected1/1fails because original merge controller missing. Final5/5 is one run with existing and4additional checks.',
    'onboarding_scope':'Five-step onboarding45business native family analysis includes cue; main tutorial controller/root and7absent HUD references are not integrated; no tutorial diamond top-up or completion record written.',
    'complete_client':False}
doc['unity_playmode']['merge_tutorial_separate_runs']=tests
if (reports/'merge-tutorial-final-console.json').exists() and (reports/'merge-tutorial-console-clean-handoff.json').exists():
    before_console=json.loads((reports/'merge-tutorial-final-console.json').read_text());after_console=json.loads((reports/'merge-tutorial-console-clean-handoff.json').read_text())
    assert before_console['counts'][0]==0 and after_console['counts']==[0,0,0] and not after_console['playing'] and not after_console['paused'] and not after_console['compiling']
    doc['merge_tutorial_evidence']['console']={'before':'merge-tutorial-final-console.json','after':'merge-tutorial-console-clean-handoff.json','counts_before':before_console['counts'],'counts_after':after_console['counts'],'warning_scope':'2existing memoryless depth load/store GPU warnings preserved in entries before clearing; no current errors.'}
doc['acceptance']['implemented_slice_playmode']='Current separate runs: gun merge cue5/5, inventory6/6, fish/auto/shared UI18/18, startup4/4. Previous content unlock5/5+navigation8/8+supplemental3/3+startup4/4 and historical full165/165 kept distinct. No new full assembly run, Player/device/online acceptance or combined total.'
doc['acceptance']['merge_tutorial']='Original first-two low-grade active item cue, paused/AD/Has_Merged filters, exact1.2/.15/.8/.15 hand movement/scaling, source coordinate conversion, real top raycast drag merge, reopen/invalid target/independent cold reload. Original2MonoScript identities and non-raycast Hand preserved. Attribution remains excluded; Merge_Tutorial_Logged unchanged.'
doc['pending']='Full five-step onboarding (native analyzed but runtime pending), WeeklyShop, remaining UI/effects/localization, relic offline/skip/missing table300, Raid tasks, Player/device/online/commercial remain. Ordinary8content gates and gun merge hint integrated.'
(reports/'VERIFICATION.json').write_text(json.dumps(doc,ensure_ascii=False,indent=2)+'\n')
print('Current separate tests:',{key:value['summary'] for key,value in tests.items()},'User saves unchanged; unique native completed:',len(addresses))
