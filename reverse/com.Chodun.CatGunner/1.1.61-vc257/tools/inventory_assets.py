"""Inventory original serialized assets; record names and schema, not service values."""
from pathlib import Path
from collections import Counter
import json
import UnityPy

ROOT = Path(__file__).resolve().parents[1]
ASSETS = ROOT / 'extracted/base/assets'
UnityPy.config.FALLBACK_UNITY_VERSION = '6000.0.61f1'
rows, containers, files, errors = [], [], [], []
inputs = [ASSETS / 'bin/Data/data.unity3d'] + sorted(ASSETS.rglob('*.bundle'))
for path in inputs:
    source = str(path.relative_to(ASSETS))
    try:
        env = UnityPy.load(str(path))
        files.append({'source': source, 'objects': len(env.objects), 'header': path.read_bytes()[:8].hex()})
        for key, obj in env.container.items():
            containers.append({'source': source, 'asset': key, 'path_id': obj.path_id, 'type': obj.type.name})
        for obj in env.objects:
            row = {'source': source, 'file': obj.assets_file.name, 'path_id': obj.path_id, 'type': obj.type.name}
            try:
                if obj.type.name in ('GameObject', 'MonoScript', 'TextAsset', 'Texture2D', 'Sprite',
                                     'AudioClip', 'AnimationClip', 'AnimatorController', 'Font'):
                    data = obj.read()
                    row['name'] = getattr(data, 'm_Name', '')
                    if obj.type.name == 'MonoScript':
                        row.update(assembly=data.m_AssemblyName, namespace=data.m_Namespace, class_name=data.m_ClassName)
                    elif obj.type.name == 'TextAsset':
                        blob = data.m_Script
                        if isinstance(blob, str): blob = blob.encode('utf-8', 'surrogateescape')
                        row.update(bytes=len(blob), managed_pe=blob.startswith(b'MZ'))
                    elif obj.type.name == 'Texture2D':
                        row.update(width=data.m_Width, height=data.m_Height)
                elif obj.type.name == 'BuildSettings':
                    tree = obj.read_typetree()
                    row['settings'] = {k: tree[k] for k in ('scenes', 'm_Version') if k in tree}
            except Exception as ex:
                row['read_error'] = type(ex).__name__ + ': ' + str(ex)[:160]
            rows.append(row)
    except Exception as ex:
        errors.append({'source': source, 'error': type(ex).__name__ + ': ' + str(ex)[:250]})
summary = {'unitypy_version': UnityPy.__version__, 'inputs': len(inputs), 'parsed': len(files),
           'objects': len(rows), 'types': dict(Counter(r['type'] for r in rows)),
           'object_read_errors': sum('read_error' in r for r in rows), 'file_errors': errors, 'files': files}
for name, data in [('asset-summary.json', summary), ('asset-objects.json', rows), ('asset-containers.json', containers)]:
    (ROOT / 'reports' / name).write_text(json.dumps(data, ensure_ascii=False, indent=2) + '\n')
print(json.dumps(summary, ensure_ascii=False, indent=2), flush=True)
