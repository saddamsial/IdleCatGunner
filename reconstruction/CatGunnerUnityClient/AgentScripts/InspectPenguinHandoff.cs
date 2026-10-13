using System;using UnityEngine;using UnityEditor;using CatGunner.Recovery;
public static class InspectPenguinHandoff
{
 public static string Run()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets")throw new Exception("Wrong project");
  var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);
  var full=c?.GetComponent<PenguinFullReskin>();var exp=c?.GetComponent<PenguinExpeditionTheme>();
  return Newtonsoft.Json.JsonConvert.SerializeObject(new{playing=EditorApplication.isPlaying,compiling=EditorApplication.isCompiling,scene=scene.path,dirty=scene.isDirty,client=c!=null,persist=c!=null&&c.Persist,preview=c?.SaveFolderOverride,weapons=full?.Weapons.Length,weapon=full!=null?AssetDatabase.GetAssetPath(full.Weapons[0]):null,gems=full!=null?AssetDatabase.GetAssetPath(full.Gems[0]):null,ice=exp!=null?AssetDatabase.GetAssetPath(exp.Ice[0]):null,bindings=full?.Sources.Length});
 }
}
