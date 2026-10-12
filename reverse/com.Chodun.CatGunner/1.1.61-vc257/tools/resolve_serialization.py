"""Read v29-style attribute constructor lists and validate parameter table layout."""
from pathlib import Path
import json,struct
R=Path(__file__).resolve().parents[1]
meta=(R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes()
h=(R/'transformed/header.decoded.bin').read_bytes()
strings=(R/'transformed/region-5.decoded.bin').read_bytes()
word=lambda off:struct.unpack_from('<i',h,off)[0]
types=json.loads((R/'reports/resolved-type-schema.json').read_text())
methods={m['index']:(t,m) for t in types for m in t['methods']}
images=json.loads((R/'reports/image-attribute-ranges.json').read_text())
range_base=word(0xc)-0x364
data_base=word(0xcc)+0x1100
# The original native accessors 0x2944988 and 0x2944a60 prove these biases.
ranges=[struct.unpack_from('<2I',meta,range_base+i*8) for i in range(word(0x124)//8)]
assert len(ranges)==50638 and ranges[-1][1]<=word(0x150)<=ranges[-1][1]+3
assert all(a[1]<=b[1] for a,b in zip(ranges,ranges[1:]))
def compressed(off):
    c=meta[off]
    if c<128:return c,off+1
    if c==240:return struct.unpack_from('<I',meta,off+1)[0],off+5
    if c==255:return 0xffffffff,off+1
    if c==254:return 0xfffffffe,off+1
    if c&192==192:return ((c&63)<<24)|int.from_bytes(meta[off+1:off+4],'big'),off+4
    return ((c&127)<<8)|meta[off+1],off+2
attrs={}
for im in images:
    lookup={}
    start,n=im['attribute_start'],im['attribute_count']
    for i in range(start,start+n):
        tok,off=ranges[i]
        count,pos=compressed(data_base+off)
        assert count<1000 and pos+count*4<=data_base+ranges[i+1][1]
        names=[]
        for j in range(count):
            idx=struct.unpack_from('<I',meta,pos+j*4)[0]
            t,m=methods[idx]
            assert m['name']=='.ctor'
            names.append(t['full_name'])
        lookup[hex(tok)]=names
    attrs[im['name']]=lookup
for t in types:
    lookup=attrs[t['image']]
    t['attribute_types']=lookup.get(t['token'],[])
    for f in t['fields']:
        f['attribute_types']=lookup.get(f['token'],[])
        flags=f['signature']['attrs']
        f['serialization_visibility']=bool(not flags&0x90 and (flags&7==6 or 'UnityEngine.SerializeField' in f['attribute_types']))
    for m in t['methods']:m['attribute_types']=lookup.get(m['token'],[])
# Independently validate the entire parameter table, including token, string and type domains.
parameter_base=0x9d5964
param_size=word(0x134)
signatures=json.loads((R/'reports/native-type-signatures.json').read_text())
parameters=[]
for i,(name,token,idx) in enumerate(struct.iter_unpack('<3I',meta[parameter_base:parameter_base+param_size])):
    assert token>>24==8 and 0<=idx<len(signatures) and 0<=name<len(strings)
    end=strings.find(b'\0',name);assert end>=name
    parameters.append({'index':i,'name':strings[name:end].decode('utf-8'),'token':hex(token),'signature':signatures[idx]})
for t in types:
    for m in t['methods']:
        start=m['parameter_start'];n=m['parameter_count']
        assert n==0 or 0<=start<=start+n<=len(parameters)
        m['parameters']=parameters[start:start+n] if n else []
(R/'reports/resolved-type-schema.json').write_text(json.dumps(types,ensure_ascii=False,indent=2)+'\n')
summary={'attribute_constructor_lists':50637,'attribute_range_layout':'native accessor biases and all constructors validated',
         'method_parameters':len(parameters),'parameter_layout':'full token/string/type/member ranges validated; header accessor bias not yet mapped',
         'SerializeField_attributes':sum('UnityEngine.SerializeField' in f['attribute_types'] for t in types for f in t['fields']),
         'script_short_name_ambiguity':'Gun=7533; the other two Gun definitions are nested I2 localization types',
         'behavior_implemented':0}
(R/'reports/serialization-resolution-summary.json').write_text(json.dumps(summary,indent=2)+'\n')
print(summary)
for t in types:
    if t['image']=='InfiniteValueAsm.dll' and t['name']=='InfVal':
        print(t['full_name'],t['attribute_types'])
        for f in t['fields']:print(f['name'],f['signature']['name'],f['attribute_types'],f['serialization_visibility'])
