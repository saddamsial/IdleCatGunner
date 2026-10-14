using System;using System.IO;using System.Linq;using System.Collections;using System.Collections.Generic;using UnityEngine;using CatGunner.Runtime;
public static class PreviewPenguinSmoothWin
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/grip-expression-v2/captures");
 public static string Capture(){var c=GameClient.Instance;if(!Application.isPlaying||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated preview required");c.StartCoroutine(Run(c));return "Capturing small actual GPU crops at higher frame rate, including neutral pose, full three hops and return.";}
 static void Frame(GameClient c,int i,List<object> rows)
 {
  var full=ScreenCapture.CaptureScreenshotAsTexture();var root=Camera.main.WorldToScreenPoint(c.Hero.transform.position);
  int w=500,h=420,x=Mathf.Clamp(Mathf.RoundToInt(root.x-w*.5f),0,full.width-w),y=Mathf.Clamp(Mathf.RoundToInt(root.y-130),0,full.height-h);
  var crop=new Texture2D(w,h,TextureFormat.RGB24,false);crop.SetPixels(full.GetPixels(x,y,w,h));crop.Apply();File.WriteAllBytes(Path.Combine(Dir,"win-smooth-"+i.ToString("00")+".png"),crop.EncodeToPNG());UnityEngine.Object.Destroy(full);UnityEngine.Object.Destroy(crop);
  var m=c.Hero.GetComponentInChildren<PenguinBoneMotion>();rows.Add(new{index=i,time=Time.realtimeSinceStartup,jump=m.JumpAmount,happy=m.VictoryStrength,gun=c.Hero.GetComponentInChildren<PenguinHoldingWing>().Weapon.enabled});
 }
 static IEnumerator Run(GameClient c)
 {
  while(!c.ReadyForPlay)yield return null;c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Tutorial.SetCleared();foreach(int id in new[]{5,10})c.Inventory.AddRewardGun(id);c.Inventory.Equip(Array.FindIndex(c.State.Owned_Gun_list,g=>g==5),1);c.Inventory.Equip(Array.FindIndex(c.State.Owned_Gun_list,g=>g==10),2);c.ApplyBalance();
  var canvases=c.gameObject.scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Canvas>(true)).ToArray();var enabled=canvases.Select(v=>v.enabled).ToArray();foreach(var v in canvases)v.enabled=false;
  var m=c.Hero.GetComponentInChildren<PenguinBoneMotion>();while(c.IsTransitioning||!c.ReadyForPlay||c.WinUI.activeInHierarchy||m.VictoryStrength>0)yield return null;
  for(int i=0;i<4;i++)yield return null;var frames=new List<object>();ForestRuntimeAcceptance.IsGaming=false;yield return new WaitForSeconds(2f);
  for(int i=0;i<4;i++){yield return new WaitForEndOfFrame();Frame(c,i,frames);yield return null;}
  c.Forest.Stage_Value_Max=c.Forest.Stage_Now*10+c.Forest.Level_Now;ForestRuntimeAcceptance.IsGaming=true;c.GameWin();var cg=c.WinUI.GetComponent<CanvasGroup>();if(cg==null)cg=c.WinUI.AddComponent<CanvasGroup>();float alpha=cg.alpha;cg.alpha=0;int neutral=0;
  for(int i=4;i<90;i++){yield return new WaitForEndOfFrame();Frame(c,i,frames);if(i>6&&m.VictoryStrength==0)neutral++;if(neutral>=5)break;yield return null;}
  cg.alpha=alpha;for(int i=0;i<canvases.Length;i++)if(canvases[i]!=null)canvases[i].enabled=enabled[i];File.WriteAllText(Path.Combine(Dir,"smooth-win.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{source="Actual Unity GPU pixels, crop only",fixture="Independent preview profile. Native combat paused for two seconds to let previous flashes fade, then native GameWin; UI canvases hidden only during closeup recording, with native GameObject activation unchanged; four neutral frames and five landing frames retained. No pose interpolation or painted animation frames.",frames},Newtonsoft.Json.Formatting.Indented));
 }
}
