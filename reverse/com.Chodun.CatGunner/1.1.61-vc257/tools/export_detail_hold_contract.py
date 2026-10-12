"""Freeze exact-build UI/iterator evidence and preservation checks for this slice."""
from pathlib import Path
import csv, hashlib, json, struct
from map_game_methods import ROOT, native, raw, pointer

P = ROOT.parents[2] / 'reconstruction/CatGunnerUnityClient'
B = ROOT / 'assetripper-baseline/ExportedProject'
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
schema = json.loads((ROOT / 'reports/resolved-type-schema.json').read_text())
method_bytes = (ROOT / 'transformed/region-1.decoded.bin').read_bytes()
image = next(t for t in schema if t['name'] == 'Image' and t.get('namespace') == 'UnityEngine.UI')
set_size = next(m for m in image['methods'] if m['name'] == 'SetNativeSize')
slot = struct.unpack_from('<7I4H', method_bytes, set_size['index'] * 36)[9]
assert slot == 45
constructor_timing = struct.unpack_from('<2f', native, raw(0x1070008))
assert constructor_timing == (struct.unpack('<f', struct.pack('<f', .4))[0], struct.unpack('<f', struct.pack('<f', .1))[0])
table = (ROOT / 'transformed/region-0.decoded.bin').read_bytes()
data = (ROOT / 'transformed/region-4.decoded.bin').read_bytes()
usage = pointer(pointer(0x5e63810 - 0x100000))
assert usage >> 29 == 5
i = (usage & 0x1fffffff) >> 1
n, offset = struct.unpack_from('<2I', table, i * 8)
literal = data[offset:offset+n].decode()
assert literal == '+{0}%'
methods = []
status = list(csv.DictReader((ROOT / 'native-detail-hold-ui-reviewed/status.tsv').open(), delimiter='\t'))
assert len(status) == 19 and all(r['completed'] == 'true' for r in status)
for line in (ROOT / 'reports/native-detail-hold-ui-queries.tsv').read_text().splitlines():
    va, name, expected, end = line.split('\t')
    assert native[raw(int(va, 16)):raw(int(va, 16))+16].hex() == expected
    files = [ROOT / 'native-detail-hold-ui-reviewed' / (name + suffix) for suffix in ['.c', '.asm']]
    row = next((m for m in json.loads((ROOT/'reports/game-method-map.json').read_text()) if int(m['preferred_va'],16)==int(va,16)), None)
    methods.append({'preferred_va':va, 'ghidra_va':hex(int(va,16)+0x100000), 'end':end, 'name':name,
                    'token':row['token'] if row else None, 'input16':expected,
                    'outputs':{str(f.relative_to(ROOT)):sha(f) for f in files}})
inputs = []
for row in json.loads((ROOT/'reports/pet-spine-original-preservation.json').read_text())['inputs']:
    current = sha(Path(row['path']))
    assert current == row['expected']
    inputs.append({**row, 'sha256':current, 'unchanged':True})
metas = []
for name in ['Pet_Info_UI', 'Rebirth_Upgrade_Item']:
    src = B/'Assets/Scripts/Assembly-CSharp'/(name+'.cs.meta')
    dst = P/'Assets/Recovery/Scripts'/(name+'.cs.meta')
    assert sha(src) == sha(dst)
    metas.append({'type':name, 'sha256':sha(dst), 'original_guid_retained':True})
report = {'target':'com.Chodun.CatGunner 1.1.61 vc257 arm64', 'inputs':inputs,
          'native_queries':methods, 'completed_queries':19, 'business_methods':13, 'exception_helpers':6,
          'pet_text_literal':literal, 'image_set_native_size':{'metadata_method_index':set_size['index'], 'slot':slot,
              'native_virtual_call_offset':'0x408 = class vtable base 0x138 + slot45 * 16'},
          'constructor_timing':{'preferred_va':'0x1070008','float32_values':constructor_timing},
          'rules':{'pet_navigation':'0 through Pet_list.Length-1 (10 grades); includes uncollected grades; no inventory mutation or wrap',
                   'hold':'WaitForSeconds(holdDelay), check UpgradeAble, ordinary upgrade, WaitForSeconds(holdInterval), repeat; no immediate upgrade at pointer down',
                   'restart':'Stop prior coroutine before starting a fresh delay',
                   'stop':'PointerUp, PointerExit original EventTrigger -> OnHoldEnd; OnDisable -> StopHold; no affordability -> clear coroutine and stop',
                   'timing':'Original three serialized rows: holdDelay0.4, holdInterval0.04 (scaled game time)',
                   'price_color':'white if affordable, Color_Disable otherwise; max price label Max'},
          'script_metas':metas,
          'runtime_sources':{str((P/'Assets/Recovery/Scripts'/(n+'.cs')).relative_to(P)):sha(P/'Assets/Recovery/Scripts'/(n+'.cs')) for n in ['Pet_Info_UI','Rebirth_Upgrade_Item']},
          'adapters':['Existing local decimal/save/backend and feedback remain; recovered native event/coroutine semantics wired to that backend.',
                      'Editor re-enables previously disabled original pet arrow Buttons after native methods become available; original events/GUIDs unchanged.'],
          'boundary':'This slice is pet detail navigation and ordinary rebirth hold UI only. Content unlock/tutorial/WeeklyShop, remaining effects/offline consumers, device parity and online/commercial services remain pending.'}
(ROOT/'reports/original-detail-hold-contract.json').write_text(json.dumps(report, ensure_ascii=False, indent=2)+'\n')
print('Native 19/19 completed, exact input bytes; original inputs and two script identities retained')
