using System;using UnityEngine;using UnityEditor;using UnityEditor.SceneManagement;using CatGunner.Runtime;
public static class PersistStartupHudInput
{
 public static string Main()
 {
  if(Application.isPlaying)throw new Exception("EditMode required");
  var client=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
  if(client==null||client.gameObject.scene.path!="Assets/Game/Scenes/GameClient.unity")throw new Exception("GameClient required");
  var canvas=client.Slider.GetComponentInParent<Canvas>().rootCanvas;
  var group=canvas.GetComponent<CanvasGroup>();if(group==null)group=Undo.AddComponent<CanvasGroup>(canvas.gameObject);
  var so=new SerializedObject(client);so.FindProperty("startupUiInput").objectReferenceValue=group;so.ApplyModifiedProperties();
  EditorUtility.SetDirty(group);EditorUtility.SetDirty(client);EditorSceneManager.MarkSceneDirty(client.gameObject.scene);
  if(!EditorSceneManager.SaveScene(client.gameObject.scene))throw new Exception("Scene save failed");
  return "Startup input group serialized; HUD visibility and authored layout retained";
 }
}
