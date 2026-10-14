using System;using System.IO;using System.Linq;using System.Collections;using UnityEngine;using UnityEngine.EventSystems;using CatGunner.Runtime;
public static class VerifyUiLayeringPlay
{
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/ui-layering/20261014");
 public static string Main(){var c=GameClient.Instance;if(!Application.isPlaying||c==null||c.SaveFolderOverride==null||!c.SaveFolderOverride.Contains("UiLayeringPreview"))throw new Exception("Isolated PlayMode required");c.StartCoroutine(Run(c));return "Checking authored UI depths and joystick pointer events";}
 static IEnumerator Run(GameClient c)
 {
  while(!c.ReadyForPlay)yield return null;
  c.Tutorial.SetCleared();c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Offline.offlinePanelUI.gameObject.SetActive(false);
  var cv=c.Slider.GetComponentInParent<Canvas>();var borders=cv.GetComponentsInChildren<PenguinPanelBorder>(true);
  if(borders.Any(b=>b.transform.GetSiblingIndex()!=0||b.raycastTarget))throw new Exception("Borders must stay behind content and pass input");
  var j=cv.GetComponentsInChildren<FloatingJoystick>(true).Single();var b=j.transform.Find("Background").GetComponent<UnityEngine.UI.Image>();var h=b.transform.Find("Handle").GetComponent<UnityEngine.UI.Image>();
  if(b.sprite.name!="flat-ui-circle"||h.sprite.name!="flat-ui-circle")throw new Exception("Circle art was overwritten on startup");
  var cr=(RectTransform)cv.transform;var local=cr.rect.min+Vector2.Scale(cr.rect.size,new Vector2(.3f,.5f));
  var pointer=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,cr.TransformPoint(local))};
  ExecuteEvents.Execute(j.gameObject,pointer,ExecuteEvents.pointerDownHandler);if(!b.gameObject.activeSelf)throw new Exception("Joystick did not appear");
  var center=RectTransformUtility.WorldToScreenPoint(null,b.transform.position);pointer.position=center+Vector2.right*b.rectTransform.sizeDelta.x*cv.scaleFactor;
  ExecuteEvents.Execute(j.gameObject,pointer,ExecuteEvents.dragHandler);if(Mathf.Abs(j.Horizontal-1)>.001f||Mathf.Abs(j.Vertical)>.001f)throw new Exception("Joystick drag changed");
  yield return Shot("circular-joystick");
  ExecuteEvents.Execute(j.gameObject,pointer,ExecuteEvents.pointerUpHandler);if(b.gameObject.activeSelf||j.Direction!=Vector2.zero||h.rectTransform.anchoredPosition!=Vector2.zero)throw new Exception("Joystick release changed");
  c.ShowLoading(true);yield return null;Canvas.ForceUpdateCanvases();
  var lc=c.LoadingUI.GetComponent<Canvas>();var lg=c.LoadingUI.GetComponentsInChildren<UnityEngine.UI.Graphic>(true).Where(g=>g.isActiveAndEnabled).ToArray();
  var hud=c.UpgradePanels.SelectMany(u=>u.GetComponentsInChildren<UnityEngine.UI.Graphic>(true)).Where(g=>g.isActiveAndEnabled).ToArray();
  yield return Shot("loading-below-hud");
  int loadingDepth=lg.Max(g=>g.depth),hudDepth=hud.Min(g=>g.depth);
  if(loadingDepth<0||lc.overrideSorting||c.LoadingUI.transform.GetSiblingIndex()!=0||hud.Length==0||lg.Length==0||loadingDepth>=hudDepth)throw new Exception("Loading must render below HUD");
  c.ShowLoading(false);yield return null;
  File.WriteAllText(Dir+"/runtime-verification.json",Newtonsoft.Json.JsonConvert.SerializeObject(new{passed=true,isolatedSave=c.SaveFolderOverride,persist=c.Persist,borderCount=borders.Length,allBordersFirst=true,bordersPassInput=true,joystickCircular=true,pointerDownDragRelease=true,loadingBelowHud=true,loadingMaxDepth=loadingDepth,hudMinDepth=hudDepth,rootCanvasMode=cv.renderMode.ToString(),scope="Real Editor PlayMode; no device verification"},Newtonsoft.Json.Formatting.Indented));
 }
 static IEnumerator Shot(string name){yield return new WaitForSecondsRealtime(.15f);yield return new WaitForEndOfFrame();var t=ScreenCapture.CaptureScreenshotAsTexture();try{File.WriteAllBytes(Dir+"/"+name+".png",t.EncodeToPNG());}finally{UnityEngine.Object.Destroy(t);}}
}
