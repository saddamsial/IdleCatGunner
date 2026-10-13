using System;
using System.IO;
using System.Linq;
using UnityEngine;
using UnityEditor;
using CatGunner.Recovery;
public static class AuditFeedback
{
 public static string Run(){
  var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);
  var canvas=c.Slider.GetComponentInParent<Canvas>();var buttons=canvas.GetComponentsInChildren<UnityEngine.UI.Button>(true);
  string P(Transform t){string p=t.name;while(t.parent!=null&&t!=canvas.transform){t=t.parent;p=t.name+"/"+p;}return p;}
  var report=new{playing=Application.isPlaying,scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene().path,buttons=buttons.Length,covered=buttons.Count(b=>b.GetComponent<PenguinButtonFeedback>()!=null),slots=canvas.GetComponentsInChildren<PenguinSlotFeedback>(true).Length,popups=canvas.GetComponentsInChildren<PenguinPopupFeedback>(true).Length,
   audio=UnityEngine.Object.FindObjectsByType<AudioSource>(FindObjectsInactive.Include).Select(s=>new{name=s.name,clip=s.clip!=null?s.clip.name:null,s.loop,s.playOnAwake}).ToArray(),
   missingScripts=UnityEngine.SceneManagement.SceneManager.GetActiveScene().GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject))),
   profile=c.SaveFolderOverride,uncovered=buttons.Where(b=>b.GetComponent<PenguinButtonFeedback>()==null).Select(b=>P(b.transform)).ToArray(),
   bindingRecords=buttons.Select(b=>new{path=P(b.transform),methods=Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Select(i=>b.onClick.GetPersistentMethodName(i)).ToArray()}).ToArray()};
  string folder=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../art/audio/penguin-feedback-v1"));File.WriteAllText(Path.Combine(folder,Application.isPlaying?"runtime-audit.json":"scene-audit.json"),Newtonsoft.Json.JsonConvert.SerializeObject(report,Newtonsoft.Json.Formatting.Indented));
  return "Buttons "+report.covered+"/"+report.buttons+", slots "+report.slots+", popups "+report.popups+", missing scripts "+report.missingScripts;
 }
}
