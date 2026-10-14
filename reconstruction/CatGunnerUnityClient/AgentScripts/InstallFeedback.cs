using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using CatGunner.Runtime;
using Newtonsoft.Json.Linq;
public static class InstallFeedback
{
 public static string Run()
 {
  if(EditorApplication.isPlaying || Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets")throw new Exception("Correct EditMode required");
  var scene=EditorSceneManager.GetActiveScene();
  if(scene.path!="Assets/Game/Scenes/GameClient.unity" || scene.isDirty)throw new Exception("Saved GameClient required; preserve pending edits");
  AssetDatabase.Refresh();
  var client=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
  var canvas=client.Slider.GetComponentInParent<Canvas>();
  string folder=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../art/audio/penguin-feedback-v1"));
  var manifest=JObject.Parse(File.ReadAllText(Path.Combine(folder,"manifest.json")));
  var sound=scene.GetRootGameObjects().SelectMany(go=>go.GetComponentsInChildren<Sound_manager>(true)).Single();
  var so=new SerializedObject(sound);var entries=so.FindProperty("sfxEntries");
  if(entries.arraySize!=17)throw new Exception("Expected 17 original sound slots");
  foreach(var row in (JArray)manifest["clips"])
  {
   string name=(string)row["type"]; string path="Assets/Game/PenguinAudio/Ice_"+name+".wav";
   var importer=(AudioImporter)AssetImporter.GetAtPath(path);if(importer==null)throw new Exception("Missing "+path);
   importer.forceToMono=true;importer.loadInBackground=false;
   var settings=importer.defaultSampleSettings;settings.loadType=AudioClipLoadType.DecompressOnLoad;settings.preloadAudioData=true;settings.compressionFormat=AudioCompressionFormat.PCM;settings.sampleRateSetting=AudioSampleRateSetting.PreserveSampleRate;importer.defaultSampleSettings=settings;importer.SaveAndReimport();
   var clip=AssetDatabase.LoadAssetAtPath<AudioClip>(path);if(clip==null || clip.samples==0)throw new Exception("Invalid "+path);
   int id=(int)row["id"];var entry=Enumerable.Range(0,entries.arraySize).Select(i=>entries.GetArrayElementAtIndex(i)).Single(e=>e.FindPropertyRelative("type").intValue==id);
   entry.FindPropertyRelative("clip").objectReferenceValue=clip;entry.FindPropertyRelative("volume").floatValue=(float)row["volume"];
  }
  so.ApplyModifiedProperties();
  var buttons=canvas.GetComponentsInChildren<UnityEngine.UI.Button>(true);
  foreach(var button in buttons)PenguinFeedbackBootstrap.AttachButton(button);
  var slots=canvas.GetComponentsInChildren<Gun_Slot>(true).Select(s=>(Component)s).Concat(canvas.GetComponentsInChildren<Pet_Slot>(true)).ToArray();
  foreach(var slot in slots)if(slot.GetComponent<PenguinSlotFeedback>()==null)slot.gameObject.AddComponent<PenguinSlotFeedback>();
  var popupRecords=new List<object>();
  foreach(var row in JArray.Parse(File.ReadAllText(Path.Combine(folder,"popup-manifest.json"))))
  {
   string path=(string)row["root"],contentPath=(string)row["content"];
   var root=canvas.transform.Find(path);var content=root?.Find(contentPath) as RectTransform;
   if(root==null || content==null)throw new Exception("Missing popup "+path+"/"+contentPath);
   if(content.GetComponent<Animator>()!=null || content.GetComponent<Animation>()!=null)throw new Exception("Animation owner conflict at "+path);
   var feedback=PenguinFeedbackBootstrap.AttachPopup(root.gameObject,content);EditorUtility.SetDirty(feedback);
   popupRecords.Add(new {root=path,content=contentPath});
  }
  if(client.GetComponent<PenguinFeedbackBootstrap>()==null)client.gameObject.AddComponent<PenguinFeedbackBootstrap>();
  EditorUtility.SetDirty(sound);EditorSceneManager.MarkSceneDirty(scene);
  if(!EditorSceneManager.SaveScene(scene))throw new Exception("Scene save failed");AssetDatabase.SaveAssets();
  File.WriteAllText(Path.Combine(folder,"installation.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new {sfx=17,scene=scene.path,slots=slots.Length,buttons=buttons.Length,animatedButtons=buttons.Count(b=>b.GetComponent<PenguinButtonFeedback>().AnimateScale),backdrops=buttons.Count(b=>!b.GetComponent<PenguinButtonFeedback>().AnimateScale),popups=popupRecords,dynamic="Startup covers instantiated weapon information, collection and language chooser",music="Existing background music retained",source="New synthesized PenguinAudio assets; original AudioClip files unchanged"},Newtonsoft.Json.Formatting.Indented));
  return "Installed 17 replacement SFX, "+buttons.Length+" button feedback components, "+popupRecords.Count+" popup animations";
 }
}
