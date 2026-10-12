"""Extract original auto-upgrade UI and HUD branches; merge the input using Unity Editor APIs."""
from pathlib import Path
import json, re, shutil

R = Path(__file__).resolve().parents[1]
P = R.parents[2] / 'reconstruction/CatGunnerUnityClient'
B = R / 'assetripper-baseline/ExportedProject'
docs = {int(k): tuple(v) for k, v in json.loads((R/'reports/original-main-document-index.json').read_text()).items()}
aliases = json.loads((R/'reports/unity-project-preparation.json').read_text())['public_script_guid_mapping']
for name in ['AutoUpgrade_UI']:
    shutil.copyfile(B/f'Assets/Scripts/Assembly-CSharp/{name}.cs.meta',P/f'Assets/Recovery/Scripts/{name}.cs.meta')
allowed = {re.search(r'^guid: (\w+)', p.read_text(), re.M)[1] for p in (P/'Assets/Recovery/Scripts').glob('*.cs.meta')}
with (B/'Assets/Scenes/Main.unity').open('rb') as f:
    def read(k):
        _, offset, size = docs[k]; f.seek(offset); return f.read(size).decode()
    gos, names, transforms, bygo = {}, {}, {}, {}
    for k, (cid, _, _) in docs.items():
        if cid == 1:
            d = read(k); gos[k] = [int(v) for v in re.findall(r'component: \{fileID: (-?\d+)\}', d)]
            names[k] = re.search(r'  m_Name: (.*)', d)[1]
        elif cid in (4, 224):
            d = read(k); go = int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}', d)[1])
            parent = int(re.search(r'm_Father: \{fileID: (-?\d+)\}', d)[1])
            children = [int(v) for v in re.findall(r'\{fileID: (-?\d+)\}', d[d.index('  m_Children:'):d.index('  m_Father:')])]
            transforms[k] = (go, parent, children); bygo[go] = k
    def path(go):
        t = bygo[go]; parent = transforms[t][1]
        siblings = transforms[parent][2] if parent else [k for k,v in transforms.items() if v[1] == 0]
        ordinal = [k for k in siblings if names[transforms[k][0]] == names[go]].index(t)
        return (path(transforms[parent][0]) if parent else []) + [{'name': names[go], 'ordinal': ordinal}]
    selected, selectedgo, ancestors = set(), set(), set()
    def include(go, recursive=True):
        if go not in selectedgo:
            selectedgo.add(go); selected.add(go); selected.update(gos[go])
        if recursive:
            for c in transforms[bygo[go]][2]: include(transforms[c][0])
    roots = [19290,1660]
    for root in roots: include(root)
    for go in list(selectedgo):
        parent = transforms[bygo[go]][1]
        while parent:
            ancestor = transforms[parent][0]
            if ancestor not in selectedgo: include(ancestor,False); ancestors.add(ancestor)
            parent = transforms[parent][1]
    dropped, missing = [], []
    for k in list(selected):
        if docs[k][0] != 114: continue
        d = read(k); m = re.search(r'm_Script: \{[^}]*guid: (\w+)', d)
        if not m or m[1] not in {*aliases, *allowed}:
            selected.remove(k); dropped.append({'component': k, 'script': m[1] if m else None})
    outpath = P/'Assets/Recovery/Scenes/RecoveredAutoUpgradeSource.unity'
    assert not outpath.exists(), 'Do not overwrite the working source slice'
    with outpath.open('w') as out:
        out.write('%YAML 1.1\n%TAG !u! tag:unity3d.com,2011:\n')
        for k in sorted(selected, key=lambda x: docs[x][1]):
            d = read(k); cid = docs[k][0]
            if cid == 1:
                for c in gos[k]:
                    if c not in selected: d = d.replace(f'  - component: {{fileID: {c}}}\n', '')
                if k in ancestors: d = d.replace('m_IsActive: 0','m_IsActive: 1')
            if cid in (4,224):
                block = d[d.index('  m_Children:'):d.index('  m_Father:')]
                children = [c for c in transforms[k][2] if c in selected]
                d = d.replace(block, ('  m_Children:\n'+''.join(f'  - {{fileID: {c}}}\n' for c in children)) if children else '  m_Children: []\n')
            def reference(m):
                value = int(m[1])
                if value and value not in selected: missing.append({'owner':k,'reference':value}); return '{fileID: 0}'
                return m[0]
            d = re.sub(r'\{fileID: (-?\d+)\}',reference,d)
            for old,new in aliases.items(): d = d.replace('guid: '+old,'guid: '+new)
            out.write(d)
    data = {'roots': roots, 'rows': [{'originalGo': go, 'path': path(go)} for go in sorted(selectedgo)],
            'parentOrders': {str(root): [names[transforms[t][0]] for t in transforms[transforms[bygo[root]][1]][2]] for root in roots},
            'objects': len(selectedgo), 'documents': len(selected), 'dropped': dropped, 'externalReferences': missing}
    (P/'Assets/Recovery/Editor/OriginalAutoUpgrade.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
    (R/'reports/auto-upgrade-slice-preparation.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'roots': [{ 'id':r,'path':path(r)} for r in roots], 'objects':len(selectedgo),'documents':len(selected),'dropped':dropped},ensure_ascii=False))
