using System;using System.Linq;using UnityEditor;using UnityEditor.SceneManagement;using UnityEngine;using CatGunner.Runtime;
public static class InstallPolishV5
{
 public static object Main()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||Application.isPlaying)throw new Exception("Correct EditMode required");
  var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();if(scene.isDirty)throw new Exception("Preserve unsaved changes");if(scene.path!="Assets/Game/Scenes/GameClient.unity")scene=EditorSceneManager.OpenScene("Assets/Game/Scenes/GameClient.unity");
  string root="Assets/Game/PenguinPolishV5/";AssetDatabase.Refresh();
  foreach(var guid in AssetDatabase.FindAssets("t:Texture2D",new[]{root.TrimEnd('/')}))
  {
   var path=AssetDatabase.GUIDToAssetPath(guid);var i=(TextureImporter)AssetImporter.GetAtPath(path);i.textureType=TextureImporterType.Sprite;i.spriteImportMode=SpriteImportMode.Single;i.alphaIsTransparency=true;i.mipmapEnabled=false;i.textureCompression=TextureImporterCompression.Uncompressed;i.spritePixelsPerUnit=100;
   var settings=new TextureImporterSettings();i.ReadTextureSettings(settings);settings.spriteAlignment=(int)SpriteAlignment.Custom;settings.spritePivot=path.Contains("hand")?new Vector2(.4572011f,.995f):new Vector2(.5f,.5f);i.SetTextureSettings(settings);i.SaveAndReimport();
  }
  var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);var f=c.GetComponent<PenguinFullReskin>();var p=c.GetComponent<PenguinPlaytestPolish>();var ui=c.GetComponent<PenguinUiTheme>();
  ui.Flipper=AssetDatabase.LoadAssetAtPath<Sprite>(root+"right-hand-v5.png");
  f.PetDirections=Enumerable.Range(0,13).SelectMany(n=>Enumerable.Range(0,3).Select(d=>AssetDatabase.LoadAssetAtPath<Sprite>(root+"pet-"+n.ToString("D2")+"-"+d+".png"))).ToArray();
  p.TargetVariety=new[]{c.GetComponent<PenguinExpeditionTheme>().Ice[1]}.Concat(Enumerable.Range(1,9).Select(n=>AssetDatabase.LoadAssetAtPath<Sprite>(root+"target-"+n.ToString("D2")+".png"))).ToArray();
  if(ui.Flipper==null||f.PetDirections.Any(x=>x==null)||p.TargetVariety.Any(x=>x==null))throw new Exception("Missing v5 art");
  EditorUtility.SetDirty(f);EditorUtility.SetDirty(ui);EditorUtility.SetDirty(p);EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);AssetDatabase.SaveAssets();return new{saved=true,targets=p.TargetVariety.Length,directionalPetViews=f.PetDirections.Length,hand=ui.Flipper.name};
 }
}
