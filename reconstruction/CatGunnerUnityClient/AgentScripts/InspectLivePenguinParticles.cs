using System;using System.Linq;using System.IO;using UnityEngine;using CatGunner.Recovery;
public static class InspectLivePenguinParticles
{
 public static string Run(){var items=UnityEngine.Object.FindObjectsByType<ParticleSystem>(FindObjectsSortMode.None).Where(p=>p.particleCount>0).Select(p=>{var r=p.GetComponent<ParticleSystemRenderer>();string path=p.name;for(var t=p.transform.parent;t!=null;t=t.parent)path=t.name+"/"+path;return new{path,p.particleCount,shader=r.sharedMaterial?.shader.name,tex=r.sharedMaterial?.mainTexture?.name,trail=p.trails.enabled,mode=r.renderMode.ToString(),matCount=r.sharedMaterials.Length,uv=p.textureSheetAnimation.enabled};}).ToArray();var s=Newtonsoft.Json.JsonConvert.SerializeObject(items,Newtonsoft.Json.Formatting.Indented);File.WriteAllText(Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/grip-expression-v2/live-particles.json"),s);return "Saved "+items.Length+" live emitter layers";}
}
