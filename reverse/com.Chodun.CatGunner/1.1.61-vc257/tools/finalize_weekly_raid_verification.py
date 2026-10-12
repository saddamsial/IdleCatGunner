from pathlib import Path
import json, csv, hashlib
from datetime import datetime, timezone

R = Path(__file__).resolve().parents[1]
reports = R / 'reports'
def read(name): return json.loads((reports / name).read_text())
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
v = read('VERIFICATION.json')
tests = {}
for name, report in {
    'focused': 'live-weekly-raid-focused-final-completed-status.json',
    'onboarding': 'live-weekly-raid-onboarding-status.json',
    'raid': 'live-weekly-raid-raid-status.json',
    'startup': 'live-weekly-raid-startup-status.json',
    'navigation': 'live-weekly-raid-navigation-status.json',
}.items():
    result = read(report)['data']['result']
    assert result['status'] == 'completed', (name, result)
    assert result['summary']['failed'] == 0 and result['summary']['passed'] == result['summary']['total'] and result['summary']['total'] > 0
    tests[name] = {'report': report, **result}
handoff = read('weekly-raid-editor-handoff.json')
assert handoff['ready_for_user_play'] and handoff['tweenAdapters'] == 10
assert not handoff['playing'] and not handoff['compiling'] and not handoff['dirty']
audit = read('weekly-raid-source-and-user-save-audit.json')
assert audit['final_user_save_matches_turn_start']
restoration = read('weekly-raid-scene-restoration.json')
if restoration['sourceTweenAdapters'] != handoff['tweenAdapters']:
    (reports / 'weekly-raid-scene-restoration-declared-count-history.json').write_text(json.dumps(restoration, ensure_ascii=False, indent=2)+'\n')
    restoration['sourceTweenAdapters'] = handoff['tweenAdapters']
    restoration['scope'] = restoration['scope'].replace('seven source loops', 'ten source loops')
    restoration['count_audit'] = 'Actual Editor handoff and frozen manifest both contain10; corrected initial hardcoded report count7. No scene change.'
    (reports / 'weekly-raid-scene-restoration.json').write_text(json.dumps(restoration, ensure_ascii=False, indent=2)+'\n')
for scope, n in [('weekly-raid-ui',91),('weekly-gun-ui',26),('raid-mission-sort',8),('weekly-countdown-ui',12)]:
    folder = 'native-'+scope+'-reviewed'
    if not any(row['folder'] == folder for row in v['native_outputs']):
        v['native_outputs'].append({'folder':folder,'queries':n,'completed':n,'warning':'Exact input16 checks and bounded native pseudocode/ASM; overlapping helpers, not original source or feature percentage.'})
union = set()
for folder in v['native_outputs']:
    for row in csv.DictReader((R/folder['folder']/'status.tsv').open(), delimiter='\t'):
        if row['completed'] == 'true': union.add(int(row['preferred_va'],16))
v['native_unique_completed_queries'] = len(union)
v['native_unique_completed_query_boundary'] = f'Union recomputed from true completed rows in declared native_outputs status.tsv: {len(union)}addresses; not restored feature percentage or semantic review count.'
v['updated_utc'] = datetime.now(timezone.utc).isoformat()
v['scope_complete'] = False
v['current_client_scene_sha256'] = audit['scene_sha256']
v['pending'] = 'Seven absent tutorial HUD controls, remaining UI/effects/localization, relic offline/skip/missing table300, currency counter adapter parity, Player/device, trusted time/rankings/online/commercial. Ordinary8Raid missions and WeeklyShop local UI/catalog/countdown now integrated; payment fulfillment pending.'
v['weekly_raid_evidence'] = {
    'contract':'original-weekly-raid-contract.json',
    'rules':'original-game-rules/29_WEEKLY_SHOP_RAID_MISSIONS.md',
    'scene':'weekly-raid-scene-restoration.json','handoff':handoff,'tests':tests,
    'tests_scope':'Five separate completed runs; never combined into a new full-assembly run. Natural Raid tests use actual projectiles/60s with originalGun30/upgrade fixtures and independent archives. Focused/onboarding/raid/startup runs preceded the later isolated Fish_Item raycaster fix; final navigation8/8 and mirror1/1 verify that fix. Historical165/165 predates this and earlier UI changes.',
    'visuals':[{'path':'visual/'+n,'sha256':sha(reports/'visual'/n)} for n in ['weekly-shop-gpu.png','raid-missions-gpu.png']],
    'visual_scope':'Both GPU screenshots inspected. Source assets/layout/callbacks and dynamic task descriptions; original Korean static text plus English task terms. Not whole-client pixel/device parity.',
    'native_runs':read('original-weekly-raid-contract.json')['export_runs'],
    'source_and_user_save_audit':audit,
    'user_save_restoration':read('weekly-raid-user-save-restoration.json'),
    'save_scope':'Whole-turn byte preservation is false. Runner failure briefly restored ordinary scene in PlayMode and autosaved; both interim files preserved. Exact turn-start main/backup restored after EditMode and verified after subsequent tests.',
    'history':['live-weekly-raid-focused-first-status.json','live-weekly-raid-focused-second-status.json','live-weekly-raid-focused-final-status.json','live-weekly-raid-focused-recovered-status.json','live-weekly-raid-focused-stable-status.json','live-weekly-raid-navigation-first-status.json','live-weekly-raid-navigation-second-status.json','weekly-raid-runner-autosave-diagnostic.json'],
    'history_scope':'First completed1/6 failed test-only optional movement component null; second5/6 failed tutorial reference assumption; stable5/6 failed hardcoded7FX count vs actual10. Final6/6 after fixture fixes. First navigation7/8 failed in-flight pair assertion: random equal-grade fish could already be within20 after button-overlap repositioning and fuse immediately. Test-only peer now explicitly farther than100; production movement/fusion unchanged. Second navigation7/8 exposed actual left-facing fish raycast rejection; per-fish local GraphicRaycaster now accepts reversed graphics while native180degY flipping is preserved. Both orientations enforced in actual topmost raycast checks. Other running-state reports had no verdict and were cancelled; not counted as test failures/passes.',
    'fish_fixture_recheck':read('live-weekly-raid-fish-fixture-status.json')['data']['result'],
    'fish_mirror_recheck':read('live-weekly-raid-fish-mirror-status.json')['data']['result'],
    'fish_raycaster_fix':'weekly-raid-fish-mirror-contract.json',
    'shared_helper_count_audit':'weekly-raid-shared-helper-count-audit.json',
    'console':read('weekly-raid-console-clean-handoff.json'),
    'handoff_command_timeout':'weekly-raid-final-handoff-command.json',
    'handoff_timeout_scope':'Opening the476MB scene exceeded CLI main-thread5s deadline, but persisted handoff was freshly written and verified clean/ready; no repeated integration or scene mutation. Sole tool timeout error archived in weekly-raid-handoff-timeout-console.json, then cleared; fresh final console zero.',
    'adapters':['RecoveryForestClient archive/clock bridge replaces native global save/time service.','First VIP flag explicit local archive extension; no global PlayerPrefs contamination.','RecoveryWeeklyUiTween preserves ten source loop parameters, not original DOTween implementation.','Recovery per-fish GraphicRaycaster accepts native mirrored sprites; does not replace original visual flipping.','Unavailable purchase/ticket/PlusPack provider paths do not grant rewards or create entitlements.'],
    'full_client_accepted':False,'player_built':False,'device_accepted':False,'git_committed_or_pushed':False
}
v['acceptance']['implemented_slice_playmode'] = '; '.join(f"{name}{run['summary']['passed']}/{run['summary']['total']} ({run['duration']}s)" for name,run in tests.items()) + '. Separate completed current runs; historical full165/165 predates later UI features. No full-client/Player/device acceptance.'
(reports/'VERIFICATION.json').write_text(json.dumps(v, ensure_ascii=False, indent=2)+'\n')
print('Current separate tests:', {n:r['summary'] for n,r in tests.items()}, 'native union',len(union))
