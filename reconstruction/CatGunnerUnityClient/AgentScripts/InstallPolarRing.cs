using System;using UnityEngine;using UnityEditor;using UnityEditor.SceneManagement;using CatGunner.Recovery;
public static class InstallPolarRing
{
 public static string Run()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||EditorApplication.isPlaying)throw new Exception("Wrong project or PlayMode");
  var scene=EditorSceneManager.GetActiveScene();if(scene.path!="Assets/Recovery/Scenes/RecoveredClient.unity")scene=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");
  AssetDatabase.ImportAsset("Assets/Recovery/PenguinPolarRing.shader",ImportAssetOptions.ForceUpdate);
  var shader=AssetDatabase.LoadAssetAtPath<Shader>("Assets/Recovery/PenguinPolarRing.shader");
  if(shader==null||ShaderUtil.ShaderHasError(shader))throw new Exception("Ring shader failed compilation");
  var theme=UnityEngine.Object.FindAnyObjectByType<PenguinFullReskin>(FindObjectsInactive.Include);Undo.RecordObject(theme,"Install animated polar ring");theme.RingShader=shader;EditorUtility.SetDirty(theme);EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);return "Thin animated ring shader installed; native particle emission and lifetime untouched.";
 }
}
