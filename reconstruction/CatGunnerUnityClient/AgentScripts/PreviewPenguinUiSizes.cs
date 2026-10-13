using System;
using System.IO;
using System.Collections;
using System.Reflection;
using UnityEngine;
using UnityEditor;
using CatGunner.Recovery;

public static class PreviewPenguinUiSizes
{
    static string Dir => Path.GetFullPath(Path.Combine(Application.dataPath, "../../../art/reskin/penguin-expedition/ui-batch-01/captures/sizes"));
    public static string Capture()
    {
        if (!Application.isPlaying || Application.dataPath != "/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets") throw new Exception("Correct PlayMode required");
        Directory.CreateDirectory(Dir); var c = RecoveryForestClient.Instance; c.StartCoroutine(Observe(c)); return "Recording 750x1334 and 1440x3200 actual HUD/settings GPU frames; restoring 1080x1920 afterwards.";
    }
    static IEnumerator Observe(RecoveryForestClient c)
    {
        var canvas = c.Slider.GetComponentInParent<Canvas>(); var settings = canvas.transform.Find("Setting/Setting_UI").gameObject;
        bool shown = settings.activeSelf;
        try
        {
            foreach (var size in new[] { new[] { 750, 1334 }, new[] { 1440, 3200 } })
            {
                SetSize(size[0], size[1]); settings.SetActive(false); yield return new WaitForSeconds(.7f);
                yield return new WaitForEndOfFrame(); ScreenCapture.CaptureScreenshot(Path.Combine(Dir, $"main-{Screen.width}x{Screen.height}.png"));
                settings.SetActive(true); yield return new WaitForSeconds(.7f);
                yield return new WaitForEndOfFrame(); ScreenCapture.CaptureScreenshot(Path.Combine(Dir, $"settings-{Screen.width}x{Screen.height}.png"));
            }
        }
        finally { settings.SetActive(shown); RecoveryEditor.SetPortraitGameView(); }
        File.WriteAllText(Path.Combine(Dir, "complete.txt"), "Actual Editor GPU frames at 750x1334 and 1440x3200; original 1080x1920 restored.");
    }
    static void SetSize(int width, int height)
    {
        var assembly = typeof(EditorWindow).Assembly; var sizesType = assembly.GetType("UnityEditor.GameViewSizes", true);
        var singleton = typeof(ScriptableSingleton<>).MakeGenericType(sizesType);
        var sizes = singleton.GetProperty("instance", BindingFlags.Public | BindingFlags.Static | BindingFlags.FlattenHierarchy).GetValue(null);
        var group = sizesType.GetProperty("currentGroup", BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance).GetValue(sizes);
        var type = group.GetType(); var sizeType = assembly.GetType("UnityEditor.GameViewSize", true);
        int total = (int)type.GetMethod("GetTotalCount").Invoke(group, null), index = -1;
        for (int i = 0; i < total; i++)
        {
            var size = type.GetMethod("GetGameViewSize").Invoke(group, new object[] { i });
            if ((int)sizeType.GetProperty("width").GetValue(size) == width && (int)sizeType.GetProperty("height").GetValue(size) == height) { index = i; break; }
        }
        if (index < 0)
        {
            var kind = assembly.GetType("UnityEditor.GameViewSizeType", true);
            var size = Activator.CreateInstance(sizeType, BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance, null,
                new object[] { Enum.Parse(kind, "FixedResolution"), width, height, "Penguin UI review" }, null);
            type.GetMethod("AddCustomSize").Invoke(group, new[] { size }); index = total;
        }
        var viewType = assembly.GetType("UnityEditor.GameView", true); var view = EditorWindow.GetWindow(viewType);
        viewType.GetProperty("selectedSizeIndex", BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance).SetValue(view, index); view.Repaint();
    }
}
