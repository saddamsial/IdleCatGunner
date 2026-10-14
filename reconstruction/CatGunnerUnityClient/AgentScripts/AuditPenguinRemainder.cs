using System;using System.IO;using System.Linq;using UnityEngine;using UnityEngine.UI;using TMPro;using CatGunner.Runtime;
public static class AuditPenguinRemainder
{
 public static string Run(){var c=GameClient.Instance;string P(Transform t){string p=t.name;while(t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
 var images=c.gameObject.scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Image>(true)).Where(i=>i.sprite!=null&&!(i.sprite.name.StartsWith("Fit_")||i.sprite.name.StartsWith("Ice")||i.sprite.name.StartsWith("Penguin")||i.sprite.name.StartsWith("Flipper"))).GroupBy(i=>i.sprite).Select(g=>new{g.Key.name,asset=UnityEditor.AssetDatabase.GetAssetPath(g.Key),count=g.Count(),paths=g.Take(3).Select(i=>P(i.transform))});
 var renderers=c.gameObject.scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Renderer>(true)).Where(r=>P(r.transform).Contains("Damage")||P(r.transform).Contains("Money")||P(r.transform).Contains("Ground")).Select(r=>new{path=P(r.transform),type=r.GetType().Name,sprite=r is SpriteRenderer s?s.sprite?.name:null,mats=r.sharedMaterials.Select(m=>m==null?null:new{m.name,texture=m.mainTexture?.name})});
 var json=Newtonsoft.Json.JsonConvert.SerializeObject(new{images,renderers},Newtonsoft.Json.Formatting.Indented);File.WriteAllText(Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/full-reskin/remainder.json"),json);return "Saved remaining source art audit";
 }
}
