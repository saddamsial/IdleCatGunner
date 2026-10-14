using System;using System.IO;using System.Linq;using UnityEditor;using UnityEditor.SceneManagement;using UnityEngine;using CatGunner.Runtime;
public static class InstallPlaytestPolish
{
 const string Project="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets";
 public static object Main()
 {
  if(Application.dataPath!=Project||Application.isPlaying)throw new Exception("Correct EditMode required");
  var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();if(scene.path!="Assets/Game/Scenes/GameClient.unity")scene=EditorSceneManager.OpenScene("Assets/Game/Scenes/GameClient.unity");
  if(scene.isDirty)throw new Exception("Preserve unsaved scene changes");
  var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
  var importer=(TextureImporter)AssetImporter.GetAtPath("Assets/Game/PenguinPolish/right-hand.png");importer.textureType=TextureImporterType.Sprite;importer.spriteImportMode=SpriteImportMode.Single;importer.alphaIsTransparency=true;importer.mipmapEnabled=false;importer.textureCompression=TextureImporterCompression.Uncompressed;var settings=new TextureImporterSettings();importer.ReadTextureSettings(settings);settings.spriteAlignment=(int)SpriteAlignment.Custom;settings.spritePivot=new Vector2(.489f,.995f);importer.SetTextureSettings(settings);importer.spritePixelsPerUnit=100;importer.SaveAndReimport();
  foreach(int i in new[]{0,1}){var oreImporter=(TextureImporter)AssetImporter.GetAtPath("Assets/Game/PenguinPolish/ore-"+i+".png");oreImporter.textureType=TextureImporterType.Sprite;oreImporter.spriteImportMode=SpriteImportMode.Single;oreImporter.alphaIsTransparency=true;oreImporter.mipmapEnabled=false;oreImporter.textureCompression=TextureImporterCompression.Uncompressed;oreImporter.spritePixelsPerUnit=100;oreImporter.SaveAndReimport();}
  var hand=AssetDatabase.LoadAssetAtPath<Sprite>("Assets/Game/PenguinPolish/right-hand.png");c.GetComponent<PenguinUiTheme>().Flipper=hand;
  Sprite Flat(string family,int i)=>AssetDatabase.LoadAssetAtPath<Sprite>("Assets/Game/PenguinFlatCatalogue/flat-"+family+"-"+i.ToString("D2")+".asset");
  var polish=c.GetComponent<PenguinPlaytestPolish>()??c.gameObject.AddComponent<PenguinPlaytestPolish>();polish.BlueDiamond=Flat("gems",0);polish.PetCoin=Flat("props",14);polish.ChallengeIcon=Flat("props",1);
  polish.TargetVariety=c.GetComponent<PenguinExpeditionTheme>().Ice.Concat(new[]{Flat("props",4),Flat("props",6),Flat("props",3)}).ToArray();polish.OreGrades=new[]{0,1}.Select(i=>AssetDatabase.LoadAssetAtPath<Sprite>("Assets/Game/PenguinPolish/ore-"+i+".png")).ToArray();polish.Environment=new[]{Flat("props",4),Flat("props",5),Flat("props",2),Flat("props",6)};
  if(polish.TargetVariety.Any(s=>s==null)||polish.Environment.Any(s=>s==null)||hand==null)throw new Exception("Missing polish sprite");
  var canvas=c.Slider.GetComponentInParent<Canvas>();int fills=0,backs=0;foreach(var f in canvas.GetComponentsInChildren<SlicedFilledImage>(true))if(f==c.BossMode.gameSlider.Value_Fill||f==c.MineMode.gameSlider.Value_Fill||f==c.MonsterMode.monster_game_slider.Value_Fill||f.GetComponentInParent<Mission_Reward_Slot>(true)!=null){f.pixelsPerUnitMultiplier=10;EditorUtility.SetDirty(f);fills++;}foreach(var t in canvas.GetComponentsInChildren<Transform>(true))if(t.name=="BackPanel"&&t.parent.name=="Win_img"){t.gameObject.SetActive(false);backs++;}
  EditorUtility.SetDirty(c.GetComponent<PenguinUiTheme>());EditorUtility.SetDirty(polish);EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);AssetDatabase.SaveAssets();
  return new{scene=scene.path,hand=hand.name,targets=polish.TargetVariety.Length,fills,backs,ores=polish.OreGrades.Select(s=>s.name).ToArray(),saved=true};
 }
}
