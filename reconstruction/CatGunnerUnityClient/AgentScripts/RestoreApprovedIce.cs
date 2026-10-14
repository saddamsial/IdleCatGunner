using System;using System.IO;using System.Linq;using UnityEngine;using UnityEditor;using UnityEditor.SceneManagement;using CatGunner.Runtime;
public static class RestoreApprovedIce
{
 public static string Run()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||EditorApplication.isPlaying)throw new Exception("Correct EditMode required");
  var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();if(scene.path!="Assets/Game/Scenes/GameClient.unity"||scene.isDirty)throw new Exception("Saved normal scene required");
  var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);var exp=c.GetComponent<PenguinExpeditionTheme>();var full=c.GetComponent<PenguinFullReskin>();
  var previous=Enumerable.Range(0,4).Select(i=>AssetDatabase.LoadAssetAtPath<Sprite>("Assets/Game/PenguinExpedition/Ice"+i+".asset")).ToArray();if(previous.Any(s=>s==null))throw new Exception("Missing previous ice");
  string dir=Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/remaining-style-audit");Directory.CreateDirectory(dir);string backup=Path.Combine(dir,"ice-before-restore.json");if(!File.Exists(backup))File.WriteAllText(backup,EditorJsonUtility.ToJson(exp,true));
  var old=exp.Ice.ToArray();int count=0;for(int i=0;i<full.Replacements.Length;i++)for(int k=0;k<4;k++)if(full.Replacements[i]==old[k]||full.Replacements[i].name.EndsWith("_"+old[k].name,StringComparison.Ordinal)){full.Replacements[i]=previous[k];count++;break;}
  exp.Ice=previous;EditorUtility.SetDirty(exp);EditorUtility.SetDirty(full);EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);
  File.WriteAllText(Path.Combine(dir,"ice-restored.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{approved="User confirmed left-side previous ice preview",bindings=count,ice=previous.Select(AssetDatabase.GetAssetPath),unmodified="props04 rock, props05 shrub; native penguin animation, circular platform, camera and footprints"},Newtonsoft.Json.Formatting.Indented));
  return "Restored 4 previous snow-capped ice sprites; updated "+count+" runtime mappings; props04/05 untouched.";
 }
}
