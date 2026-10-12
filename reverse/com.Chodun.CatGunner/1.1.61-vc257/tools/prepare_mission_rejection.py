from pathlib import Path
import json,struct,re,hashlib,yaml
from map_game_methods import ROOT,pointer
R=ROOT;P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'assetripper-baseline/ExportedProject';st=(R/'transformed/region-0.decoded.bin').read_bytes();d=(R/'transformed/region-4.decoded.bin').read_bytes();language=B/'Assets/Resources/I2Languages.asset';lang=language.read_text();terms={}
for va,name in [(0x5d5e798,'SequenceLocked'),(0x5d5e7a0,'InventoryWarn')]:
 e=pointer(pointer(va));assert e>>29==5;i=(e&0x1fffffff)>>1;n,o=struct.unpack_from('<2I',st,i*8);s=d[o:o+n].decode();match=re.search(r'    - Term: '+re.escape(s)+r'\n      TermType: 0\n      Languages:\n(.*?)      Flags:',lang,re.S);assert match
 terms[name]={'preferredPointer':hex(va),'literal':s,'values':[x.removeprefix('      - ') for x in match[1].splitlines()]};assert len(terms[name]['values'])==14
catalogue={'LocaleCodes':json.loads((P/'Assets/Recovery/Resources/OriginalStarCatalogue.json').read_text())['LocaleCodes'],'SequenceLocked':terms['SequenceLocked']['values']}
# Resource is original data extraction with a local locale selector, not full I2.
(P/'Assets/Recovery/Resources/OriginalMissionFeedback.json').write_text(json.dumps(catalogue,ensure_ascii=False,indent=2)+'\n')
idx={int(k):v for k,v in json.loads((R/'reports/original-main-document-index.json').read_text()).items()};f=(B/'Assets/Scenes/Main.unity').open('rb')
def raw(k):_,o,n=idx[k];f.seek(o);return f.read(n).decode()
def data(k):return next(iter(yaml.safe_load(raw(k).split('\n',1)[1]).values()))
manager=data(124352);slot=data(manager['Mission_Reward_Slot_List'][1]['fileID']);item=data(slot['Normal_Reward_item']['fileID']);go=item['m_GameObject']['fileID'];objects={}
for g in [go,manager['NewSeason_Btn_obj']['fileID']]:
 obj=data(g);components=[]
 for component in obj['m_Component']:
  k=component['component']['fileID'];v=data(k)
  if idx[k][0]==114 and 'm_Interactable' in v:components.append({'fileID':k,'fields':v})
 objects[str(g)]={'fields':obj,'buttons':components}
rows=[x.split('\t') for x in (R/'native-mission-rejection-reviewed/status.tsv').read_text().splitlines()[1:]];assert len(rows)==14 and all(x[3]=='true' for x in rows)
out={'terms':terms,'languageSha256':hashlib.sha256(language.read_bytes()).hexdigest(),'originalButtons':objects,'rewardItemFields':item,'businessMethods':8,'allComplete':True,'nativeMethods':[{'preferredVA':x[0],'name':x[2]} for x in rows[:8]],'localAdapters':['reuse original star alert object instead of global UI_manager alert pool','Chinese simplified/traditional or original English selection, not full I2','expired/paid/ad claims still unavailable','full season-reset/date algorithm unchanged']}
(R/'reports/mission-rejection-native-evidence.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
print('8 native methods complete; original localized sequence warning14 languages; original Button flags extracted')
