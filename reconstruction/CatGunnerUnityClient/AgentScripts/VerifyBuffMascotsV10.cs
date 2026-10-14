using System;using System.IO;using System.Linq;using System.Collections;using System.Collections.Generic;
using UnityEngine;using UnityEngine.UI;using CatGunner.Runtime;
public static class VerifyBuffMascotsV10
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/buff-mascots-v10/"+UnityEditor.SessionState.GetString("BuffMascotsV10.Phase","before"));
 static Rect Bounds(RectTransform r){var v=new Vector3[4];r.GetWorldCorners(v);return Rect.MinMaxRect(v.Min(p=>p.x),v.Min(p=>p.y),v.Max(p=>p.x),v.Max(p=>p.y));}
 public static string Main(){var c=GameClient.Instance;if(!Application.isPlaying||c==null||c.SaveFolderOverride==null||!c.SaveFolderOverride.Contains("PenguinPreview"))throw new Exception("Isolated Play required");Directory.CreateDirectory(Dir);c.StartCoroutine(Run(c));return "Checking actual draw order, animated bounds, size parity and paused-time motion";}
 static IEnumerator Shot(string name){yield return new WaitForEndOfFrame();var t=ScreenCapture.CaptureScreenshotAsTexture();try{File.WriteAllBytes(Dir+"/"+name+".png",t.EncodeToPNG());}finally{UnityEngine.Object.Destroy(t);}}
 static IEnumerator Run(GameClient c)
 {
  while(!c.ReadyForPlay)yield return null;c.Persist=false;Time.timeScale=1;ForestRuntimeAcceptance.IsGaming=false;c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Tutorial.SetCleared();c.Offline.offlinePanelUI.gameObject.SetActive(false);c.MissionUI.Panel_Close();c.GetComponent<Language>().PersistSelection=false;c.GetComponent<Language>().Select("zh-CN");
  c.Buffs.LoadBuffTimes(300,300,300);foreach(var u in c.UpgradePanels)u.Reload();yield return null;Canvas.ForceUpdateCanvases();yield return Shot("buff-icons");
  var failures=new List<string>();var buff=c.UpgradePanels.Select(u=>{var graphics=u.GetComponentsInChildren<Graphic>(true).Where(g=>g.isActiveAndEnabled).ToArray();var icon=u.Buff_Icon_obj.GetComponent<Image>();int edge=graphics.OfType<PenguinPanelBorder>().Select(g=>g.depth).DefaultIfEmpty(-1).Max();bool top=icon.depth>edge;if(!top)failures.Add(u.name+": Buff icon drawn beneath border");return new{u.name,iconDepth=icon.depth,borderDepth=edge,top};}).ToArray();
  var rows=new List<object>();var sizes=new List<Vector2>();var sprites=new List<Sprite>();
  foreach(bool battle in new[]{false,true})
  {
   c.ShowLoading(!battle);if(Setting.is_eco!=battle)Setting.instance.EcoMode_Change();yield return new WaitForSecondsRealtime(.2f);var root=battle?Setting.instance.EcoPanel_obj:c.LoadingUI;var image=battle?Setting.instance.EcoCat_img:root.GetComponentsInChildren<Image>(true).Single(i=>i.name=="Penguin loading mascot");var text=root.GetComponentsInChildren<TMPro.TMP_Text>(true).Single(t=>t.name=="Loading_Txt");var samples=new List<object>();var positions=new List<Vector3>();var angles=new List<float>();float gap=float.MaxValue;
   Time.timeScale=0;
   for(int i=0;i<20;i++){yield return new WaitForSecondsRealtime(.07f);yield return new WaitForEndOfFrame();var a=Bounds(image.rectTransform);var b=Bounds(text.rectTransform);gap=Mathf.Min(gap,b.yMin-a.yMax);positions.Add(image.transform.localPosition);angles.Add(image.transform.localEulerAngles.z);samples.Add(new{position=image.transform.localPosition.ToString(),angle=image.transform.localEulerAngles.z,scale=image.transform.localScale.ToString(),gap=b.yMin-a.yMax});if(i==0||i==7||i==14)yield return Shot((battle?"battle":"walking")+"-"+i.ToString("D2"));}
   bool animated=positions.Any(p=>(p-positions[0]).sqrMagnitude>.01f)||angles.Any(a=>Mathf.Abs(Mathf.DeltaAngle(a,angles[0]))>.1f);if(!animated)failures.Add((battle?"battle":"walking")+": no animation while paused");if(gap<=0)failures.Add((battle?"battle":"walking")+": mascot overlaps text");sizes.Add(image.rectTransform.rect.size);sprites.Add(image.sprite);rows.Add(new{battle,size=image.rectTransform.rect.size.ToString(),sprite=image.sprite.name,gap,animated,samples});Time.timeScale=1;
  }
  if((sizes[0]-sizes[1]).magnitude>.01f)failures.Add("Mascot sizes differ");if(sprites[0]!=sprites[1])failures.Add("Mascot artwork differs");Setting.instance.EcoMode_Off();c.ShowLoading(false);c.Buffs.LoadBuffTimes(0,0,0);foreach(var u in c.UpgradePanels)u.Reload();
  File.WriteAllText(Dir+"/verification.json",Newtonsoft.Json.JsonConvert.SerializeObject(new{passed=failures.Count==0,failures,buff,mascots=rows,profile=c.SaveFolderOverride,c.Persist,width=Screen.width,height=Screen.height,scope="Actual Unity Editor GPU frames and rendered graphic depths; sample short buffs in an independent profile; animated bounds over 20 paused-time frames per screen."},Newtonsoft.Json.Formatting.Indented));
 }
}
