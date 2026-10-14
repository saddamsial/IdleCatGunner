using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using CatGunner.Runtime;

// Capture the actual authored Canvas settings before Unity resets inactive
// native canvases on entering PlayMode or during a player build.
[InitializeOnLoad]
public static class UiAuthoringEditor
{
    static UiAuthoringEditor(){EditorApplication.playModeStateChanged+=OnStateChanged;}
    static void OnStateChanged(PlayModeStateChange state)
    {if(state==PlayModeStateChange.ExitingEditMode)CaptureSorting();}
    public static void CaptureSorting()
    {
        foreach(var layer in Object.FindObjectsByType<PenguinModalLayer>(FindObjectsInactive.Include,FindObjectsSortMode.None))
        {
            if(!layer.Authored)continue;
            var canvas=layer.GetComponent<Canvas>();var so=new SerializedObject(canvas);
            layer.CaptureAuthoredSorting(so.FindProperty("m_SortingOrder").intValue);
        }
    }
}
public sealed class UiBuildAuthoring : UnityEditor.Build.IProcessSceneWithReport
{
    public int callbackOrder=>0;
    public void OnProcessScene(UnityEngine.SceneManagement.Scene scene,UnityEditor.Build.Reporting.BuildReport report)
    {if(report!=null)UiAuthoringEditor.CaptureSorting();}
}
