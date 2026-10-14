using System;using System.Linq;using UnityEngine;using UnityEngine.UI;using UnityEditor;using UnityEditor.SceneManagement;using CatGunner.Runtime;
public static class FixUiLayering
{
 public static string Main()
 {
  if(Application.isPlaying)throw new Exception("Edit mode required");
  var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
  if(c==null||c.gameObject.scene.path!="Assets/Game/Scenes/GameClient.unity")throw new Exception("GameClient required");
  var canvas=c.Slider.GetComponentInParent<Canvas>();
  var j=canvas.GetComponentsInChildren<FloatingJoystick>(true).Single();
  var circle=AssetDatabase.LoadAssetAtPath<Sprite>("Assets/Game/PenguinExtras/flat-ui-circle.asset");
  if(circle==null)throw new Exception("Existing circle sprite required");
  var background=j.transform.Find("Background").GetComponent<UnityEngine.UI.Image>();
  var handle=background.transform.Find("Handle").GetComponent<UnityEngine.UI.Image>();
  Undo.RecordObjects(new UnityEngine.Object[]{background,handle},"Make floating joystick circular");
  background.sprite=circle;background.type=UnityEngine.UI.Image.Type.Simple;background.preserveAspect=true;background.color=new Color32(25,66,91,180);
  handle.sprite=circle;handle.type=UnityEngine.UI.Image.Type.Simple;handle.preserveAspect=true;handle.color=new Color32(53,169,223,240);
  var fill=background.transform.Find("Ring fill");
  if(fill==null){var go=new GameObject("Ring fill",typeof(RectTransform),typeof(CanvasRenderer),typeof(UnityEngine.UI.Image));Undo.RegisterCreatedObjectUndo(go,"Add joystick ring fill");fill=go.transform;fill.SetParent(background.transform,false);go.layer=background.gameObject.layer;}
  var rt=(RectTransform)fill;rt.anchorMin=rt.anchorMax=rt.pivot=Vector2.one*.5f;rt.anchoredPosition=Vector2.zero;rt.sizeDelta=background.rectTransform.sizeDelta-Vector2.one*16;rt.SetAsFirstSibling();
  var image=fill.GetComponent<UnityEngine.UI.Image>();image.sprite=circle;image.type=UnityEngine.UI.Image.Type.Simple;image.color=new Color32(215,242,251,190);image.preserveAspect=true;image.raycastTarget=false;
  var borders=canvas.GetComponentsInChildren<PenguinPanelBorder>(true);
  foreach(var border in borders){Undo.RecordObject(border.transform.parent,"Lower panel border");border.transform.SetAsFirstSibling();EditorUtility.SetDirty(border.transform.parent);}
  var loading=c.LoadingUI.transform;Undo.RecordObject(loading.parent,"Loading behind HUD");loading.SetAsFirstSibling();
  var overlay=loading.GetComponent<Canvas>();Undo.RecordObject(overlay,"Use HUD sibling order");overlay.overrideSorting=false;overlay.sortingOrder=0;
  var so=new SerializedObject(overlay);so.FindProperty("m_OverrideSorting").boolValue=false;so.ApplyModifiedPropertiesWithoutUndo();
  foreach(var component in new Component[]{background,handle,image,rt,loading,overlay}){EditorUtility.SetDirty(component);if(PrefabUtility.IsPartOfPrefabInstance(component))PrefabUtility.RecordPrefabInstancePropertyModifications(component);}
  EditorSceneManager.MarkSceneDirty(c.gameObject.scene);if(!EditorSceneManager.SaveScene(c.gameObject.scene))throw new Exception("Scene save failed");
  return Newtonsoft.Json.JsonConvert.SerializeObject(new{saved=true,borderCount=borders.Length,allBordersFirst=borders.All(b=>b.transform.GetSiblingIndex()==0),loadingIndex=loading.GetSiblingIndex(),loadingInheritsHudOrder=!overlay.overrideSorting,joystickCircle=circle.name,backgroundDiameter=background.rectTransform.rect.width,handleDiameter=handle.rectTransform.rect.width});
 }
}
