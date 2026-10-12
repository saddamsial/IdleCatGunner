"""Extract the original forest hierarchy, retaining supported component GUIDs.

This is a pool/map runtime acceptance scene, not a replacement full Main scene.
The immutable 507 MB baseline is never modified.
"""
from pathlib import Path
import json, re, shutil

R=Path(__file__).resolve().parents[1]
P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
B=R/'assetripper-baseline/ExportedProject'
main=B/'Assets/Scenes/Main.unity'
cache=R/'reports/original-main-document-index.json'
if cache.exists():
    docs={int(k):tuple(v) for k,v in json.loads(cache.read_text()).items()}
else:
    docs={};key=None
    with main.open('rb') as f:
        while True:
            pos=f.tell();line=f.readline()
            if not line:break
            match=re.match(rb'--- !u!(\d+) &(-?\d+)',line)
            if match:
                if key is not None:docs[key]=(cid,start,pos-start)
                cid,key=int(match[1]),int(match[2]);start=pos
        if key is not None:docs[key]=(cid,start,f.tell()-start)
    cache.write_text(json.dumps(docs))
supported={'Tree','Tree_Grid','Tree_manager','Map_Grid','Enemy'}
script_ids={}
for name in supported:
    meta=B/('Assets/Scripts/Assembly-CSharp/'+name+'.cs.meta')
    guid=re.search(r'^guid: (\w+)',meta.read_text(),re.M)[1]
    script_ids[guid]=name
    target=P/('Assets/Recovery/Scripts/'+name+'.cs.meta')
    if target.exists():assert target.read_bytes()==meta.read_bytes()
    else:shutil.copy2(meta,target)
with main.open('rb') as f:
    def read(key):
        cid,offset,length=docs[key];f.seek(offset);return f.read(length).decode()
    gos={};trans={};names={};go_transform={}
    for key,(cid,_,_) in docs.items():
        if cid==1:
            d=read(key);name=re.search(r'^  m_Name: (.*)$',d,re.M)[1]
            gos[key]=[int(v) for v in re.findall(r'component: \{fileID: (-?\d+)\}',d)]
            names.setdefault(name,[]).append(key)
        elif cid in (4,224):
            d=read(key);go=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',d)[1]);parent=int(re.search(r'm_Father: \{fileID: (-?\d+)\}',d)[1])
            children=[int(v) for v in re.findall(r'\{fileID: (-?\d+)\}',d[d.index('  m_Children:'):d.index('  m_Father:')])]
            trans[key]=(go,parent,children);go_transform[go]=key
    idx=json.loads((R/'reports/component-decoding-index.json').read_text())
    hero=next(v for v in idx if v['type']=='Cat' and v['game_object']=='Cat')
    hero_go=json.loads((R/hero['output']).read_text())['data']['m_GameObject']['m_PathID']
    roots=[1599,1838,hero_go]+names['Main Camera']
    chosen=set();chosen_gos=set()
    def include(go,recursive=True):
        if go in chosen_gos:return
        chosen_gos.add(go);chosen.add(go);chosen.update(gos[go])
        if recursive:
            for child in trans[go_transform[go]][2]:include(trans[child][0])
    for go in roots:include(go)
    for go in list(chosen_gos):
        parent=trans[go_transform[go]][1]
        while parent:
            include(trans[parent][0],False);parent=trans[parent][1]
    removed=[];missing=[]
    for key in list(chosen):
        if docs[key][0]!=114:continue
        d=read(key);guid=re.search(r'm_Script: \{[^}]*guid: (\w+)',d)
        if not guid or guid[1] not in script_ids:
            removed.append({'document':key,'script_guid':guid[1] if guid else None})
            chosen.remove(key)
    scene=P/'Assets/Recovery/Scenes/RecoveredForest.unity'
    assert not scene.exists(), 'Do not overwrite a working forest scene'
    with scene.open('w') as out:
        out.write('%YAML 1.1\n%TAG !u! tag:unity3d.com,2011:\n')
        for key in sorted(chosen,key=lambda k:docs[k][1]):
            d=read(key);cid=docs[key][0]
            if cid==1:
                for component in gos[key]:
                    if component not in chosen:d=d.replace(f'  - component: {{fileID: {component}}}\n','')
            if cid in (4,224):
                block=d[d.index('  m_Children:'):d.index('  m_Father:')]
                children=[x for x in trans[key][2] if x in chosen]
                d=d.replace(block,'  m_Children:\n'+''.join(f'  - {{fileID: {x}}}\n' for x in children) if children else '  m_Children: []\n')
            def null_missing(match):
                ident=int(match[1])
                if ident and ident not in chosen:
                    missing.append({'owner':key,'reference':ident});return '{fileID: 0}'
                return match[0]
            out.write(re.sub(r'\{fileID: (-?\d+)\}',null_missing,d))
    report={'scene':str(scene),'original_roots':roots,'game_objects':len(chosen_gos),'documents':len(chosen),
        'supported_original_scripts':script_ids,'removed_unsupported_components':removed,'removed_external_references':missing,
        'acceptance_scope':'Original map/tree pool spawning; original hero visual only. Cat controls, complete game startup, UI, economy and modes remain outside this slice.'}
    (R/'reports/forest-slice-preparation.json').write_text(json.dumps(report,indent=2)+'\n')
    print('Original forest slice:',len(chosen_gos),'objects',len(chosen),'documents;',len(removed),'unsupported components isolated')
