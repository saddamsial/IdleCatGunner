using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using CatGunner.Recovery;
public static class InspectWeaponVfx
{
 public static string Run()
 {
  var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets" || Application.isPlaying || scene.path!="Assets/Recovery/Scenes/RecoveredClient.unity")throw new Exception("Correct EditMode required");
  var roots=scene.GetRootGameObjects();var client=roots.SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single();
  var bullet=roots.SelectMany(g=>g.GetComponentsInChildren<Bullet>(true)).First();
  var hit=roots.SelectMany(g=>g.GetComponentsInChildren<Bullet_FX>(true)).First();
  var rows=new List<object>();
  string P(Transform t){string p=t.name;while(t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
  void Add(string kind,int gun,ParticleSystem root){if(root==null)return;foreach(var particle in root.GetComponentsInChildren<ParticleSystem>(true)){
   var r=particle.GetComponent<ParticleSystemRenderer>();if(r==null)continue;var sheet=particle.textureSheetAnimation;var main=particle.main;
   rows.Add(new{kind,gun,path=P(particle.transform),name=particle.name,renderer=r.renderMode.ToString(),size=main.startSizeMultiplier,lifetime=main.startLifetimeMultiplier,startColor=main.startColor.color.ToString(),sheet=sheet.enabled,columns=sheet.numTilesX,rows=sheet.numTilesY,
    materials=r.sharedMaterials.Select(m=>new{name=m!=null?m.name:null,shader=m!=null?m.shader.name:null,texture=m!=null&&m.mainTexture!=null?AssetDatabase.GetAssetPath(m.mainTexture):null}).ToArray()});
  }}
  for(int i=0;i<bullet.Skin_particles.Length;i++)Add("projectile",i,bullet.Skin_particles[i]);
  for(int i=0;i<hit.Skin_particles.Length;i++)Add("impact",i,hit.Skin_particles[i]);
  for(int i=0;i<client.Hero.Gun_list.Length;i++)Add("muzzle",i,client.Hero.Gun_list[i].Shoot_particle);
  string folder=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../art/vfx/weapon-feedback-v2"));
  File.WriteAllText(Path.Combine(folder,"original-emitter-inventory.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{projectileVariants=bullet.Skin_particles.Length,impactVariants=hit.Skin_particles.Length,muzzleVariants=client.Hero.Gun_list.Length,emitters=rows},Newtonsoft.Json.Formatting.Indented));
  return "Original variants: "+bullet.Skin_particles.Length+" projectile, "+hit.Skin_particles.Length+" hit, "+client.Hero.Gun_list.Length+" muzzle; emitter rows "+rows.Count;
 }
}
