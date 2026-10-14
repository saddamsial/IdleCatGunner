using System;using System.Linq;using System.Collections.Generic;using UnityEngine;using UnityEditor;using Newtonsoft.Json.Linq;using CatGunner.Runtime;
public static class AuditPoolTemplates
{
 public static string Signature(GameObject root)
 {
  var objects=new List<UnityEngine.Object>();foreach(var t in root.GetComponentsInChildren<Transform>(true)){objects.Add(t.gameObject);objects.AddRange(t.GetComponents<Component>());}
  var ids=new Dictionary<int,int>();for(int i=0;i<objects.Count;i++)ids[objects[i].GetInstanceID()]=i+1;
  var all=new JArray();foreach(var obj in objects){var json=JObject.Parse(EditorJsonUtility.ToJson(obj));foreach(var ignored in new[]{"m_ObjectHideFlags","m_CorrespondingSourceObject","m_PrefabInstance","m_PrefabAsset"})json.Remove(ignored);
   foreach(var id in json.Descendants().OfType<JProperty>().Where(p=>p.Name=="instanceID").ToArray())if(ids.TryGetValue((int)id.Value,out var local))id.Value="local:"+local;
   if(obj==root)json["m_Name"]="Template";
   if(obj==root.transform){foreach(var k in new[]{"m_LocalPosition","m_LocalRotation","m_LocalScale","m_LocalEulerAnglesHint","m_Father","m_RootOrder"})json.Remove(k);}
   all.Add(new JObject{["type"]=obj.GetType().FullName,["data"]=json});
  }
  using(var sha=System.Security.Cryptography.SHA256.Create())return BitConverter.ToString(sha.ComputeHash(System.Text.Encoding.UTF8.GetBytes(all.ToString(Newtonsoft.Json.Formatting.None))));
 }
 public static string Run()
 {
  var asset=AssetDatabase.LoadAssetAtPath<GameObject>("Assets/Game/Resources/Gameplay/ProjectilePoolContent.prefab");var pools=asset.GetComponent<ProjectilePoolContent>();
  var results=pools.Pools.Select(p=>new {p.Object_str,count=p.Objects.Length,groups=p.Objects.Select(o=>new{name=o.name,hash=Signature(o)}).GroupBy(x=>x.hash).Select(g=>new {hash=g.Key,names=g.Select(x=>x.name).ToArray()})}).ToArray();
  var json=Newtonsoft.Json.JsonConvert.SerializeObject(results,Newtonsoft.Json.Formatting.Indented);System.IO.File.WriteAllText("/Volumes/ZHITAI_1T/IdleCatGunner/art/architecture/20261014/pool-template-audit.json",json);return json;
 }
}
