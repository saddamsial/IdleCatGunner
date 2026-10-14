using System;using System.Linq;using UnityEditor;using UnityEditor.SceneManagement;using UnityEngine;using UnityEngine.UI;using CatGunner.Runtime;
public static class FinalizeUiAuthoring
{
 public static object Main()
 {
  if(Application.isPlaying)throw new Exception("EditMode required");
  var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);var canvas=c.Slider.GetComponentInParent<Canvas>();
  var viewport=c.GetComponent<MobileViewport>()??c.gameObject.AddComponent<MobileViewport>();viewport.BakeStaticLayout((RectTransform)UiAuthoring.Find(canvas.transform,"SafeArea"));
  foreach(string path in new[]{"SafeArea/Main_UI/Btn_list/Left_Menu/Shop_Btn","SafeArea/Gun_UI  (SafeArea)/GunList_UI/Panel/Menu (Gun List)/Info_Btn","SafeArea/Gun_UI  (SafeArea)/GunList_UI/Panel/Menu (Gun List)/Collection_Btn"})
  {
   var node=UiAuthoring.Find(canvas.transform,path);var button=node!=null?node.GetComponent<Button>():null;
   if(button==null)button=canvas.GetComponentsInChildren<Button>(true).Single(b=>b.name==path.Split('/').Last());
   for(int i=0;i<button.onClick.GetPersistentEventCount();i++)button.onClick.SetPersistentListenerState(i,UnityEngine.Events.UnityEventCallState.Off);
  }
  UiAuthoringEditor.CaptureSorting();
  foreach(var component in canvas.GetComponentsInChildren<Component>(true))if(component!=null){EditorUtility.SetDirty(component);if(PrefabUtility.IsPartOfPrefabInstance(component))PrefabUtility.RecordPrefabInstancePropertyModifications(component);}
  EditorUtility.SetDirty(viewport);AssetDatabase.SaveAssets();EditorSceneManager.MarkSceneDirty(c.gameObject.scene);EditorSceneManager.SaveScene(c.gameObject.scene);
  return new{saved=true,viewport=viewport.StaticUiBaked,nodes=canvas.GetComponentsInChildren<Transform>(true).Length,materials=AssetDatabase.FindAssets("t:Material",new[]{"Assets/Game/AuthoredUI"}).Length};
 }
}
