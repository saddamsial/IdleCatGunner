using System;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using UnityEditor;
using UnityEditor.Build;
using UnityEditor.Build.Reporting;
using UnityEngine;
using UnityEngine.SceneManagement;

/// <summary>Prevents fixture scenes and archived Resources from entering Android releases.</summary>
public sealed class ProductionBuildPolicy : IPreprocessBuildWithReport, IProcessSceneWithReport
{
    public const string EntryScene = "Assets/Game/Scenes/GameClient.unity";
    const string ManifestPath = "Assets/Game/Editor/ProductionResources.json";
    public int callbackOrder => -1000;

    [Serializable] public sealed class ResourceManifest { public string[] paths; }

    public void OnPreprocessBuild(BuildReport report)
    {
        if (report.summary.platform == BuildTarget.Android) Validate();
    }
    public void OnProcessScene(Scene scene, BuildReport report)
    {
        if (report != null && report.summary.platform == BuildTarget.Android && scene.path != EntryScene)
            throw new BuildFailedException("Android release contains a non-production scene: " + scene.path);
    }
    [MenuItem("Game/Release/Validate Android Content")]
    public static void Validate()
    {
        var scenes = EditorBuildSettings.scenes.Where(s => s.enabled).Select(s => s.path).ToArray();
        if (scenes.Length != 1 || scenes[0] != EntryScene)
            throw new BuildFailedException("Android release must use only " + EntryScene);
        if (!File.Exists(ManifestPath)) throw new BuildFailedException("Production Resources manifest is missing");
        var allowed = JsonUtility.FromJson<ResourceManifest>(File.ReadAllText(ManifestPath)).paths;
        var resources = AssetDatabase.GetAllAssetPaths().Where(p => p.StartsWith("Assets/", StringComparison.Ordinal)
            && p.Contains("/Resources/") && !p.Contains("/Editor/") && !AssetDatabase.IsValidFolder(p)).ToArray();
        var unexpected = resources.Except(allowed).ToArray();
        var missing = allowed.Except(resources).ToArray();
        if (unexpected.Length > 0 || missing.Length > 0)
            throw new BuildFailedException("Production Resources changed; audit before release. Unexpected: "
                + string.Join(", ", unexpected) + "; Missing: " + string.Join(", ", missing));
        var dependencies = AssetDatabase.GetDependencies(resources.Concat(new[] { EntryScene }).Concat(SettingsAssets()).ToArray(), true);
        var archived = dependencies.Where(p => p.Contains("/Editor/") && !p.EndsWith(".cs", StringComparison.Ordinal)).ToArray();
        if (archived.Length > 0)
            throw new BuildFailedException("Production content depends on editor archives: " + string.Join(", ", archived));
        Debug.Log("Android content validated: one production scene, " + resources.Length + " Resources assets.");
    }
    // Preloaded assets, platform icons and always-included shaders also enter a player.
    public static string[] SettingsAssets()
    {
        return new[] { "ProjectSettings/GraphicsSettings.asset", "ProjectSettings/QualitySettings.asset", "ProjectSettings/ProjectSettings.asset" }
            .Where(File.Exists).SelectMany(p => Regex.Matches(File.ReadAllText(p), @"guid: ([0-9a-f]{32})").Cast<Match>())
            .Select(m => AssetDatabase.GUIDToAssetPath(m.Groups[1].Value)).Where(p => !string.IsNullOrEmpty(p)).Distinct().ToArray();
    }
}
