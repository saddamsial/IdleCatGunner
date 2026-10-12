"""Frozen vc257 core mode primary terms; retain source identities and ordinals."""
from pathlib import Path
import hashlib,json,re
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
s=(R/'tools/export_companion_static_text.py').read_text()
exec(s[:s.index('source = language.read_text()')].replace('R = Path(__file__).resolve().parents[1]','R = R'))
# Unity YAML scalar decoding retains the Monster result object's trailing space.
names={g:scalar(name) for g,name in names.items()}
source=language.read_text();rows=[];excluded=[]
prefixes=tuple('Canvas/Contents_UI/'+m+'_UI/' for m in ['SpeedRun','Mine','Boss','Monster'])+('Canvas/SafeArea/Monster_UI/',)
for component,go,key in labels:
    full=path(go)
    if not full.startswith(prefixes):continue
    if any(x in full for x in ['Banner_PlusPack','Remove Ads ALL','Rank_Panel','MinePack']):
        excluded.append(dict(component=component,path=full,key=key,reason='Commercial banner or online ranking outside selected core UI'));continue
    if not key or key=='-':
        excluded.append(dict(component=component,path=full,key=key,reason='No primary term; retain dynamic owner'));continue
    m=re.search(r'    - Term: '+re.escape(key)+r'\n      TermType: 0\n      Languages:\n(.*?)      Flags:',source,re.S);assert m,key
    values=[scalar(x[1]) for line in m[1].splitlines() if (x:=re.match(r'      - (.*)',line))]
    assert len(values)==14 and all(values) and all('{[' not in v and '[i2p_' not in v and '{0}' not in v for v in values),key
    parent=parents[go];block=read(parent).split('  m_Children:',1)[1].split('  m_Father:',1)[0]
    siblings=[transforms[int(x)] for x in re.findall(r'fileID: (\d+)',block)]
    ordinal=[x for x in siblings if names[x]==names[go]].index(go)
    rows.append(dict(Path=full.removeprefix('Canvas/'),Key=key,Values=values,SourceComponent=component,SourceGameObject=go,SameNameOrdinal=ordinal))
assert len(rows)==71 and len({x['Key'] for x in rows})==21
codes=json.loads((P/'Assets/Recovery/Resources/OriginalWeaponText.json').read_text())['LocaleCodes']
f=P/'Assets/Recovery/Resources/OriginalModeText.json';f.write_text(json.dumps(dict(LocaleCodes=codes,Rows=rows),ensure_ascii=False,indent=2)+'\n')
report=dict(rule=67,target='com.Chodun.CatGunner 1.1.61 vc257 ARM64',bindings=rows,staticBindings=len(rows),staticTerms=21,locales=14,uniqueTermLocaleValues=294,excluded=excluded,
    sourceHashes={str(f.relative_to(R)):hashlib.sha256(f.read_bytes()).hexdigest() for f in [scene,language,R/'extracted/split_config.arm64_v8a/lib/arm64-v8a/libil2cpp.so',R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat']},
    resourceSha256=hashlib.sha256(f.read_bytes()).hexdigest(),
    adapters=['Selected primary term startup application and existing Chinese source font/material adapter; not full I2',
              'Explicit escaped-newline display adapter; source translations retained raw in Values, not claimed as native I2 preprocessing',
              'Original Monster explanation contains <sprite=0-> in translation; retain source tag. Actual TMP source PetCoin icon visually verified; no invented sprite replacement'],
    scopeComplete=False,nativeQueryIncrease=0)
(Q/'mode-text-source-contract.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
print(dict(bindings=71,terms=21,locales=14))
