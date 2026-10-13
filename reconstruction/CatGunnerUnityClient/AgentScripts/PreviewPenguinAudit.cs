using System;using System.IO;using System.Linq;using System.Collections;using System.Collections.Generic;
using UnityEngine;using UnityEngine.UI;using CatGunner.Recovery;
public static class PreviewPenguinAudit
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/flat-catalogue/captures");
 public static string Capture(){var c=RecoveryForestClient.Instance;if(!Application.isPlaying||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated preview required");Directory.CreateDirectory(Dir);c.StartCoroutine(Run(c));return "Capturing real tutorial, stats, blue gems, original rings, all menus and secondary modes.";}
 static IEnumerator Shot(string name,float wait=.30f){yield return new WaitForSecondsRealtime(wait);yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,name+".png"));yield return null;}
 static IEnumerator WaitReady(Func<bool> entering){float until=Time.realtimeSinceStartup+10;while(entering()&&Time.realtimeSinceStartup<until)yield return null;ForestRuntimeAcceptance.IsGaming=false;foreach(var c in RecoveryForestClient.Instance.Team.Cat_list)c.rb.linearVelocity=Vector3.zero;}
 static IEnumerator Run(RecoveryForestClient c)
 {
  while(!c.ReadyForPlay||c.IsTransitioning)yield return null;c.DailyLogin.AutoShow=false;c.DailyLogin.Close();if(c.Offline.offlinePanelUI!=null)c.Offline.offlinePanelUI.gameObject.SetActive(false);
  yield return new WaitForSeconds(1.2f);yield return Shot("01-guide");
  c.Tutorial.SetCleared();c.Forest.Stage_Value_Max=400;c.ContentUnlock.Reload();c.AwardDiamonds(250);
  c.Inventory.AddRewardGun(19);c.Inventory.Equip(Array.FindIndex(c.State.Owned_Gun_list,g=>g==19),1);c.ApplyBalance();yield return Shot("02-main",3f);
  for(int i=0;i<42;i++){yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,"combat-"+i.ToString("00")+".png"));yield return new WaitForSeconds(.045f);}
  var canvas=c.Slider.GetComponentInParent<Canvas>();
  var root=canvas.transform.Find("SafeArea/Main_UI/Btn_list");var pages=new List<string>();
  foreach(var name in new[]{"Setting_Btn","Shop_Btn","Gun_Btn","Skin_Btn","Pet_Btn ","Fish_Btn","Rebirth_Btn","Mission_Btn","Adventure_Btn","Raid_Btn","Boss_Btn","Mine_Btn","Monster_Btn","SpeedRun_Btn"})
  {
   var states=canvas.GetComponentsInChildren<Transform>(true).ToDictionary(t=>t.gameObject,t=>t.gameObject.activeSelf);root.GetComponentsInChildren<Button>(true).First(b=>b.name==name).onClick.Invoke();
   string file=name.Trim().Replace("_Btn","").ToLowerInvariant();yield return Shot(file,.40f);pages.Add(file);
   if(name=="Raid_Btn")
   {
    var raw=canvas.GetComponentsInChildren<RawImage>(true).First(r=>r.name=="Prism");var ancestors=new List<GameObject>();var active=new List<bool>();
    for(var t=raw.transform;t!=canvas.transform;t=t.parent){ancestors.Add(t.gameObject);active.Add(t.gameObject.activeSelf);t.gameObject.SetActive(true);}yield return Shot("raid-weakness");for(int i=0;i<ancestors.Count;i++)ancestors[i].SetActive(active[i]);
   }
   foreach(var p in states)if(p.Key!=null&&p.Key.activeSelf!=p.Value)p.Key.SetActive(p.Value);yield return null;
  }
  c.DailyLogin.Open_Btn();yield return Shot("daily");c.DailyLogin.Close();c.WeeklyShop.Panel_Open();yield return Shot("weekly");c.WeeklyShop.Panel_Close();
  c.SpeedRun.Game_Enter();yield return WaitReady(()=>c.SpeedRun.Entering);yield return Shot("03-speedrun",.15f);c.SpeedRun.Game_Exit();yield return new WaitForSeconds(2.3f);
  c.MineMode.Game_Enter();yield return WaitReady(()=>c.MineMode.Entering);yield return Shot("04-mine",.15f);c.MineMode.Game_Exit();yield return new WaitForSeconds(2.3f);
  c.MonsterMode.Game_Enter();yield return WaitReady(()=>c.MonsterMode.Entering);yield return Shot("05-hunt",.25f);c.MonsterMode.Game_Exit();yield return new WaitForSeconds(2.4f);
  c.BossMode.Stage_Now=270;c.BossMode.Game_Enter();yield return new WaitForSeconds(2.2f);ForestRuntimeAcceptance.IsGaming=false;yield return Shot("06-boss",.2f);c.BossMode.Game_Exit();yield return new WaitForSeconds(2.4f);
  File.WriteAllText(Path.Combine(Dir,"complete.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{save=c.SaveFolderOverride,source="Actual Unity Editor Game view GPU frames",pages,fixture="Isolated profile: menu gates opened, 250 blue diamonds for UI visibility, native gun 19 equipped; no normal save writes. Native mode entry/exit; Gaming paused after entry only to frame map appearance. One raid weakness decorative view shown for atlas inspection.",width=Screen.width,height=Screen.height,ringStyle="Original native particle atlas, mesh, rotation and tint restored",spriteBindings=c.GetComponent<PenguinFullReskin>().Sources.Length},Newtonsoft.Json.Formatting.Indented));
 }
}
