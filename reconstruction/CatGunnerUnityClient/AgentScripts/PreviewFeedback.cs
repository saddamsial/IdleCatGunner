using System;
using System.IO;
using System.Collections;
using System.Linq;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using CatGunner.Recovery;
public static class PreviewFeedback
{
 public static string Run(){
  if(!Application.isPlaying || RecoveryForestClient.Instance==null)throw new Exception("Correct PlayMode required");
  var c=RecoveryForestClient.Instance;
  if(string.IsNullOrEmpty(c.SaveFolderOverride))throw new Exception("Isolated preview profile required");
  c.StartCoroutine(Capture(c));return "Capturing an actual Editor press and popup animation in isolated preview profile";
 }
 static IEnumerator Capture(RecoveryForestClient c){
  while(!c.ReadyForPlay)yield return null;
  c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;Time.timeScale=0;
  var canvas=c.Slider.GetComponentInParent<Canvas>();var button=canvas.transform.Find("SafeArea/Main_UI/Btn_list").GetComponentsInChildren<Button>(true).Single(b=>b.name=="Setting_Btn");
  var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
  Canvas.ForceUpdateCanvases();var rect=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));
  string folder=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../art/audio/penguin-feedback-v1/preview-final"));Directory.CreateDirectory(folder);int frame=0;
  mouse.Down=mouse.Up=mouse.Held=false;yield return null;
  for(int i=0;i<4;i++)yield return Shot(folder,frame++);
  mouse.Down=mouse.Held=true;yield return null;mouse.Down=false;
  for(int i=0;i<4;i++)yield return Shot(folder,frame++);
  mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;
  for(int i=0;i<18;i++)yield return Shot(folder,frame++);
  module.inputOverride=null;UnityEngine.Object.Destroy(mouse);Time.timeScale=1;
  File.WriteAllText(Path.Combine(folder,"complete.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{frames=frame,width=Screen.width,height=Screen.height,source="Actual Unity Editor GPU frames and EventSystem pointer input",profile=c.SaveFolderOverride,paused=true,scope="Setting menu button press and popup open; not a device capture",audio="Separate audition is synthesized concatenation, not runtime recording"}));
 }
 static IEnumerator Shot(string folder,int frame){
  yield return new WaitForEndOfFrame();var tex=ScreenCapture.CaptureScreenshotAsTexture();
  try{File.WriteAllBytes(Path.Combine(folder,frame.ToString("D3")+".png"),tex.EncodeToPNG());}finally{UnityEngine.Object.Destroy(tex);}
  yield return new WaitForSecondsRealtime(.04f);
 }
}
