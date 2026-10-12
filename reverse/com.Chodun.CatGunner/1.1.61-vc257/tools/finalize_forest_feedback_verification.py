from pathlib import Path
from datetime import datetime, timezone
import csv, hashlib, json

R = Path(__file__).resolve().parents[1]
reports = R/'reports'
def read(name): return json.loads((reports/name).read_text())
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()

tests = {}
for label, file, count in [
    ('focused','live-forest-feedback-report-label-tests-status.json',4),
    ('forest_flow','live-forest-feedback-flow-status.json',8),
    ('startup','live-forest-feedback-startup-status.json',4),
]:
    result = read(file)['data']['result']
    assert result['status'] == 'completed' and result['summary']['total'] == count
    assert result['summary']['passed'] == count and result['summary']['failed'] == 0
    tests[label] = {'report':file, **result}
handoff = read('forest-feedback-editor-handoff.json')
assert handoff['readyForUserPlay'] and not handoff['playing'] and not handoff['dirty']
assert handoff['persist'] and handoff['saveOverride'] is None
assert handoff['inputModules'] == [{'type':'StandaloneInputModule','enabled':True,'inputOverrideNull':True}]
audit = read('forest-feedback-source-and-user-save-audit.json')
assert audit['final_user_save_matches_turn_start']
console = read('forest-feedback-final-console.json')
assert console['counts'][0] == 0 and not console['compiling'] and not console['playing']
observation = read('forest-feedback-real-combat-observation.json')
assert observation['isolatedProfile'] and observation['sawText'] and observation['sawCash']
v = read('VERIFICATION.json')
for folder, expected in [('native-forest-feedback',34),('native-damage-glyphs',12)]:
    rows = list(csv.DictReader((R/folder/'status.tsv').open(),delimiter='\t'))
    assert len(rows) == expected and all(row['completed'] == 'true' for row in rows)
    if not any(item['folder'] == folder for item in v['native_outputs']):
        v['native_outputs'].append({'folder':folder,'queries':expected,'completed':expected,'warning':'Matching input16/bounds gates; native pseudocode/ASM with overlapping helpers, not author source or feature percentage.'})
union = set()
for item in v['native_outputs']:
    for row in csv.DictReader((R/item['folder']/'status.tsv').open(),delimiter='\t'):
        if row['completed'] == 'true': union.add(int(row['preferred_va'],16))
v['updated_utc'] = datetime.now(timezone.utc).isoformat()
v['scope_complete'] = False
v['current_client_scene_sha256'] = audit['scene_sha256']
v['native_unique_completed_queries'] = len(union)
v['native_unique_completed_query_boundary'] = f'Union of true completed rows in declared native_outputs: {len(union)} unique addresses; not feature recovery percentage.'
v['forest_feedback_evidence'] = {
    'rules':'original-game-rules/30_FOREST_INPUT_CASH_DAMAGE.md',
    'native_summary':read('forest-feedback-native-summary.json'),
    'scene_restoration':read('forest-feedback-scene-restoration.json'),
    'original_shader_extraction':read('forest-damage-original-shader-extraction.json'),
    'original_shader_expressions':'forest-damage-original-gles3.glsl',
    'original_shader_states':'forest-damage-original-shader-state.json',
    'handoff':handoff,'tests':tests,
    'tests_scope':'Three separate completed runs, not a full-assembly total. BaseInput test-only mouse edges use actual EventSystem/StandaloneInputModule; no ExecuteEvents. forest_flow is OriginalClientFlowTests, not ContentNavigation8menus. Natural combat uses independent defaultGun0/originaltree states. Latest focused rerun only corrected observation isolatedProfile label; production code unchanged.',
    'previous_focused_runs':['live-forest-feedback-loaded-tests-status.json','live-forest-feedback-visual-tests-status.json','live-forest-feedback-final-tests-status.json'],
    'visuals':[{'path':'visual/'+name,'sha256':sha(reports/'visual'/name)} for name in ['reference-video-cash-and-damage-5s.png','forest-real-hit-damage-gpu.png','forest-real-tree-cash-gpu.png']],
    'visual_scope':'Original video5.0-7.5s and final real-combat GPU capture inspected for original green cash and white/brown100; not pixel/device parity.',
    'combat_observation':observation,
    'module_observation':read('forest-input-module-test-observation.json'),
    'user_save_and_source_audit':audit,
    'console':console,
    'hardware_attempt':{'before':'forest-hardware-deliberate-click-before.json','after':'forest-hardware-click-after.json','accepted':False,'reason':'Native app automation clicks produced no confirmed upgrade delta. This is not counted as physical mouse/touch acceptance.'},
    'adapters':['StandaloneInputModule matches current activeInputHandler0; original InputSystemUIInputModule/package not restored.','RecoveryDamageTextPresenter uses local mesh pooling and original glyph data/curves/native parameters; original manager cache/fullmoney-dia consumer chain pending.','Recovery shader ports extracted compiled GLES3 expressions/pass state to HLSL/Metal; not author shader source.','Existing DecimalAmount and local archive/clock remain bounded adapters.'],
    'save_scope':'Tests use isolated folders; extra normal Play check used unsaved Persist=false and memory-only fixture. Main/backup match before and final; no restoration this turn. Handoff Persist=true/nooverride.',
    'full_client_accepted':False,'hardware_clicks_accepted':False,'player_built':False,'device_accepted':False,'git_committed_or_pushed':False
}
v['acceptance']['implemented_slice_playmode'] = '; '.join(f"{name} {run['summary']['passed']}/{run['summary']['total']} ({run['duration']}s)" for name,run in tests.items()) + '. Separate completed runs; historical full165/165 predates later UI changes. Physical mouse/touch unconfirmed.'
(reports/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
print('Current separate test summaries:',{name:run['summary'] for name,run in tests.items()},'native address union:',len(union))
