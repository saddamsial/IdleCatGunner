"""Index proven table layouts without claiming native method-body recovery."""
from pathlib import Path
import json
import struct
import hashlib

ROOT = Path(__file__).resolve().parents[1]
metadata = (ROOT / 'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes()
header = (ROOT / 'transformed/header.decoded.bin').read_bytes()
strings = (ROOT / 'transformed/region-5.decoded.bin').read_bytes()
methods = (ROOT / 'transformed/region-1.decoded.bin').read_bytes()
fields = (ROOT / 'transformed/region-6.decoded.bin').read_bytes()
word = lambda offset: struct.unpack_from('<i', header, offset)[0]
type_start, type_bytes = word(0x24) + 7148, word(0x28)
image_start, image_bytes = word(0x8) + 5004, word(0x44)
assert type_bytes % 88 == image_bytes % 40 == len(methods) % 36 == len(fields) % 12 == 0
assert type_start + type_bytes <= len(metadata) and image_start + image_bytes <= len(metadata)
type_count, method_count, field_count = type_bytes // 88, len(methods) // 36, len(fields) // 12

def text(index):
    assert 0 <= index < len(strings), 'String index out of bounds'
    end = strings.find(b'\0', index)
    assert end >= index
    return strings[index:end].decode('utf-8')

images = []
for i in range(image_bytes // 40):
    data = struct.unpack_from('<10I', metadata, image_start + i * 40)
    name = text(data[0])
    assert data[2] + data[3] <= type_count
    images.append({'name': name, 'image_index': i, 'first_type': data[2], 'type_count': data[3], 'assembly_index': data[1]})
types = []
for i in range(type_count):
    data = struct.unpack_from('<16i8H2I', metadata, type_start + i * 88)
    assert data[25] >> 24 == 2
    image = next(im for im in images if im['first_type'] <= i < im['first_type'] + im['type_count'])
    record = {'index': i, 'image': image['name'], 'namespace': text(data[1]), 'name': text(data[0]),
              'token': hex(data[25]), 'byval_type_index': data[2], 'declaring_type_index': data[3], 'parent_type_index': data[4],
              'flags': data[7], 'bitfield': data[24], 'fields': [], 'methods': []}
    first_field, first_method = data[8:10]
    nm, nf = data[16], data[18]
    assert nf == 0 or 0 <= first_field <= first_field + nf <= field_count
    assert nm == 0 or 0 <= first_method <= first_method + nm <= method_count
    for j in range(max(first_field, 0), max(first_field, 0) + nf):
        name, type_index, token = struct.unpack_from('<3I', fields, j * 12)
        assert token >> 24 == 4
        record['fields'].append({'index': j, 'name': text(name), 'raw_type_index': type_index, 'token': hex(token)})
    for j in range(max(first_method, 0), max(first_method, 0) + nm):
        name, declaring, return_type, return_parameter_token, parameter_start, generic, token, flags, iflags, slot, params = struct.unpack_from('<7I4H', methods, j * 36)
        assert declaring == i and token >> 24 == 6
        record['methods'].append({'index': j, 'name': text(name), 'token': hex(token), 'parameter_count': params,
                                  'raw_return_type_index': return_type, 'parameter_start': parameter_start,
                                  'flags': flags, 'iflags': iflags, 'native_address': None, 'body_status': 'not recovered'})
    types.append(record)

script_objects = json.loads((ROOT / 'reports/asset-objects.json').read_text())
source_scripts = {(o['namespace'], o['class_name']) for o in script_objects
                  if o['type'] == 'MonoScript' and o.get('assembly') == 'Assembly-CSharp'}
# Exact original script identities; internal framework / plugins remain annotated in the report.
matched = [t for t in types if t['image'].removesuffix('.dll') == 'Assembly-CSharp' and (t['namespace'], t['name']) in source_scripts]
ambiguities = []
for ns, name in sorted(source_scripts):
    candidates = [t['index'] for t in matched if t['namespace'] == ns and t['name'] == name]
    if len(candidates) != 1:
        ambiguities.append({'namespace': ns, 'name': name, 'candidate_type_indices': candidates})
summary = {'metadata_sha256': hashlib.sha256(metadata).hexdigest(), 'type_count': type_count,
           'method_count': method_count, 'field_count': field_count, 'images': images,
           'all_indexed_type_tokens_and_utf8_names': 'passed', 'all_type_field_and_method_ranges': 'passed',
           'all_owned_field_tokens_and_method_tokens_declaring_types': 'passed',
           'matched_asset_script_types': len(matched), 'matched_asset_script_identities': len(source_scripts),
           'ambiguous_or_missing_short_script_identities': ambiguities,
           'native_method_addresses_resolved': 0, 'method_bodies_recovered': 0,
           'warning': 'Names, indices, tokens and member ownership only; raw Il2CppType indices not yet resolved to field/parameter type signatures.'}
for name, content in [('metadata-index-summary.json', summary), ('metadata-type-index.json', types), ('original-script-schema-index.json', matched)]:
    (ROOT / 'reports' / name).write_text(json.dumps(content, ensure_ascii=False, indent=2) + '\n')
print('Validated', type_count, 'types,', method_count, 'methods,', field_count, 'fields;', len(matched), 'original script types matched; native bodies remain unresolved')
