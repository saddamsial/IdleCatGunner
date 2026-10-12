from pathlib import Path
import tarfile,json,hashlib,re,shutil
r=Path(__file__).resolve().parents[1];p=r.parents[2]/'reconstruction/CatGunnerUnityClient';b=r/'assetripper-baseline/ExportedProject';f=tarfile.open('/tmp/catgunner-spine-4.1.unitypackage');rows=[]
for x in f.getmembers():
 if not x.name.endswith('/pathname'):continue
 path=f.extractfile(x).read().decode().strip()
 if not path.startswith('Assets/Spine/Runtime/'):continue
 stem=x.name[:-8]
 try:data=f.extractfile(stem+'asset').read()
 except KeyError:continue
 target=p/path
 if target.exists():raise RuntimeError('Do not overwrite existing plugin: '+path)
 target.parent.mkdir(parents=True,exist_ok=True);target.write_bytes(data)
 meta=f.extractfile(stem+'asset.meta').read();official=meta
 original=None
 if target.suffix=='.cs':
  matches=list((b/'Assets/Scripts/spine-unity').rglob(target.name+'.meta')) if '/spine-unity/' in path else list((b/'Assets/Scripts/spine-csharp').rglob(target.name+'.meta'))
  if len(matches)==1:original=matches[0];meta=original.read_bytes()
 elif target.suffix=='.shader':
  name=re.search(rb'Shader\s+"([^"]+)"',data)
  if name:
   matches=[a for a in (b/'Assets/Shader').glob('*.shader') if re.search(rb'Shader\s+"([^"]+)"',a.read_bytes()) and re.search(rb'Shader\s+"([^"]+)"',a.read_bytes())[1]==name[1]]
   if len(matches)==1:original=Path(str(matches[0])+'.meta');meta=original.read_bytes()
 Path(str(target)+'.meta').write_bytes(meta)
 rows.append({'path':path,'sha256':hashlib.sha256(data).hexdigest(),'original_identity':str(original.relative_to(b)) if original else None,'official_guid':re.search(rb'guid: (\w+)',official)[1].decode(),'installed_guid':re.search(rb'guid: (\w+)',meta)[1].decode()})
for file in [p/'Assets/Recovery/Scripts/CatGunner.Recovery.asmdef',p/'Assets/Recovery/Tests/PlayMode/CatGunner.Recovery.PlayModeTests.asmdef']:
 d=json.loads(file.read_text());d['references']+=['spine-unity','spine-csharp'];file.write_text(json.dumps(d,indent=2)+'\n')
report={'source':'https://esotericsoftware.com/files/runtimes/unity/spine-unity-4.1-2024-06-19.unitypackage','archive_sha256':hashlib.sha256(Path('/tmp/catgunner-spine-4.1.unitypackage').read_bytes()).hexdigest(),'scope':'Official runtime only; no examples/editor auto-importers. Original exported script/shader identities retained. Original Spine4.1.24 data unchanged. Unity6 compatibility subject to actual validation. License headers retained.','files':rows}
(r/'reports/pet-spine-runtime-installation.json').write_text(json.dumps(report,indent=2)+'\n')
print('Installed',len(rows),'files;',sum(x['original_identity'] is not None for x in rows),'original identities')
