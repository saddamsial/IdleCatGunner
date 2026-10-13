using System;
using System.IO;
using UnityEngine;
public static class ExportPenguinTerrain
{
    public static string Run()
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets")throw new Exception("Wrong project");
        var f=UnityEngine.Object.FindAnyObjectByType<Tree_manager>(FindObjectsInactive.Include);
        var dir=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../art/reskin/penguin-expedition/batch-01-runtime/source"));Directory.CreateDirectory(dir);
        var sprites=new[]{f.Map_Grid_list[0].Border_Up_sprite_list[0],f.Map_Grid_list[0].Border_Down_sprite_list[0],f.Ground_sprite_list[0]};var names=new[]{"cliff-up","cliff-down","ground"};
        var info="";
        for(int i=0;i<sprites.Length;i++)
        {
            var s=sprites[i];var tex=s.texture;var rt=RenderTexture.GetTemporary(tex.width,tex.height,0,RenderTextureFormat.ARGB32);var prev=RenderTexture.active;
            UnityEngine.Graphics.Blit(tex,rt);RenderTexture.active=rt;
            var t=new Texture2D((int)s.rect.width,(int)s.rect.height,TextureFormat.RGBA32,false);t.ReadPixels(s.rect,0,0);t.Apply();File.WriteAllBytes(Path.Combine(dir,names[i]+".png"),t.EncodeToPNG());
            RenderTexture.active=prev;RenderTexture.ReleaseTemporary(rt);UnityEngine.Object.DestroyImmediate(t);info+=names[i]+" "+s.rect+" ppu="+s.pixelsPerUnit+" pivot="+s.pivot+" bounds="+s.bounds+"\n";
        }
        File.WriteAllText(Path.Combine(dir,"terrain-info.txt"),info);return info;
    }
}
