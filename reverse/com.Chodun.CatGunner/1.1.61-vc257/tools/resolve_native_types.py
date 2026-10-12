"""Resolve exact-build Il2CppType signatures and native field offsets, not bodies."""
import json
import struct
from functools import lru_cache
import map_game_methods as b

REG = 0x5c21d30
reg = [b.pointer(REG + i * 8) for i in range(16)]
types = json.loads((b.ROOT / 'reports/metadata-type-index.json').read_text())
assert reg[10] == reg[12] == len(types) == 18762
assert reg[6] == 60194
type_ptrs = [b.pointer(reg[7] + i * 8) for i in range(reg[6])]
primitive = {1:'System.Void',2:'System.Boolean',3:'System.Char',4:'System.SByte',5:'System.Byte',
             6:'System.Int16',7:'System.UInt16',8:'System.Int32',9:'System.UInt32',10:'System.Int64',
             11:'System.UInt64',12:'System.Single',13:'System.Double',14:'System.String',
             22:'System.TypedReference',24:'System.IntPtr',25:'System.UIntPtr',28:'System.Object'}

@lru_cache(None)
def resolve_ptr(va):
    off = b.raw(va)
    bits = struct.unpack_from('<I', b.native, off + 8)[0]
    kind = (bits >> 16) & 255
    data = b.pointer(va)
    result = {'kind': kind, 'attrs': bits & 0xffff, 'byref': bool(bits & (1 << 29)), 'pointer':hex(va)}
    if kind in primitive:
        name = primitive[kind]
    elif kind in (17,18):
        assert data < len(types), (hex(va),kind,data)
        t = types[data]
        name = (t['namespace']+'.' if t['namespace'] else '')+t['name']
        result['type_definition_index'] = data
    elif kind in (15,29):
        elem = resolve_ptr(data)
        result['element'] = elem
        name = elem['name'] + ('*' if kind == 15 else '[]')
    elif kind == 20:
        elem = resolve_ptr(b.pointer(data))
        rank = b.native[b.raw(data)+8]
        result.update(element=elem, rank=rank)
        name = elem['name']+'['+','*(rank-1)+']'
    elif kind == 21:
        base = resolve_ptr(b.pointer(data))
        inst = b.pointer(data+8)
        n, args = b.pointer(inst), b.pointer(inst+8)
        assert n < 100
        values = [resolve_ptr(b.pointer(args+i*8)) for i in range(n)]
        result.update(generic_base=base, arguments=values)
        name = base['name']+'<'+','.join(v['name'] for v in values)+'>'
    elif kind in (19,30):
        result['generic_parameter_index'] = data
        name = ('!' if kind == 19 else '!!')+str(data)
    else:
        raise ValueError(('Unknown type kind',hex(va),kind))
    result['name'] = name + ('&' if result['byref'] else '')
    return result

resolved = [resolve_ptr(p) for p in type_ptrs]
for t in types:
    byval = resolved[t['byval_type_index']]
    if byval['kind'] in (17,18):
        assert byval.get('type_definition_index') == t['index']
    else:
        assert byval['name'] == (t['namespace']+'.' if t['namespace'] else '')+t['name'], (t['index'],t['name'],byval)
    t['full_name'] = resolved[t['byval_type_index']]['name']
    for field in ('parent_type_index','declaring_type_index'):
        idx = t[field]
        t[field.removesuffix('_index')+'_signature'] = resolved[idx] if idx >= 0 else None
    offsets = b.pointer(reg[11] + t['index']*8)
    for i, f in enumerate(t['fields']):
        f['signature'] = resolved[f['raw_type_index']]
        f['native_offset'] = struct.unpack_from('<i',b.native,b.raw(offsets)+i*4)[0] if offsets else None
    for m in t['methods']:
        m['return_signature'] = resolved[m['raw_return_type_index']]

for filename, content in [('native-type-signatures.json',resolved),('resolved-type-schema.json',types)]:
    (b.ROOT/'reports'/filename).write_text(json.dumps(content,ensure_ascii=False,indent=2)+'\n')
summary = {'metadata_registration_preferred_va':hex(REG),'type_count':len(resolved),
           'type_definitions_validated':len(types), 'fields_resolved':sum(len(t['fields']) for t in types),
           'byval_definition_identity':'all matched', 'warning':'Serialization attributes and method parameter names still require separate metadata tables; no behavior claim.'}
(b.ROOT/'reports/native-type-resolution-summary.json').write_text(json.dumps(summary,indent=2)+'\n')
print(summary)
for t in types:
    if t['image']=='Assembly-CSharp.dll' and t['name'] in ['Setting','Upgrade_manager','Tree_manager','Gun']:
        print(t['index'],t['full_name'],t['declaring_type_signature'] and t['declaring_type_signature']['name'])
        for f in t['fields']: print(' ',f['name'],f['signature']['name'],hex(f['signature']['attrs']),f['native_offset'])
