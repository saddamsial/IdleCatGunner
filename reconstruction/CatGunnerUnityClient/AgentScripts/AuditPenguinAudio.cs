using System;
using System.IO;
using System.Linq;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using CatGunner.Runtime;
public static class AuditPenguinAudio
{
 public static string Run()
 {
  const string scenePath="Assets/Game/Scenes/GameClient.unity";
  var scene=UnityEngine.SceneManagement.SceneManager.GetSceneByPath(scenePath);
  var components=scene.IsValid() && scene.isLoaded ? scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Component>(true)).Where(c=>c!=null).ToArray() : new Component[0];
  var references=new System.Collections.Generic.List<object>();
  foreach(var c in components)
  {
   var so=new SerializedObject(c);var p=so.GetIterator();
   while(p.Next(true))if(p.propertyType==SerializedPropertyType.ObjectReference && p.objectReferenceValue is AudioClip clip)
   {
    string path=AssetDatabase.GetAssetPath(clip);if(!path.StartsWith("Assets/Game/PenguinAudio/"))throw new Exception("Legacy audio still bound: "+c.name+" "+p.propertyPath+" "+path);
    references.Add(new{component=c.GetType().Name,objectName=c.name,property=p.propertyPath,clip=clip.name,path});
   }
  }
  var dependencies=AssetDatabase.GetDependencies(scenePath,true).Where(p=>p.EndsWith(".wav")||p.EndsWith(".ogg")||p.EndsWith(".mp3")).ToArray();
  var legacy=dependencies.Where(p=>!p.StartsWith("Assets/Game/PenguinAudio/")).ToArray();
  if(legacy.Length>0)throw new Exception("Unexpected legacy scene audio dependencies: "+string.Join(",",legacy));
  string dir=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../art/audio/penguin-music-v2"));
  File.WriteAllText(Path.Combine(dir,"audio-reference-audit.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{scene=scenePath,runtimeReferencesAudited=components.Length>0,playing=Application.isPlaying,references,dependencies,legacy,channels=components.OfType<AudioSource>().Select(s=>new{s.name,clip=s.clip!=null?s.clip.name:null,s.loop}).ToArray(),missingScripts=components.Length>0?(int?)components.OfType<Transform>().Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)):null},Newtonsoft.Json.Formatting.Indented));
  return "Audited "+references.Count+" serialized clip references, "+dependencies.Length+" unique sound/music dependencies, no legacy clip bindings";
 }
}
