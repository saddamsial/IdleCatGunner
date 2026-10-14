using System;using System.IO;using System.Linq;using System.Collections;using System.Collections.Generic;
using UnityEngine;using UnityEngine.UI;using UnityEngine.EventSystems;using CatGunner.Runtime;
public static class CaptureChallengeGuide
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/challenge-guide-v7");
 static readonly List<object> evidence=new List<object>();
 static void Check(bool value,string message){if(!value)throw new Exception(message);}
 public static string Main(){var c=GameClient.Instance;Check(Application.dataPath=="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"&&Application.isPlaying&&c!=null&&c.SaveFolderOverride!=null&&c.SaveFolderOverride.Contains("PenguinPreview"),"Isolated correct Play required");c.StartCoroutine(Run(c));return "Recording upright challenge guide and native entry/close clicks";}
 static IEnumerator Record(GameClient c,int from,int count,string phase,bool expectedActive)
 {
  var t=c.Tutorial;var p=t.CatHand_Challenge.GetComponentInChildren<PenguinGuidePointer>(true);Check(p!=null,"Challenge pointer missing");
  for(int i=from;i<from+count;i++)
  {
   yield return new WaitForSecondsRealtime(1f/12);yield return new WaitForEndOfFrame();
   Check(t.CatHand_Challenge.activeInHierarchy==expectedActive,"Wrong visibility in "+phase);
   var target=p.Target.TransformPoint(p.Target.rect.center+Vector2.up*p.Target.rect.height*.25f);var tip=p.Visual.rectTransform.position;
   var corners=new Vector3[4];p.Visual.rectTransform.GetWorldCorners(corners);
   if(expectedActive)Check(Vector3.Distance(tip,target)<.05f&&Vector3.Dot(p.Visual.rectTransform.up,Vector3.up)>.999f,"Upright fingertip alignment failed");
   Check(!p.Visual.raycastTarget,"Pointer intercepts input");
   var tex=ScreenCapture.CaptureScreenshotAsTexture();try{File.WriteAllBytes(Path.Combine(Dir,"frames","challenge-"+i.ToString("D3")+".png"),tex.EncodeToPNG());}finally{UnityEngine.Object.Destroy(tex);}
   evidence.Add(new{frame=i,phase,active=expectedActive,angle=p.Visual.rectTransform.eulerAngles.z,tip=RectTransformUtility.WorldToScreenPoint(null,tip).ToString(),tipError=Vector3.Distance(tip,target),height=Vector3.Distance(corners[0],corners[1]),step=t.CurrentStep.ToString(),mode=c.Mode});
  }
 }
 static IEnumerator Click(RectTransform target)
 {
  EventSystem.current.SendMessage("OnApplicationFocus",true);var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;Canvas.ForceUpdateCanvases();mouse.Position=RectTransformUtility.WorldToScreenPoint(null,target.TransformPoint(target.rect.center));yield return null;mouse.Down=mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;module.inputOverride=null;UnityEngine.Object.Destroy(mouse);
 }

 static IEnumerator Run(GameClient c)
 {
  while(!c.ReadyForPlay||!c.GetComponent<PenguinPlaytestPolish>().Ready)yield return null;
  Directory.CreateDirectory(Path.Combine(Dir,"frames"));Time.timeScale=1;ForestRuntimeAcceptance.IsGaming=false;
  c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Offline.offlinePanelUI.gameObject.SetActive(false);c.MissionUI.Panel_Close();
  c.GetComponent<Language>().PersistSelection=false;c.GetComponent<Language>().Select("zh-CN");
  c.State.Money=CurrencyAmount.FromValue(new DecimalAmount(10000));foreach(var panel in c.UpgradePanels)panel.Reload();
  Check(!c.Tutorial.CatHand_Challenge.activeSelf,"Guide must be hidden before unlock");
  for(int i=0;i<3;i++){yield return Click((RectTransform)c.UpgradePanels[0].transform);yield return new WaitForSecondsRealtime(.25f);Check(c.State.Upgrade_Lv[0]==i+1,"Upgrade input failed");if(i<2)Check(!c.Tutorial.CatHand_Challenge.activeSelf,"Challenge guide shown before unlock");}
  yield return new WaitForSecondsRealtime(.3f);Check(c.Tutorial.CurrentStep==TutorialStep.Challenge,"Challenge tutorial step missing");
  yield return Record(c,0,36,"prompt",true);
  yield return Click((RectTransform)c.Tutorial.ChallengeButton.transform);yield return new WaitForSecondsRealtime(.3f);Check(c.SpeedRun.Start_UI.gameObject.activeInHierarchy,"Challenge entry click did not open panel");
  yield return Record(c,36,8,"opened",false);
  var close=c.SpeedRun.Start_UI.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn");yield return Click((RectTransform)close.transform);yield return new WaitForSecondsRealtime(.3f);Check(!c.SpeedRun.Start_UI.gameObject.activeInHierarchy,"Native close click failed");
  yield return Record(c,44,16,"returned",true);
  yield return Click((RectTransform)c.Tutorial.ChallengeButton.transform);yield return new WaitForSecondsRealtime(.3f);
  var enter=c.SpeedRun.Start_UI.NonAuto_obj.GetComponentsInChildren<Button>().Single(b=>b.name=="Enter_Btn");yield return Click((RectTransform)enter.transform);yield return new WaitForSecondsRealtime(2);Check(c.Mode==1&&!c.Tutorial.CatHand_Challenge.activeSelf,"Guide must hide during challenge battle");
  c.SpeedRun.Game_Exit();yield return new WaitForSecondsRealtime(2.2f);Check(c.Mode==0&&c.Tutorial.CatHand_Challenge.activeInHierarchy,"Unfinished challenge must prompt again on return");
  c.Tutorial.SetCleared();Check(!c.Tutorial.CatHand_Challenge.activeSelf,"Cleared tutorial left challenge cue active");
  File.WriteAllText(Path.Combine(Dir,"evidence.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{profile=c.SaveFolderOverride,persist=c.Persist,frames=evidence,preUnlockHidden=true,unlockAtAttackLevel=3,entryClicked=true,panelHides=true,closeClicked=true,closeRestores=true,battleHides=true,unfinishedReturnRestores=true,completionHides=true,scope="Actual Editor GPU frames and native StandaloneInputModule down/up with test-only focus notification. Independent save with a sample wallet; no challenge completion or entitlement injection."},Newtonsoft.Json.Formatting.Indented));
 }
}
