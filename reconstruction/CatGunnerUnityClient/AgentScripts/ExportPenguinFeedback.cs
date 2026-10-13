using System;using System.IO;using System.Linq;using UnityEngine;using UnityEditor;using CatGunner.Recovery;
public static class ExportPenguinFeedback
{
 public static string Run()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||Application.isPlaying)throw new Exception("Correct EditMode required");
  string dir=Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/theme-audit/feedback-reference");Directory.CreateDirectory(dir);
  var names=new[]{"Hand","Currency 2_1","Currency 2_2","currency_dia_1","Currency_Dia_Outline","currency_0","Prism_0","Prism_1","Prism_2","Prism_3","Currency 3_0"};
  var sprites=AssetDatabase.FindAssets("t:Sprite",new[]{"Assets/Sprite"}).Select(g=>AssetDatabase.LoadAssetAtPath<Sprite>(AssetDatabase.GUIDToAssetPath(g))).Where(s=>s!=null&&names.Contains(s.name)).ToArray();
  foreach(var sprite in sprites)
  {
   var rect=sprite.rect;var rt=RenderTexture.GetTemporary(sprite.texture.width,sprite.texture.height,0,RenderTextureFormat.ARGB32);var old=RenderTexture.active;var copy=new Texture2D(Mathf.RoundToInt(rect.width),Mathf.RoundToInt(rect.height),TextureFormat.RGBA32,false);
   try{UnityEngine.Graphics.Blit(sprite.texture,rt);RenderTexture.active=rt;copy.ReadPixels(rect,0,0);copy.Apply();File.WriteAllBytes(Path.Combine(dir,sprite.name+".png"),copy.EncodeToPNG());}finally{RenderTexture.active=old;RenderTexture.ReleaseTemporary(rt);UnityEngine.Object.DestroyImmediate(copy);}
  }
  return string.Join(", ",sprites.Select(s=>s.name));
 }
}
