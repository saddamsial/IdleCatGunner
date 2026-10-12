"""Recover Tree_Grid's initializer through the exact-build FieldRef and defaults.

No heuristic probabilities are exported: the initializer hash must equal the
compiler-generated field name, and all 931 FieldRefs must resolve.
"""
from pathlib import Path
import hashlib, json, struct
import map_game_methods as m

R = Path(__file__).resolve().parents[1]
P = R.parents[2] / 'reconstruction/CatGunnerUnityClient'
metadata = (R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes()
header = (R/'transformed/header.decoded.bin').read_bytes()
word = lambda o: struct.unpack_from('<i', header, o)[0]
types = json.loads((R/'reports/resolved-type-schema.json').read_text())
byval = {t['byval_type_index']: t for t in types}

# This header/table relationship was found by the unique (type, local field)
# record used by Tree_Grid::.cctor, then checked over the entire table.
ref_base = word(0x5c) - 0x5fc
refs = list(struct.iter_unpack('<ii', metadata[ref_base:ref_base+word(0x48)]))
assert len(refs) == 931
for typ, local in refs:
    assert typ in byval and 0 <= local < len(byval[typ]['fields'])
usage = m.pointer(m.pointer(0x5d620e0))
assert usage >> 29 == 4
ref_index = (usage >> 1) & 0x0fffffff
assert ref_index == 34
typ, local = refs[ref_index]
field = byval[typ]['fields'][local]
assert field['index'] == 37640 and field['signature']['attrs'] & 0x100
defaults = {i: (t, d) for i, t, d in struct.iter_unpack('<iii',
    metadata[word(0x50)+5340:word(0x50)+5340+word(0)])}
_, data_index = defaults[field['index']]
offset = word(0x60)-4320+data_index
blob = metadata[offset:offset+80]
assert hashlib.sha256(blob).hexdigest().upper() == field['name']
dimensions = struct.unpack_from('<2Q', m.native, m.raw(0x106e140))
assert dimensions == (5, 4)
rates = [list(v) for v in struct.iter_unpack('<4f', blob)]
assert all(sum(row) == 100 for row in rates)
report = {
    'evidence': 'exact-native initializer and exact metadata bytes',
    'cctor_preferred_va': '0x2bac838', 'field_usage_slot': '0x5d620e0',
    'field_reference_index': ref_index, 'field_reference_table_offset': ref_base,
    'validated_field_references': len(refs), 'field_index': field['index'],
    'initializer_offset': offset, 'initializer_sha256': hashlib.sha256(blob).hexdigest(),
    'dimensions': dimensions, 'degree_rates': rates,
    'degree_health_multipliers': ['1', '1.8', '3', '35'],
    'degree_money_multipliers': ['1', '1.8', '3', '100'],
    'position_jitter': 1.5, 'grid_columns': 10, 'grid_spacing': 5,
    'selection': 'Morton(x,z)=Spread(x)|(Spread(z)<<1); sorted[floor(k*N/count)]',
    'probability_boundary': 'random < cumulative; fall through returns degree zero'
}
(R/'reports/original-forest-contract.json').write_text(json.dumps(report, indent=2)+'\n')
print(json.dumps(report, indent=2))
