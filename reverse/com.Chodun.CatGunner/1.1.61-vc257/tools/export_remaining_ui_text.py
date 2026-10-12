"""Read only frozen vc257 primary static TMP labels for remaining offline UI."""
from pathlib import Path
import json,re,hashlib
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
s=(R/'tools/export_companion_static_text.py').read_text();exec(s[:s.index('source = language.read_text()')].replace('R = Path(__file__).resolve().parents[1]','R = R'))
names={g:scalar(n) for g,n in names.items()};source=language.read_text();done=set()
for n in ['OriginalModeText','OriginalCompanionStaticText','OriginalMissionText','OriginalWeaponStaticText']:
    x=json.loads((P/'Assets/Recovery/Resources'/f'{n}.json').read_text());done.update(a.get('SourceComponent') for a in x.get('Rows',[]))
rows=[];excluded=[]
for c,g,key in labels:
    full=path(g)
    if c in done:continue
    reason=None
    if not full.startswith('Canvas/'):reason='Outside active Canvas'
    elif not key or key=='-':reason='No primary term / dynamic controller'
    elif key.startswith(('Gun/','Relic/Name','Adventure/MapName','Adventure/EnterAble','FreeCash/','Rank/','Redeem/')):reason='Dynamic catalogue or unavailable external service'
    if not reason:
        m=re.search(r'    - Term: '+re.escape(key)+r'\n      TermType: 0\n      Languages:\n(.*?)      Flags:',source,re.S)
        if not m:reason='No matching source text row'
        else:
            values=[scalar(x[1]) for line in m[1].splitlines() if (x:=re.match(r'      - (.*)',line))]
            if len(values)!=14 or not all(values):reason='Incomplete source translation row'
            elif any(re.search(r'\{\d|\{\[|\[i2p_',v) for v in values):reason='Parameterized text retains original dynamic owner'
    if reason:excluded.append(dict(component=c,path=full,key=key,reason=reason));continue
    block=read(parents[g]).split('  m_Children:',1)[1].split('  m_Father:',1)[0]
    siblings=[transforms[int(x)] for x in re.findall(r'fileID: (\d+)',block)]
    rows.append(dict(Path=full.removeprefix('Canvas/'),Key=key,Values=values,SourceComponent=c,SourceGameObject=g,SameNameOrdinal=[v for v in siblings if names[v]==names[g]].index(g)))
codes=json.loads((P/'Assets/Recovery/Resources/OriginalWeaponText.json').read_text())['LocaleCodes']
f=Q/'remaining-ui-text-data.json';f.write_text(json.dumps(dict(LocaleCodes=codes,Rows=rows),ensure_ascii=False,indent=2)+'\n')
report=dict(rule=68,target='com.Chodun.CatGunner 1.1.61 vc257 ARM64',bindings=rows,staticBindings=len(rows),staticTerms=len({v['Key'] for v in rows}),locales=14,excluded=excluded,sourceHashes={str(f.relative_to(R)):hashlib.sha256(f.read_bytes()).hexdigest() for f in [scene,language]},dataSha256=hashlib.sha256(f.read_bytes()).hexdigest(),nativeQueryIncrease=0,scopeComplete=False,boundary='Only present original static TMP targets bound; dynamic terms/catalogue labels/services excluded. Existing Chinese font and newline adapter; not full I2 or original SDK.')
(Q/'remaining-ui-text-source-contract.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n');print(dict(bindings=len(rows),terms=report['staticTerms']))
