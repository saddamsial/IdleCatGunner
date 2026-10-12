"""Decode original audio bytes into WAV for Unity import; preserve clip GUIDs."""
from pathlib import Path
import json,re,hashlib
import UnityPy
from UnityPy.streams import EndianBinaryReader
R=Path(__file__).resolve().parents[1]
P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
env=UnityPy.load(str(R/'extracted/base/assets/bin/Data/data.unity3d'))
for resource in (R/'extracted/base/assets/bin/Data').glob('*.resource'):
    # Register the exact external audio file before any prefix fallback can pick
    # sharedassets0.assets.resS (the texture stream) for sharedassets0.resource.
    env.register_cab(resource.name,EndianBinaryReader(resource.read_bytes()))
out=R/'audio-native';out.mkdir(exist_ok=True)
rows=[]
for obj in env.objects:
    if obj.type.name!='AudioClip':continue
    audio=obj.read()
    for filename,content in audio.samples.items():
        path=out/Path(filename).name;path.write_bytes(content)
        rows.append({'file':obj.assets_file.name,'path_id':obj.path_id,'name':audio.m_Name,
                     'output':str(path.relative_to(R)),'bytes':len(content),'sha256':hashlib.sha256(content).hexdigest(),
                     'channels':audio.m_Channels,'frequency':audio.m_Frequency,'length_seconds':audio.m_Length})
(R/'reports/audio-extraction.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2)+'\n')
print('Decoded',len(rows),'original clips;',sum(r['bytes'] for r in rows),'PCM bytes')
