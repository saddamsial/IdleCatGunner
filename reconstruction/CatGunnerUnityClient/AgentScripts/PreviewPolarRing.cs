using System;using System.Linq;using System.IO;using System.Collections;using UnityEngine;using CatGunner.Runtime;
public static class PreviewPolarRing
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/ring-v2/captures");
 public static string Capture(){var c=GameClient.Instance;if(!Application.isPlaying||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated preview required");Directory.CreateDirectory(Dir);c.StartCoroutine(Run(c));return "Recording native laser combat and GPU ring close-up.";}
 static IEnumerator Run(GameClient c)
 {
  while(!c.ReadyForPlay)yield return null;c.DailyLogin.AutoShow=false;c.Tutorial.SetCleared();c.DailyLogin.Close();if(c.Offline.offlinePanelUI!=null)c.Offline.offlinePanelUI.gameObject.SetActive(false);
  foreach(int gun in new[]{19,23}){c.Inventory.AddRewardGun(gun);c.Inventory.Equip(Array.FindIndex(c.State.Owned_Gun_list,g=>g==gun),gun==19?1:2);}c.ApplyBalance();yield return new WaitForSeconds(2);
  int originalTrees=c.Forest.TreeCount_Now;var originalWallet=c.State.Money.Value;
  int liveRings=0;
  for(int i=0;i<64;i++)
  {
   yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,"combat-"+i.ToString("00")+".png"));
   liveRings=Math.Max(liveRings,UnityEngine.Object.FindObjectsByType<ParticleSystem>().Count(p=>p.name.Contains("Ring")&&p.particleCount>0));
   yield return new WaitForSeconds(.045f);
  }
  var source=UnityEngine.Object.FindObjectsByType<Bullet>(FindObjectsInactive.Include).First().Skin_particles[19].GetComponentsInChildren<ParticleSystem>(true).First(p=>p.name=="Ring");
  var instance=UnityEngine.Object.Instantiate(source.gameObject);instance.name="Ring isolated GPU preview";instance.transform.SetParent(null);instance.transform.SetPositionAndRotation(Vector3.zero,Quaternion.identity);instance.transform.localScale=Vector3.one;instance.SetActive(true);instance.layer=31;
  var ring=instance.GetComponent<ParticleSystem>();ring.Stop(true,ParticleSystemStopBehavior.StopEmittingAndClear);var emission=ring.emission;emission.enabled=false;var main=ring.main;main.loop=false;main.startRotation=0;ring.Emit(1);
  var go=new GameObject("Ring preview GPU camera");var camera=go.AddComponent<Camera>();camera.enabled=false;camera.orthographic=true;camera.orthographicSize=source.main.startSize.constantMax*.75f;camera.nearClipPlane=.1f;camera.farClipPlane=100;camera.transform.position=new Vector3(0,0,-10);camera.cullingMask=1<<31;camera.backgroundColor=new Color(.10f,.21f,.29f);camera.clearFlags=CameraClearFlags.SolidColor;
  var rt=new RenderTexture(480,480,24,RenderTextureFormat.ARGB32);rt.Create();camera.targetTexture=rt;var texture=new Texture2D(480,480,TextureFormat.RGBA32,false);
  var particle=new ParticleSystem.Particle[1];var observation=new System.Collections.Generic.List<object>();
  try
  {
   // Explicit native simulation steps avoid editor disk I/O changing the captured age.
   for(int i=0;i<40;i++)
   {
    ring.Simulate(.025f,false,false,false);ring.GetParticles(particle);camera.Render();var old=RenderTexture.active;RenderTexture.active=rt;texture.ReadPixels(new Rect(0,0,480,480),0,0);texture.Apply();RenderTexture.active=old;File.WriteAllBytes(Path.Combine(Dir,"ring-"+i.ToString("00")+".png"),texture.EncodeToPNG());
    if(i%5==0)observation.Add(new{age=(i+1)*.025f,size=particle[0].GetCurrentSize(ring),rotation=particle[0].rotation,alpha=particle[0].GetCurrentColor(ring).a});
   }
  }
  finally{camera.targetTexture=null;rt.Release();UnityEngine.Object.Destroy(rt);UnityEngine.Object.Destroy(texture);UnityEngine.Object.Destroy(go);UnityEngine.Object.Destroy(instance);}
  File.WriteAllText(Path.Combine(Dir,"complete.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{save=c.SaveFolderOverride,source="Combat: actual Unity Game view; close-up: native particle clone GPU, deterministic age steps, same installed material and curves",fixture="Three native weapons 0/19/23 equipped only in isolated preview; no damage or fire-rate overrides",liveRings,originalTrees,finalTrees=c.Forest.TreeCount_Now,reward=c.State.Money.Value.CompareTo(originalWallet)>0,observation},Newtonsoft.Json.Formatting.Indented));
 }
}
