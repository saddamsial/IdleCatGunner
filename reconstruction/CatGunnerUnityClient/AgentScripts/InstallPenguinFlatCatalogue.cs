using System;using System.IO;using System.Linq;using System.Collections.Generic;
using UnityEngine;using UnityEditor;using UnityEditor.SceneManagement;using TMPro;
using CatGunner.Runtime;using Newtonsoft.Json.Linq;

public static class InstallPenguinFlatCatalogue
{
 const string Folder="Assets/Game/PenguinFlatCatalogue/";
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/flat-catalogue");
 static Dictionary<Sprite,Sprite> map;
 static readonly List<object> records=new List<object>();
 static T Save<T>(string name,T value) where T:UnityEngine.Object
 {
  value.name=name;string path=Folder+name+".asset";var old=AssetDatabase.LoadAssetAtPath<T>(path);
  if(old==null){AssetDatabase.CreateAsset(value,path);return value;}
  EditorUtility.CopySerialized(value,old);UnityEngine.Object.DestroyImmediate(value);EditorUtility.SetDirty(old);AssetDatabase.SaveAssetIfDirty(old);return old;
 }
 static Sprite Picture(string family,int index)
 {
  string n=family+"-"+index.ToString("00"),path=Folder+n+".png";
  AssetDatabase.ImportAsset(path,ImportAssetOptions.ForceSynchronousImport);var importer=(TextureImporter)AssetImporter.GetAtPath(path);
  if(importer==null)throw new Exception("Missing PNG "+path);
  importer.isReadable=true;importer.textureType=TextureImporterType.Default;importer.mipmapEnabled=false;importer.npotScale=TextureImporterNPOTScale.None;importer.maxTextureSize=512;importer.textureCompression=TextureImporterCompression.Uncompressed;importer.wrapMode=TextureWrapMode.Clamp;importer.alphaIsTransparency=true;importer.SaveAndReimport();
  var tex=AssetDatabase.LoadAssetAtPath<Texture2D>(path);string name=family=="effects"?n:"flat-"+n;
  return Save(name,Sprite.Create(tex,new Rect(0,0,tex.width,tex.height),Vector2.one*.5f,100,0,SpriteMeshType.FullRect));
 }
 static Sprite[] Load(string family,int count)=>Enumerable.Range(0,count).Select(i=>Picture(family,i)).ToArray();
 static Sprite Fit(Sprite old,Sprite target)
 {
  string n="Fit_"+AssetDatabase.AssetPathToGUID(AssetDatabase.GetAssetPath(old))+"_"+target.name;
  int w=Mathf.Max(8,Mathf.RoundToInt(old.rect.width)),h=Mathf.Max(8,Mathf.RoundToInt(old.rect.height));
  var tex=new Texture2D(w,h,TextureFormat.RGBA32,false){filterMode=FilterMode.Bilinear,wrapMode=TextureWrapMode.Clamp};var pixels=new Color[w*h];
  bool backdrop=target.name.Contains("landscapes-");float scale=backdrop?Mathf.Max((float)w/target.texture.width,(float)h/target.texture.height):Mathf.Min((float)w/target.texture.width,(float)h/target.texture.height),tw=target.texture.width*scale,th=target.texture.height*scale;
  for(int y=0;y<h;y++)for(int x=0;x<w;x++){float u=(x-(w-tw)*.5f)/tw,v=(y-(h-th)*.5f)/th;if(u>=0&&u<=1&&v>=0&&v<=1)pixels[y*w+x]=target.texture.GetPixelBilinear(u,v);}
  tex.SetPixels(pixels);tex.Apply();tex=Save(n+"Texture",tex);
  return Save(n,Sprite.Create(tex,new Rect(0,0,w,h),old.pivot/old.rect.size,w/old.bounds.size.x,0,SpriteMeshType.FullRect,old.border));
 }
 static void Map(Sprite old,Sprite next)
 {
  if(old==null||next==null)throw new Exception("Missing sprite binding");var fitted=Fit(old,next);map[old]=fitted;
  if(Vector3.Distance(old.bounds.size,fitted.bounds.size)>.02f)throw new Exception("Bounds mismatch "+old.name);
  records.Add(new{source=AssetDatabase.GetAssetPath(old),target=AssetDatabase.GetAssetPath(fitted),bounds=old.bounds.size.ToString(),pivot=old.pivot.ToString()});
 }
 static void Retarget(Sprite old,Sprite next)
 {
  foreach(var key in map.Keys.ToArray())if(map[key]==old||map[key].name.EndsWith("_"+old.name,StringComparison.Ordinal))Map(key,next);
 }
 public static string Run()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||EditorApplication.isPlaying)throw new Exception("Correct EditMode required");
  var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();
  if(scene.path!="Assets/Game/Scenes/GameClient.unity"||scene.isDirty||EditorApplication.isCompiling)throw new Exception("Saved normal scene required; no scene will be reopened or discarded");
  AssetDatabase.Refresh();
  var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);var full=c.GetComponent<PenguinFullReskin>();var ui=c.GetComponent<PenguinUiTheme>();
  Directory.CreateDirectory(Path.Combine(Dir,"backup"));string backup=Path.Combine(Dir,"backup/GameClient.unity.before");if(!File.Exists(backup))File.Copy(scene.path,backup);
  string baseline=Path.Combine(Dir,"backup/catalogue.json");if(!File.Exists(baseline))File.WriteAllText(baseline,EditorJsonUtility.ToJson(full,true));
  map=full.Sources.Select((s,i)=>new{s,target=full.Replacements[i]}).ToDictionary(p=>p.s,p=>p.target);records.Clear();
  var inventory=JObject.Parse(File.ReadAllText(Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/full-reskin/inventory.json")));
  void Catalogue(string type,string field,Sprite[] targets)
  {
   var entry=inventory["fields"].First(f=>(string)f["type"]==type&&(string)f["field"]==field);var sources=entry["sprites"].Select(s=>AssetDatabase.LoadAssetAtPath<Sprite>((string)s["asset"])).ToArray();
   if(sources.Length!=targets.Length)throw new Exception(type+" count mismatch");for(int i=0;i<sources.Length;i++)Map(sources[i],targets[i]);
  }
  void Series(string family,int count,Sprite[] old,Action<Sprite[]> set)
  {var next=Load(family,count);for(int i=0;i<count;i++)Retarget(old[i],next[i]);set(next);}
  Series("weapons",65,full.Weapons,s=>full.Weapons=s);Catalogue("Gun_manager","Gun_sprites",full.Weapons);
  Series("fish",13,full.Fish,s=>full.Fish=s);foreach(var f in new[]{"Fish_sprites","Fish_Real_sprites","Fish_Outline_sprites"})Catalogue("Fish_manager",f,full.Fish);
  Series("pets",13,full.Pets,s=>full.Pets=s);Catalogue("Pet_manager","Pet_sprites",full.Pets);
  Series("bosses",9,full.Bosses,s=>full.Bosses=s);foreach(var f in new[]{"Boss_Head_sprites","Boss_Head_Die_sprites","Boss_Head_Idle_sprites"})Catalogue("Boss_manager",f,full.Bosses);
  Series("raid-bosses",5,full.RaidBosses,s=>full.RaidBosses=s);Catalogue("Raid_Start_UI","Boss_Sprites",full.RaidBosses);
  Series("monsters",20,full.Monsters,s=>full.Monsters=s);Catalogue("Monster_manager","Monster_sprites",full.Monsters);
  var gems=Load("gems",16);var oldGems=full.Gems.ToArray();
  foreach(int i in new[]{0,1,2,3,8,9,10,11,12,14,15})Retarget(oldGems[i],gems[i]);
  full.Gems=gems;Catalogue("Adventure_manager","Core_sprites",gems.Skip(4).Take(4).ToArray());Catalogue("Mine_manager","Ore_sprites",gems.Take(2).ToArray());
  foreach(var source in map.Keys.ToArray())
  {
   string n=source.name;if(n=="currency_dia_1"||n=="Currency_Dia_Outline")Map(source,gems[0]);
   else if(n=="currency_0")Map(source,gems[1]);else if(n.StartsWith("Currency 3",StringComparison.Ordinal))Map(source,gems[14]);
  }
  Series("effects",4,full.Effects,s=>full.Effects=s);
  Series("landscapes",4,full.Landscapes,s=>full.Landscapes=s);
  var props=Load("props",20);var expedition=c.GetComponent<PenguinExpeditionTheme>();var oldIce=expedition.Ice.ToArray();var nextIce=new Sprite[oldIce.Length];
  // User approved restoring the previous angular snow-capped ice. Keep it
  // separate from future flat-UI catalogue installs and environment drafts.
  for(int i=0;i<oldIce.Length;i++){nextIce[i]=AssetDatabase.LoadAssetAtPath<Sprite>("Assets/Game/PenguinExpedition/Ice"+i+".asset");if(nextIce[i]==null)throw new Exception("Missing approved previous ice");Retarget(oldIce[i],nextIce[i]);}expedition.Ice=nextIce;EditorUtility.SetDirty(expedition);
  foreach(var source in map.Keys.ToArray())
  {
   if(source.name.StartsWith("Bush_",StringComparison.Ordinal)||source.name=="Forest_Grass")Map(source,props[5]);
   else if(source.name.StartsWith("Item_Chest",StringComparison.Ordinal))Map(source,props[9]);
   else if(source.name.StartsWith("Relic_Money",StringComparison.Ordinal))Map(source,props[14]);
  }
  // Rebuild inline currency atlases, preserving original glyph IDs and metrics.
  for(int i=0;i<full.ThemedGlyphs.Length;i++)
  {
   var source=full.ThemedGlyphs[i];var sheet=(Texture2D)source.spriteSheet;
   var tex=new Texture2D(sheet.width,sheet.height,TextureFormat.RGBA32,false){filterMode=FilterMode.Bilinear};tex.SetPixels(sheet.GetPixels());
   foreach(var ch in full.SourceGlyphs[i].spriteCharacterTable)
   {
    var sprite=ch.name=="currency_dia_0"?ui.Coin:ch.name=="currency_dia_1"?gems[0]:ch.name=="currency_0"?gems[1]:ch.name=="Currency 3"?gems[14]:ch.name=="Currency_SlotGem"?full.Icons[6]:null;
    if(sprite==null)continue;var rect=ch.glyph.glyphRect;float scale=Mathf.Min((float)rect.width/sprite.texture.width,(float)rect.height/sprite.texture.height),w=sprite.texture.width*scale,h=sprite.texture.height*scale;var pix=new Color[rect.width*rect.height];
    for(int y=0;y<rect.height;y++)for(int x=0;x<rect.width;x++){float u=(x-(rect.width-w)*.5f)/w,v=(y-(rect.height-h)*.5f)/h;if(u>=0&&u<=1&&v>=0&&v<=1)pix[y*rect.width+x]=sprite.texture.GetPixelBilinear(u,v);}tex.SetPixels(rect.x,rect.y,rect.width,rect.height,pix);
   }
   tex.Apply();tex=Save("FlatGlyph"+i+"Texture",tex);var clone=UnityEngine.Object.Instantiate(source);clone.spriteSheet=tex;
   var mat=new Material(source.material){name="Flat catalogue glyph "+i};mat.mainTexture=tex;clone.material=mat;
   var asset=Save("FlatGlyph"+i,clone);asset.name=source.name;AssetDatabase.AddObjectToAsset(mat,asset);asset.UpdateLookupTables();EditorUtility.SetDirty(asset);AssetDatabase.SaveAssetIfDirty(asset);full.ThemedGlyphs[i]=asset;
  }
  full.Sources=map.Keys.ToArray();full.Replacements=full.Sources.Select(s=>map[s]).ToArray();full.PreserveClassicRingStyle=true;
  EditorUtility.SetDirty(full);EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);
  File.WriteAllText(Path.Combine(Dir,"bindings.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{counts=new{weapons=65,fish=13,pets=13,bosses=9,raidBosses=5,monsters=20,gems=16,effects=4,props=20,landscapes=4},records,totalBindings=full.Sources.Length,preserved="Approved penguin body, bones, expressions, native ring animation, circular map and footprints"},Newtonsoft.Json.Formatting.Indented));
  return "Imported 169 flat cartoon catalogue sprites, installed catalogue arrays, ice, decorations, chests and 5 currency atlases; bindings="+full.Sources.Length+". Native gameplay IDs, bounds and pivots preserved.";
 }
}
