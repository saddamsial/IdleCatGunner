using System;using System.Linq;using System.IO;using UnityEngine;using UnityEditor;using TMPro;
public static class InspectPenguinGlyphs
{
 public static string Run(){
 var assets=AssetDatabase.FindAssets("t:TMP_SpriteAsset").Select(g=>AssetDatabase.LoadAssetAtPath<TMP_SpriteAsset>(AssetDatabase.GUIDToAssetPath(g))).Where(a=>a!=null).ToArray();
 var result=assets.Select(a=>new {path=AssetDatabase.GetAssetPath(a),a.name,texture=a.spriteSheet.name,characters=a.spriteCharacterTable.Select(c=>new {c.name,c.unicode,index=c.glyphIndex,rect=c.glyph.glyphRect.ToString()})});
 var json=Newtonsoft.Json.JsonConvert.SerializeObject(result,Newtonsoft.Json.Formatting.Indented);File.WriteAllText(Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/full-reskin/glyph-inventory.json"),json);return json;
 }
}
