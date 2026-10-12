"""Resolve Safe UI literals from frozen arm64 relocations and decoded metadata."""
from pathlib import Path
import struct,json
R=Path(__file__).resolve().parents[1]
p=R/'tools/map_game_methods.py'
ns={'__file__':str(p)}
exec(p.read_text().split('module =')[0],ns)
table=(R/'transformed/region-0.decoded.bin').read_bytes()
data=(R/'transformed/region-4.decoded.bin').read_bytes()
rows=[]
for va in [0x5d63398,0x5d63af8,0x5d63af0,0x5d63a78,0x5d63b00]:
 e=ns['pointer'](ns['pointer'](va));assert e>>29==5
 i=(e&0x1fffffff)>>1;n,o=struct.unpack_from('<2I',table,i*8)
 rows.append({'preferred_pointer':hex(va),'kind':5,'index':i,'literal':data[o:o+n].decode()})
assert [x['literal'] for x in rows]==['<sprite=1>{0}','Gun/PauseLocked','Gun/SafeFull','Gun/InventoryFull','Gun/SafeSlotOrder']
(R/'reports/safe-ui-literal-resolution.json').write_text(json.dumps(rows,indent=2)+'\n')
print('Verified five original Safe UI literals')
