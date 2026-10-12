from pathlib import Path
import json,re
R=Path(__file__).resolve().parents[1]
__file__=str(R/'tools/export_companion_static_text.py')
s=Path(__file__).read_text();exec(s[:s.index('source = language.read_text()')]);names={g:scalar(n) for g,n in names.items()}
source=language.read_text();terms=[]
for m in re.finditer(r'    - Term: ([^\n]*)\n      TermType: 0\n      Languages:\n(.*?)      Flags:',source,re.S):
 values=[scalar(x[1]) for line in m[2].splitlines() if (x:=re.match(r'      - (.*)',line))]
 terms.append(dict(Key=scalar(m[1]),Values=values))
print('complete terms',len([t for t in terms if len(t['Values'])==14 and all(t['Values'])]))
for t in terms:
 if t['Key'].startswith(('Setting/','Redeem/')):print(t)
(R/'reports/mobile-language-source-terms.json').write_text(json.dumps(dict(Rows=terms),ensure_ascii=False,indent=2)+'\n')
