"""Read-only original scene/I2 extraction; never rewrites Unity serialized assets."""
from pathlib import Path
import ast, hashlib, json, re

R = Path(__file__).resolve().parents[1]
P = R.parents[2] / 'reconstruction/CatGunnerUnityClient'
B = R / 'assetripper-baseline/ExportedProject'
scene = B / 'Assets/Scenes/Main.unity'
language = B / 'Assets/Resources/I2Languages.asset'
index = {int(k): v for k, v in json.loads((R / 'reports/original-main-document-index.json').read_text()).items()}
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
def path(go, root):
    parts = []
    while go != root:
        if not go: return None
        parts.append(names[go])
        go = transforms.get(parents.get(go, 0), 0)
    return '/'.join(parts[::-1])
source = language.read_text()
rows = []
excluded = []
for component, go, key in labels:
    if not key or key == '-': continue # Dynamic names/numbers: never overwrite.
    for root, scope in [(2235, 'Inventory'), (778, 'Information')]:
        relative = path(go, root)
        if relative is None: continue
        if go == 12082: # Step-up weapon type is controlled by GunItem_Demo.
            excluded.append(dict(component=component, key=key, reason='dynamic weapon preview owner'))
            continue
        match = re.search(r'    - Term: ' + re.escape(key) + r'\n      TermType: 0\n      Languages:\n(.*?)      Flags:', source, re.S)
        assert match, key
        values = [scalar(m[1]) for line in match[1].splitlines() if (m := re.match(r'      - (.*)', line))]
        assert len(values) == 14 and all(values), (key, values)
        assert all('{[' not in v and '[i2p_' not in v for v in values), key
        rows.append(dict(Scope=scope, Path=relative, Key=key, Values=values, SourceComponent=component, SourceGameObject=go))
assert len(rows) == 9 and len({r['Key'] for r in rows}) == 8
codes = json.loads((P / 'Assets/Recovery/Resources/OriginalWeaponText.json').read_text())['LocaleCodes']
data = dict(LocaleCodes=codes, Rows=rows)
target = P / 'Assets/Recovery/Resources/OriginalWeaponStaticText.json'
target.write_text(json.dumps(data, ensure_ascii=False, indent=2) + '\n')
report = dict(target='com.Chodun.CatGunner 1.1.61 vc257', sceneSha256=hashlib.sha256(scene.read_bytes()).hexdigest(), languageSha256=hashlib.sha256(language.read_bytes()).hexdigest(), resourceSha256=hashlib.sha256(target.read_bytes()).hexdigest(), bindings=rows, excluded=excluded, uniqueTerms=8, uniqueTranslations=112, bindingValues=126, boundary='Original static TMP primary terms only; local system-language and Chinese font adapter. No full I2 secondary-font/parameters/RTL/language-settings lifecycle claimed. No native method count increase.')
(R / 'reports/weapon-static-text-source-contract.json').write_text(json.dumps(report, ensure_ascii=False, indent=2) + '\n')
print(dict(labels=len(rows), uniqueTerms=8, uniqueTranslations=112))
