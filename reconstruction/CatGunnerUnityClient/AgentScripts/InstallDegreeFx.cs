using System;using System.IO;using System.Linq;using UnityEngine;using UnityEditor;using CatGunner.Runtime;
public static class InstallDegreeFx {
 public static object Run(){
 if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||Application.isPlaying)throw new Exception("Correct EditMode required");
 var full=UnityEngine.Object.FindAnyObjectByType<PenguinFullReskin>(FindObjectsInactive.Include);if(full==null)throw new Exception("No theme");
 foreach(string n in new[]{"halo","shadow-rings"}){string path="Assets/Game/Resources/DegreeFx/"+n+".png";AssetDatabase.ImportAsset(path,ImportAssetOptions.ForceSynchronousImport);var importer=(TextureImporter)AssetImporter.GetAtPath(path);importer.textureType=TextureImporterType.Default;importer.alphaIsTransparency=true;importer.mipmapEnabled=false;importer.wrapMode=TextureWrapMode.Clamp;importer.npotScale=TextureImporterNPOTScale.None;importer.textureCompression=TextureImporterCompression.Uncompressed;importer.maxTextureSize=512;importer.SaveAndReimport();}
 for(int i=0;i<4;i++)AssetDatabase.ImportAsset("Assets/Game/PenguinFlatCatalogue/effects-"+i.ToString("00")+".png",ImportAssetOptions.ForceSynchronousImport);
 int fitted=0;
 for(int i=0;i<full.Replacements.Length;i++){
 var target=full.Replacements[i];if(target==null||!AssetDatabase.GetAssetPath(target).Contains("PenguinFlatCatalogue/Fit_")||!target.name.EndsWith("effects-01",StringComparison.Ordinal))continue;
 var source=full.Effects[1].texture;var tex=target.texture;int w=tex.width,h=tex.height;var image=new Texture2D(w,h,TextureFormat.RGBA32,false){filterMode=FilterMode.Bilinear,wrapMode=TextureWrapMode.Clamp};var colors=new Color[w*h];float scale=Mathf.Min((float)w/source.width,(float)h/source.height),tw=source.width*scale,th=source.height*scale;
 for(int y=0;y<h;y++)for(int x=0;x<w;x++){float u=(x-(w-tw)*.5f)/tw,v=(y-(h-th)*.5f)/th;if(u>=0&&u<=1&&v>=0&&v<=1)colors[y*w+x]=source.GetPixelBilinear(u,v);}
 image.SetPixels(colors);image.Apply();image.name=tex.name;EditorUtility.CopySerialized(image,tex);UnityEngine.Object.DestroyImmediate(image);EditorUtility.SetDirty(tex);AssetDatabase.SaveAssetIfDirty(tex);fitted++;
 }
 return new{fitted,source=full.Effects.Select(s=>new{path=AssetDatabase.GetAssetPath(s),width=s.texture.width,height=s.texture.height}),sceneDirty=full.gameObject.scene.isDirty};
 }
}
