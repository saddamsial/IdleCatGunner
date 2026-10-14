using System;using System.Linq;using UnityEngine;using UnityEngine.UI;using UnityEditor;using UnityEditor.SceneManagement;using TMPro;using CatGunner.Runtime;
public static class ModeUiV2Icons {
 const string Root="Assets/Game/PenguinModeUIV2";
 static string P(Transform t){string p=t.name;while(t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
 static void Dirty(UnityEngine.Object o){EditorUtility.SetDirty(o);if(PrefabUtility.IsPartOfPrefabInstance(o))PrefabUtility.RecordPrefabInstancePropertyModifications(o);}
 public static object Main(){if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||Application.isPlaying)throw new Exception("Correct EditMode required");AssetDatabase.Refresh();
 Sprite Load(string name){string p=Root+"/"+name+".png";var i=(TextureImporter)AssetImporter.GetAtPath(p);i.textureType=TextureImporterType.Sprite;i.spriteImportMode=SpriteImportMode.Single;i.alphaIsTransparency=true;i.mipmapEnabled=false;i.maxTextureSize=512;i.textureCompression=TextureImporterCompression.Uncompressed;i.SaveAndReimport();return AssetDatabase.LoadAssetAtPath<Sprite>(p);}
 var bait=Load("pet-bait-default");var crown=Load("vip-crown-default");var hunt=Load("hunt-binoculars-default");var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);var canvas=c.Slider.GetComponentInParent<Canvas>();var full=c.GetComponent<PenguinFullReskin>();var oldGlyph=full.ThemedGlyphs[3];var oldBait=c.GetComponent<PenguinPlaytestPolish>().PetCoin;
 var glyphPath=Root+"/PetBaitGlyph.asset";var glyph=AssetDatabase.LoadAssetAtPath<TMP_SpriteAsset>(glyphPath);if(glyph==null){glyph=UnityEngine.Object.Instantiate(oldGlyph);glyph.name="PetBaitGlyph";AssetDatabase.CreateAsset(glyph,glyphPath);}
 var oldTexture=(Texture2D)oldGlyph.spriteSheet;var sheet=new Texture2D(oldTexture.width,oldTexture.height,TextureFormat.RGBA32,false){name="Pet bait atlas"};sheet.SetPixels32(new Color32[sheet.width*sheet.height]);var rect=glyph.spriteGlyphTable[0].glyphRect;
 var rt=RenderTexture.GetTemporary(rect.width,rect.height,0,RenderTextureFormat.ARGB32);var previous=RenderTexture.active;UnityEngine.Graphics.Blit(bait.texture,rt);RenderTexture.active=rt;var scaled=new Texture2D(rect.width,rect.height,TextureFormat.RGBA32,false);scaled.ReadPixels(new Rect(0,0,rect.width,rect.height),0,0);scaled.Apply();RenderTexture.active=previous;RenderTexture.ReleaseTemporary(rt);sheet.SetPixels32(rect.x,rect.y,rect.width,rect.height,scaled.GetPixels32());sheet.Apply();UnityEngine.Object.DestroyImmediate(scaled);
 var path=Root+"/PetBaitAtlas.asset";var saved=AssetDatabase.LoadAssetAtPath<Texture2D>(path);if(saved==null){saved=sheet;AssetDatabase.CreateAsset(saved,path);}else{EditorUtility.CopySerialized(sheet,saved);UnityEngine.Object.DestroyImmediate(sheet);}
 var matPath=Root+"/PetBaitGlyph.mat";var mat=AssetDatabase.LoadAssetAtPath<Material>(matPath);if(mat==null){mat=new Material(oldGlyph.material);AssetDatabase.CreateAsset(mat,matPath);}mat.mainTexture=saved;glyph.spriteSheet=saved;glyph.material=mat;glyph.UpdateLookupTables();Dirty(saved);Dirty(mat);Dirty(glyph);
 full.ThemedGlyphs[3]=glyph;for(int n=0;n<full.Replacements.Length;n++)if(full.Replacements[n]==oldBait)full.Replacements[n]=bait;Dirty(full);c.GetComponent<PenguinPlaytestPolish>().PetCoin=bait;Dirty(c.GetComponent<PenguinPlaytestPolish>());
 int icons=0;foreach(var i in canvas.GetComponentsInChildren<Image>(true)){string p=P(i.transform);Sprite next=null;
 if((p.Contains("Monster_UI/")||p.Contains("Pet_UI"))&&i.sprite==oldBait)next=bait;
 if(p.EndsWith("Right_Menu/Monster_Btn/Image"))next=hunt;
 if(p.Contains("Mission_maanger/")&&i.sprite!=null&&(i.sprite.name=="vip-crown"||i.sprite.name.Contains("gems-14")))next=crown;
 if(next==null)continue;Undo.RecordObject(i,"V2 purpose-specific item");i.sprite=next;i.color=Color.white;i.type=Image.Type.Simple;i.preserveAspect=true;Dirty(i);icons++;}
 foreach(var t in canvas.GetComponentsInChildren<TMP_Text>(true))if(t.spriteAsset==oldGlyph||t.spriteAsset==full.SourceGlyphs[3]){t.spriteAsset=glyph;Dirty(t);}
 var explanation=c.MonsterMode.monster_start_ui.transform.Find("Panel/Explain/I2_txt").GetComponent<TMP_Text>();WeaponText.Set(explanation,"击败史莱姆，获得宠物诱饵，用于宠物抽取。");Dirty(explanation);
 AssetDatabase.SaveAssets();var scene=c.gameObject.scene;EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new Exception("Save failed");return new{icons,saved=true,petEntry="Original sprite restored separately"};}
}
