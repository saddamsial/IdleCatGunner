using System;using System.IO;using System.Linq;using System.Collections;using System.Collections.Generic;
using UnityEngine;using UnityEngine.UI;using UnityEngine.EventSystems;using CatGunner.Runtime;
public static class VerifyPlaytestPolish
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/polish-v4/captures");
 public static string Main(){var c=GameClient.Instance;if(!Application.isPlaying||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated Play required");c.StartCoroutine(Run(c));return "Capturing updated mine ores, skin body sizes and complete movement cycles";}
 static IEnumerator Shot(string name,float wait=.2f){yield return new WaitForSecondsRealtime(wait);yield return new WaitForEndOfFrame();var t=ScreenCapture.CaptureScreenshotAsTexture();try{File.WriteAllBytes(Path.Combine(Dir,name+".png"),t.EncodeToPNG());}finally{UnityEngine.Object.Destroy(t);}}
 static IEnumerator Run(GameClient c)
 {
  while(!c.ReadyForPlay||!c.GetComponent<PenguinPlaytestPolish>().Ready)yield return null;c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Tutorial.SetCleared();c.Offline.offlinePanelUI.gameObject.SetActive(false);c.GetComponent<Language>().PersistSelection=false;c.GetComponent<Language>().Select("zh-CN");
  c.State.Dia=10000;c.Forest.Stage_Value_Max=400;c.ContentUnlock.Reload();c.State.Skin_Unlock=Enumerable.Repeat(true,25).ToArray();c.Skins.Skin_Unlock=c.State.Skin_Unlock;c.Skins.UI_Reload();yield return Shot("skin-body-uniform");c.Skins.Skin_List_UI.SetActive(false);
  var canvas=c.Slider.GetComponentInParent<Canvas>();var buttons=canvas.transform.Find("SafeArea/Main_UI/Btn_list").GetComponentsInChildren<Button>(true);
  c.State.FishInventory.Clear();for(int i=0;i<8;i++)c.State.FishInventory.Add(i);buttons.Single(b=>b.name=="Fish_Btn").onClick.Invoke();var fish=c.Fish.fishTank.GetComponentsInChildren<Fish_Item>().First(f=>f.isActive);
  var positions=new List<object>();for(int i=0;i<20;i++){yield return Shot("fish-cycle-"+i.ToString("D2"),.075f);positions.Add(new{frame=i,position=fish.GetPosition().ToString(),facing=fish.skinImage.transform.localEulerAngles.y,scale=Time.timeScale});}
  c.Fish.Close();buttons.Single(b=>b.name=="Fish_Btn").onClick.Invoke();c.Fish.Close();
  for(int i=0;i<3;i++)c.State.Pet_Selected_items[i]=i;c.ApplyBalance();c.GameStart();c.Hero.AutoMove=true;
  for(int i=0;i<20;i++)yield return Shot("pet-cycle-"+i.ToString("D2"),.075f);
  c.Hero.AutoMove=false;c.MineMode.Game_Enter();yield return new WaitForSecondsRealtime(3.5f);yield return Shot("mine-scene-final");c.MineMode.Game_End();yield return Shot("mine-settlement-final",1);c.MineMode.Game_Exit();yield return new WaitForSecondsRealtime(2.4f);ForestRuntimeAcceptance.IsGaming=false;
  File.WriteAllText(Path.Combine(Dir,"motion.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{profile=c.SaveFolderOverride,fish=positions,petMeshes=c.gameObject.scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<PenguinPetMotion>(true)).Select(m=>new{name=m.name,vertices=m.Mesh.vertexCount}).ToArray(),oreSprites=c.MineMode.Ore_sprites.Select(s=>s.name).ToArray(),source="Actual Editor GPU frames; native movement; isolated sample pet/fish catalogue"},Newtonsoft.Json.Formatting.Indented));
 }
}
