"""Aggregate independent Rule44 runs without inventing an all-suite result."""
from pathlib import Path
import hashlib
import json
from datetime import datetime, timezone

R = Path(__file__).resolve().parents[1]
P = R.parents[2] / 'reconstruction/CatGunnerUnityClient'
reports = R / 'reports'

def read(name):
    return json.loads((reports / name).read_text())

def sha(path):
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1048576), b''):
            h.update(block)
    return h.hexdigest()

runs = []
for name, count, overlap in [
    ('plus-consumers-playmode-accepted.json', 12, False),
    ('plus-consumers-settlement-visual-check.json', 3, True),
    ('plus-consumers-playtest-issues-regression.json', 15, False),
    ('plus-consumers-shared-modes-regression.json', 17, False),
    ('plus-consumers-startup-regression.json', 4, False),
]:
    data = read(name)
    assert data['status'] == 'completed'
    assert data['summary']['passed'] == data['summary']['total'] == count
    assert data['summary']['failed'] == 0
    runs.append(dict(report=name, durationSeconds=data['duration'],
                     summary=data['summary'], overlapsAcceptedSpecialty=overlap))

preservation = read('plus-consumers-preservation.json')
handoff = read('plus-consumers-editor-handoff.json')
assert preservation['userMainAndBackupUnchanged'] and preservation['normalSceneByteUnchanged']
assert not any(handoff[key] for key in ['dirty', 'playing', 'compiling', 'updating',
                                       'missingScripts', 'inputOverrides', 'mouseFixtures',
                                       'runtimePlusItems', 'testHostFolder'])
assert handoff['persist'] and handoff['saveFolderOverride'] is None
assert handoff['timeScale'] == 1
assert read('plus-consumers-historical-visual-preservation.json')['preservedCount'] == 25

images = []
for name in ['plus-purchased', 'plus-active', 'boss-time', 'raid-time',
             'boss-reward', 'mine-reward', 'monster-reward']:
    path = reports / 'visual' / f'plus-consumers-{name}-gpu.png'
    images.append(dict(path=str(path.relative_to(R)), sha256=sha(path), viewed=True))

out = dict(
    updatedUtc=datetime.now(timezone.utc).isoformat(),
    target='com.Chodun.CatGunner 1.1.61 vc257 ARM64', rule=44,
    editor='6000.4.10f1', native=read('plus-consumers-native-evidence.json'),
    itemManifest='reports/plus-item-manifest.json',
    productionChanges=preservation['changedSource'],
    testSourceSha256=sha(P/'Assets/Recovery/Tests/PlayMode/PlusPackRecoveryTests.cs'),
    resourcesSha256=sha(P/'Assets/Recovery/Resources/OriginalPlusItems.json'),
    separateCompletedRuns=runs,
    allSuiteSingleRun=False,
    failureHistory=[
        dict(report='plus-consumers-before-tests.json', reason='Two unimplemented consumers reproduced'),
        dict(report='plus-consumers-tests-attempt1.json', reason='Fixture collect-array shape and original weapon/time observation corrected; production difficulty unchanged'),
    ],
    visualRecheck='Only fixture capture delay and three method names changed after the 12/12 run; production identical',
    gpuImages=images,
    settlementImageAmounts='Before advertising: Boss wallet300/panel900, mine wallet4/panel16, monster wallet60/panel120. Panels show potential total; separate tests verify additional claim and once guards.',
    fixtureBoundary='Isolated original Gun20 naturally clears Boss/monster; mine score39 is explicit test input. No user equipment or progress modified.',
    timeSeconds=dict(forest=360, boss=120, mine=78, raid=70),
    rewardFactors=dict(boss=2, monster=2, mine=1.5),
    localAdapters=['Explicit simulated purchase ledger', 'Local clock and countdown formatting',
                   'Runtime original UI bindings', 'Round-start time snapshot in recovered coordinator'],
    preservation=preservation, editorHandoff=handoff,
    finalConsole='reports/plus-consumers-final-console.json',
    testHostEnd=read('plus-consumers-test-host-end.json'),
    historicalVisuals='reports/plus-consumers-historical-visual-preservation.json',
    losslessGeneratedHistoryCompression='reports/plus-consumers-compressed-history.json',
    restoreTool='tools/restore_scene_checkpoint.py',
    pending=['Paid helper gameplay', 'StepUp original page and Offer', 'Pig full accumulation UI',
             'Remove-all-ads automatic bonus and sweeps', 'Trusted clock and live services',
             'Full visual fidelity and device acceptance'],
    realPayments=False, productionReceipts=False, playerBuilt=False,
    deviceAcceptance=False, gitSubmitted=False, scopeComplete=False,
)
(reports / 'plus-consumers-evidence.json').write_text(json.dumps(out, indent=2, ensure_ascii=False)+'\n')
print('Rule44 evidence saved; independent runs:', [row['summary']['passed'] for row in runs])
