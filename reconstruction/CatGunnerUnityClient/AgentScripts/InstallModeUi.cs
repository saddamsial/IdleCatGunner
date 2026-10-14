using System;using System.IO;using System.Linq;using System.Collections.Generic;using UnityEngine;using UnityEngine.UI;using UnityEditor;using UnityEditor.SceneManagement;using TMPro;using CatGunner.Runtime;
public static class InstallModeUi
{
 const string Root="Assets/Game/PenguinModeUI";
 const string Evidence="/Volumes/ZHITAI_1T/IdleCatGunner/art/reskin/penguin-expedition/mode-ui-v1";
 static Color Ink=new Color32(24,62,90,255),Paper=new Color32(250,253,255,255),Muted=new Color32(208,222,231,255);
 static Color Hex(string s){ColorUtility.TryParseHtmlString("#"+s,out var c);return c;}
 static string PathOf(Transform t){string p=t.name;while(t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
 static int Mode(string p){if(p.Contains("/Monster_UI/"))return 0;if(p.Contains("/Mine_UI/"))return 1;if(p.Contains("/SpeedRun_UI/"))return 2;if(p.Contains("/Boss_UI/"))return 3;if(p.Contains("/Raid_UI/"))return 4;if(p.Contains("Adventure"))return 5;return -1;}
 static bool Shape(Image i)=>i.sprite!=null&&(i.sprite.name.Contains("flat-ui-panel")||i.sprite.name.Contains("flat-ui-fill"));
 static bool Dark(Color c)=>.2126f*c.r+.7152f*c.g+.0722f*c.b<.55f;
 static void Persist(UnityEngine.Object o){EditorUtility.SetDirty(o);if(PrefabUtility.IsPartOfPrefabInstance(o))PrefabUtility.RecordPrefabInstancePropertyModifications(o);}
 public static object Main()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||Application.isPlaying)throw new Exception("Correct EditMode required");
  var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();if(scene.path!="Assets/Game/Scenes/GameClient.unity")throw new Exception("Wrong scene");
  var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);if(!c.StaticUiBaked||!c.Persist||!string.IsNullOrEmpty(c.SaveFolderOverride))throw new Exception("Ordinary authored scene required");
  var canvas=c.Slider.GetComponentInParent<Canvas>();var theme=c.GetComponent<PenguinUiTheme>();var images=canvas.GetComponentsInChildren<Image>(true);var texts=canvas.GetComponentsInChildren<TMP_Text>(true);
  // Preflight all audited image identities before touching any authored field.
  var baseline=Newtonsoft.Json.Linq.JObject.Parse(File.ReadAllText(Evidence+"/audit-edit.json"))["images"].GroupBy(i=>(string)i["path"]).ToDictionary(g=>g.Key,g=>new Queue<Newtonsoft.Json.Linq.JToken>(g));
  foreach(var i in images){string p=PathOf(i.transform);if(!baseline.TryGetValue(p,out var queue))continue;if(queue.Count==0)throw new Exception("Image added since audit: "+p);var b=queue.Dequeue();string sprite=i.sprite!=null?i.sprite.name:null;if(sprite!=(string)b["sprite"]||ColorUtility.ToHtmlStringRGBA(i.color)!=(string)b["color"])throw new Exception("Image changed since audit: "+p);}
  Undo.IncrementCurrentGroup();Undo.SetCurrentGroupName("Mode UI palettes and pet recruit icons");
  AssetDatabase.Refresh();
  Sprite Load(string name){string p=Root+"/"+name+".png";var importer=(TextureImporter)AssetImporter.GetAtPath(p);importer.textureType=TextureImporterType.Sprite;importer.spriteImportMode=SpriteImportMode.Single;importer.alphaIsTransparency=true;importer.mipmapEnabled=false;importer.textureCompression=TextureImporterCompression.Uncompressed;importer.maxTextureSize=512;importer.SaveAndReimport();return AssetDatabase.LoadAssetAtPath<Sprite>(p);}
  var ticket=Load("pet-recruit-ticket");var egg=Load("pet-egg");var vip=Load("vip-crown");var hunt=Load("hunt-paw-target");
  var accents=new[]{Hex("287F70"),Hex("286D98"),Hex("B76A1D"),Hex("A84560"),Hex("67528F"),Hex("347D91")};
  var surfaces=new[]{Hex("EAF6EF"),Hex("EAF4FC"),Hex("FFF4E3"),Hex("FAEDF1"),Hex("F0EDF8"),Hex("EBF5F8")};
  var details=new[]{Hex("CCE8DC"),Hex("D1E7F5"),Hex("F8E0B8"),Hex("EED0DA"),Hex("DCD5EC"),Hex("D1E9ED")};
  int changed=0,icons=0,banners=0;
  foreach(var i in images)
  {
   string p=PathOf(i.transform);int m=Mode(p);if(m<0)continue;
   bool overlay=i.name=="Background"&&i.sprite==null&&i.color.a>.1f&&i.rectTransform.rect.height>1200;
   bool shape=Shape(i);bool banner=p.Contains("Banner_PlusPack/")&&(i.name.StartsWith("Plus_")||i.name=="NonPurchase_Panel"||i.name=="Active_Panel");
   bool bannerExplain=p.Contains("Banner_PlusPack/")&&i.name=="Explain (1)";
   if(!overlay&&!shape&&!banner&&!bannerExplain)continue;
   Undo.RecordObject(i,"Mode panel color");
   if(overlay)i.color=new Color(Ink.r,Ink.g,Ink.b,.76f);
   else if(banner||bannerExplain){i.sprite=theme.Panel;i.type=Image.Type.Sliced;i.preserveAspect=false;i.color=i.name=="Active_Panel"?details[m]:surfaces[m];banners++;}
   else {
    // Preserve authored lock overlays, clipping masks, progress fills and rarity cards.
    if(i.GetComponent<Mask>()!=null||p.Contains("/Locked_obj")||i.name.StartsWith("Block_obj")||i.name.Contains("Locked")||i.name.Contains("Purchased")||i.name.Contains("NonClear")||p.Contains("Relic_Item")||p.Contains("Pet_Slot")||p.Contains("Pet_Item"))continue;
    if(i.type==Image.Type.Filled)continue;
    bool action=i.GetComponent<Button>()!=null||i.GetComponentInParent<Button>(true)!=null&&(i.name=="Panel"||i.name=="Image");
    if(action)i.color=accents[m];
    else if(p.Contains("/Rank_Panel")||i.name=="Damage"||i.name=="Speed"||i.name=="Time"||i.name=="Ticket"||i.name=="HP_Slider")i.color=accents[m];
    else if(i.name=="Explain"||i.name=="Explain (1)"||i.name=="Reward"||i.name=="Power_My"||i.name=="Gun_Slot")i.color=details[m];
    else i.color=surfaces[m];
   }
   Persist(i);changed++;
  }
  // Offer roots were outline-only sprites, so their centre stayed transparent.
  // Both entitlement panels get an opaque fill; the existing callbacks still own visibility.
  foreach(var b in canvas.GetComponentsInChildren<Button>(true)){
   int m=Mode(PathOf(b.transform));if(m<0)continue;var image=b.targetGraphic as Image;if(image==null||!Shape(image))continue;
   Undo.RecordObject(b,"Button states");var colors=b.colors;colors.normalColor=Color.white;colors.highlightedColor=Hex("E7F4F9");colors.pressedColor=Hex("BDD5DF");colors.disabledColor=Hex("91A4B0");b.colors=colors;Persist(b);
  }
  foreach(var raw in canvas.GetComponentsInChildren<RawImage>(true)){
   int m=Mode(PathOf(raw.transform));if(m<0||raw.texture is RenderTexture)continue;if(raw.texture==theme.SnowPattern||raw.texture==theme.IceStripe){Undo.RecordObject(raw,"Reduce pattern contrast");raw.color=new Color(1,1,1,.06f);Persist(raw);}
  }
  // Use a private copy of the pet-currency TMP atlas. Keep glyph IDs/metrics intact.
  var full=c.GetComponent<PenguinFullReskin>();var oldGlyph=full.ThemedGlyphs[3];var glyphPath=Root+"/PetRecruitGlyph.asset";var glyph=AssetDatabase.LoadAssetAtPath<TMP_SpriteAsset>(glyphPath);
  if(glyph==null){glyph=UnityEngine.Object.Instantiate(oldGlyph);glyph.name="PetRecruitGlyph";AssetDatabase.CreateAsset(glyph,glyphPath);}
  var oldTexture=(Texture2D)oldGlyph.spriteSheet;var sheet=new Texture2D(oldTexture.width,oldTexture.height,TextureFormat.RGBA32,false){name="Pet recruit atlas"};
  var clear=new Color32[sheet.width*sheet.height];sheet.SetPixels32(clear);
  var rect=glyph.spriteGlyphTable[0].glyphRect;var source=ticket.texture;var target=RenderTexture.GetTemporary(rect.width,rect.height,0,RenderTextureFormat.ARGB32);var previous=RenderTexture.active;UnityEngine.Graphics.Blit(source,target);RenderTexture.active=target;var scaled=new Texture2D(rect.width,rect.height,TextureFormat.RGBA32,false);scaled.ReadPixels(new Rect(0,0,rect.width,rect.height),0,0);scaled.Apply();RenderTexture.active=previous;RenderTexture.ReleaseTemporary(target);sheet.SetPixels32(rect.x,rect.y,rect.width,rect.height,scaled.GetPixels32());sheet.Apply();UnityEngine.Object.DestroyImmediate(scaled);
  var sheetPath=Root+"/PetRecruitAtlas.asset";var savedSheet=AssetDatabase.LoadAssetAtPath<Texture2D>(sheetPath);if(savedSheet==null){AssetDatabase.CreateAsset(sheet,sheetPath);savedSheet=sheet;}else{EditorUtility.CopySerialized(sheet,savedSheet);UnityEngine.Object.DestroyImmediate(sheet);}
  var matPath=Root+"/PetRecruitGlyph.mat";var glyphMat=AssetDatabase.LoadAssetAtPath<Material>(matPath);if(glyphMat==null){glyphMat=new Material(oldGlyph.material);AssetDatabase.CreateAsset(glyphMat,matPath);}glyphMat.mainTexture=savedSheet;glyph.spriteSheet=savedSheet;glyph.material=glyphMat;glyph.UpdateLookupTables();Persist(glyphMat);Persist(glyph);Persist(savedSheet);
  Undo.RecordObject(full,"Pet recruit catalogue");full.ThemedGlyphs[3]=glyph;
  for(int n=0;n<full.Replacements.Length;n++)if(full.Replacements[n]!=null&&full.Replacements[n].name=="flat-props-14")full.Replacements[n]=ticket;
  Persist(full);Undo.RecordObject(c.GetComponent<PenguinPlaytestPolish>(),"Pet recruit sprite");c.GetComponent<PenguinPlaytestPolish>().PetCoin=ticket;Persist(c.GetComponent<PenguinPlaytestPolish>());
  foreach(var i in images){string p=PathOf(i.transform);Sprite next=null;
   if((p.Contains("Monster_UI/")||p.Contains("Pet_UI"))&&i.sprite!=null&&i.sprite.name=="flat-props-14")next=ticket;
   if(p.EndsWith("Right_Menu/Monster_Btn/Image"))next=hunt;
   if(p.EndsWith("Left_Menu/Pet_Btn /Image"))next=egg;
   if(p.Contains("Mission_maanger/")&&i.sprite!=null&&i.sprite.name.Contains("gems-14"))next=vip;
   if(next==null)continue;Undo.RecordObject(i,"Purpose-specific icon");i.sprite=next;i.color=Color.white;i.preserveAspect=true;i.type=Image.Type.Simple;Persist(i);icons++;
  }
  foreach(var b in c.PetUI.Pet_UI_obj.GetComponentsInChildren<Button>(true).Where(b=>b.name=="Draw_Btn"||b.name=="Draw_Btn (Dia)")){var i=b.targetGraphic as Image;if(i!=null){Undo.RecordObject(i,"Recruit draw contrast");i.color=accents[0];Persist(i);}}
  foreach(var t in texts){if(t.spriteAsset==oldGlyph||t.spriteAsset==full.SourceGlyphs[3]){Undo.RecordObject(t,"Recruit glyph");t.spriteAsset=glyph;Persist(t);}}
  var explanation=UiAuthoring.Find(c.MonsterMode.monster_start_ui.transform,"Panel/Explain/I2_txt")?.GetComponent<TMP_Text>();if(explanation!=null){Undo.RecordObject(explanation,"Hunt purpose");WeaponText.Set(explanation,"击败史莱姆，获得宠物招募券，用于宠物抽取。");Persist(explanation);}
  // Dark body text on light cards; white text on action/score surfaces.
  var materialMap=new Dictionary<Tuple<Material,bool>,Material>();int materialIndex=0;
  foreach(var t in texts){string p=PathOf(t.transform);int m=Mode(p);if(m<0)continue;
   bool darkSurface=false;for(var ancestor=t.transform.parent;ancestor!=null&&ancestor!=canvas.transform;ancestor=ancestor.parent){var i=ancestor.GetComponent<Image>();if(i!=null&&i.color.a>.95f&&Shape(i)){darkSurface=Dark(i.color);break;}}
   if(p.Contains("/Locked_obj/"))darkSurface=true;
   if(p.Contains("Adventure_Map_item")||p.Contains("Adventure_Map_info_item"))darkSurface=true;
   Undo.RecordObject(t,"Mode text contrast");t.color=darkSurface?Color.white:Ink;
   if(t.fontSharedMaterial!=null){var key=Tuple.Create(t.fontSharedMaterial,darkSurface);if(!materialMap.TryGetValue(key,out var mat)){string path=Root+"/ModeText-"+(materialIndex++).ToString("D3")+".mat";mat=AssetDatabase.LoadAssetAtPath<Material>(path);if(mat==null){mat=new Material(t.fontSharedMaterial);AssetDatabase.CreateAsset(mat,path);}if(mat.HasProperty("_FaceDilate"))mat.SetFloat("_FaceDilate",0);mat.DisableKeyword("UNDERLAY_ON");mat.DisableKeyword("UNDERLAY_INNER");if(mat.HasProperty(ShaderUtilities.ID_OutlineWidth))mat.SetFloat(ShaderUtilities.ID_OutlineWidth,darkSurface?.12f:0);if(mat.HasProperty(ShaderUtilities.ID_OutlineColor))mat.SetColor(ShaderUtilities.ID_OutlineColor,Ink);materialMap.Add(key,mat);Persist(mat);}t.fontSharedMaterial=mat;}
   var style=t.GetComponent<WeaponTextStyle>();if(style!=null&&style.Authored){Undo.RecordObject(style,"Persist text contrast");var so=new SerializedObject(style);so.FindProperty("authoredMaterial").objectReferenceValue=t.fontSharedMaterial;so.ApplyModifiedPropertiesWithoutUndo();Persist(style);}
   Persist(t);
  }
  foreach(var slot in canvas.GetComponentsInChildren<Raid_GunSlot>(true)){Undo.RecordObject(slot,"Raid emphasis");slot.SpecialDamage_Color=Hex("FFD37B");Persist(slot);}
  var adventure=c.Adventure.adventure_panel_ui;Undo.RecordObject(adventure,"Travel map panel hues");adventure.MapInfo_Panel_Colors=new[]{surfaces[5],surfaces[2],surfaces[1]};Persist(adventure);
  foreach(var draw in canvas.GetComponentsInChildren<Draw_Relic_Btn>(true)){Undo.RecordObject(draw,"Relic draw states");draw.Color_Panel_Able=accents[5];draw.Colo_Paner_Disable=Hex("7596A1");Persist(draw);}
  var enter=adventure.Adventure_Enter_popup;Undo.RecordObject(enter,"Travel enter states");enter.Color_EnterAble=accents[5];enter.Color_EnterDisable=Hex("7596A1");enter.Color_EnterAble_txt=Color.white;enter.CorePanel_Colors=new[]{details[5],details[2],details[1]};Persist(enter);
  Canvas.ForceUpdateCanvases();AssetDatabase.SaveAssets();EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new Exception("Scene save failed");
  File.WriteAllText(Evidence+"/installed.json",Newtonsoft.Json.JsonConvert.SerializeObject(new{changed,icons,banners,materials=materialIndex,saved=true,scene=scene.path,c.Persist,c.SaveFolderOverride,theme="Hunt jade; Mine ice blue; Challenge amber; Boss rose; Raid plum; Travel teal"},Newtonsoft.Json.Formatting.Indented));
  return new{changed,icons,banners,materials=materialIndex,saved=true};
 }
}
