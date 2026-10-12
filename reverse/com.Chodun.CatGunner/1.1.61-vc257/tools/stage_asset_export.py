"""Add verified serialization contracts to a COPY of player asset data.

The byte payload of every object is checked unchanged after round-trip. This
staging transformation is for asset export only, never an original game build.
"""
import hashlib,json
from collections import defaultdict
import read_original_components as b
from UnityPy.files import SerializedFile
env=b.UnityPy.load(str(b.R/'extracted/base/assets/bin/Data/data.unity3d'))
accepted=json.loads((b.R/'reports/component-decoding-index.json').read_text())
lookup={(r['file'],r['path_id']):r['type_index'] for r in accepted}
groups=defaultdict(list)
for obj in env.objects:
    if obj.type.name=='MonoBehaviour':groups[(obj.assets_file.name,obj.type_id)].append(obj)
verified={}
for key,objs in groups.items():
    ids={lookup.get((o.assets_file.name,o.path_id)) for o in objs}
    if None not in ids and len(ids)==1:verified[key]=next(iter(ids))
def levels(n,level=0):
    n.m_Level=level
    if n.m_TypeFlags is None:n.m_TypeFlags=1 if n.m_Type=='Array' else 0
    if n.m_RefTypeHash is None:n.m_RefTypeHash=0
    for c in n.m_Children:levels(c,level+1)
bundle=next(iter(env.files.values()))
mapped=[];missing=[]
for file in bundle.files.values():
    if not isinstance(file,SerializedFile):continue
    if file.ref_types:
        missing.append({'file':file.name,'reason':'Unresolved managed reference type identities; file preserved without added typetrees'})
        continue
    file._enable_type_tree=True
    for i,typ in enumerate(file.types):
        if typ.class_id==114:
            idx=verified.get((file.name,i))
            tree=b.clone(b.script_tree(idx),'Base') if idx is not None else b.clone(b.base,'Base')
            (mapped if idx is not None else missing).append({'file':file.name,'type_index':i,'metadata_type':idx})
        else:tree=b.clone(b.Tpk.get_typetree_node(typ.class_id,b.ver),'Base')
        levels(tree)
        for ix,n in enumerate(tree.traverse()):n.m_Index=ix
        typ.node=tree
        if typ.type_dependencies is None:typ.type_dependencies=[]
out=b.R/'assetripper-input';out.mkdir(exist_ok=True)
path=out/'data.unity3d';path.write_bytes(bundle.save(packer='lz4'))
again=b.UnityPy.load(str(path))
old={(o.assets_file.name,o.path_id):hashlib.sha256(o.get_raw_data()).hexdigest() for o in env.objects}
new={(o.assets_file.name,o.path_id):hashlib.sha256(o.get_raw_data()).hexdigest() for o in again.objects}
assert old==new
report={'objects_unchanged':len(old),'verified_component_type_contracts':mapped,
        'unresolved_component_types':missing,'staged_sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
        'original_untouched':True,'warning':'Unknown script types retain only the standard MonoBehaviour header in the export. Raw original bytes remain immutable in extracted inputs.'}
(b.R/'reports/asset-export-staging.json').write_text(json.dumps(report,indent=2)+'\n')
print('Round-trip verified',len(old),'unaltered object payloads;',len(mapped),'component schemas;',len(missing),'unresolved')
