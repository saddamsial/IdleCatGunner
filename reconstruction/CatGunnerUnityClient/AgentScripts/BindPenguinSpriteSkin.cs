using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.U2D;
using UnityEngine.U2D.Animation;
using UnityEditor;
using UnityEditor.U2D.Sprites;

// Run with Unity CLI run_script in Edit mode. No serialized YAML edits.
public static class BindPenguinSpriteSkin
{
    const string Folder = "Assets/Game/PenguinExpedition/";
    public static string Run()
    {
        if (Application.isPlaying || Application.dataPath != "/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets")
            throw new Exception("Binding requires this project's Edit mode.");
        var asset = AssetDatabase.LoadAssetAtPath<Sprite>(Folder + "Penguin.asset");
        var guid = AssetDatabase.AssetPathToGUID(Folder + "Penguin.asset");
        var importer = (TextureImporter)AssetImporter.GetAtPath(Folder + "penguin.png");
        // Convert the existing texture through its importer, preserving texture GUID and pixels.
        importer.textureType = TextureImporterType.Sprite;
        importer.spriteImportMode = SpriteImportMode.Single;
        importer.spritePixelsPerUnit = asset.pixelsPerUnit;
        importer.spritePivot = asset.pivot / asset.rect.size;
        importer.SaveAndReimport();
        var factory = new SpriteDataProviderFactories();
        factory.Init();
        var provider = factory.GetSpriteEditorDataProviderFromObject(importer);
        if (provider == null) throw new Exception("Sprite data provider unavailable.");
        provider.InitSpriteEditorDataProvider();
        var capability = provider.GetDataProvider<ISpriteFrameEditCapability>();
        if (capability == null || !capability.GetEditCapability().HasCapability(EEditCapability.EditSpriteRect))
            throw new Exception("Sprite frame editing is unsupported; binding aborted.");
        var bones = provider.GetDataProvider<ISpriteBoneDataProvider>();
        var mesh = provider.GetDataProvider<ISpriteMeshDataProvider>();
        if (bones == null || mesh == null) throw new Exception("Bone/mesh providers are unsupported; binding aborted.");
        var rect = provider.GetSpriteRects().Single();
        if (rect.rect.size != asset.rect.size) throw new Exception("Texture dimensions changed; binding aborted.");
        string[] names = { "PenguinRoot", "LeftFoot", "RightFoot", "RightFlipper", "Head", "LeftFlipper", "Grip" };
        var points = new[] { rect.rect.size * .5f, new Vector2(.28f,.13f)*rect.rect.size,
            new Vector2(.75f,.13f)*rect.rect.size, new Vector2(.85f,.5f)*rect.rect.size,
            new Vector2(.53f,.57f)*rect.rect.size, new Vector2(.22f,.44f)*rect.rect.size,
            new Vector2(.41f,.35f)*rect.rect.size };
        var list = new List<SpriteBone>();
        for (int i = 0; i < names.Length; i++)
            list.Add(new SpriteBone { name=names[i], guid=System.Guid.NewGuid().ToString("N"), parentId=i==0?-1:i==6?5:0,
                position=i==0?(Vector3)points[i]:(Vector3)(points[i]-points[i==6?5:0]),
                rotation=Quaternion.identity, length=i==0?rect.rect.height*.45f:rect.rect.height*.12f });
        bones.SetBones(rect.spriteID, list);
        const int columns=24, rows=28;
        var vertices = new Vertex2DMetaData[(columns+1)*(rows+1)];
        for(int y=0;y<=rows;y++) for(int x=0;x<=columns;x++)
        {
            float u=(float)x/columns,v=(float)y/rows;
            float feet=1-Mathf.SmoothStep(0,1,Mathf.InverseLerp(.1f,.24f,v));
            float left=feet*(1-Mathf.SmoothStep(0,1,Mathf.InverseLerp(.43f,.55f,u)));
            float right=feet-left;
            float wing=Mathf.SmoothStep(0,1,Mathf.InverseLerp(.12f,.25f,v))*(1-Mathf.SmoothStep(0,1,Mathf.InverseLerp(.51f,.61f,v)))*Mathf.SmoothStep(0,1,Mathf.InverseLerp(.73f,.88f,u));
            float head=Mathf.SmoothStep(0,1,Mathf.InverseLerp(.52f,.73f,v));
            // These motion regions overlap at most two non-root influences.
            var influences=new[]{(0,1-left-right-wing-head),(1,left),(2,right),(3,wing),(4,head)}.OrderByDescending(w=>w.Item2).ToArray();
            if(influences[0].Item2<0 || influences.Skip(4).Any(w=>w.Item2>.00001f)) throw new Exception("Invalid influence partition.");
            var weight=new BoneWeight { boneIndex0=influences[0].Item1,weight0=influences[0].Item2,
                boneIndex1=influences[1].Item1,weight1=influences[1].Item2,boneIndex2=influences[2].Item1,weight2=influences[2].Item2,
                boneIndex3=influences[3].Item1,weight3=influences[3].Item2 };
            if(Mathf.Abs(weight.weight0+weight.weight1+weight.weight2+weight.weight3-1)>.00001f) throw new Exception("Weights must sum to one.");
            vertices[y*(columns+1)+x]=new Vertex2DMetaData {position=new Vector2(u,v)*rect.rect.size,boneWeight=weight};
        }
        var indices=new int[columns*rows*6];int n=0;
        for(int y=0;y<rows;y++)for(int x=0;x<columns;x++)
        {int i=y*(columns+1)+x;indices[n++]=i;indices[n++]=i+columns+1;indices[n++]=i+1;indices[n++]=i+1;indices[n++]=i+columns+1;indices[n++]=i+columns+2;}
        mesh.SetVertices(rect.spriteID,vertices);mesh.SetIndices(rect.spriteID,indices);mesh.SetEdges(rect.spriteID,Array.Empty<Vector2Int>());
        provider.Apply();importer.SaveAndReimport();
        Sync();
        if(AssetDatabase.AssetPathToGUID(Folder+"Penguin.asset")!=guid) throw new Exception("Sprite GUID changed.");
        var go=new GameObject("PenguinRig");
        try
        {
            var renderer=go.AddComponent<SpriteRenderer>();renderer.sprite=asset;
            renderer.sharedMaterial=AssetDatabase.GetBuiltinExtraResource<Material>("Sprites-Default.mat");
            CatGunner.Runtime.PenguinBoneMotion.CreateSkeleton(renderer);
            PrefabUtility.SaveAsPrefabAsset(go,Folder+"PenguinRig.prefab");
        }
        finally { UnityEngine.Object.DestroyImmediate(go); }
        var report=new {sprite=Folder+"Penguin.asset",texture=Folder+"penguin.png",prefab=Folder+"PenguinRig.prefab",guid,
            bones=asset.GetBones().Select(b=>new{b.name,b.parentId,position=new[]{b.position.x,b.position.y,b.position.z}}).ToArray(),bindPoses=asset.GetBindPoses().Length,
            vertices=asset.GetVertexCount(),triangles=asset.GetIndices().Length/3};
        var path=Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/sprite-skin-v1/asset-report.json");
        File.WriteAllText(path,Newtonsoft.Json.JsonConvert.SerializeObject(report,Newtonsoft.Json.Formatting.Indented));
        Selection.activeObject=AssetDatabase.LoadAssetAtPath<GameObject>(Folder+"PenguinRig.prefab");EditorGUIUtility.PingObject(Selection.activeObject);
        return "Saved editable PNG skinning data, synced Penguin.asset in place, and created PenguinRig.prefab.";
    }
    // Run this after manually editing PNG Skinning Editor data; retain the standalone Sprite's GUID.
    public static string Sync()
    {
        if(Application.isPlaying)throw new Exception("Sync in Edit mode only.");
        var source=AssetDatabase.LoadAllAssetsAtPath(Folder+"penguin.png").OfType<Sprite>().Single();
        if(source.GetBindPoses().Length!=7)throw new Exception("Expected the seven-bone penguin rig.");
        var target=AssetDatabase.LoadAssetAtPath<Sprite>(Folder+"Penguin.asset");
        Undo.RecordObject(target,"Sync penguin SpriteSkin binding");EditorUtility.CopySerialized(source,target);target.name="Penguin";
        EditorUtility.SetDirty(target);AssetDatabase.SaveAssetIfDirty(target);
        return "Synced Penguin.asset from penguin.png without changing its GUID.";
    }
}
