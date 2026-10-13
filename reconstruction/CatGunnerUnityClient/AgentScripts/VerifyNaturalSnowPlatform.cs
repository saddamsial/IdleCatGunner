using System;
using System.IO;
using System.Linq;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using CatGunner.Recovery;

public static class VerifyNaturalSnowPlatform
{
    public static string Saved()
    {
        var scene=EditorSceneManager.GetActiveScene();
        var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);
        var terrain=c.Forest.GetComponent<CircularSnowTerrain>();var circle=c.Forest.CircularMap;
        var bounded=UnityEngine.Object.FindAnyObjectByType<CircularArenaCamera>(FindObjectsInactive.Include);
        string host=SessionState.GetString("CatGunner.Recovery.TestHostFolder","");
        if(Application.isPlaying||scene.path!="Assets/Recovery/Scenes/RecoveredClient.unity"||scene.isDirty||!c.Persist||host!="")throw new InvalidOperationException("Scene/preview cleanup failed.");
        if(terrain.WallMaterial.shader.name!="Recovery/VerticalIceCliff"||terrain.DecorationMaterial==null||bounded.Circle!=circle)throw new InvalidOperationException("New art or original camera binding missing.");
        var shaders=new[]{terrain.WallMaterial.shader,terrain.DecorationMaterial.shader};
        var shaderMessages=shaders.Select(s=>new{shader=s.name,s.isSupported,messages=ShaderUtil.GetShaderMessages(s).Select(m=>new{m.message,severity=m.severity.ToString()}).ToArray()}).ToArray();
        if(shaderMessages.Any(s=>!s.isSupported||s.messages.Any(m=>m.severity=="Error")))throw new InvalidOperationException("Terrain shader error.");
        var result=new{scene=scene.path,scene.isDirty,c.Persist,c.SaveFolderOverride,testHost=host,circle.Radius,circle.MovementPadding,circle.EdgePadding,terrain.WallHeight,
            wallTexture=AssetDatabase.GetAssetPath(terrain.WallMaterial.mainTexture),snow=AssetDatabase.GetAssetPath(terrain.SnowMaterial.GetTexture("_SnowTex")),shaderMessages};
        string json=Newtonsoft.Json.JsonConvert.SerializeObject(result,Newtonsoft.Json.Formatting.Indented);
        File.WriteAllText(Path.GetFullPath(Application.dataPath+"/../../../art/maps/natural-snow-platform-v3/saved-scene.json"),json);return json;
    }
}
