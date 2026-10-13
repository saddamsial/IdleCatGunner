using System;using System.Linq;using System.IO;using UnityEngine;using UnityEditor;
public static class InspectPolarRing
{
 static string PathOf(Transform t){string p=t.name;while(t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
 static object Curve(ParticleSystem.MinMaxCurve c)=>new{mode=c.mode.ToString(),c.constant,c.constantMin,c.constantMax,c.curveMultiplier,keys=c.curve==null?null:c.curve.keys.Select(k=>new{k.time,k.value}).ToArray()};
 public static string Run()
 {
  if(EditorApplication.isPlaying)throw new Exception("Inspect originals in EditMode");
  var list=UnityEngine.Object.FindObjectsByType<ParticleSystem>(FindObjectsInactive.Include,FindObjectsSortMode.None).Where(p=>PathOf(p.transform).Contains("Bullet (1)/")).Select(p=>{var r=p.GetComponent<ParticleSystemRenderer>();var m=p.main;var rot=p.rotationOverLifetime;var sz=p.sizeOverLifetime;var col=p.colorOverLifetime;var emission=p.emission;return new{path=PathOf(p.transform),p.name,material=r.sharedMaterial.name,texture=r.sharedMaterial.mainTexture==null?null:r.sharedMaterial.mainTexture.name,shader=r.sharedMaterial.shader.name,mode=r.renderMode.ToString(),size=Curve(m.startSize),life=Curve(m.startLifetime),m.loop,m.duration,rate=Curve(emission.rateOverTime),rotation=new{rot.enabled,rot.separateAxes,z=Curve(rot.z)},scale=new{sz.enabled,sz.separateAxes,x=Curve(sz.x)},fade=new{col.enabled,alpha=col.color.gradient.alphaKeys.Select(k=>new{k.time,k.alpha})},sheet=p.textureSheetAnimation.enabled};}).ToArray();
  string path=System.IO.Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/ring-v2/original-particles.json");File.WriteAllText(path,Newtonsoft.Json.JsonConvert.SerializeObject(list,Newtonsoft.Json.Formatting.Indented));return list.Length+" particles recorded";
 }
}
