using System;using System.Linq;using System.IO;using System.Collections;using UnityEngine;using CatGunner.Runtime;
public static class PreviewPenguinFeedbackFinal
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/flat-catalogue/captures");
 public static string Capture(){var c=GameClient.Instance;if(!Application.isPlaying||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated Play required");c.StartCoroutine(Run(c));return "Capturing the active native tutorial pulse and final unobstructed main screen.";}
 static IEnumerator Run(GameClient c)
 {
  c.Tutorial.gameObject.SetActive(true);c.Tutorial.BeginTutorial();yield return new WaitForSeconds(.8f);
  for(int i=0;i<18;i++){yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,"guide-"+i.ToString("00")+".png"));yield return new WaitForSeconds(.06f);}
  bool visible=c.Tutorial.CatHand_Upgrade.activeInHierarchy;c.Tutorial.SetCleared();yield return new WaitForSeconds(.5f);yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,"02-main.png"));
  File.WriteAllText(Path.Combine(Dir,"feedback-complete.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{source="Actual Unity GPU frames: native Tutorial.BeginTutorial and existing TutorialPulse",fixture="Same isolated preview profile; tutorial reopened after menu review; natural earned money meets upgrade threshold; no real profile change",handVisible=visible,guideSprite=c.GetComponent<PenguinUiTheme>().Flipper.name},Newtonsoft.Json.Formatting.Indented));
 }
}
