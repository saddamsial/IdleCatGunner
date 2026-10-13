using System;
using System.IO;
using System.Linq;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using Newtonsoft.Json.Linq;
public static class InstallPenguinMusic
{
 public static string Run()
 {
  var scene=EditorSceneManager.GetActiveScene();
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets" || EditorApplication.isPlaying || scene.isDirty || scene.path!="Assets/Recovery/Scenes/RecoveredClient.unity")throw new Exception("Saved working scene in EditMode required");
  AssetDatabase.Refresh();
  string dir=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../art/audio/penguin-music-v2"));
  var manifest=JObject.Parse(File.ReadAllText(Path.Combine(dir,"music-manifest.json")));
  var sound=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Sound_manager>(true)).Single();
  var so=new SerializedObject(sound);var entries=so.FindProperty("sfxEntries");
  if(entries.arraySize!=17)throw new Exception("Expected 17 SFX");
  for(int i=0;i<entries.arraySize;i++)
  {
   var row=entries.GetArrayElementAtIndex(i);var type=(SfxType)row.FindPropertyRelative("type").intValue;
   string expected="Assets/Recovery/PenguinAudio/Ice_"+type+".wav";
   if(AssetDatabase.GetAssetPath(row.FindPropertyRelative("clip").objectReferenceValue)!=expected)throw new Exception("Unreplaced SFX: "+type);
  }
  var clips=new AudioClip[2];int index=0;
  foreach(var row in (JArray)manifest["bgm"])
  {
   string path=(string)row["path"];var importer=(AudioImporter)AssetImporter.GetAtPath(path);
   if(importer==null)throw new Exception("Missing music "+path);
   importer.forceToMono=false;importer.loadInBackground=false;
   var settings=importer.defaultSampleSettings;settings.loadType=AudioClipLoadType.Streaming;settings.preloadAudioData=false;settings.compressionFormat=AudioCompressionFormat.Vorbis;settings.quality=.75f;settings.sampleRateSetting=AudioSampleRateSetting.PreserveSampleRate;
   importer.defaultSampleSettings=settings;
   // Mobile overrides must not silently restore PCM or mono playback.
   foreach(string platform in new[]{"Android","iPhone"})if(importer.ContainsSampleSettingsOverride(platform))importer.ClearSampleSettingOverride(platform);
   importer.SaveAndReimport();clips[index++]=AssetDatabase.LoadAssetAtPath<AudioClip>(path);
  }
  if(clips.Any(c=>c==null))throw new Exception("Music import failed");
  so.FindProperty("BGM_main").objectReferenceValue=clips[0];so.FindProperty("BGM_contents").objectReferenceValue=clips[1];so.ApplyModifiedProperties();
  sound.bgmSource.clip=clips[0];sound.bgmSource.loop=true;sound.bgmSource.playOnAwake=true;
  EditorUtility.SetDirty(sound);EditorUtility.SetDirty(sound.bgmSource);EditorSceneManager.MarkSceneDirty(scene);
  if(!EditorSceneManager.SaveScene(scene))throw new Exception("Scene save failed");AssetDatabase.SaveAssets();
  File.WriteAllText(Path.Combine(dir,"installation.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{sfx=17,bgm=clips.Select(c=>new{c.name,c.length,c.samples,c.channels,loadType=c.loadType.ToString()}).ToArray(),startup=sound.bgmSource.clip.name,loop=sound.bgmSource.loop,originalClipsRetained=true,scene=scene.path},Newtonsoft.Json.Formatting.Indented));
  return "Audited 17 replacement SFX; installed two streaming stereo BGM and replaced the startup AudioSource clip";
 }
}
