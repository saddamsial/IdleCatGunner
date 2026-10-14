using System;
using System.IO;
using System.Linq;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using CatGunner.Runtime;

public static class InstallPenguin
{
    private const string Folder="Assets/Game/PenguinExpedition/";
    public static string Run()
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets")throw new Exception("Wrong project");
        if(EditorApplication.isPlaying)throw new Exception("EditMode required");
        var scene=EditorSceneManager.OpenScene("Assets/Game/Scenes/GameClient.unity");
        var client=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
        AssetDatabase.Refresh();
        foreach(var file in new[]{"penguin","ice","glacier-up","glacier-down","snow-ground"})
        {
            var importer=(TextureImporter)AssetImporter.GetAtPath(Folder+file+".png");
            importer.textureType=TextureImporterType.Default;importer.npotScale=TextureImporterNPOTScale.None;importer.alphaIsTransparency=true;importer.mipmapEnabled=false;importer.textureCompression=TextureImporterCompression.Uncompressed;importer.maxTextureSize=1024;importer.filterMode=FilterMode.Bilinear;importer.SaveAndReimport();
        }
        var t=client.GetComponent<PenguinExpeditionTheme>()??Undo.AddComponent<PenguinExpeditionTheme>(client.gameObject);
        t.Penguin=SaveSprite("Penguin",Texture("penguin"),100,Vector2.one*.5f);
        t.Ice=Enumerable.Range(0,4).Select(i=>Fit("Ice"+i,Texture("ice"),client.Forest.Tree_sprites[i])).ToArray();
        t.SnowGround=Fit("SnowGround",Texture("snow-ground"),client.Forest.Ground_sprite_list[0]);
        var map=client.Forest.Map_Grid_list[0];
        t.GlacierUp=Fit("GlacierUp",Texture("glacier-up"),map.Border_Up_sprite_list[0]);
        t.GlacierDown=Fit("GlacierDown",Texture("glacier-down"),map.Border_Down_sprite_list[0]);
        foreach(var path in new[]{"IceEffects.mat","IceShardTexture.asset","IceShard.asset"})AssetDatabase.DeleteAsset(Folder+path);
        AssetDatabase.DeleteAsset("Assets/Game/Runtime/PenguinIceTarget.cs");
        t.enabled=true;EditorUtility.SetDirty(t);EditorSceneManager.MarkSceneDirty(scene);
        if(!EditorSceneManager.SaveScene(scene))throw new Exception("Save failed");AssetDatabase.SaveAssets();GameProjectEditor.SetPortraitGameView();
        return "Installed no-scarf penguin, ice targets, snow and glacier tiles; original sprite assets retained. Scene: "+scene.path;
    }
    private static Texture2D Texture(string file)=>AssetDatabase.LoadAssetAtPath<Texture2D>(Folder+file+".png");
    private static Sprite Fit(string name,Texture2D tex,Sprite original)
    {
        float ppu=tex.height/original.bounds.size.y;
        var size=new Vector2(tex.width/ppu,tex.height/ppu);var center=original.bounds.center;
        var pivot=new Vector2(.5f-center.x/size.x,.5f-center.y/size.y);
        return SaveSprite(name,tex,ppu,pivot);
    }
    private static Sprite SaveSprite(string name,Texture2D tex,float ppu,Vector2 pivot)
    {
        string path=Folder+name+".asset";var existing=AssetDatabase.LoadAssetAtPath<Sprite>(path);
        var sprite=Sprite.Create(tex,new Rect(0,0,tex.width,tex.height),pivot,ppu,0,SpriteMeshType.FullRect);sprite.name=name;if(existing!=null){EditorUtility.CopySerialized(sprite,existing);UnityEngine.Object.DestroyImmediate(sprite);EditorUtility.SetDirty(existing);return existing;}AssetDatabase.CreateAsset(sprite,path);return sprite;
    }
}
