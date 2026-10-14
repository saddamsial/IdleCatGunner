using System;using System.Linq;using System.IO;using System.Collections;using UnityEngine;using CatGunner.Runtime;
public static class PreviewPenguinFaces
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/full-reskin/expressions");
 public static string Capture(){var c=GameClient.Instance;if(!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated preview required");Directory.CreateDirectory(Dir);c.StartCoroutine(Run(c));return "Recording the actual animated game character through a temporary GPU preview camera.";}
 static IEnumerator Run(GameClient c)
 {
  ForestRuntimeAcceptance.IsGaming=false;c.Skins.Selected_num=0;c.State.Skin_Selected_num=0;
  foreach(var cat in c.Team.Cat_list){cat.enabled=false;var combat=cat.GetComponent<ForestCombatAcceptance>();if(combat!=null)combat.enabled=false;var move=cat.GetComponent<ForestMovementAcceptance>();if(move!=null)move.enabled=false;cat.rb.linearVelocity=Vector3.zero;cat.anim.SetBool("Walk",false);}
  yield return null;
  var motion=c.GetComponent<PenguinExpeditionTheme>().Avatar.GetComponent<PenguinBoneMotion>();var view=Camera.main;var b=motion.Renderer.bounds;
  var objects=c.Hero.GetComponentsInChildren<Renderer>(true).Select(r=>r.gameObject).Distinct().ToArray();var layers=objects.Select(g=>g.layer).ToArray();
  var go=new GameObject("Penguin face preview camera");var camera=go.AddComponent<Camera>();camera.enabled=false;camera.orthographic=true;camera.orthographicSize=(Mathf.Abs(view.transform.up.x)*b.size.x+Mathf.Abs(view.transform.up.y)*b.size.y+Mathf.Abs(view.transform.up.z)*b.size.z)*.62f;camera.nearClipPlane=.1f;camera.farClipPlane=200;camera.cullingMask=1<<31;camera.backgroundColor=new Color(.84f,.94f,.98f);camera.clearFlags=CameraClearFlags.SolidColor;
  camera.transform.SetPositionAndRotation(b.center-view.transform.forward*100,view.transform.rotation);
  var rt=new RenderTexture(480,480,24,RenderTextureFormat.ARGB32);rt.Create();camera.targetTexture=rt;var image=new Texture2D(480,480,TextureFormat.RGBA32,false);
  try{
   foreach(var obj in objects)obj.layer=31;
   File.WriteAllText(Path.Combine(Dir,"crop.json"),"{\"x\":0,\"y\":0,\"width\":480,\"height\":480}");
   for(int i=0;i<54;i++){yield return new WaitForEndOfFrame();camera.Render();var old=RenderTexture.active;RenderTexture.active=rt;image.ReadPixels(new Rect(0,0,480,480),0,0);image.Apply();RenderTexture.active=old;File.WriteAllBytes(Path.Combine(Dir,"face-"+i.ToString("00")+".png"),image.EncodeToPNG());yield return new WaitForSeconds(.075f);}
   File.WriteAllText(Path.Combine(Dir,"complete.json"),"{\"source\":\"Actual game character GPU frames; temporary isolated camera framing; same runtime mesh, shader and expression timeline; isolated save\"}");
  }finally{for(int i=0;i<objects.Length;i++)if(objects[i]!=null)objects[i].layer=layers[i];camera.targetTexture=null;rt.Release();UnityEngine.Object.Destroy(rt);UnityEngine.Object.Destroy(image);UnityEngine.Object.Destroy(go);}
 }
}
