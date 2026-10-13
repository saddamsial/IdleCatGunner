using System;
using System.IO;
using System.Linq;
using UnityEngine;
using UnityEditor;
using CatGunner.Recovery;
public static class InspectFeedback
{
 public static string Run(){
 var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);
 var canvas=c.Slider.GetComponentInParent<Canvas>();
 string P(Transform t){var p=t.name;while(t.parent!=null&&t!=canvas.transform){t=t.parent;p=t.name+"/"+p;}return p;}
 var nodes=canvas.GetComponentsInChildren<RectTransform>(true).Select(t=>new {path=P(t),active=t.gameObject.activeSelf,scale=t.localScale.ToString(),size=t.rect.size.ToString(),components=t.GetComponents<MonoBehaviour>().Where(b=>b!=null).Select(b=>b.GetType().Name+":"+b.enabled).ToArray(),children=t.Cast<Transform>().Select(ch=>ch.name).ToArray()}).ToArray();
 string folder=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../art/audio/penguin-feedback-v1"));
 File.WriteAllText(Path.Combine(folder,"hierarchy-before.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{playing=EditorApplication.isPlaying,dirty=UnityEditor.SceneManagement.EditorSceneManager.GetActiveScene().isDirty,nodes},Newtonsoft.Json.Formatting.Indented));
 return "Recorded "+nodes.Length+" RectTransforms";
 }
}
