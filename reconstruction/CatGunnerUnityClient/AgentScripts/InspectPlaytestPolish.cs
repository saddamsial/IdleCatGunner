using System;using System.IO;using System.Linq;using UnityEngine;using UnityEngine.UI;using TMPro;using CatGunner.Runtime;
public static class InspectPlaytestPolish
{
 public static object Main()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets")throw new Exception("Wrong project");
  var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
  var canvas=c.Slider.GetComponentInParent<Canvas>();
  string P(Transform t){string p=t.name;while(t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
  var rows=canvas.GetComponentsInChildren<Transform>(true).Select(t=>new{path=P(t),active=t.gameObject.activeSelf,components=t.GetComponents<Component>().Where(x=>x!=null).Select(x=>x.GetType().Name).ToArray(),sprite=t.GetComponent<Image>()!=null&&t.GetComponent<Image>().sprite!=null?t.GetComponent<Image>().sprite.name:null,color=t.GetComponent<Image>()!=null?ColorUtility.ToHtmlStringRGBA(t.GetComponent<Image>().color):null,text=t.GetComponent<TMP_Text>()?.text,size=t is RectTransform rt?rt.sizeDelta.ToString():null,position=t.localPosition.ToString(),scale=t.localScale.ToString(),pivot=t is RectTransform r?r.pivot.ToString():null,callbacks=t.GetComponent<Button>()!=null?Enumerable.Range(0,t.GetComponent<Button>().onClick.GetPersistentEventCount()).Select(i=>t.GetComponent<Button>().onClick.GetPersistentMethodName(i)).ToArray():null}).ToArray();
  var data=new{playing=Application.isPlaying,rows,gunColors=c.Guns.Degree_Colors.Select(ColorUtility.ToHtmlStringRGBA).ToArray(),petColors=canvas.GetComponentInChildren<Pet_manager>(true).Degree_Colors.Select(ColorUtility.ToHtmlStringRGBA).ToArray(),themes=c.GetComponents<MonoBehaviour>().Select(x=>x.GetType().Name).ToArray()};
  var dir=Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/polish-v4");Directory.CreateDirectory(dir);File.WriteAllText(Path.Combine(dir,Application.isPlaying?"runtime-before.json":"edit-before.json"),Newtonsoft.Json.JsonConvert.SerializeObject(data,Newtonsoft.Json.Formatting.Indented));
  return new{rows=rows.Length,dir};
 }
}
