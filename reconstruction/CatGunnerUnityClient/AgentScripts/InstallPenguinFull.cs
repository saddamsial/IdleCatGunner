using System;using System.IO;using System.Linq;using System.Collections.Generic;using System.Reflection;
using UnityEngine;using UnityEngine.UI;using UnityEditor;using UnityEditor.SceneManagement;using TMPro;using CatGunner.Runtime;
using Newtonsoft.Json.Linq;

public static class InstallPenguinFull
{
 const string Folder="Assets/Game/PenguinFull/";
 static Dictionary<Sprite,Sprite> map;
 static PenguinFullReskin theme;
 static Dictionary<Texture2D,Texture2D> readable=new Dictionary<Texture2D,Texture2D>();
 static Texture2D Readable(Texture2D source){if(source.isReadable)return source;if(readable.TryGetValue(source,out var cached))return cached;var rt=RenderTexture.GetTemporary(source.width,source.height,0,RenderTextureFormat.ARGB32);var prev=RenderTexture.active;var copy=new Texture2D(source.width,source.height,TextureFormat.RGBA32,false);try{UnityEngine.Graphics.Blit(source,rt);RenderTexture.active=rt;copy.ReadPixels(new Rect(0,0,source.width,source.height),0,0);copy.Apply();}finally{RenderTexture.active=prev;RenderTexture.ReleaseTemporary(rt);}readable[source]=copy;return copy;}
 static Sprite[] Load(string family,int count){return Enumerable.Range(0,count).Select(i=>Picture(family+"-"+i.ToString("00"))).ToArray();}
 public static string Run()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||Application.isPlaying)throw new Exception("Correct EditMode required");
  AssetDatabase.Refresh();var scene=EditorSceneManager.OpenScene("Assets/Game/Scenes/GameClient.unity");
  var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);theme=c.GetComponent<PenguinFullReskin>()??Undo.AddComponent<PenguinFullReskin>(c.gameObject);
  theme.Landscapes=Load("landscapes",4);theme.Skins=Load("skins",25);theme.Weapons=Load("weapons",65);theme.Fish=Load("fish",13);theme.Pets=Load("pets",13);theme.Bosses=Load("bosses",9);theme.RaidBosses=Load("raid-bosses",5);theme.Monsters=Load("monsters",20);theme.Gems=Load("gems",16);theme.Icons=Load("icons",16);theme.Utilities=Load("utilities",24);theme.Effects=Load("effects",4);theme.WeeklyShop=Picture("weekly-shop-00");theme.ApprovedPenguin=c.GetComponent<PenguinExpeditionTheme>().Penguin;
  theme.FaceShader=AssetDatabase.LoadAssetAtPath<Shader>("Assets/Game/PenguinExpression.shader");theme.FloatingShader=AssetDatabase.LoadAssetAtPath<Shader>("Assets/Game/PenguinFloatingNumber.shader");
  var meta=JArray.Parse(File.ReadAllText(Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/full-reskin/assets.json"))).Where(j=>(string)j["family"]=="skins").OrderBy(j=>(int)j["index"]).ToArray();
  Vector4 V(JToken token)=>new Vector4((float)token[0],(float)token[1],(float)token[2],(float)token[3]);
  theme.EyeA=meta.Select(j=>V(j["eyes"][0])).ToArray();theme.EyeB=meta.Select(j=>V(j["eyes"][1])).ToArray();theme.Mouth=meta.Select(j=>V(j["mouth"])).ToArray();
  map=new Dictionary<Sprite,Sprite>();
  var components=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<MonoBehaviour>(true)).Where(b=>b!=null).ToArray();
  void Catalogue(string type,string field,Sprite[] sprites){var b=components.First(x=>x.GetType().Name==type);var old=(Sprite[])b.GetType().GetField(field).GetValue(b);if(old.Length!=sprites.Length)throw new Exception(type+" count mismatch");for(int i=0;i<old.Length;i++)Map(old[i],sprites[i]);}
  Catalogue("Skin_manager","Skin_sprites",theme.Skins);Catalogue("Gun_manager","Gun_sprites",theme.Weapons);
  foreach(var field in new[]{"Fish_sprites","Fish_Real_sprites","Fish_Outline_sprites"})Catalogue("Fish_manager",field,theme.Fish);
  Catalogue("Pet_manager","Pet_sprites",theme.Pets);
  foreach(var old in c.Forest.Tree_sprites.Select((sprite,index)=>new{sprite,index}))Map(old.sprite,c.GetComponent<PenguinExpeditionTheme>().Ice[old.index%4]);foreach(var field in new[]{"Boss_Head_sprites","Boss_Head_Die_sprites","Boss_Head_Idle_sprites"})Catalogue("Boss_manager",field,theme.Bosses);
  Catalogue("Raid_Start_UI","Boss_Sprites",theme.RaidBosses);Catalogue("Monster_manager","Monster_sprites",theme.Monsters);
  Catalogue("Adventure_manager","Core_sprites",theme.Gems.Skip(4).Take(4).ToArray());Catalogue("Mine_manager","Ore_sprites",new[]{theme.Gems[0],theme.Gems[1]});
  var sprites=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Image>(true)).Select(i=>i.sprite).Concat(scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<SpriteRenderer>(true)).Select(r=>r.sprite)).Where(s=>s!=null).Distinct().ToArray();
  foreach(var s in sprites){var target=Semantic(s.name,c);if(target!=null&&!map.ContainsKey(s))Map(s,target);}
  // Catalogue state is installed on Start; serialized original arrays remain intact.
  theme.Sources=map.Keys.ToArray();theme.Replacements=theme.Sources.Select(s=>map[s]).ToArray();
  var glyphs=AssetDatabase.FindAssets("t:TMP_SpriteAsset").Select(g=>AssetDatabase.LoadAssetAtPath<TMP_SpriteAsset>(AssetDatabase.GUIDToAssetPath(g))).Where(a=>a!=null&&a.spriteCharacterTable.Any(ch=>Semantic(ch.name,c)!=null)&&!AssetDatabase.GetAssetPath(a).StartsWith(Folder)).ToArray();
  theme.SourceGlyphs=glyphs;theme.ThemedGlyphs=glyphs.Select((a,i)=>GlyphAsset(a,i,c)).ToArray();
  theme.enabled=true;EditorUtility.SetDirty(theme);EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);AssetDatabase.SaveAssets();
  var records=theme.Sources.Select((s,i)=>new{source=AssetDatabase.GetAssetPath(s),name=s.name,replacement=AssetDatabase.GetAssetPath(theme.Replacements[i]),originalBounds=s.bounds.size.ToString(),newBounds=theme.Replacements[i].bounds.size.ToString()});
  File.WriteAllText(Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/full-reskin/bindings.json"),Newtonsoft.Json.JsonConvert.SerializeObject(records,Newtonsoft.Json.Formatting.Indented));
  return "Installed 215 catalogue images; exact-reference bindings="+map.Count+", inline currency atlases="+glyphs.Length+". Original sprite arrays, IDs, hitboxes and input layout preserved.";
 }
 static Sprite Semantic(string n,GameClient c)
 {
  if(n.StartsWith("Bush_"))return theme.Gems[10];
  if(n=="Forest_Grass")return theme.Gems[10];
  if(n.EndsWith("_Forest"))return c.GetComponent<PenguinExpeditionTheme>().SnowGround;
  if(n.StartsWith("Map_")){int n0;if(int.TryParse(n.Substring(4),out n0))return theme.Landscapes[Mathf.Clamp(n0,0,2)];}
  if(n=="FishTank 2")return theme.Landscapes[3];
  if(n=="Background_Prism"||n=="Background_MinePack")return theme.Landscapes[1];
  if(n=="boss"||n=="Raid")return c.GetComponent<PenguinExpeditionTheme>().SnowGround;
  if(n=="bomb")return theme.Icons[2];
  if(n.StartsWith("Item_Chest"))return theme.Utilities[22];
  if(n.StartsWith("Icon_ImageIcon_Badge"))return theme.Utilities[14];
  if(n.StartsWith("UI_Common_Mission"))return theme.Utilities[14];
  if(n.StartsWith("UI_Shop_Ticket"))return theme.Gems[12];
  if(n=="Head")return theme.RaidBosses[0];
  if(n=="Sample")return theme.Gems[8];
  if(n.StartsWith("Prism_")){int n0;if(int.TryParse(n.Substring(6),out n0))return theme.Gems[8+Mathf.Clamp(n0,0,3)];}
  if(n.Length>2&&char.IsDigit(n[0])&&n[1]=='_'&&char.IsLetter(n[2]))return theme.Pets[Mathf.Clamp(n[0]-'0',0,12)];
  if(n=="AllAxis_Outline")return c.GetComponent<PenguinUiTheme>().Outline;
  if(n=="Handle_Plain")return c.GetComponent<PenguinUiTheme>().Circle;
  if(n=="chodun (723) 1")return theme.Utilities[21];
  if(n=="grab2"||n=="grab2 1"||n.StartsWith("Common_Glow"))return theme.Effects[1];
  if(n=="currency_dia_0"||n=="Currency 2_0")return c.GetComponent<PenguinUiTheme>().Coin;
  if(n=="currency_dia_1"||n=="Currency_Dia_Outline")return theme.Gems[0];
  if(n=="currency_0")return theme.Gems[1];
  if(n.StartsWith("Currency 3"))return theme.Gems[14];
  if(n.StartsWith("Currency_SlotGem"))return theme.Icons[6];
  if(n=="Currency 2_1"||n.StartsWith("Relic_Dmg"))return theme.Icons[0];
  if(n=="Currency 2_2"||n=="Icon_Speed")return theme.Icons[1];
  if(n.StartsWith("Relic_CriDmg"))return theme.Icons[2];
  if(n=="icon_big_target")return theme.Icons[3];
  if(n=="Relic_MoveSpeed")return theme.Icons[4];
  if(n=="Icon_Dictionary")return theme.Icons[5];
  if(n.Contains("DiaPig")||n.StartsWith("StarGem_Pig"))return theme.Icons[7];
  if(n=="Icon_Pet")return theme.Icons[9];if(n=="Icon_Fish")return theme.Icons[10];if(n=="Icon_Adventure")return theme.Icons[11];
  if(n=="UI_Play_Dungeon_03")return theme.Icons[12];if(n.Contains("StatsIcon_Boss"))return theme.Icons[13];
  if(n=="Icon_Shop")return theme.Icons[14];
  if(n=="Icon_Gun"||n=="Icon_Gun 2"||n=="Icon_ImageIcon_Knife_Battle")return theme.Weapons[0];
  if(n.Contains("DiaPack"))return theme.Gems[8+(n.LastOrDefault()-'0'+10)%4];
  if(n.StartsWith("Relic_Money"))return theme.Gems[3];
  if(n=="Icon_CloseBtn"||n=="icon_close")return theme.Utilities[0];if(n=="icon_Lock")return theme.Utilities[1];if(n=="Icon_Plus")return theme.Utilities[2];if(n=="Icon_Check")return theme.Utilities[3];
  if(n=="Icon_Arrow_Left")return theme.Utilities[4];if(n=="Icon_Arrow_Right")return theme.Utilities[5];if(n=="Setting")return theme.Utilities[6];
  if(n.Contains("Magnatic"))return theme.Utilities[9];if(n=="Icon_timer"||n=="Relic_Offline"||n=="Relic_Skip")return theme.Utilities[10];
  if(n.Contains("ImageIcon_Ad"))return theme.Utilities[11];if(n.Contains("ImageIcon_Pass"))return theme.Utilities[14];
  if(n.Contains("Weekly"))return theme.Icons[8];if(n.Contains("StarGrade_l_On"))return theme.Gems[14];
  if(n=="icon_bgm")return theme.Utilities[17];if(n=="icon_sound")return theme.Utilities[18];if(n=="phone-vibration")return theme.Utilities[19];
  if(n=="Icon_Heart 2")return theme.Utilities[20];if(n=="Relic_Rebirth")return theme.Utilities[23];
  if(n=="Cat_Gun"||n.StartsWith("replicate-prediction-"))return theme.WeeklyShop;
  return null;
 }
 static void Map(Sprite old,Sprite target){if(old==null||target==null)return;map[old]=Fit(old,target);}
 static Sprite Fit(Sprite old,Sprite target)
 {
  string name="Fit_"+AssetDatabase.AssetPathToGUID(AssetDatabase.GetAssetPath(old))+"_"+target.name;
  int w=Mathf.Max(8,Mathf.RoundToInt(old.rect.width)),h=Mathf.Max(8,Mathf.RoundToInt(old.rect.height));bool backdrop=Array.IndexOf(theme.Landscapes,target)>=0||target.name=="SnowGround";float k=backdrop?Mathf.Max((float)w/target.texture.width,(float)h/target.texture.height):Mathf.Min((float)w/target.texture.width,(float)h/target.texture.height);
  var tex=new Texture2D(w,h,TextureFormat.RGBA32,false){name=name,filterMode=FilterMode.Bilinear,wrapMode=TextureWrapMode.Clamp};var pixels=new Color[w*h];
  float tw=target.texture.width*k,th=target.texture.height*k;
  for(int y=0;y<h;y++)for(int x=0;x<w;x++){float u=(x-(w-tw)*.5f)/tw,v=(y-(h-th)*.5f)/th;if(u>=0&&u<=1&&v>=0&&v<=1)pixels[y*w+x]=Readable(target.texture).GetPixelBilinear(u,v);}
  tex.SetPixels(pixels);tex.Apply();tex=SaveTexture(name,tex);
  var pivot=new Vector2(old.pivot.x/old.rect.width,old.pivot.y/old.rect.height);return SaveSprite(name,Sprite.Create(tex,new Rect(0,0,w,h),pivot,w/old.bounds.size.x,0,SpriteMeshType.FullRect));
 }
 static Sprite Picture(string name)
 {
  string path=Folder+name+".png";var i=(TextureImporter)AssetImporter.GetAtPath(path);
  bool change=!i.isReadable||i.mipmapEnabled||i.npotScale!=TextureImporterNPOTScale.None||i.maxTextureSize!=512||i.textureCompression!=TextureImporterCompression.Uncompressed;
  i.isReadable=true;i.textureType=TextureImporterType.Default;i.npotScale=TextureImporterNPOTScale.None;i.alphaIsTransparency=true;i.mipmapEnabled=false;i.textureCompression=TextureImporterCompression.Uncompressed;i.maxTextureSize=512;i.wrapMode=TextureWrapMode.Clamp;if(change)i.SaveAndReimport();
  var t=AssetDatabase.LoadAssetAtPath<Texture2D>(path);return SaveSprite(name,Sprite.Create(t,new Rect(0,0,t.width,t.height),Vector2.one*.5f,100,0,SpriteMeshType.FullRect));
 }
 static Texture2D SaveTexture(string name,Texture2D tex){string path=Folder+name+"Texture.asset";var old=AssetDatabase.LoadAssetAtPath<Texture2D>(path);if(old==null){AssetDatabase.CreateAsset(tex,path);return tex;}EditorUtility.CopySerialized(tex,old);UnityEngine.Object.DestroyImmediate(tex);EditorUtility.SetDirty(old);return old;}
 static Sprite SaveSprite(string name,Sprite sprite){sprite.name=name;string path=Folder+name+".asset";var old=AssetDatabase.LoadAssetAtPath<Sprite>(path);if(old==null){AssetDatabase.CreateAsset(sprite,path);return sprite;}EditorUtility.CopySerialized(sprite,old);UnityEngine.Object.DestroyImmediate(sprite);EditorUtility.SetDirty(old);return old;}
 static TMP_SpriteAsset GlyphAsset(TMP_SpriteAsset source,int index,GameClient c)
 {
  var original=source.spriteSheet;var rt=RenderTexture.GetTemporary(original.width,original.height,0,RenderTextureFormat.ARGB32);var previous=RenderTexture.active;
  var tex=new Texture2D(original.width,original.height,TextureFormat.RGBA32,false){name="PolarGlyph"+index};
  try{UnityEngine.Graphics.Blit(original,rt);RenderTexture.active=rt;tex.ReadPixels(new Rect(0,0,tex.width,tex.height),0,0);tex.Apply();}finally{RenderTexture.active=previous;RenderTexture.ReleaseTemporary(rt);}
  foreach(var character in source.spriteCharacterTable){var sprite=Semantic(character.name,c);if(sprite==null)continue;var r=character.glyph.glyphRect;var p=new Color[r.width*r.height];var st=Readable(sprite.texture);
   float k=Mathf.Min((float)r.width/st.width,(float)r.height/st.height);float w=st.width*k,h=st.height*k;
   for(int y=0;y<r.height;y++)for(int x=0;x<r.width;x++){float u=(x-(r.width-w)*.5f)/w,v=(y-(r.height-h)*.5f)/h;if(u>=0&&u<=1&&v>=0&&v<=1)p[y*r.width+x]=st.GetPixelBilinear(u,v);}
   tex.SetPixels(r.x,r.y,r.width,r.height,p);
  }
  tex.Apply();tex=SaveTexture("Glyph"+index,tex);
  string path=Folder+"Glyph"+index+".asset";var asset=AssetDatabase.LoadAssetAtPath<TMP_SpriteAsset>(path);var clone=UnityEngine.Object.Instantiate(source);clone.name=source.name;clone.spriteSheet=tex;clone.material=new Material(source.material){name="Polar glyph "+index};clone.material.mainTexture=tex;
  if(asset==null){AssetDatabase.CreateAsset(clone,path);asset=clone;}else{EditorUtility.CopySerialized(clone,asset);UnityEngine.Object.DestroyImmediate(clone);EditorUtility.SetDirty(asset);}AssetDatabase.AddObjectToAsset(asset.material,asset);asset.UpdateLookupTables();return asset;
 }
}
