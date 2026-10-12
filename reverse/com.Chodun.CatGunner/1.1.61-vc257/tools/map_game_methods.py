"""Resolve Assembly-CSharp token pointers through exact ELF relocations and module."""
from pathlib import Path
import json
import struct
import hashlib

ROOT = Path(__file__).resolve().parents[1]
native = (ROOT / 'extracted/split_config.arm64_v8a/lib/arm64-v8a/libil2cpp.so').read_bytes()
assert hashlib.sha256(native).hexdigest() == '80eb8bcbebd058ffb4beac5d8d7d544066587a7a1abee8898874847ff13dc583'
probe = json.loads((ROOT / 'reports/native-format-probe.json').read_text())
section = lambda name: next(s for s in probe['sections'] if s['name'] == name)
s = section('.rela.dyn')
relocations = {va: addend for va, kind, addend in struct.iter_unpack('<QQq', native[s['offset']:s['offset'] + s['size']]) if kind & 0xffffffff == 1027}
h = struct.unpack_from('<16sHHIQQQIHHHHHH', native)
segments = [struct.unpack_from('<II6Q', native, h[5] + i * h[9]) for i in range(h[10])]
def raw(va):
    seg = next(s for s in segments if s[0] == 1 and s[3] <= va < s[3] + s[5])
    return seg[2] + va - seg[3]
def pointer(va):
    return relocations.get(va, struct.unpack_from('<Q', native, raw(va))[0])

module = 0x5a56e80
name_pointer, count, table = [pointer(module + i * 8) for i in range(3)]
start = raw(name_pointer)
assert native[start:native.find(b'\0', start)] == b'Assembly-CSharp.dll'
assert count == 5873
types = json.loads((ROOT / 'reports/metadata-type-index.json').read_text())
rows = []
for t in types:
    if t['image'] != 'Assembly-CSharp.dll': continue
    for m in t['methods']:
        token = int(m['token'], 16)
        slot = (token & 0xffffff) - 1
        assert 0 <= slot < count
        va = pointer(table + slot * 8)
        if va:
            assert any(s[0] == 1 and s[1] & 1 and s[3] <= va < s[3] + s[5] for s in segments)
        rows.append({**m, 'declaring_type': t['name'], 'namespace': t['namespace'], 'image': t['image'],
                     'preferred_va': hex(va), 'file_offset': raw(va) if va else None, 'module_slot': slot,
                     'native_address': hex(va) if va else None, 'body_status': 'address mapped; behavior not reconstructed'})
assert len(rows) == count and len({r['module_slot'] for r in rows}) == count
(ROOT / 'reports/game-method-map.json').write_text(json.dumps(rows, ensure_ascii=False, indent=2) + '\n')

s = section('.eh_frame_hdr')
data = native[s['offset']:s['offset'] + s['size']]
assert data[:4] == b'\x01\x1b\x03\x3b'
starts = [s['va'] + struct.unpack_from('<i', data, 12 + i * 8)[0] for i in range(struct.unpack_from('<I', data, 8)[0])]
ends = dict(zip(starts, starts[1:]))
selected = {'Upgrade_manager': {'CalcPrice', 'Power_return', 'Money_return', 'AtkSpeed_return', 'AtkSpeed_Real_return', '.ctor'},
            'Cat': {'CalculateAtkCoolMax'}, 'Tree_manager': {'GetStageHealth', 'GetStageMoney', 'GameTime_Max_return', '.ctor'},
            'Setting': {'BGM_Setting_Change', 'SFX_Setting_Change', 'Vibration_Setting_Change'}}
queries = []
for row in rows:
    if row['declaring_type'] not in selected or row['name'] not in selected[row['declaring_type']]: continue
    va = int(row['preferred_va'], 16)
    assert va in ends, 'Missing independent unwind boundary'
    name = row['declaring_type'] + '_' + row['name'].replace('.', '_')
    queries.append('\t'.join([hex(va), name, native[raw(va):raw(va) + 16].hex(), hex(ends[va])]))
(ROOT / 'reports/native-gameplay-queries.tsv').write_text('\n'.join(queries) + '\n')
(ROOT / 'reports/game-method-map-summary.json').write_text(json.dumps({
    'module_va': hex(module), 'module_name': 'Assembly-CSharp.dll', 'module_method_count': count,
    'tokens_mapped': len(rows), 'nonzero_executable_pointers': sum(int(r['preferred_va'], 16) != 0 for r in rows),
    'coordinate_model': 'ELF preferred VA mapped by PT_LOAD; Ghidra uses independently verified +0x100000 rebase',
    'selected_queries': len(queries), 'body_status': 'addresses only; native decompile validation separate'}, indent=2) + '\n')
print('Mapped all', count, 'Assembly-CSharp tokens;', sum(int(r['preferred_va'],16) != 0 for r in rows), 'executable pointers;', len(queries), 'bounded gameplay queries')
