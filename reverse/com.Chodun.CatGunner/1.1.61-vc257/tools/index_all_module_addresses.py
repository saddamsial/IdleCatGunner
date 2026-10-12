"""Map module signatures/addresses, without decompiling excluded SDK bodies."""
from collections import defaultdict
import json
import struct
from map_game_methods import ROOT, native, pointer, relocations, segments, raw

types = json.loads((ROOT / 'reports/metadata-type-index.json').read_text())
by_image, refs = defaultdict(list), defaultdict(list)
for t in types:
    for m in t['methods']:
        by_image[t['image']].append((t, m))
for address, addend in relocations.items():
    refs[addend].append(address)
modules, addresses = [], []
for image, methods in by_image.items():
    name_offset = native.find(image.encode() + b'\0')
    assert name_offset >= 0, image
    expected = max(int(m['token'], 16) & 0xffffff for _, m in methods)
    candidates = []
    for va in refs[name_offset]:
        try:
            if pointer(va + 8) == expected:
                candidates.append((va, pointer(va + 16)))
        except StopIteration:
            pass
    assert len(candidates) == 1, image
    module, table = candidates[0]
    modules.append({'image': image, 'module_va': hex(module), 'methods': expected})
    for t, m in methods:
        va = pointer(table + ((int(m['token'], 16) & 0xffffff) - 1) * 8)
        if va == 0:
            continue
        assert any(s[0] == 1 and s[1] & 1 and s[3] <= va < s[3] + s[5] for s in segments)
        addresses.append({'image': image, 'type': t['name'], 'method': m['name'],
                          'token': m['token'], 'preferred_va': hex(va)})
(ROOT / 'reports/all-method-address-index.json').write_text(json.dumps({
    'modules': modules, 'addresses': addresses, 'errors': [],
    'scope': 'signature navigation only; excluded SDK bodies not recovered'}, ensure_ascii=False, indent=2) + '\n')
known = {int(x['preferred_va'], 16): x for x in addresses}
def label(x):
    value = x['type'] + '_' + x['method'] + '_' + x['token']
    return ''.join(c if c.isalnum() or c == '_' else '_' for c in value)
(ROOT / 'reports/native-known-functions.tsv').write_text(
    '\n'.join(hex(va) + '\t' + label(x) for va, x in sorted(known.items())) + '\n')
targets = set()
for line in (ROOT / 'reports/native-reviewed-queries.tsv').read_text().splitlines():
    start, _, _, end = line.split('\t')
    start, end = int(start, 16), int(end, 16)
    for va in range(start, end, 4):
        instruction = struct.unpack_from('<I', native, raw(va))[0]
        if instruction & 0x7c000000 != 0x14000000:
            continue
        delta = instruction & 0x3ffffff
        if delta & (1 << 25): delta -= 1 << 26
        target = va + delta * 4
        if target in known and not start <= target < end:
            targets.add(target)
(ROOT / 'reports/native-referenced-functions.tsv').write_text(
    '\n'.join(hex(va) + '\t' + label(known[va]) for va in sorted(targets)) + '\n')
print('Validated', len(modules), 'nonempty codegen modules;', len(addresses), 'executable pointer records;', len(targets), 'direct known call targets')
