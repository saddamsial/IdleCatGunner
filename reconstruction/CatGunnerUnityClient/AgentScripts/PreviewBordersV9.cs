using System;using System.IO;using System.Linq;using System.Collections;using UnityEngine;using UnityEngine.UI;using CatGunner.Runtime;
public static class PreviewBordersV9
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/borders-guide-v9");
 public static string Main(){var c=GameClient.Instance;if(!Application.isPlaying||c==null||c.SaveFolderOverride==null||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Independent Play required");c.StartCoroutine(Run(c));return "Recording scoped border and left-up guide preview";}
 static IEnumerator Shot(string n){yield return new WaitForSecondsRealtime(.25f);yield return new WaitForEndOfFrame();var t=ScreenCapture.CaptureScreenshotAsTexture();try{File.WriteAllBytes(Dir+"/"+n+".png",t.EncodeToPNG());}finally{UnityEngine.Object.Destroy(t);}}
 static IEnumerator Run(GameClient c)
 {
  while(!c.ReadyForPlay||!c.GetComponent<PenguinPlaytestPolish>().Ready)yield return null;
  c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Offline.offlinePanelUI.gameObject.SetActive(false);c.MissionUI.Panel_Close();ForestRuntimeAcceptance.IsGaming=false;
  c.GetComponent<Language>().PersistSelection=false;c.GetComponent<Language>().Select("zh-CN");c.Tutorial.SetCleared();c.Forest.Stage_Value_Max=400;c.ContentUnlock.Reload();
  yield return Shot("main-borders");
  var cv=c.Slider.GetComponentInParent<Canvas>();var frames=cv.GetComponentsInChildren<PenguinPanelBorder>(true);
  if(frames.Length<14||frames.Any(x=>x.raycastTarget))throw new Exception("Border coverage or input failure");
  var wallet=cv.transform.Find("SafeArea/Main_UI/Currency");if(wallet==null||wallet.GetComponentsInChildren<PenguinPanelBorder>(true).Length<2)throw new Exception("Wallet frame missing");
  c.State.Money=CurrencyAmount.FromValue(new DecimalAmount(10000));foreach(var u in c.UpgradePanels)u.Reload();
  c.Tutorial.gameObject.SetActive(true);c.Tutorial.BeginTutorial();yield return new WaitForSecondsRealtime(.3f);yield return Shot("guide-left-up");
  var pointers=c.Tutorial.GetComponentsInChildren<PenguinGuidePointer>(true);
  foreach(var p in pointers){float expected=p.Target.gameObject==c.Tutorial.ChallengeButton?0:45;if(Mathf.Abs(Mathf.DeltaAngle(p.Visual.rectTransform.eulerAngles.z,expected))>.01f)throw new Exception("Unexpected guide direction "+p.Target.name);}
  c.Tutorial.SetCleared();c.Guns.gunItemList.gameObject.SetActive(true);c.Guns.ReloadGunUI();yield return Shot("weapon-borders");c.Guns.gunItemList.gameObject.SetActive(false);
  c.MissionUI.Panel_Open();yield return Shot("mission-borders");c.MissionUI.Panel_Close();
  File.WriteAllText(Dir+"/verification.json",Newtonsoft.Json.JsonConvert.SerializeObject(new{profile=c.SaveFolderOverride,persist=c.Persist,borderCount=frames.Length,nonRaycast=frames.All(x=>!x.raycastTarget),ignoredLayout=frames.All(x=>x.GetComponent<LayoutElement>().ignoreLayout),walletFrames=wallet.GetComponentsInChildren<PenguinPanelBorder>(true).Length,guides=pointers.Select(p=>new{target=p.Target.name,angle=p.Visual.rectTransform.eulerAngles.z}).ToArray(),scope="Actual Editor frames; independent preview wallet and unlock stage. No gameplay/progression rule, scene, UI texture or sound edits."},Newtonsoft.Json.Formatting.Indented));
 }
}
