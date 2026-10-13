"""New authored scores and cyclic synthesis. No reference recording or melody is used."""
from pathlib import Path
import numpy as np
import json, wave, hashlib
BASE=Path(__file__).resolve().parent
ASSETS=BASE/'masters'
ASSETS.mkdir(exist_ok=True)
SR=44100

def hz(m): return 440*2**((m-69)/12)

def voice(kind,note,beats,velocity,spb,rng):
    duration={'bell':2.1,'mallet':1.0,'pluck':.9,'pad':beats*spb+.45,'bass':min(1.0,beats*spb+.15),'kick':.24,'brush':.16,'hat':.075}[kind]
    t=np.arange(round(duration*SR))/SR; f=hz(note); phase=2*np.pi*f*t
    if kind=='mallet':
        tone=(np.sin(phase)*np.exp(-5*t)+.23*np.sin(3.97*phase)*np.exp(-19*t)+.07*np.sin(7.9*phase)*np.exp(-29*t))*.70
    elif kind=='bell':
        tone=(np.sin(phase)*np.exp(-3*t)+.16*np.sin(2.01*phase)*np.exp(-5.5*t)+.065*np.sin(4.01*phase)*np.exp(-10*t))*.55
    elif kind=='pluck':
        tone=sum(np.sin(phase*k)*np.exp(-(4+2.2*k)*t)/k**1.4 for k in range(1,8))*.70
    elif kind=='pad':
        tone=(np.sin(phase)+.10*np.sin(phase*2)+.025*np.sin(phase*3))*.24
        sustain=beats*spb;env=np.minimum(t/.12,1)*np.minimum(np.maximum((duration-t)/.45,0),1);tone*=env
    elif kind=='bass':
        tone=(np.sin(phase)+.12*np.sin(phase*2))*np.exp(-4.2*t)*.65
    elif kind=='kick':
        phase=2*np.pi*(46*t+56*.035*(1-np.exp(-t/.035)));tone=np.sin(phase)*np.exp(-22*t)*.45
    elif kind=='brush':
        noise=rng.normal(0,1,len(t));smooth=np.convolve(noise,np.ones(16)/16,mode='same');tone=smooth*np.exp(-28*t)*.34
    else:
        noise=rng.normal(0,1,len(t));smooth=np.convolve(noise,np.ones(9)/9,mode='same');tone=(noise-smooth)*np.exp(-80*t)*.06
    atk=.006 if kind!='pad' else .01
    tone*=np.minimum(t/atk,1)*np.minimum((duration-t)/.012,1)*velocity
    return tone

def write(path,a):
    assert not path.exists(),path
    with wave.open(str(path),'wb') as w:
        w.setnchannels(2);w.setsampwidth(2);w.setframerate(SR);w.writeframes(np.round(a*32767).astype('<i2').tobytes())

def score(name,bpm,key,battle=False):
    # Four distinct eight-bar sections, a returning motif and a resolving turnaround.
    progression=[(0,'maj7'),(7,'major'),(9,'minor7'),(5,'maj7'),(0,'major'),(2,'minor7'),(5,'major'),(7,'sus')]
    patterns=[
        [(0,0,.9),(.75,4,.6),(1.5,7,.85),(2.5,9,.7),(3.25,7,.55)],
        [(.25,4,.7),(1,2,.65),(1.75,0,.8),(3,7,.75)],
        [(0,9,.7),(1,7,.8),(1.75,4,.65),(2.75,2,.6),(3.5,4,.7)],
        [(.25,5,.7),(1,7,.75),(2,9,.8),(3,7,.7)],
        [(0,4,.75),(.75,7,.7),(1.5,12,.8),(2.5,9,.7),(3.5,7,.6)],
        [(.25,2,.75),(1.25,5,.7),(2,4,.7),(3,2,.65)],
        [(0,5,.75),(1,4,.65),(2,2,.7),(3,0,.8)],
        [(0,7,.75),(1,9,.6),(2,7,.65),(3,2,.65)]]
    alternate=[[(0,7,.8),(1,4,.7),(2.25,2,.7),(3,0,.8)],[(.25,2,.7),(1,7,.75),(2,4,.7),(3.25,2,.6)],[(0,4,.7),(.75,9,.7),(1.5,7,.8),(2.75,4,.7)],[(0,9,.7),(1,12,.75),(2,9,.7),(3.25,5,.65)],[(0,7,.8),(1,12,.65),(2,16,.7),(3,12,.7)],[(.25,5,.7),(1.5,9,.7),(2.5,5,.7),(3.5,2,.6)],[(0,9,.75),(1,7,.7),(2,5,.7),(3,4,.6)],[(0,2,.7),(1,4,.65),(2,7,.75),(3,11,.6)]]
    events=[]
    def add(kind,beat,note,vel=.5,length=1,pan=0): events.append(dict(instrument=kind,beat=beat,midi=note,velocity=vel,beats=length,pan=pan))
    for bar in range(32):
        section=bar//8;i=bar%8;root,quality=progression[i];b=4*bar
        if battle and section==2: root,quality=[(9,'minor7'),(5,'major'),(0,'major'),(7,'major')][i%4]
        intervals={'major':[0,4,7],'maj7':[0,4,7,11],'minor7':[0,3,7,10],'sus':[0,5,7]}[quality]
        # Warm chords stay below the melody and leave space for UI/weapon sounds.
        for k,v in enumerate(intervals[:3]): add('pad',b,key-24+root+v,.26,3.85,(k-1)*.35)
        add('bass',b,key-36+root,.56,1.5,-.04);add('bass',b+2,key-36+root+7,.38,1,-.04)
        if battle: add('bass',b+3.5,key-36+root,.30,.4,-.04)
        arpeggio=intervals+[intervals[1]+12]
        for step in range(4 if not battle else 8):
            add('pluck',b+step*(1 if not battle else .5)+.04,key-12+root+arpeggio[step%4],.20 if not battle else .22,.5,(-.25 if step%2==0 else .25))
        motif=alternate[i] if section in (1,2) else patterns[i]
        for beat,degree,vel in motif:
            # Section C changes contour/register; D returns the theme with fewer decorations.
            octave=12 if section==2 and i%2==0 else 0
            n=min(key+degree+octave,key+19)
            add('mallet' if not battle else 'pluck',b+beat,n,vel*.70,.5,.05)
            if section==3 and beat==0 and i in (0,4): add('bell',b+beat,n+12,.20,1,.30)
        if i in (3,7): add('bell',b+3.5,key+12+(7 if i==3 else 2),.16,.5,-.35)
        # Sparse, rounded percussion; no sharp snare or large impact samples.
        for beat in (0,2): add('kick',b+beat,36,.52 if battle else .32,.5,0)
        for beat in (1,3): add('brush',b+beat,60,.28 if battle else .16,.5,.1)
        for beat in np.arange(.5,4,.5 if battle else 1): add('hat',b+float(beat),60,.45 if battle else .28,.25,-.10)
    return dict(title=name,bpm=bpm,meter='4/4',bars=32,sample_rate=SR,loop_beats=128,seed=13202 if battle else 13201,master_rms=.047 if battle else .05,events=events,source='New composed melody, accompaniment and procedural instrument synthesis. No source recording or original melody reused.')

def render(s,filename):
    spb=60/s['bpm'];N=round(s['loop_beats']*spb*SR);out=np.zeros((N,2),dtype=np.float64);rng=np.random.default_rng(s['seed'])
    for e in s['events']:
        tone=voice(e['instrument'],e['midi'],e['beats'],e['velocity'],spb,rng)
        index=(round(e['beat']*spb*SR)+np.arange(len(tone)))%N
        pan=e['pan'];gain=np.sqrt(np.array([1-pan,1+pan])/2)
        out[index]+=tone[:,None]*gain
    # Wrap tails across the boundary instead of fading the music to silence.
    out-=out.mean(axis=0);out*=s['master_rms']/np.sqrt(np.mean(out*out))
    peak=np.abs(out).max();out*=min(1,.38/peak)
    path=ASSETS/filename;write(path,out)
    quant=np.round(out*32767).astype('<i2').astype(float)/32768
    delta=np.abs(np.diff(quant,axis=0));seam=float(np.abs(quant[0]-quant[-1]).max())
    report=dict(title=s['title'],path='Assets/Recovery/PenguinAudio/'+filename,bpm=s['bpm'],bars=32,frames=N,seconds=N/SR,peak=float(np.abs(quant).max()),rms=float(np.sqrt(np.mean(quant*quant))),seam_step=seam,internal_step_p99=float(np.quantile(delta,.99)),sha256=hashlib.sha256(path.read_bytes()).hexdigest(),loop_method='Exact 128-beat period with synthesized release tails wrapped into the start; no global fade-out',score=filename+'.score.json')
    assert seam < .006 and seam < report['internal_step_p99'] and report['peak'] < .381
    (BASE/(filename+'.score.json')).write_text(json.dumps(s,indent=2)+'\n')
    # Two cycles of the rendered master, including the real end-to-start boundary.
    (BASE/(filename+'.report.json')).write_text(json.dumps(report,indent=2)+'\n')
    preview=BASE/(filename.replace('.wav','-loop-preview.wav'));write(preview,np.concatenate((out[-SR*4:],out[:SR*6])))
    audition=BASE/(filename.replace('.wav','-preview.wav'));write(audition,out[:SR*24])
    return report

if __name__=='__main__':
    reports=[render(score('雪原漫步 / Snowfield Stroll',108,72),'Penguin_SnowfieldStroll.wav'),render(score('冰晶出征 / Crystal Expedition',124,74,True),'Penguin_CrystalExpedition.wav')]
    (BASE/'music-manifest.json').write_text(json.dumps(dict(version=2,sfx='All 17 previously replaced Ice_ clips retained and re-audited',bgm=reports),ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(reports,ensure_ascii=False,indent=2))
