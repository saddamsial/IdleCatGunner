"""Reproduce only the exact seven regions transformed by this build's loader.

The shuffled header is not a standard metadata header. Output is an intermediate,
not input advertised as compatible with an ordinary IL2CPP parser.
"""
from pathlib import Path
import hashlib
import struct
import json

ROOT = Path(__file__).resolve().parents[1]
native = (ROOT / 'extracted/split_config.arm64_v8a/lib/arm64-v8a/libil2cpp.so').read_bytes()
source = (ROOT / 'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes()
assert hashlib.sha256(native).hexdigest() == '80eb8bcbebd058ffb4beac5d8d7d544066587a7a1abee8898874847ff13dc583'
assert hashlib.sha256(source).hexdigest() == '86af4f8faf83d791c0a8679d3643056d8a643ce9d41bf71afd2c4e100f466884'
h = struct.unpack_from('<16sHHIQQQIHHHHHH', native)
segments = [struct.unpack_from('<II6Q', native, h[5] + i * h[9]) for i in range(h[10])]

def raw(va):
    seg = next(s for s in segments if s[0] == 1 and s[3] <= va < s[3] + s[5])
    return seg[2] + va - seg[3]

def seed_at(addresses):
    value = 0
    for i, address in enumerate(addresses):
        word = struct.unpack_from('<I', native, raw(address))[0]
        # MOVZ/MOVK X-register immediates, independently checked against .asm.
        assert (word & 0xff800000) == (0xd2800000 if i == 0 else 0xf2800000)
        shift = ((word >> 21) & 3) * 16
        value = (value & ~(0xffff << shift)) | (((word >> 5) & 0xffff) << shift)
    return value

table = native[raw(0x165adc9):raw(0x165adc9) + 256]
assert len(set(table)) == 256
mask = (1 << 64) - 1

def decode(blob, seed):
    data = bytearray(blob)
    state = seed
    for i in range(len(data)):
        state = (state ^ (state << 13)) & mask
        middle = state ^ (state >> 7)
        state = (middle ^ (middle << 17)) & mask
        index = ((state >> 16) ^ (state >> 8) ^ (state >> 24) ^ middle) & 255
        data[i] ^= table[index]
    return bytes(data)

header = decode(source[:408], seed_at([0x2943474, 0x2943484, 0x2943488, 0x294348c]))
word = lambda offset: struct.unpack_from('<i', header, offset)[0]
regions = [
    (0x1c, 0xb4, -0x260, [0x2943504, 0x2943508, 0x294350c, 0x2943510]),
    (0x18, 0x164, -0x564, [0x294357c, 0x2943580, 0x2943584, 0x2943588]),
    (0x13c, 0x170, 0x11b0, [0x29435f8, 0x29435fc, 0x2943600, 0x2943604]),
    (0xe8, 0x6c, -0xa80, [0x2943670, 0x2943678, 0x294367c, 0x2943680]),
    (0x108, 0xc0, -0xaf8, [0x29436ec, 0x29436f0, 0x29436f4, 0x29436f8]),
    (0x94, 0xe4, -0x1358, [0x2943768, 0x294376c, 0x2943770, 0x2943774]),
    (0x188, 0x68, -0x13e0, [0x29437e4, 0x29437e8, 0x29437ec, 0x29437f0]),
]
out = ROOT / 'transformed'
out.mkdir(exist_ok=True)
(out / 'header.decoded.bin').write_bytes(header)
rows = []
intervals = []
for index, (size_field, offset_field, delta, seed_addresses) in enumerate(regions):
    start, size = word(offset_field) + delta, word(size_field)
    assert 408 <= start <= start + size <= len(source)
    assert all(start + size <= a or b <= start for a, b in intervals)
    intervals.append((start, start + size))
    data = decode(source[start:start + size], seed_at(seed_addresses))
    file = 'region-%d.decoded.bin' % index
    (out / file).write_bytes(data)
    rows.append({'index': index, 'header_size_field': hex(size_field), 'header_offset_field': hex(offset_field),
                 'offset_adjustment': delta, 'source_offset': start, 'bytes': size, 'output': file,
                 'sha256': hashlib.sha256(data).hexdigest(), 'semantic_role': 'not yet independently mapped'})
(ROOT / 'reports/metadata-region-transform.json').write_text(json.dumps({
    'native_sha256': hashlib.sha256(native).hexdigest(), 'source_sha256': hashlib.sha256(source).hexdigest(),
    'loader_preferred_va': '0x294335c', 'ghidra_rebase_delta': '0x100000',
    'header_bytes': 408, 'status': 'seven native-loaded regions decoded; shuffled table and record layouts unresolved',
    'regions': rows}, indent=2) + '\n')
print('Native loader reproduced:', len(rows), 'regions;', sum(x['bytes'] for x in rows), 'decoded bytes; standard metadata reconstruction still pending')
