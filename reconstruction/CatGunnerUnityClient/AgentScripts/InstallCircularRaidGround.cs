using System;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;

public static class InstallCircularRaidGround
{
    public static string Run()
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets")throw new Exception("Wrong project");
        if(EditorApplication.isPlaying||EditorApplication.isCompiling)throw new Exception("Edit mode required");
        var scene=EditorSceneManager.GetActiveScene();
        if(scene.path!="Assets/Game/Scenes/GameClient.unity"||scene.isDirty)throw new Exception("Expected clean recovered scene");
        var client=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
        var ground=client.RaidMode.Map_obj.GetComponentsInChildren<SpriteRenderer>(true).Single(r=>r.name=="Ground (1)");
        string before=ground.sharedMaterial.shader.name;
        const string path="Assets/Game/RaidGroundCompatibility.mat";
        var material=AssetDatabase.LoadAssetAtPath<Material>(path);
        if(material==null)
        {
            var shader=Shader.Find("Game/MineGroundCompatibility");if(shader==null)throw new Exception("Missing circular ground shader");
            material=new Material(shader){name="RaidGroundCompatibility"};
            material.SetColor("_Color",ground.color);material.mainTextureScale=ground.sharedMaterial.mainTextureScale;
            material.mainTextureOffset=ground.sharedMaterial.mainTextureOffset;
            AssetDatabase.CreateAsset(material,path);AssetDatabase.SaveAssetIfDirty(material);
        }
        if(material.shader.name!="Game/MineGroundCompatibility")throw new Exception("Unexpected existing raid material");
        Undo.RecordObject(ground,"Make raid floor circular");ground.sharedMaterial=material;
        EditorUtility.SetDirty(ground);EditorSceneManager.MarkSceneDirty(scene);
        if(!EditorSceneManager.SaveScene(scene))throw new Exception("Scene save failed");
        var evidence=new{scene=scene.path,before,after=material.shader.name,material=path,ground=ground.name,scale=ground.transform.lossyScale.ToString(),sprite=AssetDatabase.GetAssetPath(ground.sprite),guid=AssetDatabase.AssetPathToGUID(path),tint=material.GetColor("_Color").ToString(),circleUvRadius=.5f};
        string json=Newtonsoft.Json.JsonConvert.SerializeObject(evidence,Newtonsoft.Json.Formatting.Indented);
        var dir=Path.GetFullPath(Application.dataPath+"/../../../art/verification/penguin-movement-bounds-20261014-v2");Directory.CreateDirectory(dir);File.WriteAllText(Path.Combine(dir,"raid-material-install.json"),json);
        return json;
    }
}
