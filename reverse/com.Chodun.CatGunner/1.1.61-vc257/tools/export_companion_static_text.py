"""Read frozen vc257 primary I2 terms for fish/pet UI; no scene writes."""
from pathlib import Path
import ast, hashlib, json, re

R = Path(__file__).resolve().parents[1]
P = R.parents[2] / 'reconstruction/CatGunnerUnityClient'
Q = R / 'reports'
B = R / 'assetripper-baseline/ExportedProject'
scene = B / 'Assets/Scenes/Main.unity'
language = B / 'Assets/Resources/I2Languages.asset'
index = {int(k): v for k, v in json.loads((Q / 'original-main-document-index.json').read_text()).items()}
stream = scene.open('rb')
def read(k):
    _, offset, size = index[k]
    stream.seek(offset)
    return stream.read(size).decode()
def scalar(s):
    if s.startswith('"'): return ast.literal_eval(s)
    if s.startswith("'"): return s[1:-1].replace("''", "'")
    return s
names, transforms, parents, labels = {}, {}, {}, []
for k, (kind, _, _) in index.items():
    if kind == 1: names[k] = re.search(r'  m_Name: (.*)', read(k))[1]
    elif kind in (4, 224):
        s = read(k)
        go = int(re.search(r'm_GameObject: \{fileID: (\d+)', s)[1])
        transforms[k] = go
        parents[go] = int(re.search(r'm_Father: \{fileID: (\d+)', s)[1])
    elif kind == 114:
        s = read(k)
        if 'mTerm:' in s:
            labels.append((k, int(re.search(r'm_GameObject: \{fileID: (\d+)', s)[1]), scalar(re.search(r'  mTerm: (.*)', s)[1])))
def path(go):
    parts = []
    while go:
        parts.append(names[go])
        go = transforms.get(parents.get(go, 0), 0)
    return '/'.join(parts[::-1])
source = language.read_text()
rows, excluded = [], []
prefixes = ('Canvas/Fish_manager/', 'Canvas/Pet_manager/', 'Canvas/SafeArea/Fish_UI  (SafeArea)/', 'Canvas/SafeArea/Pet_UI (SafeArea)/')
for component, go, key in labels:
    full = path(go)
    if not full.startswith(prefixes): continue
    if not key or key == '-' or go == 10096:
        excluded.append(dict(component=component, path=full, key=key, reason='No primary term / dynamic owner' if go != 10096 else 'Source hidden pet Collection_Btn is an unused Gun_Collection_UI reference'))
        continue
    match = re.search(r'    - Term: ' + re.escape(key) + r'\n      TermType: 0\n      Languages:\n(.*?)      Flags:', source, re.S)
    assert match, key
    values = [scalar(m[1]) for line in match[1].splitlines() if (m := re.match(r'      - (.*)', line))]
    assert len(values) == 14 and all(values), (key, values)
    assert all('{[' not in v and '[i2p_' not in v for v in values), key
    rows.append(dict(Path=full.removeprefix('Canvas/'), Key=key, Values=values, SourceComponent=component, SourceGameObject=go))
assert len(rows) == 27, len(rows)
codes = json.loads((P / 'Assets/Recovery/Resources/OriginalWeaponText.json').read_text())['LocaleCodes']
data = dict(LocaleCodes=codes, Rows=rows)
resource = P / 'Assets/Recovery/Resources/OriginalCompanionStaticText.json'
resource.write_text(json.dumps(data, ensure_ascii=False, indent=2) + '\n')
events = {str(k): read(k) for k in [124583, 144182, 124829]}
assert 'm_Target: {fileID: 1050}' in events['124583'] and 'm_Target: {fileID: 19534}' in events['144182']
assert 'm_IsActive: 0' in read(1561) and 'm_Target: {fileID: 124689}' in events['124829']
report = dict(target='com.Chodun.CatGunner 1.1.61 vc257', rule=64,
    sceneSha256=hashlib.sha256(scene.read_bytes()).hexdigest(), languageSha256=hashlib.sha256(language.read_bytes()).hexdigest(),
    resourceSha256=hashlib.sha256(resource.read_bytes()).hexdigest(), bindings=rows, excluded=excluded,
    uniqueTerms=len({r['Key'] for r in rows}), bindingValues=len(rows)*14,
    originalEvents=events, boundary='Selected static primary TMP terms, system-language selection and Chinese font adapter only. Original information open/close events retained. No new pet collection, dynamic names/prices/probabilities, full I2 or native query increase.')
(Q / 'companion-text-source-contract.json').write_text(json.dumps(report, ensure_ascii=False, indent=2) + '\n')
print(dict(labels=len(rows), uniqueTerms=report['uniqueTerms'], bindingValues=report['bindingValues'], excluded=len(excluded)))
