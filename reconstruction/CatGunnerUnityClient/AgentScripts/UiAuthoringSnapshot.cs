using System;using System.IO;using System.Linq;using Newtonsoft.Json;using UnityEngine;using UnityEngine.UI;using TMPro;using CatGunner.Recovery;
public static class UiAuthoringSnapshot
{
 public static object Main(string name="baseline")
 {
  var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);
  if(Application.isPlaying&&!c.ReadyForPlay)throw new Exception("Startup not ready");
  var canvas=c.Slider.GetComponentInParent<Canvas>();Canvas.ForceUpdateCanvases();
  string PathOf(Transform t){string p=t.name;while(t!=canvas.transform&&t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
  var nodes=canvas.GetComponentsInChildren<RectTransform>(true).Select(t=>new {path=PathOf(t),size=new[]{t.sizeDelta.x,t.sizeDelta.y},pos=new[]{t.anchoredPosition.x,t.anchoredPosition.y},min=new[]{t.anchorMin.x,t.anchorMin.y},max=new[]{t.anchorMax.x,t.anchorMax.y},sibling=t.GetSiblingIndex(),active=t.gameObject.activeSelf}).ToArray();
  var images=canvas.GetComponentsInChildren<Image>(true).Select(i=>new{path=PathOf(i.transform),sprite=i.sprite!=null?i.sprite.name:null,color=ColorUtility.ToHtmlStringRGBA(i.color),type=i.type.ToString(),enabled=i.enabled}).ToArray();
  var texts=canvas.GetComponentsInChildren<TMP_Text>(true).Select(t=>new{path=PathOf(t.transform),font=t.font!=null?t.font.name:null,material=t.fontSharedMaterial!=null?t.fontSharedMaterial.name:null,color=ColorUtility.ToHtmlStringRGBA(t.color),size=t.fontSize,text=t.text}).ToArray();
  string dir="/Volumes/ZHITAI_1T/IdleCatGunner/art/ui-authoring/20261014";Directory.CreateDirectory(dir);File.WriteAllText(dir+"/"+name+".json",JsonConvert.SerializeObject(new{nodes,images,texts},Formatting.Indented));
  return new{ready=c.ReadyForPlay,nodes=nodes.Length,images=images.Length,texts=texts.Length,playing=Application.isPlaying};
 }
}
