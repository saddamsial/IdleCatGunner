"""Create the independent client and an original-hierarchy Settings slice.

Exported dummy scripts stay outside active compilation. Main is retained in the
immutable export, while the first scene imports only the original Settings path.
"""
from pathlib import Path
import json,re,shutil,hashlib
R=Path(__file__).resolve().parents[1]
P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
baseline=R/'assetripper-baseline/ExportedProject'
assert not P.exists(), 'Never overwrite an existing work project'
(P/'Assets').mkdir(parents=True)
(P/'ProjectSettings').mkdir()
(P/'Packages').mkdir()
manifest=json.loads((baseline/'Packages/manifest.json').read_text())
for key in ['com.unity.ugui','com.unity.pipeline','com.unity.nuget.newtonsoft-json']:
    source=next(Path('/Volumes/ZHITAI_1T/pairzzle/reverse/1.2.0/unity-recovered/Library/PackageCache').glob(key+'@*'))
    shutil.copytree(source,P/'Packages'/key)
    manifest['dependencies'][key]='file:'+key
(P/'Packages/manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
(P/'ProjectSettings/ProjectVersion.txt').write_text('m_EditorVersion: 6000.4.10f1\n')
copies=[]
for source in (baseline/'Assets').iterdir():
    if source.name in ['Scripts','Scripts.meta','Plugins','Plugins.meta','Scenes','Scenes.meta','Shader','Shader.meta','ComputeShader','ComputeShader.meta']:continue
    dest=P/'Assets'/source.name
    if source.is_dir():shutil.copytree(source,dest)
    else:shutil.copy2(source,dest)
    copies.append(source.name)
# Build a streaming offset index for the complete, 507 MB immutable Main scene.
main=baseline/'Assets/Scenes/Main.unity'
docs={};start=None;key=None
with main.open('rb') as f:
    while True:
        pos=f.tell();line=f.readline()
        if not line:break
        match=re.match(rb'--- !u!(\d+) &(-?\d+)',line)
        if match:
            if key is not None:docs[key]=(classid,start,pos-start)
            classid,key=int(match[1]),int(match[2]);start=pos
    if key is not None:docs[key]=(classid,start,f.tell()-start)
with main.open('rb') as f:
    def read(key):
        _,offset,size=docs[key];f.seek(offset);return f.read(size).decode('utf-8')
    gos={};transforms={};components={};names={}
    for key,(cid,_,_) in docs.items():
        if cid==1:
            d=read(key);name=re.search(r'^  m_Name: (.*)$',d,re.M)[1]
            gos[key]=[int(v) for v in re.findall(r'component: \{fileID: (-?\d+)\}',d)]
            names.setdefault(name,[]).append(key)
        elif cid in (4,224):
            d=read(key);go=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',d)[1]);parent=int(re.search(r'm_Father: \{fileID: (-?\d+)\}',d)[1]);children=[]
            sub=d[d.index('  m_Children:'):d.index('  m_Father:')]
            children=[int(v) for v in re.findall(r'fileID: (-?\d+)',sub)]
            transforms[key]=(go,parent,children);components[go]=key
    roots={name:names[name][0] for name in ['Setting_UI','Setting','Sound_manager','EventSystem']}
    selected=set();selected_gos=set()
    def include(go,descend=True):
        if go in selected_gos:return
        selected_gos.add(go);selected.add(go);selected.update(gos[go])
        if descend:
            for child in transforms[components[go]][2]:include(transforms[child][0])
    for go in roots.values():include(go)
    # Retain original Canvas ancestors and only the settings branch of their children.
    for go in list(selected_gos):
        parent=transforms[components[go]][1]
        while parent:
            ancestor=transforms[parent][0];include(ancestor,False);parent=transforms[parent][1]
    scene=P/'Assets/Recovery/Scenes/RecoveredSettings.unity';scene.parent.mkdir(parents=True)
    changes=[]
    with scene.open('w') as out:
        out.write('%YAML 1.1\n%TAG !u! tag:unity3d.com,2011:\n')
        for key in sorted(selected,key=lambda k:docs[k][1]):
            data=read(key);cid=docs[key][0]
            if cid in (4,224):
                childblock=data[data.index('  m_Children:'):data.index('  m_Father:')]
                kept=[ch for ch in transforms[key][2] if ch in selected]
                new='  m_Children:\n'+''.join(f'  - {{fileID: {ch}}}\n' for ch in kept) if kept else '  m_Children: []\n'
                data=data.replace(childblock,new)
                parent=transforms[key][1]
                if parent not in selected:data=data.replace(f'm_Father: {{fileID: {parent}}}','m_Father: {fileID: 0}')
            if key==roots['Setting_UI']:
                data=data.replace('m_IsActive: 0','m_IsActive: 1');changes.append('Settings branch initially visible for independent verification')
            # Dropped branch references remain documented; they become null in this slice.
            def internal(match):
                ident=int(match[1])
                if ident and ident not in selected:
                    changes.append({'owner':key,'unavailable_reference':ident})
                    return '{fileID: 0}'
                return match[0]
            data=re.sub(r'\{fileID: (-?\d+)\}',internal,data)
            out.write(data)
    original_script=baseline/'Assets/Scripts/Assembly-CSharp/Setting.cs.meta'
    scripts=P/'Assets/Recovery/Scripts';scripts.mkdir(parents=True)
    shutil.copy2(original_script,scripts/'Setting.cs.meta')
    shutil.copy2(baseline/'Assets/Scripts/Assembly-CSharp/Sound_manager.cs.meta',scripts/'Sound_manager.cs.meta')
    # Schema identity -> real public UGUI/TMP script identity, independent of class short names.
    package=P/'Packages/com.unity.ugui'
    aliases={};unresolved=[]
    for source in (baseline/'Assets/Scripts').rglob('*.cs'):
        namespace=re.search(r'namespace\s+([\w.]+)',source.read_text())
        ns=namespace[1] if namespace else ''
        if not (ns.startswith(('UnityEngine.UI','UnityEngine.EventSystems','TMPro'))):continue
        candidates=[p for p in package.rglob(source.name) if re.search(r'namespace\s+'+re.escape(ns)+r'\b',p.read_text())]
        if len(candidates)!=1:unresolved.append(str(source.relative_to(baseline)));continue
        old=re.search(r'^guid: (\w+)',source.with_suffix('.cs.meta').read_text(),re.M)[1]
        new=re.search(r'^guid: (\w+)',candidates[0].with_suffix('.cs.meta').read_text(),re.M)[1]
        aliases[old]=new
    text=scene.read_text()
    for old,new in aliases.items():text=text.replace('guid: '+old,'guid: '+new)
    scene.write_text(text)
    # GUID fixes also apply to original TMP font and related data assets.
    for path in (P/'Assets').rglob('*.asset'):
        text=path.read_text();changed=False
        for old,new in aliases.items():
            if 'guid: '+old in text:text=text.replace('guid: '+old,'guid: '+new);changed=True
        if changed:path.write_text(text)
report={'project':str(P),'baseline_main_bytes':main.stat().st_size,'settings_objects':len(selected_gos),
        'settings_documents':len(selected),'original_roots':roots,'copied_original_asset_groups':copies,
        'public_script_guid_mapping':aliases,'unresolved_public_script_identities':unresolved,'slice_differences':changes,
        'dummy_script_policy':'All exported dummy scripts and plugin dummies remain quarantined in the immutable AssetRipper baseline; no empty dummy business methods enter active compilation.',
        'baseline_main_sha256':hashlib.sha256(main.read_bytes()).hexdigest()}
(R/'reports/unity-project-preparation.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
print('Prepared',P,len(selected_gos),'original hierarchy objects',len(aliases),'public script GUID mappings')
