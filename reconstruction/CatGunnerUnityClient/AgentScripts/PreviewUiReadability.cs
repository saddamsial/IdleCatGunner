using System;using System.IO;using System.Linq;using System.Reflection;
using UnityEngine;using UnityEditor;using UnityEditor.SceneManagement;using CatGunner.Recovery;
public static class PreviewUiReadability
{
 const string Project="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets";
 public static string Prepare()
 {
  if(Application.dataPath!=Project||Application.isPlaying)throw new Exception("Correct EditMode required");
  EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");SessionState.SetString("CatGunner.Recovery.TestHostFolder",Path.Combine(Application.temporaryCachePath,"PenguinPreview-Readability-"+Guid.NewGuid().ToString("N")));
  var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);c.Persist=false;SetSize(1080,1920);return "Isolated preview configured in memory only";
 }
 public static string Size(int width,int height){if(Application.dataPath!=Project)throw new Exception("Wrong project");SetSize(width,height);return "Game view "+width+" x "+height;}
 static void SetSize(int width,int height)
 {
  var a=typeof(EditorWindow).Assembly;var t=a.GetType("UnityEditor.GameViewSizes",true);var single=typeof(ScriptableSingleton<>).MakeGenericType(t);var sizes=single.GetProperty("instance",BindingFlags.Public|BindingFlags.Static|BindingFlags.FlattenHierarchy).GetValue(null);
  var group=t.GetProperty("currentGroup",BindingFlags.Public|BindingFlags.NonPublic|BindingFlags.Instance).GetValue(sizes);var g=group.GetType();var s=a.GetType("UnityEditor.GameViewSize",true);int total=(int)g.GetMethod("GetTotalCount").Invoke(group,null),index=-1;
  for(int i=0;i<total;i++){var size=g.GetMethod("GetGameViewSize").Invoke(group,new object[]{i});if((int)s.GetProperty("width").GetValue(size)==width&&(int)s.GetProperty("height").GetValue(size)==height){index=i;break;}}
  if(index<0){var kind=a.GetType("UnityEditor.GameViewSizeType",true);var size=Activator.CreateInstance(s,BindingFlags.Public|BindingFlags.NonPublic|BindingFlags.Instance,null,new object[]{Enum.Parse(kind,"FixedResolution"),width,height,"UI readability "+width+"x"+height},null);g.GetMethod("AddCustomSize").Invoke(group,new[]{size});index=total;}
  var v=a.GetType("UnityEditor.GameView",true);var view=EditorWindow.GetWindow(v);v.GetProperty("selectedSizeIndex",BindingFlags.Public|BindingFlags.NonPublic|BindingFlags.Instance).SetValue(view,index);view.Focus();view.Repaint();
 }
 public static string Finish()
 {
  if(Application.dataPath!=Project||Application.isPlaying)throw new Exception("Correct EditMode required");
  SessionState.EraseString("CatGunner.Recovery.TestHostFolder");var scene=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");SetSize(1080,1920);
  var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);if(!c.Persist||!string.IsNullOrEmpty(c.SaveFolderOverride))throw new Exception("Ordinary startup settings changed");
  return "Ordinary saved scene ready; no test override; Persist=true; no scene changes";
 }
}
