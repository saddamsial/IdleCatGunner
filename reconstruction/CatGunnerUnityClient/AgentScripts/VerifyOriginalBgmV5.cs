// Live, transient audio-channel probe. Does not change scene, profile or settings.
string dir = System.IO.Path.GetFullPath(System.IO.Path.Combine(Application.dataPath, "../../../art/audio/bgm-original-v5"));
var manifest = Newtonsoft.Json.Linq.JObject.Parse(System.IO.File.ReadAllText(System.IO.Path.Combine(dir,"music-manifest.json")));
var restored = Newtonsoft.Json.Linq.JObject.Parse(System.IO.File.ReadAllText(System.IO.Path.Combine(dir,"sfx-unchanged.json")));
var sound = Sound_manager.instance;
if (!EditorApplication.isPlaying || sound == null) throw new Exception("Running game with Sound_manager required");
var music = new [] { sound.BGM_main, sound.BGM_contents };
var imports = new System.Collections.Generic.List<object>();
foreach (var row in (Newtonsoft.Json.Linq.JArray)manifest["bgm"])
{
    string path=(string)row["path"];
    var clip=AssetDatabase.LoadAssetAtPath<AudioClip>(path);
    var importer=(AudioImporter)AssetImporter.GetAtPath(path);
    if (!music.Contains(clip) || clip.samples!=(int)row["loop_frames"] || clip.channels!=2 || clip.frequency!=44100
        || clip.loadType!=AudioClipLoadType.Streaming || importer.forceToMono)
        throw new Exception("Wrong live music import/binding: "+path);
    imports.Add(new {path,clip.samples,clip.length,clip.channels,loadType=clip.loadType.ToString(),
        compression=importer.defaultSampleSettings.compressionFormat.ToString(),guid=AssetDatabase.AssetPathToGUID(path)});
}
var entries=(SfxEntry[])typeof(Sound_manager).GetField("sfxEntries",System.Reflection.BindingFlags.Instance|System.Reflection.BindingFlags.NonPublic).GetValue(sound);
if (entries.Length!=17 || entries.Select(e=>e.type).Distinct().Count()!=17) throw new Exception("Incomplete SFX catalogue");
foreach (var row in (Newtonsoft.Json.Linq.JArray)restored["clips"])
{
    string type=(string)row["type"];
    var entry=entries.Single(e=>e.type.ToString()==type);
    if (entry.clip.samples!=(int)row["frames"] || entry.clip.frequency!=(int)row["frequency"]
        || AssetDatabase.GetAssetPath(entry.clip)!="Assets/Game/PenguinAudio/Ice_"+type+".wav")
        throw new Exception("Approved SFX reference or import changed: "+type);
}
var source=sound.bgmSource;
if (!source.loop) throw new Exception("BGM looping disabled");
var oldClip=source.clip;float oldTime=source.time,oldVolume=source.volume;bool oldPlaying=source.isPlaying;
bool oldBgmMute=Setting.instance.is_BGM_Mute,oldSfxMute=Setting.instance.is_SFX_Mute;
var checks=new System.Collections.Generic.List<object>();
int stage=0;double deadline=0;string error=null;
Action restore=()=> {
    source.Stop();source.clip=oldClip;
    if (oldPlaying) {source.Play();source.time=Math.Min(oldTime,Math.Max(0,oldClip.length-.1f));}
    source.volume=oldVolume;
};
UnityEditor.EditorApplication.CallbackFunction tick=null;
tick=()=> {
    try
    {
        if (!EditorApplication.isPlaying || source==null) throw new Exception("Game stopped during audio probe");
        if (stage==0)
        {
            sound.ApplyBGMMute(true);
            sound.BGM_Change_Main();if(!source.isPlaying)source.Play();
            source.time=3;float before=source.time;sound.BGM_Change_Main();
            if (Math.Abs(source.time-before)>.1f || source.volume!=0) throw new Exception("Main selection restart or mute failure");
            checks.Add(new {check="sameMainSelectionKeepsPosition",passed=true});
            source.time=music[0].length-.2f;deadline=EditorApplication.timeSinceStartup+.8;stage=1;
        }
        else if (stage==1 && EditorApplication.timeSinceStartup>=deadline)
        {
            if(source.clip!=music[0] || !source.isPlaying || source.time>2 || source.volume!=0)throw new Exception("Main loop did not wrap");
            checks.Add(new {check="mainStreamingEndWrap",passed=true,position=source.time});
            sound.BGM_Change_SpeedRun();source.time=3;float before=source.time;sound.BGM_Change_SpeedRun();
            if (Math.Abs(source.time-before)>.1f || source.volume!=0)throw new Exception("Combat selection restart or mute failure");
            checks.Add(new {check="sameCombatSelectionKeepsPositionAndMute",passed=true});
            source.time=music[1].length-.2f;deadline=EditorApplication.timeSinceStartup+.8;stage=2;
        }
        else if (stage==2 && EditorApplication.timeSinceStartup>=deadline)
        {
            if(source.clip!=music[1] || !source.isPlaying || source.time>2 || source.volume!=0)throw new Exception("Combat loop did not wrap");
            checks.Add(new {check="combatStreamingEndWrap",passed=true,position=source.time});
            sound.BGM_Change_Main();if(source.clip!=music[0])throw new Exception("Return to main failed");
            checks.Add(new {check="returnToMain",passed=true});stage=3;
        }
    }
    catch(Exception ex){error=ex.Message;stage=3;}
    if(stage==3)
    {
        EditorApplication.update-=tick;
        try{restore();}catch(Exception ex){error=(error??"")+" Restore failed: "+ex.Message;}
        bool settingsUnchanged=Setting.instance.is_BGM_Mute==oldBgmMute && Setting.instance.is_SFX_Mute==oldSfxMute;
        System.IO.File.WriteAllText(System.IO.Path.Combine(dir,"live-audio-verification.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new {
            success=error==null && settingsUnchanged,error,imports,sfxUnchanged=17,checks,settingsUnchanged,
            originalClipRestored=source.clip==oldClip,originalVolumeRestored=source.volume==oldVolume,
            scene=UnityEditor.SceneManagement.EditorSceneManager.GetActiveScene().path,
            note="Live audio-channel probe; does not cover gameplay controller entry/exit or subjective/device listening"
        },Newtonsoft.Json.Formatting.Indented));
    }
};
EditorApplication.update+=tick;
return "Started live music reference/loop/mute probe; restores prior audio state after two loop boundaries";
