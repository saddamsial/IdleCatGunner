using System;
using System.IO;
using System.Linq;
using UnityEngine;
using UnityEngine.SceneManagement;

// Editor fixtures do not belong in the production Build Settings list.
internal static class TestSceneLoader
{
    public static AsyncOperation LoadAsync(string scene, LoadSceneMode mode = LoadSceneMode.Single)
    {
#if UNITY_EDITOR
        var path = UnityEditor.AssetDatabase.FindAssets("t:Scene " + scene)
            .Select(UnityEditor.AssetDatabase.GUIDToAssetPath)
            .Single(p => p.StartsWith("Assets/Game/Scenes/", StringComparison.Ordinal)
                && Path.GetFileNameWithoutExtension(p) == scene);
        return UnityEditor.SceneManagement.EditorSceneManager.LoadSceneAsyncInPlayMode(
            path, new LoadSceneParameters(mode));
#else
        return SceneManager.LoadSceneAsync(scene, mode);
#endif
    }
}
