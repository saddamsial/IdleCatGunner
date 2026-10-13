using System;using System.IO;using System.Linq;using System.Collections.Generic;
using UnityEngine;using UnityEditor;using UnityEditor.SceneManagement;using CatGunner.Recovery;
public static class InstallPenguinExtras
{
 const string Folder="Assets/Recovery/PenguinExtras/";
 static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/theme-audit");
 static readonly Dictionary<Texture2D,Texture2D> copies=new Dictionary<Texture2D,Texture2D>();
 static Texture2D Readable(Texture2D source)
 {
  if(source.isReadable)return source;if(copies.TryGetValue(source,out var copy))return copy;
  var rt=RenderTexture.GetTemporary(source.width,source.height,0,RenderTextureFormat.ARGB32);var old=RenderTexture.active;
  copy=new Texture2D(source.width,source.height,TextureFormat.RGBA32,false);
  try{UnityEngine.Graphics.Blit(source,rt);RenderTexture.active=rt;copy.ReadPixels(new Rect(0,0,source.width,source.height),0,0);copy.Apply();}
  finally{RenderTexture.active=old;RenderTexture.ReleaseTemporary(rt);}copies[source]=copy;return copy;
 }
 static T Save<T>(string name,T value) where T:UnityEngine.Object
 {
  value.name=name;string path=Folder+name+".asset";var old=AssetDatabase.LoadAssetAtPath<T>(path);if(old==null){AssetDatabase.CreateAsset(value,path);return value;}EditorUtility.CopySerialized(value,old);UnityEngine.Object.DestroyImmediate(value);EditorUtility.SetDirty(old);AssetDatabase.SaveAssetIfDirty(old);return old;
 }
 static Texture2D Texture(string name,int width,int height,Func<float,float,Color> pixel)
 {
  var texture=new Texture2D(width,height,TextureFormat.RGBA32,false){name=name,filterMode=FilterMode.Bilinear,wrapMode=TextureWrapMode.Clamp};var pixels=new Color[width*height];for(int y=0;y<height;y++)for(int x=0;x<width;x++)pixels[y*width+x]=pixel((x+.5f)/width,(y+.5f)/height);texture.SetPixels(pixels);texture.Apply();return Save(name+"Texture",texture);
 }
 static Sprite Art(string name,Texture2D texture)=>Save(name,Sprite.Create(texture,new Rect(0,0,texture.width,texture.height),Vector2.one*.5f,100,0,SpriteMeshType.FullRect));
 static Texture2D Png(string name,int max)
 {
  var path=Folder+name+".png";AssetDatabase.ImportAsset(path,ImportAssetOptions.ForceSynchronousImport);var importer=(TextureImporter)AssetImporter.GetAtPath(path);importer.isReadable=true;importer.textureType=TextureImporterType.Default;importer.mipmapEnabled=false;importer.npotScale=TextureImporterNPOTScale.None;importer.maxTextureSize=max;importer.textureCompression=TextureImporterCompression.Uncompressed;importer.wrapMode=TextureWrapMode.Clamp;importer.alphaIsTransparency=true;importer.SaveAndReimport();return AssetDatabase.LoadAssetAtPath<Texture2D>(path);
 }
 static Sprite Fit(Sprite old,Sprite target,bool stretch=false)
 {
  string name="Fit_"+AssetDatabase.AssetPathToGUID(AssetDatabase.GetAssetPath(old))+"_"+target.name;
  int w=Mathf.Max(8,Mathf.RoundToInt(old.rect.width)),h=Mathf.Max(8,Mathf.RoundToInt(old.rect.height));
  bool ground=target.name=="SnowGround";float k=ground?Mathf.Max((float)w/target.texture.width,(float)h/target.texture.height):Mathf.Min((float)w/target.texture.width,(float)h/target.texture.height);float tw=target.texture.width*k,th=target.texture.height*k;
  var source=Readable(target.texture);
  var texture=Texture(name,w,h,(x,y)=>{float u=stretch?x:(x*w-(w-tw)*.5f)/tw,v=stretch?y:(y*h-(h-th)*.5f)/th;return u<0||u>1||v<0||v>1?Color.clear:source.GetPixelBilinear(u,v);});
  var pivot=new Vector2(old.pivot.x/old.rect.width,old.pivot.y/old.rect.height);var sprite=Sprite.Create(texture,new Rect(0,0,w,h),pivot,w/old.bounds.size.x,0,SpriteMeshType.FullRect,old.border);sprite.name=name;return Save(name,sprite);
 }
 public static string Run()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||EditorApplication.isPlaying)throw new Exception("Correct EditMode required");
  var scene=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");AssetDatabase.Refresh();
  var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);var full=c.GetComponent<PenguinFullReskin>();var ui=c.GetComponent<PenguinUiTheme>();var snow=c.GetComponent<PenguinExpeditionTheme>().SnowGround;
  var cloud=Art("extras-cloud-save",Png("cloud-save",256));var app=Png("app-icon",1024);
  if(!File.Exists(Path.Combine(Dir,"backup/player-branding.json")))File.WriteAllText(Path.Combine(Dir,"backup/player-branding.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{PlayerSettings.productName,icons=PlayerSettings.GetIconsForTargetGroup(BuildTargetGroup.Unknown).Select(t=>t==null?null:AssetDatabase.GetAssetPath(t)).ToArray()},Newtonsoft.Json.Formatting.Indented));
  PlayerSettings.SetIconsForTargetGroup(BuildTargetGroup.Unknown,new[]{app});PlayerSettings.productName="企鹅破冰探险";
  var navy=new Color(.094f,.243f,.353f);var blue=new Color(.21f,.66f,.87f);var ice=new Color(.84f,.95f,.99f);
  Sprite Gradient(string name,Func<float,float,Color> color)=>Art(name,Texture(name,128,128,color));
  var gradient1=Gradient("extras-gradient-reward",(x,y)=>new Color(blue.r,blue.g,blue.b,x*.65f));
  var gradient2=Gradient("extras-gradient-map-title",(x,y)=>new Color(navy.r,navy.g,navy.b,.86f*(1-x)));
  var gradient3=Gradient("extras-gradient-prism",(x,y)=>new Color(.35f,.78f,1,Mathf.Pow(Mathf.Clamp01(1-Vector2.Distance(new Vector2(x,y),Vector2.one*.5f)*2),1.4f)*.65f));
  var gradient4=Gradient("extras-gradient-pet-slot",(x,y)=>new Color(blue.r,blue.g,blue.b,.50f*(1-y)));
  float Rounded(float x,float y,float w,float h,float radius){var q=new Vector2(Mathf.Abs(x-.5f)*w-w*.5f+radius,Mathf.Abs(y-.5f)*h-h*.5f+radius);float distance=new Vector2(Mathf.Max(q.x,0),Mathf.Max(q.y,0)).magnitude+Mathf.Min(Mathf.Max(q.x,q.y),0)-radius;return 1-Mathf.Clamp01(distance+.5f);}
  var healthBack=Art("extras-health-frame",Texture("extras-health-frame",118,72,(x,y)=>{float a=Rounded(x,y,118,72,16);var col=Color.Lerp(navy,new Color(.18f,.37f,.49f),y);col.a=a;return col;}));
  var healthFill=Art("extras-health-fill",Texture("extras-health-fill",88,42,(x,y)=>{var col=Color.Lerp(blue,ice,y*.55f);col.a=Rounded(x,y,88,42,8);return col;}));
  var square=Art("extras-map-base",Texture("extras-map-base",32,32,(x,y)=>Color.white));
  var circle=Art("extras-shadow",Texture("extras-shadow",128,128,(x,y)=>new Color(1,1,1,Mathf.Clamp01((.5f-Vector2.Distance(new Vector2(x,y),Vector2.one*.5f))*128))));
  // Three chevrons form the aim marker; original target transform owns rotation.
  var target=Art("extras-aim-marker",Texture("extras-aim-marker",192,192,(x,y)=>{
   var v=new Vector2(x-.5f,y-.5f);float radius=v.magnitude;float angle=Mathf.Atan2(v.y,v.x);float segment=Mathf.Abs(Mathf.DeltaAngle(angle*Mathf.Rad2Deg,Mathf.Round(angle*Mathf.Rad2Deg/120)*120));float outline=1-Mathf.Clamp01((segment-28)/4);float mask=Mathf.Clamp01((radius-.26f)*192)*Mathf.Clamp01((.46f-radius)*192)*outline;var color=Color.Lerp(navy,blue,Mathf.Clamp01((radius-.29f)*50)*Mathf.Clamp01((.43f-radius)*50));color.a=mask;return color;}));
  var mapping=full.Sources.Select((s,i)=>new{s,target=full.Replacements[i]}).ToDictionary(p=>p.s,p=>p.target);var added=new List<object>();
  void Map(string source,Sprite targetSprite,bool stretch=false){var old=AssetDatabase.LoadAssetAtPath<Sprite>(source);if(old==null)throw new Exception("Missing "+source);var next=Fit(old,targetSprite,stretch);mapping[old]=next;added.Add(new{source,old.name,target=AssetDatabase.GetAssetPath(next),bounds=old.bounds.ToString(),replacementBounds=next.bounds.ToString(),stretch});}
  void Retarget(Sprite old,Sprite next){foreach(var key in mapping.Keys.ToArray())if(mapping[key].name.EndsWith("_"+old.name,StringComparison.Ordinal))Map(AssetDatabase.GetAssetPath(key),next);}
  Map("Assets/Sprite/Gradiann_1.asset",gradient1,true);Map("Assets/Sprite/Gradiann_2.asset",gradient2,true);Map("Assets/Sprite/Gradiann_3.asset",gradient3,true);Map("Assets/Sprite/Gradiann_4.asset",gradient4,true);
  Map("Assets/Sprite/쿠팡.asset",ui.Portrait);Map("Assets/Sprite/google-play (2).asset",cloud);Map("Assets/Sprite/icon_icloud.asset",cloud);
  Map("Assets/Sprite/1_1.asset",snow);Map("Assets/Sprite/0_6.asset",snow);Map("Assets/Sprite/Grass-8.asset",snow);
  Map("Assets/Sprite/Square.asset",square,true);Map("Assets/Sprite/Circle.asset",circle,true);Map("Assets/Sprite/target.asset",target);
  Map("Assets/Sprite/Slider (Black).asset",healthBack,true);Map("Assets/Sprite/Slider (Fill).asset",healthFill,true);
  // Later user feedback: compact pointer, original-style stats and blue gems.
  if(File.Exists(Folder+"guide-hand-v2.png"))
  {
   var hand=Art("extras-guide-hand",Png("guide-hand-v2",256));Map("Assets/Sprite/Hand.asset",hand);ui.Flipper=mapping[AssetDatabase.LoadAssetAtPath<Sprite>("Assets/Sprite/Hand.asset")];EditorUtility.SetDirty(ui);
   var originals=full.Icons.ToArray();var oldGems=full.Gems.ToArray();
   var power=Art("extras-attack-power",Png("attack-power-v2",256));var speed=Art("extras-attack-speed",Png("attack-speed-v2",256));
   var colors=new[]{"blue-diamond","purple-diamond","white-diamond","amber-diamond"}.Select(n=>Art("extras-"+n,Png(n,256))).ToArray();
   var packs=Enumerable.Range(0,4).Select(i=>Art("extras-diamond-pack-"+i,Png("diamond-pack-"+i.ToString("00"),256))).ToArray();
   var diamond=colors[0].texture;
   var ticket=Art("extras-blue-ticket",Texture("extras-blue-ticket",224,144,(x,y)=>{
    float alpha=Rounded(x,y,224,144,14);float cut=Mathf.Min(Vector2.Distance(new Vector2(x*224,y*144),new Vector2(0,72)),Vector2.Distance(new Vector2(x*224,y*144),new Vector2(224,72)));alpha*=Mathf.Clamp01(cut-11);
    var color=x<.035f||x>.965f||y<.045f||y>.955f?navy:ice;
    if(Mathf.Abs(x-.77f)<.012f&&Mathf.Floor(y*12)%2==0)color=blue;
    if(x>.28f&&x<.66f&&y>.20f&&y<.80f){var gem=diamond.GetPixelBilinear((x-.28f)/.38f,(y-.2f)/.6f);color=Color.Lerp(color,gem,gem.a);}color.a=alpha;return color;}));
   Retarget(originals[0],power);Retarget(originals[1],speed);Retarget(originals[6],ticket);full.Icons[0]=power;full.Icons[1]=speed;full.Icons[6]=ticket;
   for(int i=0;i<14;i++){var next=i<8?colors[i%4]:i<12?packs[i-8]:i==12?ticket:colors[1];Retarget(oldGems[i],next);full.Gems[i]=next;}
  }
  if(File.Exists(Folder+"flat-ui-icons-00.png"))
  {
   var icons=Enumerable.Range(0,16).Select(i=>Art("flat-ui-icons-"+i.ToString("00"),Png("flat-ui-icons-"+i.ToString("00"),256))).ToArray();
   var utilities=Enumerable.Range(0,24).Select(i=>Art("flat-ui-utilities-"+i.ToString("00"),Png("flat-ui-utilities-"+i.ToString("00"),256))).ToArray();
   var mascots=Enumerable.Range(0,8).Select(i=>Art("flat-ui-mascots-"+i.ToString("00"),Png("flat-ui-mascots-"+i.ToString("00"),256))).ToArray();
   for(int i=0;i<icons.Length;i++)Retarget(full.Icons[i],icons[i]);for(int i=0;i<utilities.Length;i++)Retarget(full.Utilities[i],utilities[i]);full.Icons=icons;full.Utilities=utilities;
   Retarget(full.WeeklyShop,mascots[5]);full.WeeklyShop=mascots[5];
   var oldUi=new[]{ui.Portrait,ui.Win,ui.Fail,ui.Rest,ui.Shop,ui.Coin};var newUi=new[]{mascots[0],mascots[2],mascots[3],mascots[4],mascots[5],Art("flat-ui-coin",Png("flat-ui-coin",256))};
   for(int i=0;i<oldUi.Length;i++){Retarget(oldUi[i],newUi[i]);Map(AssetDatabase.GetAssetPath(oldUi[i]),newUi[i]);}
   ui.Portrait=newUi[0];ui.Win=newUi[1];ui.Fail=newUi[2];ui.Rest=newUi[3];ui.Shop=newUi[4];ui.Coin=newUi[5];ui.Penguin=mascots[1];ui.Gear=utilities[6];
   foreach(var key in mapping.Keys.ToArray())if(key.name=="google-play (2)"||key.name=="icon_icloud")Map(AssetDatabase.GetAssetPath(key),mascots[7]);
   Sprite Panel(string name,int kind)
   {
    var texture=Texture(name,96,96,(x,y)=>{float a=Rounded(x,y,96,96,16);float inner=Rounded(x,y,88,88,12);var color=kind==1?Color.white:Color.Lerp(PenguinUiTheme.Navy,Color.white,inner);if(kind==2)a*=1-inner;color.a=a;return color;});
    return Save(name,Sprite.Create(texture,new Rect(0,0,96,96),Vector2.one*.5f,100,0,SpriteMeshType.FullRect,Vector4.one*24));
   }
   var panels=new[]{Panel("flat-ui-panel",0),Panel("flat-ui-fill",1),Panel("flat-ui-outline",2)};var previousPanels=new[]{ui.Panel,ui.Fill,ui.Outline};for(int i=0;i<3;i++)Map(AssetDatabase.GetAssetPath(previousPanels[i]),panels[i],true);ui.Panel=panels[0];ui.Fill=panels[1];ui.Outline=panels[2];
   var oldCircle=ui.Circle;ui.Circle=Art("flat-ui-circle",Texture("flat-ui-circle",96,96,(x,y)=>{float d=Vector2.Distance(new Vector2(x,y),Vector2.one*.5f)*96;var color=d>40?PenguinUiTheme.Navy:Color.white;color.a=Mathf.Clamp01(44-d);return color;}));Map(AssetDatabase.GetAssetPath(oldCircle),ui.Circle,true);
   var head=mascots[0].texture;var flatApp=Texture("flat-ui-app-icon",1024,1024,(x,y)=>{var background=new Color(.24f,.74f,.94f,1);if(x>.10f&&x<.90f&&y>.17f&&y<.83f){var p=head.GetPixelBilinear((x-.1f)/.8f,(y-.17f)/.66f);background=Color.Lerp(background,p,p.a);}background.a=1;return background;});PlayerSettings.SetIconsForTargetGroup(BuildTargetGroup.Unknown,new[]{flatApp});EditorUtility.SetDirty(ui);
  }
  if(File.Exists(Folder+"guide-hand-v2.png"))
  {
   for(int i=0;i<full.OriginalGlyphs.Length;i++)
   {
    var source=full.ThemedGlyphs[i];var oldTexture=Readable((Texture2D)source.spriteSheet);var texture=new Texture2D(oldTexture.width,oldTexture.height,TextureFormat.RGBA32,false){name="FeedbackGlyph"+i,filterMode=FilterMode.Bilinear};texture.SetPixels(oldTexture.GetPixels());
    foreach(var ch in full.OriginalGlyphs[i].spriteCharacterTable)
    {
     Sprite glyph=ch.name=="currency_dia_0"?ui.Coin:ch.name=="currency_dia_1"?full.Gems[0]:ch.name=="currency_0"?full.Gems[1]:ch.name=="Currency_SlotGem"?full.Icons[6]:null;if(glyph==null)continue;
     var rect=ch.glyph.glyphRect;var pixels=new Color[rect.width*rect.height];float scale=Mathf.Min((float)rect.width/glyph.texture.width,(float)rect.height/glyph.texture.height);float gw=glyph.texture.width*scale,gh=glyph.texture.height*scale;
     for(int y=0;y<rect.height;y++)for(int x=0;x<rect.width;x++){float u=(x-(rect.width-gw)*.5f)/gw,v=(y-(rect.height-gh)*.5f)/gh;if(u>=0&&u<=1&&v>=0&&v<=1)pixels[y*rect.width+x]=glyph.texture.GetPixelBilinear(u,v);}texture.SetPixels(rect.x,rect.y,rect.width,rect.height,pixels);
    }
    texture.Apply();texture=Save("FeedbackGlyph"+i+"Texture",texture);
    var asset=UnityEngine.Object.Instantiate(source);var material=new Material(source.material){name="Original-style polar currency "+i};material.mainTexture=texture;asset.material=material;asset.spriteSheet=texture;
    asset=Save("FeedbackGlyph"+i,asset);asset.name=source.name;AssetDatabase.AddObjectToAsset(material,asset);asset.UpdateLookupTables();EditorUtility.SetDirty(asset);AssetDatabase.SaveAssetIfDirty(asset);full.ThemedGlyphs[i]=asset;
   }
  }
  full.Sources=mapping.Keys.ToArray();full.Replacements=full.Sources.Select(s=>mapping[s]).ToArray();
  full.OriginalTextures=new Texture[]{AssetDatabase.LoadAssetAtPath<Texture2D>("Assets/Texture2D/rvxhrapxg9rmr0d0n72a50m7hm.png")};full.ThemedTextures=new Texture[]{ui.IceStripe};
  full.PreserveOriginalRingStyle=true;EditorUtility.SetDirty(full);EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);
  File.WriteAllText(Path.Combine(Dir,"added-bindings.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{sprites=added,textures=full.OriginalTextures.Select((t,i)=>new{source=AssetDatabase.GetAssetPath(t),target=AssetDatabase.GetAssetPath(full.ThemedTextures[i])}),totalSpriteBindings=full.Sources.Length,appIcons=PlayerSettings.GetIconsForTargetGroup(BuildTargetGroup.Unknown).Select(AssetDatabase.GetAssetPath).ToArray(),PlayerSettings.productName},Newtonsoft.Json.Formatting.Indented));
  foreach(var copy in copies.Values)UnityEngine.Object.DestroyImmediate(copy);copies.Clear();
  return "Installed flat cartoon UI with "+added.Count+" exact sprite bindings, 1 RawImage texture mapping, themed app icon and title. Native ring style restored; approved character animation preserved.";
 }
}
