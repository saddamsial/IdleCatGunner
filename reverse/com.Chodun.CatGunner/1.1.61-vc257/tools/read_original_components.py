"""Decode original serialized components using native-resolved field contracts.

Only components whose complete byte count matches are accepted. Unresolved
engine/custom serialization stays in an explicit failure manifest.
"""
import json,struct,copy
from pathlib import Path
from functools import lru_cache
import UnityPy
from UnityPy.helpers import Tpk
from UnityPy.helpers.TypeTreeNode import TypeTreeNode as Node
from UnityPy.helpers.UnityVersion import UnityVersion
R=Path(__file__).resolve().parents[1]
types=json.loads((R/'reports/resolved-type-schema.json').read_text())
signatures=json.loads((R/'reports/native-type-signatures.json').read_text())
metadata=(R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes()
header=(R/'transformed/header.decoded.bin').read_bytes()
gpbase=struct.unpack_from('<i',header,0x2c)[0]+6216
ver=UnityVersion.from_str('6000.0.61f1')
base=Tpk.get_typetree_node(114,ver)
builtins={}
curves=[]
for ci in Tpk.TPKTYPETREE.ClassInformation.values():
    try:
        c=ci.getVersionedClass(ver)
        if not c or c.ReleaseRootNode is None:continue
        tree=Tpk.generate_node(c)
        for node in tree.traverse():
            if node.m_Children and node.m_Type not in builtins:builtins[node.m_Type]=node
            if node.m_Type=='AnimationCurve':curves.append(node)
    except Exception:pass
for curve in curves:
    values=[n for n in curve.traverse() if n.m_Name=='value']
    if values and values[0].m_Type=='float':builtins['AnimationCurve']=curve;break

def node(kind,name,children=(),size=-1,flag=0):
    return Node(m_Level=0,m_Type=kind,m_Name=name,m_ByteSize=size,m_Index=0,m_Version=1,m_MetaFlag=flag,m_Children=list(children))
def clone(template,name):
    fields=template.to_dict(); fields['m_Children']=[clone(c,c.m_Name) for c in template.m_Children]; fields['m_Name']=name
    return Node(**fields)
primitive={2:('bool',1,0x4000),3:('char',1,0x4000),4:('SInt8',1,0x4000),5:('UInt8',1,0x4000),
           6:('SInt16',2,0x4000),7:('UInt16',2,0x4000),8:('int',4,0),9:('unsigned int',4,0),
           10:('SInt64',8,0),11:('UInt64',8,0),12:('float',4,0),13:('double',8,0)}
engine_names={'Vector2':'Vector2f','Vector3':'Vector3f','Vector4':'Vector4f','Quaternion':'Quaternionf',
              'Rect':'Rectf','Color':'ColorRGBA','Color32':'ColorRGBA','Bounds':'AABB',
              'Matrix4x4':'Matrix4x4f','AnimationCurve':'AnimationCurve','Gradient':'Gradient',
              'RectOffset':'RectOffset','LayerMask':'BitField'}
@lru_cache(None)
def unity_object(idx):
    t=types[idx]
    if t['namespace']=='UnityEngine' and t['name']=='Object':return True
    parent=t['parent_type_signature']
    return bool(parent and 'type_definition_index' in parent and unity_object(parent['type_definition_index']))

def serial_fields(idx,args=(),depth=0):
    if depth>15:raise ValueError('Recursion limit')
    t=types[idx];out=[]
    parent=t['parent_type_signature']
    if parent and parent['name'] not in ('UnityEngine.MonoBehaviour','UnityEngine.ScriptableObject','System.Object','System.ValueType'):
        pi=parent.get('type_definition_index')
        if pi is not None:out+=serial_fields(pi,args,depth+1)
        elif parent['kind']==21:out+=serial_fields(parent['generic_base']['type_definition_index'],parent['arguments'],depth+1)
    for f in t['fields']:
        if not f['serialization_visibility']:continue
        sig=f['signature']
        if sig['kind']==21 and sig['generic_base']['name'].startswith(('System.Collections.Generic.Dictionary`','System.Collections.Generic.HashSet`')):continue
        if sig['kind']==18 and sig['name'].startswith(('System.Action','System.Func')):continue
        try:out.append(field_node(sig,f['name'],args,depth+1))
        except SkipField:pass
    return out
class SkipField(Exception):pass
def field_node(sig,name,args=(),depth=0):
    kind=sig['kind']
    if kind in primitive:
        tp,size,flag=primitive[kind];return node(tp,name,size=size,flag=flag)
    if kind==14:return clone(builtins['string'],name)
    if kind==19:
        gi=sig['generic_parameter_index'];pos=struct.unpack_from('<H',metadata,gpbase+gi*16+12)[0]
        return field_node(args[pos],name,(),depth+1)
    if kind==29 or (kind==21 and sig['generic_base']['name']=='System.Collections.Generic.List`1'):
        elem=sig['element'] if kind==29 else sig['arguments'][0]
        return node('vector',name,[node('Array','Array',[node('int','size',size=4),field_node(elem,'data',args,depth+1)],flag=0x4000)])
    if kind not in (17,18,21):raise SkipField(sig['name'])
    idx=sig.get('type_definition_index') if kind!=21 else sig['generic_base']['type_definition_index']
    t=types[idx]
    if unity_object(idx):
        return node('PPtr<'+t['name']+'>',name,[node('int','m_FileID',size=4),node('SInt64','m_PathID',size=8)])
    if t['parent_type_signature'] and t['parent_type_signature']['name']=='System.Enum':
        underlying=next(f['signature'] for f in t['fields'] if f['name']=='value__')
        return field_node(underlying,name,args,depth+1)
    if t['namespace']=='UnityEngine' and t['name'] in engine_names:
        if t['name']=='Color32':return node('ColorRGBA',name,[node('UInt8',c,size=1) for c in 'rgba'],size=4,flag=0x4000)
        if t['name']=='RectOffset':return node('RectOffset',name,[node('int',c,size=4) for c in ['m_Left','m_Right','m_Top','m_Bottom']],size=16)
        return clone(builtins[engine_names[t['name']]],name)
    if t['namespace']=='UnityEngine' and t['name'] in ('Vector2Int','Vector3Int'):
        return node(t['name'],name,[node('int',c,size=4) for c in ('x','y','z')[:2 if t['name']=='Vector2Int' else 3]])
    # Unity skips unmarked ordinary reference classes, but value structs remain serializable.
    if kind==18 and not t['flags']&0x2000:raise SkipField(sig['name'])
    fields=serial_fields(idx,sig.get('arguments',args),depth+1)
    return node(t['name'],name,fields)

@lru_cache(None)
def script_tree(idx):
    root=clone(base,'Base')
    root.m_Children.extend(serial_fields(idx))
    return root

def main():
    env=UnityPy.load(str(R/'extracted/base/assets/bin/Data/data.unity3d'))
    objects={(o.assets_file.name,o.path_id):o for o in env.objects}
    script_types={}
    for o in env.objects:
        if o.type.name!='MonoScript':continue
        data=o.read()
        assembly=data.m_AssemblyName.removesuffix('.dll')+'.dll'
        candidates=[t for t in types if t['image']==assembly and t['namespace']==data.m_Namespace and t['name']==data.m_ClassName and t['declaring_type_index']<0]
        if len(candidates)==1:script_types[(o.assets_file.name,o.path_id)]=candidates[0]['index']
    results=[];errors=[];output=R/'serialized-components';output.mkdir(exist_ok=True)
    for o in env.objects:
        if o.type.name!='MonoBehaviour':continue
        try:
            generic=o.read(check_read=False)
            script=generic.m_Script.deref()
            idx=script_types[(script.assets_file.name,script.path_id)]
            tree=o.read_typetree(nodes=script_tree(idx),check_read=True)
            go=generic.m_GameObject.deref() if generic.m_GameObject.m_PathID else None
            go_name=go.read().m_Name if go else tree.get('m_Name','')
            identity={'file':o.assets_file.name,'path_id':o.path_id,'type_index':idx,'type':types[idx]['full_name'],'game_object':go_name}
            filename=f'{o.assets_file.name}-{o.path_id}.json'
            (output/filename).write_text(json.dumps({'identity':identity,'data':tree},ensure_ascii=False,indent=2)+'\n')
            results.append({**identity,'output':str((output/filename).relative_to(R))})
        except Exception as ex:
            errors.append({'file':o.assets_file.name,'path_id':o.path_id,'error':str(ex)[:200]})
    (R/'reports/component-decoding-index.json').write_text(json.dumps(results,ensure_ascii=False,indent=2)+'\n')
    (R/'reports/component-decoding-errors.json').write_text(json.dumps(errors,ensure_ascii=False,indent=2)+'\n')
    print('Decoded',len(results),'complete components;',len(errors),'unresolved')
    from collections import Counter
    print(Counter(e['error'] for e in errors).most_common(12))

if __name__=='__main__':main()
