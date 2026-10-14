using System;using System.IO;using System.Collections;using System.Collections.Generic;using System.Linq;
using UnityEngine;using UnityEngine.UI;using CatGunner.Runtime;
public static class PreviewPenguinFull
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/full-reskin/captures");
 public static string Capture(){var c=GameClient.Instance;if(!Application.isPlaying||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated Play preview required");Directory.CreateDirectory(Dir);c.StartCoroutine(Run(c));return "Capturing actual team, all inventories, weekly store, 9 bosses and 5 raid bosses in isolated fixture.";}
 static IEnumerator Shot(string name,float wait=.35f){yield return new WaitForSeconds(wait);yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,name+".png"));yield return null;}
 static IEnumerator Run(GameClient c)
 {
  while(!c.ReadyForPlay)yield return null;c.DailyLogin.AutoShow=false;c.Tutorial.SetCleared();c.DailyLogin.Close();c.Forest.Stage_Value_Max=400;c.ContentUnlock.Reload();
  c.Inventory.AddRewardGun(5);c.Inventory.Equip(c.Inventory.FirstEmpty==0?0:Array.FindIndex(c.State.Owned_Gun_list,g=>g==5),1);
  c.Inventory.AddRewardGun(10);c.Inventory.Equip(Array.FindIndex(c.State.Owned_Gun_list,g=>g==10),2);
  c.State.PetCoin=300;for(int i=0;i<3;i++){c.Pets.Draw();int n=Array.FindIndex(c.State.Owned_Pet_list,p=>p>=0);c.State.Owned_Pet_list[n]=i*2;c.Pets.Equip(n,i);}
  c.ApplyBalance();yield return new WaitForSeconds(3.5f);yield return Shot("01-team");
  for(int i=0;i<38;i++){yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,"combat-"+i.ToString("00")+".png"));yield return new WaitForSeconds(.06f);}
  var canvas=c.Slider.GetComponentInParent<Canvas>();
  foreach(var name in new[]{"Skin_Btn","Gun_Btn","Pet_Btn ","Fish_Btn","Shop_Btn","Rebirth_Btn","Adventure_Btn","Mine_Btn","Boss_Btn","Raid_Btn","Setting_Btn"})
  {
   var states=canvas.GetComponentsInChildren<Transform>(true).ToDictionary(t=>t.gameObject,t=>t.gameObject.activeSelf);
   if(name=="Fish_Btn"){for(int i=0;i<13;i++)if(!c.State.FishInventory.Contains(i))c.State.FishInventory.Add(i);}
   canvas.transform.Find("SafeArea/Main_UI/Btn_list").GetComponentsInChildren<Button>(true).First(b=>b.name==name).onClick.Invoke();yield return Shot(name.Trim().Replace("_Btn","").ToLowerInvariant(),.6f);
   if(name=="Skin_Btn")for(int i=0;i<25;i++){c.Skins.skin_info_ui.Reload(i);yield return Shot("skin-detail-"+i.ToString("00"),.08f);}
   foreach(var p in states)if(p.Key!=null&&p.Key.activeSelf!=p.Value)p.Key.SetActive(p.Value);yield return null;
  }
  c.WeeklyShop.Panel_Open();yield return Shot("weekly-shop",.5f);c.WeeklyShop.Panel_Close();
  c.Skins.Selected_num=5;c.State.Skin_Selected_num=5;c.Team.Skin_Reload();yield return Shot("team-explorer",.3f);
  c.BossMode.Stage_Now=270;c.BossMode.Game_Enter();yield return new WaitForSeconds(2.3f);ForestRuntimeAcceptance.IsGaming=false;
  for(int i=0;i<9;i++){c.BossMode.Stage_Now=270+i;c.BossMode._boss.Spawn();yield return Shot("boss-"+i.ToString("00"),.18f);}
  c.BossMode.Game_Exit();yield return new WaitForSeconds(2.5f);
  c.RaidMode.Gun_Auto_Select();c.RaidMode.Game_Enter_Normal();yield return new WaitForSeconds(2.3f);ForestRuntimeAcceptance.IsGaming=false;
  for(int i=0;i<5;i++){c.RaidMode._boss.Spawn(c.RaidMode.Health_Balance[0],i);yield return Shot("raid-"+i.ToString("00"),.18f);}
  c.RaidMode.Game_Exit();yield return new WaitForSeconds(2.3f);
  var full=c.GetComponent<PenguinFullReskin>();
  File.WriteAllText(Path.Combine(Dir,"observation.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{width=Screen.width,height=Screen.height,full.ReplacedImageCount,full.ReplacedRendererCount,full.StyledParticleCount,expressions=full.Expressions.Count,save=c.SaveFolderOverride,fixture="isolated preview: native inventory equips three guns/pets; menu unlock; fish catalogue; Boss.Spawn/Raid.Spawn for all variants; no ordinary profile changes",source="Actual Unity Game view GPU screenshots"},Newtonsoft.Json.Formatting.Indented));
 }
}
