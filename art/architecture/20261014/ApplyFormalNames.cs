using System;using System.IO;using System.Linq;using System.Security.Cryptography;using UnityEditor;using UnityEngine;using Newtonsoft.Json.Linq;
public static class ApplyFormalNames
{
 const string Report="/Volumes/ZHITAI_1T/IdleCatGunner/art/architecture/20261014/";
 static string Hash(string path){using(var sha=SHA256.Create())return BitConverter.ToString(sha.ComputeHash(File.ReadAllBytes(path))).Replace("-","").ToLowerInvariant();}
 public static string Run()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||EditorApplication.isPlaying||EditorApplication.isCompiling)throw new Exception("Wrong project or busy Editor");
  var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();if(scene.isDirty)throw new Exception("Unsaved scene");
  var edits=JArray.Parse(File.ReadAllText(Report+"source-edits.json"));var moves=JArray.Parse(File.ReadAllText(Report+"asset-moves.json"));var names=JObject.Parse(File.ReadAllText(Report+"scene-renames.json"));
  foreach(var row in edits)if(Hash((string)row["path"])!=(string)row["beforeSha256"])throw new Exception("Concurrent edit: "+row["path"]);
  foreach(var row in moves)if(!string.IsNullOrEmpty((string)row["guid"])&&AssetDatabase.AssetPathToGUID((string)row["from"])!=(string)row["guid"])throw new Exception("Asset GUID changed: "+row["from"]);
  var builds=EditorBuildSettings.scenes;
  AssetDatabase.DisallowAutoRefresh();AssetDatabase.StartAssetEditing();
  try
  {
   foreach(var row in edits)File.WriteAllText((string)row["path"],(string)row["content"]);
   var error=AssetDatabase.MoveAsset("Assets/Recovery","Assets/Game");if(error!="")throw new Exception(error);
   error=AssetDatabase.MoveAsset("Assets/Game/Scripts","Assets/Game/Runtime");if(error!="")throw new Exception(error);
   foreach(var row in moves){var old=((string)row["from"]).Replace("Assets/Recovery/","Assets/Game/").Replace("/Scripts/","/Runtime/");var dest=(string)row["to"];if(old==dest)continue;error=AssetDatabase.MoveAsset(old,dest);if(error!="")throw new Exception(old+": "+error);}
   foreach(var b in builds){var stem=Path.GetFileNameWithoutExtension(b.path);b.path=b.path.Replace("Assets/Recovery/","Assets/Game/");if(names[stem]!=null)b.path=b.path.Substring(0,b.path.LastIndexOf('/')+1)+(string)names[stem]+".unity";}EditorBuildSettings.scenes=builds;
  }
  finally{AssetDatabase.StopAssetEditing();AssetDatabase.AllowAutoRefresh();}
  AssetDatabase.Refresh();return "Formal game names applied; source edits="+edits.Count+", asset moves="+moves.Count;
 }
}
