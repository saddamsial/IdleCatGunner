using System;using System.IO;using System.Linq;using UnityEditor;using UnityEngine;using Newtonsoft.Json.Linq;
public static class FinishFormalNames
{
 const string Report="/Volumes/ZHITAI_1T/IdleCatGunner/art/architecture/20261014/";
 public static string Run()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||EditorApplication.isPlaying||EditorApplication.isCompiling)throw new Exception("Wrong project or busy Editor");
  AssetDatabase.Refresh();
  if(AssetDatabase.IsValidFolder("Assets/Game/Scripts")){var folderError=AssetDatabase.MoveAsset("Assets/Game/Scripts","Assets/Game/Runtime");if(folderError!="")throw new Exception(folderError);AssetDatabase.Refresh();}
  var moves=JArray.Parse(File.ReadAllText(Report+"asset-moves.json"));var edits=JArray.Parse(File.ReadAllText(Report+"source-edits.json"));var names=JObject.Parse(File.ReadAllText(Report+"scene-renames.json"));
  AssetDatabase.DisallowAutoRefresh();AssetDatabase.StartAssetEditing();
  try
  {
   foreach(var row in edits){var path=((string)row["path"]).Replace("Assets/Recovery/","Assets/Game/").Replace("/Scripts/","/Runtime/");File.WriteAllText(path,(string)row["content"]);}
   foreach(var row in moves){var old=((string)row["from"]).Replace("Assets/Recovery/","Assets/Game/").Replace("/Scripts/","/Runtime/");var dest=(string)row["to"];if(old==dest)continue;if(AssetDatabase.AssetPathToGUID(old)!=(string)row["guid"])throw new Exception("GUID mismatch: "+old);var error=AssetDatabase.MoveAsset(old,dest);if(error!="")throw new Exception(old+" -> "+dest+": "+error);}
   var builds=EditorBuildSettings.scenes;foreach(var b in builds){var stem=Path.GetFileNameWithoutExtension(b.path);b.path=b.path.Replace("Assets/Recovery/","Assets/Game/");if(names[stem]!=null)b.path=b.path.Substring(0,b.path.LastIndexOf('/')+1)+(string)names[stem]+".unity";}EditorBuildSettings.scenes=builds;
  }
  finally{AssetDatabase.StopAssetEditing();AssetDatabase.AllowAutoRefresh();}
  AssetDatabase.Refresh();return "Formal names complete";
 }
}
