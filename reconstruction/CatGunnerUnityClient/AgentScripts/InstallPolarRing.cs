using System;using UnityEngine;using UnityEditor;using UnityEditor.SceneManagement;using CatGunner.Runtime;
public static class InstallPolarRing
{
 public static string Run()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||EditorApplication.isPlaying)throw new Exception("Wrong project or PlayMode");
  var scene=EditorSceneManager.GetActiveScene();if(scene.path!="Assets/Game/Scenes/GameClient.unity")scene=EditorSceneManager.OpenScene("Assets/Game/Scenes/GameClient.unity");
  AssetDatabase.ImportAsset("Assets/Game/PenguinPolarRing.shader",ImportAssetOptions.ForceUpdate);
  var shader=AssetDatabase.LoadAssetAtPath<Shader>("Assets/Game/PenguinPolarRing.shader");
  if(shader==null||ShaderUtil.ShaderHasError(shader))throw new Exception("Ring shader failed compilation");
  var theme=UnityEngine.Object.FindAnyObjectByType<PenguinFullReskin>(FindObjectsInactive.Include);Undo.RecordObject(theme,"Install animated polar ring");theme.RingShader=shader;EditorUtility.SetDirty(theme);EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);return "Thin animated ring shader installed; native particle emission and lifetime untouched.";
 }
}
