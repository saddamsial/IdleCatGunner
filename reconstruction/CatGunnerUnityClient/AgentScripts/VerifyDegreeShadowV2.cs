using System;using System.IO;using System.Linq;using System.Collections;using System.Collections.Generic;using UnityEngine;using UnityEditor;using CatGunner.Runtime;
public static class VerifyDegreeShadowV2
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/degree-shadow-v2");
 static GameClient Client()=>UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
 public static object Prepare(){if(EditorApplication.isPlaying||Client().gameObject.scene.isDirty)throw new Exception("Saved EditMode required");var c=Client();File.WriteAllText(Dir+"/preview-state.json",Newtonsoft.Json.JsonConvert.SerializeObject(new{c.Persist,c.SaveFolderOverride,host=SessionState.GetString("CatGunner.Recovery.TestHostFolder","")}));c.Persist=false;c.SaveFolderOverride=Path.Combine(Application.temporaryCachePath,"DegreeShadowV2-"+Guid.NewGuid().ToString("N"));SessionState.SetString("CatGunner.Recovery.TestHostFolder",c.SaveFolderOverride);return c.SaveFolderOverride;}
 public static object Restore(){if(EditorApplication.isPlaying)throw new Exception("EditMode required");var d=Newtonsoft.Json.Linq.JObject.Parse(File.ReadAllText(Dir+"/preview-state.json"));var c=Client();c.Persist=(bool)d["Persist"];c.SaveFolderOverride=d["SaveFolderOverride"].Type==Newtonsoft.Json.Linq.JTokenType.Null?null:(string)d["SaveFolderOverride"];SessionState.SetString("CatGunner.Recovery.TestHostFolder",(string)d["host"]);return new{c.Persist,c.SaveFolderOverride,sceneDirty=c.gameObject.scene.isDirty};}
 public static object Finish(){
  if(!EditorApplication.isPlaying&&!EditorApplication.isPlayingOrWillChangePlaymode){var result=Restore();File.WriteAllText(Dir+"/restored.json",Newtonsoft.Json.JsonConvert.SerializeObject(result));return result;}
  var c=Client();if(c.SaveFolderOverride==null||!c.SaveFolderOverride.Contains("DegreeShadowV2"))throw new Exception("Different active profile; no stop performed");
  Action<PlayModeStateChange> handler=null;handler=state=>{if(state!=PlayModeStateChange.EnteredEditMode)return;EditorApplication.playModeStateChanged-=handler;var result=Restore();File.WriteAllText(Dir+"/restored.json",Newtonsoft.Json.JsonConvert.SerializeObject(result));};EditorApplication.playModeStateChanged+=handler;EditorApplication.isPlaying=false;return "Restoration scheduled atomically on EnteredEditMode";
 }
 public static string Capture(){var c=Client();if(!Application.isPlaying||c.Persist||c.SaveFolderOverride==null||!c.SaveFolderOverride.Contains("DegreeShadowV2"))throw new Exception("Isolated Play required");Directory.CreateDirectory(Dir+"/captures");c.StartCoroutine(Run(c));return "Recording actual native Grade 10 equipment, ground geometry and five-second rotation cycle";}
 static IEnumerator Run(GameClient c)
 {
  while(!c.ReadyForPlay)yield return null;c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Tutorial.SetCleared();foreach(var combat in UnityEngine.Object.FindObjectsByType<ForestCombatAcceptance>(FindObjectsInactive.Include,FindObjectsSortMode.None))combat.enabled=false;
  c.Inventory.AddRewardGun(50);int slot=Array.FindIndex(c.State.Owned_Gun_list,g=>g==50);if(slot<0)throw new Exception("Grade 10 equipment missing");c.Inventory.Equip(slot,0);yield return new WaitForSeconds(2);
  var p=c.Hero.transform.Find("Degree_FX/10/Z Degree FX/shadow").GetComponent<ParticleSystem>();var r=p.GetComponent<ParticleSystemRenderer>();
  if(!p.gameObject.activeInHierarchy||c.Hero.GunNum!=50||p.GetComponent<PenguinDegreeGroundRing>()==null||r.renderMode!=ParticleSystemRenderMode.Mesh)throw new Exception("Native Grade 10 ground ring not active");
  var records=new List<object>();float began=Time.time;
  for(int frame=0;frame<26;frame++)
  {
   yield return new WaitForSeconds(.2f);yield return new WaitForEndOfFrame();
   if(!p.gameObject.activeInHierarchy)throw new Exception("Ring hidden during capture");
   var mesh=new Mesh();r.BakeMesh(mesh,Camera.main,false);var vertices=mesh.vertices;var normals=new List<Vector3>();
   foreach(var index in Enumerable.Range(0,mesh.triangles.Length/3)){var t=mesh.triangles;Vector3 a=vertices[t[index*3]],b=vertices[t[index*3+1]],v=vertices[t[index*3+2]];if(Vector3.Cross(b-a,v-a).sqrMagnitude>.000001f)normals.Add(Vector3.Cross(b-a,v-a).normalized);}
   UnityEngine.Object.Destroy(mesh);
   // BakeMesh uses renderer-relative coordinates; transform normals to world.
   float up=normals.Count==0?0:normals.Min(n=>Mathf.Abs(Vector3.Dot(r.transform.TransformDirection(n),Vector3.up)));
   if(p.particleCount>0&&up<.99f)throw new Exception("Ring plane tilted: "+up);
   records.Add(new{frame,time=Time.time-began,angle=p.transform.eulerAngles.y,normalUp=up,p.particleCount,active=p.gameObject.activeInHierarchy,offset=(p.transform.position-c.Hero.transform.position).ToString()});
   var shot=ScreenCapture.CaptureScreenshotAsTexture();try{File.WriteAllBytes(Dir+"/captures/shadow-"+frame.ToString("00")+".png",shot.EncodeToPNG());}finally{UnityEngine.Object.Destroy(shot);}
  }
  File.WriteAllText(Dir+"/verification.json",Newtonsoft.Json.JsonConvert.SerializeObject(new{source="Actual Game view with native inventory equip of gun 50 (Grade 10), scaled game time; combat progression held in isolated profile to keep the full rotation visible; 26 frames over a full turn",c.Hero.GunNum,c.SaveFolderOverride,records,complete=true},Newtonsoft.Json.Formatting.Indented));
 }
}
