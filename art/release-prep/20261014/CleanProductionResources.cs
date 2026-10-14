using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using CatGunner.Runtime;

public static class CleanProductionResources
{
    const string Entry="Assets/Game/Scenes/GameClient.unity";
    const string Report="/Volumes/ZHITAI_1T/IdleCatGunner/art/release-prep/20261014/resource-audit.json";
    static string Key(string path)
    {int n=path.IndexOf("/Resources/",StringComparison.Ordinal);return Path.ChangeExtension(path.Substring(n+11),null);}
    static void Folder(string path)
    {if(AssetDatabase.IsValidFolder(path))return;int n=path.LastIndexOf('/');Folder(path.Substring(0,n));AssetDatabase.CreateFolder(path.Substring(0,n),path.Substring(n+1));}
    public static string Run()
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||EditorApplication.isPlaying||EditorApplication.isCompiling)throw new Exception("Wrong project or busy Editor");
        var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();if(scene.path!=Entry||scene.isDirty)throw new Exception("Expected saved production scene");
        var full=UnityEngine.Object.FindAnyObjectByType<PenguinFullReskin>();full.ParticleShader=AssetDatabase.LoadAssetAtPath<Shader>("Assets/Game/ParticleCompatibility.shader");
        EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);
        var resourcePaths=AssetDatabase.GetAllAssetPaths().Where(p=>p.StartsWith("Assets/",StringComparison.Ordinal)&&p.Contains("/Resources/")&&!p.Contains("/Editor/")&&!AssetDatabase.IsValidFolder(p)).ToArray();
        var keys=new HashSet<string>(new[]{"Gameplay/ProjectilePoolContent","UI/Draw_Info_UI","UI/GunCollection_UI"});
        foreach(var file in Directory.GetFiles("Assets/Game/Runtime","*.cs",SearchOption.AllDirectories))
        foreach(Match match in Regex.Matches(File.ReadAllText(file),@"Resources\.Load(?:Async)?(?:<[^>]+>)?\(""([^""]+)"""))keys.Add(match.Groups[1].Value);
        var missing=keys.Where(k=>!resourcePaths.Any(p=>Key(p)==k)).ToArray();if(missing.Length>0)throw new Exception("Missing dynamic resources: "+string.Join(",",missing));
        var roots=resourcePaths.Where(p=>keys.Contains(Key(p))||p=="Assets/Resources/TMP Settings.asset").Concat(new[]{Entry}).Concat(ProductionBuildPolicy.SettingsAssets()).ToArray();
        var dependencies=new HashSet<string>(AssetDatabase.GetDependencies(roots,true));
        var retained=resourcePaths.Where(dependencies.Contains).OrderBy(p=>p).ToArray();
        var unused=resourcePaths.Except(retained).OrderBy(p=>p).ToArray();
        var moves=new List<object>();
        foreach(var source in unused)
        {
            string target="Assets/Game/Editor/ArchivedResources/"+source.Substring(7);
            Folder(Path.GetDirectoryName(target).Replace('\\','/'));
            string guid=AssetDatabase.AssetPathToGUID(source);
            string meta=File.ReadAllText(source+".meta");
            var error=AssetDatabase.MoveAsset(source,target);if(!string.IsNullOrEmpty(error))throw new Exception(source+": "+error);
            if(AssetDatabase.AssetPathToGUID(target)!=guid||File.ReadAllText(target+".meta")!=meta)throw new Exception("Asset identity changed: "+source);
            moves.Add(new{source,target,guid,metaUnchanged=true});
        }
        File.WriteAllText("Assets/Game/Editor/ProductionResources.json",JsonUtility.ToJson(new ProductionBuildPolicy.ResourceManifest{paths=retained},true));
        AssetDatabase.ImportAsset("Assets/Game/Editor/ProductionResources.json",ImportAssetOptions.ForceSynchronousImport);
        EditorBuildSettings.scenes=new[]{new EditorBuildSettingsScene(Entry,true)};
        ProductionBuildPolicy.Validate();
        var final=AssetDatabase.GetDependencies(retained.Concat(new[]{Entry}).Concat(ProductionBuildPolicy.SettingsAssets()).ToArray(),true);
        var result=Newtonsoft.Json.JsonConvert.SerializeObject(new{entry=Entry,beforeResources=resourcePaths.Length,retainedResources=retained.Length,archivedResources=unused.Length,dynamicKeys=keys.OrderBy(k=>k),retained,moves,productionDependencies=final,sourceBytes=final.Where(File.Exists).Sum(p=>new FileInfo(p).Length)},Newtonsoft.Json.Formatting.Indented);
        File.WriteAllText(Report,result);return "Resources: "+resourcePaths.Length+" → "+retained.Length+"; archived "+unused.Length+"; dependencies "+final.Length;
    }
}
