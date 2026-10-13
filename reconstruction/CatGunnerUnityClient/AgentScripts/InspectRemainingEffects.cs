using System;using System.Linq;using System.IO;using UnityEngine;using UnityEngine.UI;using CatGunner.Recovery;
public static class InspectRemainingEffects
{
 public static string Run()
 {
  var c=RecoveryForestClient.Instance;if(!Application.isPlaying||c==null||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated preview required");
  var all=c.gameObject.scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<ParticleSystem>(true));
  var items=all.Where(p=>p.GetComponent<ParticleSystemRenderer>()?.sharedMaterial!=null).Select(p=>new{p.name,path=p.transform.parent!=null?p.transform.parent.name:null,active=p.gameObject.activeInHierarchy,shader=p.GetComponent<ParticleSystemRenderer>().sharedMaterial.shader.name,texture=p.GetComponent<ParticleSystemRenderer>().sharedMaterial.mainTexture?.name,renderMode=p.GetComponent<ParticleSystemRenderer>().renderMode.ToString(),sheet=p.textureSheetAnimation.enabled,mesh=p.GetComponent<ParticleSystemRenderer>().mesh?.name,material=p.GetComponent<ParticleSystemRenderer>().sharedMaterial.name}).ToArray();
  var file=Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/remaining-style-audit/particles.json");File.WriteAllText(file,Newtonsoft.Json.JsonConvert.SerializeObject(new{timeScale=Time.timeScale,shaders=new[]{"Sprites/Default","Legacy Shaders/Particles/Alpha Blended","Particles/Standard Unlit"}.Select(n=>new{name=n,found=Shader.Find(n)!=null}),items},Newtonsoft.Json.Formatting.Indented));return "Inspected "+items.Length+" particles; timeScale="+Time.timeScale;
 }
}
