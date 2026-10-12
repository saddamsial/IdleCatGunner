"""Read-only matching-player Hidden/DamageText GLES3 and pass-state evidence."""
from pathlib import Path
import hashlib,json
import UnityPy,lz4.block
R=Path(__file__).resolve().parents[1]
UnityPy.config.FALLBACK_UNITY_VERSION='6000.0.61f1'
env=UnityPy.load(str(R/'extracted/base/assets/bin/Data/data.unity3d'))
matches=[]
for obj in env.objects:
    if obj.type.name!='Shader':continue
    shader=obj.read();parsed=getattr(shader,'m_ParsedForm',None)
    if parsed is None or parsed.m_Name!='Hidden/DamageText':continue
    state=obj.read_typetree()['m_ParsedForm']['m_SubShaders'][0]['m_Passes'][0]['m_State']
    assert state['rtBlend0']['srcBlend']['val']==5 and state['rtBlend0']['destBlend']['val']==10
    assert all(state[key]['val']==0 for key in ['zTest','zWrite','culling'])
    assert state['rtBlend0']['colMask']['val']==15
    blob=bytes(shader.compressedBlob)
    for i,platform in enumerate(shader.platforms):
        off=shader.offsets[i][0];length=shader.compressedLengths[i][0];size=shader.decompressedLengths[i][0]
        raw=lz4.block.decompress(blob[off:off+length],uncompressed_size=size)
        assert len(raw)==size
        (R/f'reports/forest-damage-shader-platform-{platform}.bin').write_bytes(raw)
        if platform==9:
            start=raw.index(b'#ifdef VERTEX');end=raw.rfind(b'#endif')+6
            code=raw[start:end].decode('utf8')
            assert 'SV_Target0 = u_xlat16_0 * vs_COLOR0;' in code
            (R/'reports/forest-damage-original-gles3.glsl').write_text(code)
    matches.append({'file':obj.assets_file.name,'path_id':obj.path_id,'raw_sha256':hashlib.sha256(obj.get_raw_data()).hexdigest(),'blob_sha256':hashlib.sha256(blob).hexdigest(),'platforms':shader.platforms})
    (R/'reports/forest-damage-original-shader-state.json').write_text(json.dumps(state,indent=2))
assert len(matches)==2 and len({m['blob_sha256'] for m in matches})==1
(R/'reports/forest-damage-original-shader-extraction.json').write_text(json.dumps({'matches':matches,'gles3_expressions_preserved':True,'metal_port_is_not_author_source':True},indent=2))
print('Verified two identical original shader program blobs; GLES3 and pass states extracted')
