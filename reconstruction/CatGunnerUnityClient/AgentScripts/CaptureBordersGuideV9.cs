using System;using System.IO;using System.Linq;using System.Collections;using System.Collections.Generic;
using UnityEngine;using UnityEngine.UI;using UnityEngine.EventSystems;using CatGunner.Runtime;
public static class CaptureBordersGuideV9
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/borders-guide-v9/guide");
 static readonly List<object> evidence=new List<object>();
 public static string Main(){var c=GameClient.Instance;if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||!Application.isPlaying||c==null||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated correct Play required");c.StartCoroutine(Run(c));return "Recording original tutorial pulses, fingertip targets and real input responses";}
 static IEnumerator Frame(string name)
 {
  yield return new WaitForEndOfFrame();var tex=ScreenCapture.CaptureScreenshotAsTexture();try{File.WriteAllBytes(Path.Combine(Dir,"frames",name+".png"),tex.EncodeToPNG());}finally{UnityEngine.Object.Destroy(tex);}
 }
 static IEnumerator Record(GameObject hand,string name,int count=18)
 {
  var pointer=hand.GetComponentInChildren<PenguinGuidePointer>(true);if(pointer==null)throw new Exception("Missing guide pointer");
  for(int i=0;i<count;i++)
  {
   yield return new WaitForSecondsRealtime(1f/12);yield return Frame(name+"-"+i.ToString("D3"));
   var corners=new Vector3[4];pointer.Visual.rectTransform.GetWorldCorners(corners);
   var tip=RectTransformUtility.WorldToScreenPoint(null,pointer.Visual.rectTransform.position);var target=RectTransformUtility.WorldToScreenPoint(null,pointer.Target.TransformPoint(pointer.Target.rect.center+Vector2.up*pointer.Target.rect.height*.25f));
   var direction=pointer.Visual.rectTransform.up;var inside=pointer.Target.rect.Contains(pointer.Target.InverseTransformPoint(pointer.Visual.rectTransform.position));
   if(!hand.activeInHierarchy||Vector2.Distance(tip,target)>.05f||!inside||direction.y<.6f||direction.x>-.6f)throw new Exception("Diagonal fingertip alignment failed in "+name);
   var bounds=corners.Select(v=>RectTransformUtility.WorldToScreenPoint(null,v)).ToArray();
   evidence.Add(new{clip=name,frame=i,step=Tutorial_manager.instance.CurrentStep.ToString(),active=hand.activeInHierarchy,scale=hand.transform.localScale.ToString(),tip=tip.ToString(),target=target.ToString(),tipError=Vector2.Distance(tip,target),height=Vector3.Distance(corners[0],corners[1]),timeScale=Time.timeScale,angle=pointer.Visual.rectTransform.eulerAngles.z,direction=direction.ToString(),inside,minX=bounds.Min(v=>v.x),maxX=bounds.Max(v=>v.x),minY=bounds.Min(v=>v.y),maxY=bounds.Max(v=>v.y),screenWidth=Screen.width,screenHeight=Screen.height});
  }
 }
 static IEnumerator Click(RectTransform target)
 {
  EventSystem.current.SendMessage("OnApplicationFocus",true);var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;Canvas.ForceUpdateCanvases();mouse.Position=RectTransformUtility.WorldToScreenPoint(null,target.TransformPoint(target.rect.center));yield return null;mouse.Down=mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;module.inputOverride=null;UnityEngine.Object.Destroy(mouse);
 }
 static IEnumerator WaitStep(GameClient c,TutorialStep step)
 {
  float end=Time.realtimeSinceStartup+5;while(c.Tutorial.CurrentStep!=step&&Time.realtimeSinceStartup<end)yield return null;if(c.Tutorial.CurrentStep!=step)throw new Exception("Guide did not reach "+step+": "+c.Tutorial.CurrentStep);
  yield return new WaitForSecondsRealtime(.3f);
 }
 static IEnumerator Run(GameClient c)
 {
  while(!c.ReadyForPlay||!c.GetComponent<PenguinPlaytestPolish>().Ready)yield return null;
  Directory.CreateDirectory(Path.Combine(Dir,"frames"));Time.timeScale=1;ForestRuntimeAcceptance.IsGaming=false;
  c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Offline.offlinePanelUI.gameObject.SetActive(false);c.MissionUI.Panel_Close();c.GetComponent<Language>().PersistSelection=false;c.GetComponent<Language>().Select("zh-CN");
  c.State.Money=CurrencyAmount.FromValue(new DecimalAmount(10000));c.State.Dia=1000;foreach(var panel in c.UpgradePanels)panel.Reload();
  c.Tutorial.gameObject.SetActive(true);c.Tutorial.BeginTutorial();yield return WaitStep(c,TutorialStep.Upgrade);
  yield return Record(c.Tutorial.CatHand_Upgrade,"01-upgrade");int before=c.State.Upgrade_Lv[0];yield return Click((RectTransform)c.UpgradePanels[0].transform);for(int i=18;i<24;i++){yield return new WaitForSecondsRealtime(1f/12);yield return Frame("01-upgrade-"+i.ToString("D3"));}if(c.State.Upgrade_Lv[0]!=before+1)throw new Exception("Upgrade click not accepted");
  // Advance native predicates in the independent demo profile. The challenge itself
  // is omitted from this pointer-only recording, without a paid entitlement grant.
  int tries=0;while(c.State.Upgrade_Lv[0]<3){if(++tries>5)throw new Exception("Upgrade step did not advance");yield return Click((RectTransform)c.UpgradePanels[0].transform);yield return new WaitForSecondsRealtime(.2f);}c.SpeedRun.Stage_Now=1;
  yield return WaitStep(c,TutorialStep.GunOpen);yield return Record(c.Tutorial.CatHand_GunOpen,"02-weapon");yield return Click((RectTransform)c.Tutorial.GunButton.transform);for(int i=18;i<24;i++){yield return new WaitForSecondsRealtime(1f/12);yield return Frame("02-weapon-"+i.ToString("D3"));}
  yield return WaitStep(c,TutorialStep.GunBuy);yield return Record(c.Tutorial.CatHand_GunBuy,"03-draw");int owned=c.State.Owned_Gun_list.Count(g=>g>=0);yield return Click((RectTransform)c.Tutorial.GunBuyButton.transform);for(int i=18;i<26;i++){yield return new WaitForSecondsRealtime(1f/12);yield return Frame("03-draw-"+i.ToString("D3"));}if(c.State.Owned_Gun_list.Count(g=>g>=0)<=owned)throw new Exception("Draw click not accepted");
  File.WriteAllText(Path.Combine(Dir,"evidence.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{profile=c.SaveFolderOverride,persist=c.Persist,upgradeBefore=before,upgradeAfter=c.State.Upgrade_Lv[0],drawBefore=owned,drawAfter=c.State.Owned_Gun_list.Count(g=>g>=0),frames=evidence,scope="Real Editor Game view. Native pulse and tutorial polling; actual EventSystem down/up input with test-only focus notification for background Editor automation. Independent profile with sample wallet; challenge completion predicate advanced only to shorten this pointer demo."},Newtonsoft.Json.Formatting.Indented));
 }
}
