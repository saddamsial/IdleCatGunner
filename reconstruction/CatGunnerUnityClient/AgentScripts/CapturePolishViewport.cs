using System;using System.IO;using System.Collections;using System.Linq;using UnityEngine;using UnityEngine.UI;using CatGunner.Runtime;
public static class CapturePolishViewport
{
 public static string Main(string name)
 {
  var c=GameClient.Instance;if(!Application.isPlaying||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated preview required");c.StartCoroutine(Run(c,name));return "Capturing StepUp and weekly shop at "+name;
 }
 static IEnumerator Shot(string name){yield return new WaitForSecondsRealtime(.45f);yield return new WaitForEndOfFrame();var t=ScreenCapture.CaptureScreenshotAsTexture();try{File.WriteAllBytes(Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/polish-v4/captures/"+name+".png"),t.EncodeToPNG());}finally{UnityEngine.Object.Destroy(t);}}
 static IEnumerator Run(GameClient c,string name)
 {
  c.DailyLogin.Close();c.MissionUI.Panel_Close();c.Fish.Close();c.Skins.Skin_List_UI.SetActive(false);c.Tutorial.SetCleared();c.Offline.offlinePanelUI.gameObject.SetActive(false);ForestRuntimeAcceptance.IsGaming=false;
  c.LocalStore.StepUpOffer.Popup_Open("viewport");yield return Shot("stepup-"+name);c.LocalStore.StepUpOffer.popup.Close();c.WeeklyShop.Panel_Open();c.WeeklyShop.Menu_Open(WeeklyShop_Menu.Gun);yield return Shot("weekly-"+name);c.WeeklyShop.Panel_Close();
 }
}
