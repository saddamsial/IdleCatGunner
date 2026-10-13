using System;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using CatGunner.Recovery;

public static class InstallNaturalSnowPlatform
{
    public static string Install()
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||Application.isPlaying)throw new InvalidOperationException("Expected project in Edit Mode.");
        var scene=EditorSceneManager.GetActiveScene();
        if(scene.path!="Assets/Recovery/Scenes/RecoveredClient.unity")scene=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");
        string path="Assets/Recovery/PenguinExpedition/vertical-ice-cliff-v3.png";
        AssetDatabase.ImportAsset(path,ImportAssetOptions.ForceSynchronousImport);
        var importer=(TextureImporter)AssetImporter.GetAtPath(path);importer.textureType=TextureImporterType.Default;
        importer.wrapModeU=TextureWrapMode.Repeat;importer.wrapModeV=TextureWrapMode.Clamp;importer.filterMode=FilterMode.Bilinear;importer.mipmapEnabled=true;importer.maxTextureSize=2048;importer.SaveAndReimport();
        var texture=AssetDatabase.LoadAssetAtPath<Texture2D>(path);
        var terrain=UnityEngine.Object.FindAnyObjectByType<CircularSnowTerrain>(FindObjectsInactive.Include);Undo.RecordObject(terrain,"Natural snowy platform perimeter");
        terrain.WallMaterial=Material("VerticalIceCliff-v3","Recovery/VerticalIceCliff");terrain.WallMaterial.mainTexture=texture;
        terrain.DecorationMaterial=Material("SnowPlatformDecor-v3","Recovery/SnowPlatformDecor");
        EditorUtility.SetDirty(terrain);AssetDatabase.SaveAssetIfDirty(terrain.WallMaterial);AssetDatabase.SaveAssetIfDirty(terrain.DecorationMaterial);
        EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new InvalidOperationException("Scene save failed.");
        return "Natural snow platform saved: dedicated vertical ice, uneven snow overhang, contact shadow, snow banks and debris; camera/movement/footprints unchanged.";
    }
    static Material Material(string name,string shaderName)
    {
        var shader=Shader.Find(shaderName);if(shader==null||!shader.isSupported)throw new InvalidOperationException("Missing shader "+shaderName);
        string path="Assets/Recovery/"+name+".mat";var mat=AssetDatabase.LoadAssetAtPath<Material>(path);
        if(mat==null){mat=new Material(shader);AssetDatabase.CreateAsset(mat,path);}else{Undo.RecordObject(mat,"Snow platform material");mat.shader=shader;}
        EditorUtility.SetDirty(mat);return mat;
    }
}
