using System;using System.IO;using System.Linq;using UnityEngine;using UnityEditor;using CatGunner.Recovery;
public static class InspectPenguinRig
{
 public static string Run()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets")throw new Exception("Wrong project");
  var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);var hero=c.Hero;
  string P(Transform t)=>t==null?null:(t.parent==null?t.name:P(t.parent)+"/"+t.name);
  var sources=hero.GetComponentsInChildren<SpriteRenderer>(true).Select(r=>new{path=P(r.transform),r.name,sprite=r.sprite?.name,bounds=r.sprite?.bounds.ToString(),sorting=r.sortingOrder,local=r.transform.localPosition.ToString(),scale=r.transform.localScale.ToString()}).ToArray();
  var particles=c.gameObject.scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<ParticleSystem>(true)).Where(p=>p.GetComponent<ParticleSystemRenderer>()?.sharedMaterial!=null).Select(p=>new{p.name,path=P(p.transform),shader=p.GetComponent<ParticleSystemRenderer>().sharedMaterial.shader.name,texture=p.GetComponent<ParticleSystemRenderer>().sharedMaterial.mainTexture?.name,renderMode=p.GetComponent<ParticleSystemRenderer>().renderMode.ToString()}).ToArray();
  var result=new{playing=Application.isPlaying,gunPivot=P(hero.Gun_Pivot_trans),shoot=P(hero.Shoot_trans),hand=P(hero.hand_spriteRenderer.transform),sources,particles,availableShaders=new[]{"Sprites/Default","Legacy Shaders/Particles/Alpha Blended","Particles/Standard Unlit"}.Select(n=>new{name=n,available=Shader.Find(n)!=null})};
  var file=Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/grip-expression-v2/rig-before.json");File.WriteAllText(file,Newtonsoft.Json.JsonConvert.SerializeObject(result,Newtonsoft.Json.Formatting.Indented));return "Recorded native rig and "+particles.Length+" particle materials without changing the scene";
 }
}
