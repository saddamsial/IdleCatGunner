using System;using System.IO;using System.Linq;using System.Collections;using System.Collections.Generic;
using UnityEngine;using UnityEngine.UI;using UnityEngine.EventSystems;using TMPro;using CatGunner.Runtime;
public static class AuditUiReadability
{
 static string Dir(string batch)=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/readability-v1/"+batch);
 static string PathOf(Transform t){string p=t.name;while(t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
 public static string Capture(string batch)
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||!Application.isPlaying)throw new Exception("Correct Play required");
  var c=GameClient.Instance;if(c.SaveFolderOverride==null||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated preview required");
  Directory.CreateDirectory(Dir(batch));c.StartCoroutine(Run(c,batch));return "Capturing all menus, modal templates and mission text continuity in isolated Play";
 }
 public static string KeyPages(string batch)
 {
  var c=GameClient.Instance;if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||!Application.isPlaying||c.SaveFolderOverride==null||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated correct Play required");
  Directory.CreateDirectory(Dir(batch));File.Delete(Path.Combine(Dir(batch),"complete.json"));c.StartCoroutine(RunKey(c,batch));return "Capturing representative pages at current target resolution";
 }
 static IEnumerator RunKey(GameClient c,string batch)
 {
  string dir=Dir(batch);while(!c.ReadyForPlay)yield return null;c.DailyLogin.AutoShow=false;c.DailyLogin.LastCheck_Date=c.DailyLogin.LocalToday().Date;
  foreach(var popup in c.Slider.GetComponentInParent<Canvas>().GetComponentsInChildren<PenguinPopupFeedback>(true))if(popup.gameObject.activeSelf)popup.gameObject.SetActive(false);
  c.Missions.ResetSeason(true);c.State.Mission_TreeCount_Value=1585;c.State.Mission_StageClear_Value=13;c.State.Mission_Reward_Lv=2;c.State.Mission_Reward_Exp=45;c.MissionUI.UI_Reload();
  c.MissionUI.Panel_Close();c.DailyLogin.Close();c.Offline.offlinePanelUI.gameObject.SetActive(false);c.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;
  var canvas=c.Slider.GetComponentInParent<Canvas>();object passBounds=null;yield return Shot(dir,"main");
  foreach(string name in new[]{"Mission_Btn","Setting_Btn","Shop_Btn"})
  {
   var states=canvas.GetComponentsInChildren<Transform>(true).ToDictionary(t=>t.gameObject,t=>t.gameObject.activeSelf);
   canvas.transform.Find("SafeArea/Main_UI/Btn_list").GetComponentsInChildren<Button>(true).Single(b=>b.name==name).onClick.Invoke();
   yield return Shot(dir,name.Replace("_Btn","").ToLowerInvariant());if(name=="Mission_Btn")passBounds=Bounds(c.MissionUI.Mission_UI_Panel.transform.Find("Reward/Pass_Purchase_Btn") as RectTransform,canvas);foreach(var state in states)if(state.Key!=null&&state.Key.activeSelf!=state.Value)state.Key.SetActive(state.Value);
  }
  yield return Show(canvas,c.Offline.offlinePanelUI.transform,dir,"offline");
  File.WriteAllText(Path.Combine(dir,"complete.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{width=Screen.width,height=Screen.height,passBounds,profile=c.SaveFolderOverride,source="Actual Editor Game view GPU frames; isolated profile; main/mission/setting/shop/offline"},Newtonsoft.Json.Formatting.Indented));
 }
 static object Bounds(RectTransform rect,Canvas canvas)
 {
  var corners=new Vector3[4];rect.GetWorldCorners(corners);var camera=canvas.renderMode==RenderMode.ScreenSpaceOverlay?null:canvas.worldCamera;
  var points=corners.Select(p=>RectTransformUtility.WorldToScreenPoint(camera,p)).ToArray();float min=points.Min(p=>p.x),max=points.Max(p=>p.x);
  return new{minX=min,maxX=max,insideViewport=min>=0&&max<=Screen.width};
 }
 static IEnumerator Shot(string dir,string name,float wait=.4f){yield return new WaitForSecondsRealtime(wait);yield return new WaitForEndOfFrame();var tex=ScreenCapture.CaptureScreenshotAsTexture();try{File.WriteAllBytes(Path.Combine(dir,name+".png"),tex.EncodeToPNG());}finally{UnityEngine.Object.Destroy(tex);}}
 static object GraphicRow(Graphic g)=>new{path=PathOf(g.transform),type=g.GetType().Name,color=ColorUtility.ToHtmlStringRGBA(g.color),sprite=g is Image im?(im.sprite!=null?im.sprite.name:null):g is SlicedFilledImage sf?(sf.sprite!=null?sf.sprite.name:null):null,text=g is TMP_Text txt?txt.text:null,material=g is TMP_Text t?(t.fontSharedMaterial!=null?t.fontSharedMaterial.name:null):null,outline=g is TMP_Text tm&&tm.fontSharedMaterial!=null?tm.fontSharedMaterial.GetFloat("_OutlineWidth"):0,active=g.isActiveAndEnabled};
 static IEnumerator Show(Canvas canvas,Transform page,string dir,string name){var states=new Dictionary<GameObject,bool>();for(var t=page;t!=canvas.transform;t=t.parent){states[t.gameObject]=t.gameObject.activeSelf;t.gameObject.SetActive(true);}yield return Shot(dir,name,.8f);foreach(var s in states)s.Key.SetActive(s.Value);}
 static IEnumerator Run(GameClient c,string batch)
 {
  string dir=Dir(batch);while(!c.ReadyForPlay)yield return null;Application.runInBackground=true;Time.timeScale=1;
  c.MissionUI.Panel_Close();c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;c.Offline.offlinePanelUI.gameObject.SetActive(false);c.Forest.Stage_Value_Max=400;c.ContentUnlock.Reload();
  var canvas=c.Slider.GetComponentInParent<Canvas>();var menu=canvas.transform.Find("SafeArea/Main_UI/Btn_list");var pages=new List<string>();
  yield return Shot(dir,"main");
  foreach(string name in new[]{"Setting_Btn","Shop_Btn","Gun_Btn","Skin_Btn","Pet_Btn ","Fish_Btn","Rebirth_Btn","Mission_Btn","Adventure_Btn","Raid_Btn","Boss_Btn","Mine_Btn","Monster_Btn","SpeedRun_Btn"})
  {
   var states=canvas.GetComponentsInChildren<Transform>(true).ToDictionary(t=>t.gameObject,t=>t.gameObject.activeSelf);
   menu.GetComponentsInChildren<Button>(true).Single(b=>b.name==name).onClick.Invoke();string file=name.Trim().Replace("_Btn","").ToLowerInvariant();yield return Shot(dir,file);pages.Add(file);
   if(name=="Mission_Btn")
   {
    c.State.Mission_TreeCount_Value=1585;c.State.Mission_StageClear_Value=13;c.State.Mission_Reward_Lv=2;c.State.Mission_Reward_Exp=45;c.MissionUI.UI_Reload();yield return Shot(dir,"mission-partial");
    File.WriteAllText(Path.Combine(dir,"mission-graphics.json"),Newtonsoft.Json.JsonConvert.SerializeObject(c.MissionUI.Mission_UI_Panel.GetComponentsInChildren<Graphic>(true).Select(GraphicRow),Newtonsoft.Json.Formatting.Indented));
    var samples=new List<object>();float end=Time.realtimeSinceStartup+3.2f;int frame=0;
    while(Time.realtimeSinceStartup<end){yield return new WaitForEndOfFrame();samples.Add(new{time=Time.realtimeSinceStartup,labels=c.MissionUI.Mission_Item_UI_List.Take(3).Select(r=>new{name=r.Name_txt.text,material=r.Name_txt.fontSharedMaterial.GetInstanceID(),color=ColorUtility.ToHtmlStringRGBA(r.Name_txt.color),vertices=r.Name_txt.textInfo.meshInfo[0].vertexCount,totalVertices=r.Name_txt.textInfo.meshInfo.Sum(m=>m.vertexCount)}).ToArray()});if(frame++%8==0)yield return Shot(dir,"mission-frame-"+frame.ToString("D3"),.001f);}
    File.WriteAllText(Path.Combine(dir,"mission-frames.json"),Newtonsoft.Json.JsonConvert.SerializeObject(samples,Newtonsoft.Json.Formatting.Indented));
   }
   foreach(var s in states)if(s.Key!=null&&s.Key.activeSelf!=s.Value)s.Key.SetActive(s.Value);yield return null;
  }
  c.DailyLogin.Open_Btn();yield return Shot(dir,"daily");c.DailyLogin.Close();c.WeeklyShop.Panel_Open();yield return Shot(dir,"weekly");c.WeeklyShop.Panel_Close();
  var popupPaths=canvas.GetComponentsInChildren<PenguinPopupFeedback>(true).Select(p=>PathOf(p.transform)).ToArray();
  foreach(var p in canvas.GetComponentsInChildren<PenguinPopupFeedback>(true))
  {if(p.name=="Mission_UI"||p.name.Contains("Panel_UI"))continue;yield return Show(canvas,p.transform,dir,"modal-"+Array.IndexOf(popupPaths,PathOf(p.transform)).ToString("D2")+"-"+p.name.Trim().Replace("/","_"));}
  foreach(var pair in new[]{new[]{"eco","SafeArea/Main_UI/EcoMode_Panel_UI"},new[]{"offline","SafeArea/Offline/Offline_Panel_UI"},new[]{"loading","SafeArea/Main_UI/Loading_UI"},new[]{"victory","Contents_UI/SpeedRun_UI/GameWin_obj"},new[]{"failure","Contents_UI/SpeedRun_UI/GameFail_obj"}}){var p=canvas.transform.Find(pair[1]);if(p!=null)yield return Show(canvas,p,dir,pair[0]);}
  File.WriteAllText(Path.Combine(dir,"graphics.json"),Newtonsoft.Json.JsonConvert.SerializeObject(canvas.GetComponentsInChildren<Graphic>(true).Select(GraphicRow),Newtonsoft.Json.Formatting.Indented));
  File.WriteAllText(Path.Combine(dir,"complete.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{pages,popupPaths,width=Screen.width,height=Screen.height,profile=c.SaveFolderOverride,source="Actual Editor GPU frames; menu callbacks; modal templates enabled solely for visual review; no purchases or ordinary profile writes"},Newtonsoft.Json.Formatting.Indented));
 }
}
