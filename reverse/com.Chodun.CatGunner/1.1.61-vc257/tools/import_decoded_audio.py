"""Import matching native audio; preserve exported GUIDs and quarantine unusable YAML."""
from pathlib import Path
import json,re,shutil,hashlib
import UnityPy
R=Path(__file__).resolve().parents[1]
P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
B=R/'assetripper-baseline/ExportedProject'
rows=json.loads((R/'reports/audio-extraction.json').read_text())
q=R/'quarantine/audio-yaml';q.mkdir(parents=True,exist_ok=True)
clips={};out=[]
for row in rows:
    candidates=list((B/'Assets').rglob(row['name']+'.audioclip.meta'))
    assert len(candidates)==1,(row['name'],candidates)
    meta=candidates[0];rel=meta.relative_to(B)
    guid=re.search(r'^guid: (\w+)',meta.read_text(),re.M)[1]
    old=P/rel.with_suffix('')
    dest=old.with_suffix('.wav')
    source=R/row['output']
    assert hashlib.sha256(source.read_bytes()).hexdigest()==row['sha256']
    shutil.copy2(source,dest)
    dest.with_suffix('.wav.meta').write_text('fileFormatVersion: 2\nguid: '+guid+'\nAudioImporter:\n  externalObjects: {}\n  userData: \n  assetBundleName: \n  assetBundleVariant: \n')
    for original in [old,old.with_suffix('.audioclip.meta')]:
        if original.exists():
            target=q/rel.parent/original.name;target.parent.mkdir(parents=True,exist_ok=True)
            assert not target.exists()
            shutil.move(str(original),str(target))
    clips[(row['file'],row['path_id'])]=guid
    out.append(dict(row,guid=guid,asset_path=str(dest.relative_to(P))))
(R/'reports/audio-import-manifest.json').write_text(json.dumps(out,indent=2)+'\n')
data=json.loads((R/'serialized-components/level0-125642.json').read_text())['data']
env=UnityPy.load(str(R/'extracted/base/assets/bin/Data/data.unity3d'))
f=next(f for f in env.files.values() if hasattr(f,'files'))
level=next(x for x in f.files.values() if getattr(x,'name',None)=='level0')
external=[x.path.rsplit('/',1)[-1] for x in level.externals]
def guid_for(ptr):
    assert ptr['m_FileID']>0,ptr
    return clips[(external[ptr['m_FileID']-1],ptr['m_PathID'])]
contract={'entries':[{'type':e['type'],'volume':e['volume'],'guid':guid_for(e['clip'])} for e in data['sfxEntries']],
 'BGM_main':guid_for(data['BGM_main']),'BGM_contents':guid_for(data['BGM_contents']),
 'blockSameFrameDuplicate':data['blockSameFrameDuplicate'],'blockCooldownDuplicate':data['blockCooldownDuplicate'],'cooldownSeconds':data['cooldownSeconds']}
source=level.objects[data['bgmSource']['m_PathID']].read_typetree()
clip=next((v for k,v in source.items() if k.lower().replace('_','')=='maudioclip'),None)
contract['bgmSourceClip']=guid_for(clip) if clip and clip['m_PathID'] else ''
(R/'reports/original-sound-contract.json').write_text(json.dumps(contract,indent=2)+'\n')
(R/'reports/original-bgm-source.json').write_text(json.dumps(source,indent=2)+'\n')
print('Imported',len(out),'original WAV assets; restored GUID contract',len(contract['entries']),'entries')
