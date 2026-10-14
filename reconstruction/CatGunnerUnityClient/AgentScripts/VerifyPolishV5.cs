using System;using System.IO;using System.Linq;using System.Collections;using System.Collections.Generic;using UnityEngine;using UnityEngine.UI;using CatGunner.Runtime;
public static class VerifyPolishV5
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/polish-v5/captures");
 public static string Main(){var c=GameClient.Instance;if(!Application.isPlaying||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated Play required");c.StartCoroutine(Run(c));return "Recording Stage cycle, all pet directions, animation and scene render order";}
 static IEnumerator Shot(string name,float wait=.15f){yield return new WaitForSecondsRealtime(wait);yield return new WaitForEndOfFrame();var t=ScreenCapture.CaptureScreenshotAsTexture();try{File.WriteAllBytes(Path.Combine(Dir,name+".png"),t.EncodeToPNG());}finally{UnityEngine.Object.Destroy(t);}}
 static IEnumerator Run(GameClient c)
 {
  while(!c.ReadyForPlay||!c.GetComponent<PenguinPlaytestPolish>().Ready)yield return null;
  c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Tutorial.SetCleared();c.Offline.offlinePanelUI.gameObject.SetActive(false);c.MissionUI.Panel_Close();ForestRuntimeAcceptance.IsGaming=false;Time.timeScale=1;
  var evidence=new List<object>();
  for(int stage=0;stage<=10;stage++){c.Forest.Stage_Now=stage;c.Forest.Level_Now=1;c.Forest.Map_Batch();c.Slider.Stage_Reload(stage,1);yield return Shot("stage-"+(stage+1).ToString("D2"));var active=c.Forest.Map_obj.GetComponentsInChildren<Tree>().Where(t=>t.gameObject.activeInHierarchy).ToArray();evidence.Add(new{stage=stage+1,textures=active.Select(t=>t.spriteRenderer.sprite.texture.name).Distinct().ToArray(),sprites=active.Select(t=>t.spriteRenderer.sprite.name).Distinct().ToArray(),count=active.Length});}
  c.Forest.Stage_Now=0;c.Forest.Level_Now=0;c.Forest.Map_Batch();
  c.State.Skin_Unlock=Enumerable.Repeat(true,25).ToArray();c.Skins.Skin_Unlock=c.State.Skin_Unlock;c.Skins.UI_Reload();yield return Shot("skin-body-uniform");c.Skins.Skin_List_UI.SetActive(false);
  var manager=UnityEngine.Object.FindAnyObjectByType<Pet_Ingame_manager>();manager.enabled=false;var pet=manager.Pets[0];pet.Reload(0);pet.gameObject.SetActive(true);for(int i=1;i<manager.Pets.Length;i++)manager.Pets[i].gameObject.SetActive(false);
  var motion=pet.GetComponentInChildren<PenguinPetMotion>();var actor=motion.GetComponent<PenguinCatalogActor>();var moves=new List<object>();
  var right=Vector3.ProjectOnPlane(Camera.main.transform.right,Vector3.up).normalized;var up=Vector3.ProjectOnPlane(Camera.main.transform.up,Vector3.up).normalized;var velocities=new[]{-right,right,up,-up};var names=new[]{"left","right","up","down"};
  for(int n=0;n<velocities.Length;n++)
  {
   pet.Warp(c.Hero.transform.position+new Vector3(6,0,0));pet.IsMoving=true;pet.rb.linearVelocity=velocities[n]*8;
   for(int frame=0;frame<6;frame++){yield return Shot("pet-"+names[n]+"-"+frame.ToString("D2"),.08f);moves.Add(new{screenDirection=names[n],velocity=velocities[n].ToString(),direction=motion.Direction.ToString(),sprite=actor.Visual.sprite.name,position=pet.transform.position.ToString(),vertices=motion.Mesh.vertices.Select(v=>v.ToString()).Take(18).ToArray()});}
  }
  pet.rb.linearVelocity=Vector3.zero;pet.IsMoving=false;manager.enabled=true;
  var effects=UnityEngine.Object.FindObjectsByType<Renderer>(FindObjectsInactive.Include,FindObjectsSortMode.None).Where(r=>r.GetComponentInParent<Bullet>(true)!=null||r.GetComponentInParent<Bullet_FX>(true)!=null).ToArray();
  File.WriteAllText(Path.Combine(Dir,"stage-pet-verification.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{stages=evidence,movement=moves,pet=new{layer=motion.Renderer.sortingLayerName,order=motion.Renderer.sortingOrder},attackLayers=effects.GroupBy(r=>r.sortingLayerName).Select(g=>new{layer=g.Key,min=g.Min(r=>r.sortingOrder),max=g.Max(r=>r.sortingOrder)}).ToArray(),scope="Actual Editor GPU. Pet direction fixture temporarily disables follow manager and applies real Rigidbody velocity; ordinary save untouched."},Newtonsoft.Json.Formatting.Indented));
 }
}
