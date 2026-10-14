using System;using System.Linq;using UnityEngine;
namespace CatGunner.Runtime
{
 // Rule68. Frozen primary static terms; missing/external/dynamic targets remain
 // explicit. Display and Chinese font adaptation reuse the local Rule67 layer.
 [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalRemainingUIExt")] public static class RemainingUIExt
 {
  static ModeText cached;
  public static ModeText Data
  {
   get{if(cached!=null)return cached;var a=Resources.Load<TextAsset>("RemainingUIExt");var d=a==null?null:JsonUtility.FromJson<ModeText>(a.text);if(d?.Rows?.Length!=300||d.LocaleCodes?.Length!=14||d.Rows.Any(r=>r.Values?.Length!=14||r.Values.Any(string.IsNullOrEmpty)))throw new InvalidOperationException("Remaining original UI terms incomplete");return cached=d;}
  }
  public static TMPro.TMP_Text Resolve(Transform canvas,ModeText.Row row)
 {
  var direct=Data.Resolve(canvas,row);if(direct!=null)return direct;
  // The authored Raid helper has duplicate Image parents. Enumerate exact
  // path names and leaf ordinal; accept only one surviving TMP target.
  var segments=row.Path.Split('/');var parents=new[]{canvas};
  for(int i=0;i<segments.Length-1;i++){string name=segments[i];parents=parents.SelectMany(p=>p.Cast<Transform>().Where(t=>t.name==name)).ToArray();if(parents.Length==0)return null;}
  var targets=parents.Select(p=>p.Cast<Transform>().Where(t=>t.name==segments.Last()).ElementAtOrDefault(row.SameNameOrdinal)?.GetComponent<TMPro.TMP_Text>()).Where(t=>t!=null).ToArray();return targets.Length==1?targets[0]:null;
 }
 public static int Apply(Transform canvas,SystemLanguage language)
  {
   int count=0;foreach(var r in Data.Rows){var t=Resolve(canvas,r);if(t==null)continue;WeaponText.Set(t,Data.Display(r,language),language);count++;}return count;
  }
 }
}
