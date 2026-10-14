using System;using System.Linq;using UnityEngine;using UnityEditor;using CatGunner.Runtime;
public static class AuditUiLayeringFinal
{
 public static string Main()
 {
  if(Application.isPlaying)throw new Exception("EditMode required");
  var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);var cv=c.Slider.GetComponentInParent<Canvas>();var group=cv.GetComponent<CanvasGroup>();var input=new SerializedObject(c).FindProperty("startupUiInput").objectReferenceValue;
  var borders=cv.GetComponentsInChildren<PenguinPanelBorder>(true);var j=cv.GetComponentsInChildren<FloatingJoystick>(true).Single();var b=j.transform.Find("Background").GetComponent<UnityEngine.UI.Image>();var h=b.transform.Find("Handle").GetComponent<UnityEngine.UI.Image>();
  var loading=c.LoadingUI.GetComponent<Canvas>();var missing=cv.GetComponentsInChildren<Transform>(true).Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject));
  if(missing!=0||borders.Any(edge=>edge.transform.GetSiblingIndex()!=0)||loading.overrideSorting||c.LoadingUI.transform.GetSiblingIndex()!=0||group==null||input!=group||!group.interactable||!group.blocksRaycasts||!c.Persist||!string.IsNullOrEmpty(c.SaveFolderOverride)||!string.IsNullOrEmpty(SessionState.GetString("CatGunner.Recovery.TestHostFolder",string.Empty)))throw new Exception("Final authored scene/input cleanup check failed");
  return Newtonsoft.Json.JsonConvert.SerializeObject(new{scene=c.gameObject.scene.path,dirty=c.gameObject.scene.isDirty,missingScripts=missing,borderCount=borders.Length,allBordersFirst=true,joystickBackground=b.sprite.name,joystickHandle=h.sprite.name,loadingBehindHud=true,startupInputReferencePersisted=true,inputRestored=true,c.Persist,c.SaveFolderOverride,testHost=SessionState.GetString("CatGunner.Recovery.TestHostFolder",string.Empty)});
 }
}
