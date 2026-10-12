"""Extract exact original relic manager, list, info and original navigation branches; immutable Main is never edited."""
from pathlib import Path
import json,re
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
B=R/'assetripper-baseline/ExportedProject'
docs={int(k):tuple(v) for k,v in json.loads((R/'reports/original-main-document-index.json').read_text()).items()}
prep=json.loads((R/'reports/unity-project-preparation.json').read_text())
aliases=prep['public_script_guid_mapping']
with (B/'Assets/Scenes/Main.unity').open('rb') as f:
    def read(k):
        cid,off,n=docs[k];f.seek(off);return f.read(n).decode()
    gos={};trans={};bygo={}
    for k,(cid,_,_) in docs.items():
        if cid==1:gos[k]=[int(v) for v in re.findall(r'component: \{fileID: (-?\d+)\}',read(k))]
        elif cid in (4,224):
            d=read(k);go=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',d)[1]);parent=int(re.search(r'm_Father: \{fileID: (-?\d+)\}',d)[1]);children=[int(v) for v in re.findall(r'\{fileID: (-?\d+)\}',d[d.index('  m_Children:'):d.index('  m_Father:')])]
            trans[k]=(go,parent,children);bygo[go]=k
    selected=set();selectedgo=set();ancestors=set()
    def include(go,recursive=True):
        if go in selectedgo:return
        selectedgo.add(go);selected.add(go);selected.update(gos[go])
        if recursive:
            for child in trans[bygo[go]][2]:include(trans[child][0])
    for root in [803,47,1839,1086,2252,1419]:include(root)
    
    for go in list(selectedgo):
        parent=trans[bygo[go]][1]
        while parent:
            ancestor=trans[parent][0]
            if ancestor not in selectedgo:include(ancestor,False);ancestors.add(ancestor)
            parent=trans[parent][1]
    guids={re.search(r'^guid: (\w+)',(B/('Assets/Scripts/Assembly-CSharp/'+name+'.cs.meta')).read_text(),re.M)[1] for name in ['Relic_manager','Relic_Info_UI','Relic_Item','Relic_Item_Demo','Relic_DownPanel','Relic_DrawMode_Btn','Draw_Relic_Btn','Relic_Draw_Panel']}
    dropped=[];missing=[]
    for k in list(selected):
        if docs[k][0]!=114:continue
        d=read(k);m=re.search(r'm_Script: \{[^}]*guid: (\w+)',d)
        if not m or m[1] not in {*aliases,*guids}:
            selected.remove(k);dropped.append(k)
    path=P/'Assets/Recovery/Scenes/RecoveredRelic.unity'
    assert not path.exists(),'Do not overwrite an existing working input scene'
    with path.open('w') as out:
        out.write('%YAML 1.1\n%TAG !u! tag:unity3d.com,2011:\n')
        for k in sorted(selected,key=lambda k:docs[k][1]):
            d=read(k);cid=docs[k][0]
            if cid==1:
                for c in gos[k]:
                    if c not in selected:d=d.replace(f'  - component: {{fileID: {c}}}\n','')
                if k in ancestors:d=d.replace('m_IsActive: 0','m_IsActive: 1')
            if cid in (4,224):
                block=d[d.index('  m_Children:'):d.index('  m_Father:')];children=[c for c in trans[k][2] if c in selected]
                d=d.replace(block,'  m_Children:\n'+''.join(f'  - {{fileID: {c}}}\n' for c in children) if children else '  m_Children: []\n')
            def reference(m):
                i=int(m[1])
                if i and i not in selected:missing.append({'owner':k,'reference':i});return '{fileID: 0}'
                return m[0]
            d=re.sub(r'\{fileID: (-?\d+)\}',reference,d)
            for old,new in aliases.items():d=d.replace('guid: '+old,'guid: '+new)
            out.write(d)
    report={'scene':str(path),'original_objects':len(selectedgo),'documents':len(selected),'unsupported_components':dropped,'external_references_removed':missing,'roots':[803,47,1839,1086,2252,1419],'scope':'Original relic menu/results/details with Adventure frame and existing entry. Dispatch tabs and paid core purchase omitted; direct local relic entry adapter. Unsupported global managers excluded and retained in immutable source.'}
    (R/'reports/relic-slice-preparation.json').write_text(json.dumps(report,indent=2)+'\n')
    print('Original relic slice:',len(selectedgo),'objects',len(selected),'documents')
