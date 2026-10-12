from pathlib import Path
import subprocess,zipfile,hashlib,json,struct,re
W=Path(__file__).resolve().parents[4];R=Path(__file__).resolve().parents[1];Q=R/'reports';APK=W/'Build/CatGunner-Recovery-20261012-r72.apk'
SDK=Path('/Volumes/ZHITAI_1T/Applications/Unity/Hub/Editor/6000.4.10f1/PlaybackEngines/AndroidPlayer')
BT=SDK/'SDK/build-tools/36.0.0'
def run(args):
 p=subprocess.run([str(v) for v in args],capture_output=True,text=True);assert p.returncode==0,(args,p.stdout,p.stderr);return p.stdout.strip()
sign=run([SDK/'OpenJDK/bin/java','-jar',BT/'lib/apksigner.jar','verify','--verbose','--print-certs',APK])
badging=run([BT/'aapt2','dump','badging',APK]);permissions=run([BT/'aapt2','dump','permissions',APK]);alignment=run([BT/'zipalign','-c','-P','16','-v','4',APK])
assert "name='com.ravanla.idlecatgunner.recovery'" in badging and "versionCode='72'" in badging and "versionName='0.72.0'" in badging
assert re.search(r"(?:minSdkVersion|sdkVersion):'26'",badging) and "native-code: 'arm64-v8a'" in badging
assert 'CatGunner Local Recovery Test' in sign
native=[]
with zipfile.ZipFile(APK) as z:
 assert z.testzip() is None
 for a in z.infolist():
  if not a.filename.endswith('.so'):continue
  data=z.read(a);assert data[:4]==b'\x7fELF' and data[4]==2 and data[5]==1
  machine=struct.unpack_from('<H',data,18)[0];assert machine==183
  offset=struct.unpack_from('<Q',data,32)[0];size,count=struct.unpack_from('<HH',data,54);loads=[]
  for i in range(count):
   row=struct.unpack_from('<IIQQQQQQ',data,offset+i*size)
   if row[0]==1:loads.append(dict(offset=row[2],virtualAddress=row[3],alignment=row[7]))
  assert loads and all(v['alignment']>=16384 and v['offset']%16384==v['virtualAddress']%16384 for v in loads),a.filename
  native.append(dict(path=a.filename,bytes=len(data),sha256=hashlib.sha256(data).hexdigest(),loadSegments=loads))
 names=z.namelist();assert any(n.endswith('/global-metadata.dat') for n in names)
 required=['lib/arm64-v8a/libil2cpp.so','lib/arm64-v8a/libunity.so'];assert all(n in names for n in required)
 x=dict(path=str(APK),bytes=APK.stat().st_size,mib=round(APK.stat().st_size/1048576,2),sha256=hashlib.sha256(APK.read_bytes()).hexdigest(),package='com.ravanla.idlecatgunner.recovery',version='0.72.0',versionCode=72,minApi=26,targetApi=36,abi='arm64-v8a',archiveIntegrity=True,signature=sign,badging=badging,permissions=permissions,zipAlignment16KiB=alignment.splitlines()[-1],nativeLibraries=native,entries=len(names),physicalDeviceAcceptance=False)
 (Q/'mobile72-apk-audit.json').write_text(json.dumps(x,ensure_ascii=False,indent=2)+'\n');(W/'Build/CatGunner-Recovery-20261012-r72.apk.sha256').write_text(x['sha256']+'  '+APK.name+'\n');print({k:x[k] for k in ['path','mib','sha256','package','abi','archiveIntegrity','zipAlignment16KiB']})
