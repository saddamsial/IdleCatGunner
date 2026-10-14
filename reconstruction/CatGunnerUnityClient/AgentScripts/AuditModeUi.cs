using System;using System.IO;using System.Linq;using UnityEngine;using UnityEngine.UI;using TMPro;using UnityEditor;using CatGunner.Runtime;
public static class AuditModeUi {
 public static object Main(){
 if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets")throw new Exception("Wrong project");
 var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);var canvas=c.Slider.GetComponentInParent<Canvas>();
 string P(Transform t){string p=t.name;while(t!=canvas.transform&&t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
 bool In(string p)=>new[]{"Monster_UI","Mine_UI","SpeedRun_UI","Boss_UI","Raid_UI","Travel_UI","Journey","Adventure","Pet_UI","VIP","Monster_Btn","Pet_Btn"}.Any(p.Contains);
 var images=canvas.GetComponentsInChildren<Image>(true).Where(i=>In(P(i.transform))).Select(i=>new{path=P(i.transform),sprite=i.sprite!=null?i.sprite.name:null,asset=AssetDatabase.GetAssetPath(i.sprite),color=ColorUtility.ToHtmlStringRGBA(i.color),size=i.rectTransform.rect.size.ToString(),active=i.gameObject.activeSelf,enabled=i.enabled,button=i.GetComponent<Button>()!=null}).ToArray();
 var texts=canvas.GetComponentsInChildren<TMP_Text>(true).Where(i=>In(P(i.transform))).Select(i=>new{path=P(i.transform),text=i.text,color=ColorUtility.ToHtmlStringRGBA(i.color)}).ToArray();
 var full=c.GetComponent<PenguinFullReskin>();var glyphs=full.SourceGlyphs.Select((s,i)=>new{original=s.name,themed=full.ThemedGlyphs[i].name,path=AssetDatabase.GetAssetPath(full.ThemedGlyphs[i]),texture=AssetDatabase.GetAssetPath(full.ThemedGlyphs[i].spriteSheet),characters=full.ThemedGlyphs[i].spriteCharacterTable.Select(ch=>new{name=ch.name,index=ch.glyphIndex,rect=ch.glyph.glyphRect.ToString()}).ToArray()}).ToArray();
 var fields=canvas.GetComponentsInChildren<MonoBehaviour>(true).Where(b=>b!=null&&In(P(b.transform))).SelectMany(b=>b.GetType().GetFields().Where(f=>f.FieldType==typeof(Color)||f.FieldType==typeof(Color[])).Select(f=>new{path=P(b.transform),type=b.GetType().Name,field=f.Name,value=f.GetValue(b)?.ToString()})).ToArray();
 string dir="/Volumes/ZHITAI_1T/IdleCatGunner/art/reskin/penguin-expedition/mode-ui-v1";File.WriteAllText(dir+"/audit-edit.json",Newtonsoft.Json.JsonConvert.SerializeObject(new{images,texts,glyphs,fields},Newtonsoft.Json.Formatting.Indented));
 return new{playing=Application.isPlaying,dirty=c.gameObject.scene.isDirty,c.Persist,c.SaveFolderOverride,c.StaticUiBaked,images=images.Length,texts=texts.Length,roots=canvas.transform.Cast<Transform>().SelectMany(t=>t.Cast<Transform>()).Select(t=>t.name).ToArray()};
 }
}
