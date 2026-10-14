using System;
using System.IO;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;

public static class PreviewPenguinUi
{
    static string Dir => Path.GetFullPath(Path.Combine(Application.dataPath, "../../../art/reskin/penguin-expedition/ui-batch-01/captures"));
    public static string Capture()
    {
        if (!Application.isPlaying || Application.dataPath != "/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets") throw new Exception("Correct PlayMode required");
        Directory.CreateDirectory(Dir); var c = GameClient.Instance; c.StartCoroutine(Observe(c));
        return "Recording actual UI pages in an isolated preview profile; no purchase callbacks invoked.";
    }
    static IEnumerator Observe(GameClient c)
    {
        while (!c.ReadyForPlay) yield return null;
        yield return new WaitForSeconds(.4f);
        var canvas = c.Slider.GetComponentInParent<Canvas>(); var ui = c.GetComponent<PenguinUiTheme>();
        c.DailyLogin.AutoShow = false; c.Tutorial.SetCleared(); c.DailyLogin.Close(); c.Forest.Stage_Value_Max = 400; c.ContentUnlock.Reload();
        // Explicit menu-unlock preview fixture, never written to the ordinary profile.
        yield return new WaitForSeconds(.5f);
        yield return Shot("01-main");
        var names = new[] { "Setting_Btn", "Shop_Btn", "Gun_Btn", "Skin_Btn", "Pet_Btn ", "Fish_Btn", "Rebirth_Btn", "Mission_Btn", "Adventure_Btn", "Raid_Btn", "Boss_Btn", "Mine_Btn", "Monster_Btn", "SpeedRun_Btn" };
        var observations = new List<object>();
        foreach (var name in names)
        {
            var states = canvas.GetComponentsInChildren<Transform>(true).ToDictionary(t => t.gameObject, t => t.gameObject.activeSelf);
            var button = canvas.transform.Find("SafeArea/Main_UI/Btn_list").GetComponentsInChildren<Button>(true).First(b => b.name == name);
            button.onClick.Invoke(); yield return new WaitForSeconds(.3f);
            yield return Shot(name.Trim().Replace("_Btn", "").ToLowerInvariant());
            observations.Add(new { button = name, visible = canvas.GetComponentsInChildren<Image>().Length });
            foreach (var state in states) if (state.Key != null && state.Key.activeSelf != state.Value) state.Key.SetActive(state.Value);
            yield return null;
        }
        c.DailyLogin.Open_Btn(); yield return new WaitForSeconds(.4f); yield return Shot("daily"); c.DailyLogin.Close();
        foreach (var item in new[] { new[] { "victory", "Contents_UI/SpeedRun_UI/GameWin_obj" }, new[] { "failure", "Contents_UI/SpeedRun_UI/GameFail_obj" }, new[] { "loading", "SafeArea/Main_UI/Loading_UI" }, new[] { "offline", "SafeArea/Offline/Offline_Panel_UI" } })
        {
            var page = canvas.transform.Find(item[1]); var parents = new List<GameObject>(); var states = new List<bool>();
            for (var t = page; t != canvas.transform; t = t.parent) { parents.Add(t.gameObject); states.Add(t.gameObject.activeSelf); t.gameObject.SetActive(true); }
            page.SetAsLastSibling(); yield return new WaitForSeconds(1.4f); yield return Shot(item[0]);
            for (int i = 0; i < parents.Count; i++) parents[i].SetActive(states[i]);
        }
        File.WriteAllText(Path.Combine(Dir, "observation.json"), Newtonsoft.Json.JsonConvert.SerializeObject(new { width = Screen.width, height = Screen.height, ui.StyledImageCount, ui.StyledTextCount, scope = "All Canvas pages including initially inactive inventory/modal templates", source = "Actual Unity Editor GPU captures", fixture = "Temporary menu unlock Stage_Value_Max=400 and cleared tutorial; isolated profile; result/loading/offline pages displayed for visual review only; no payments", save = c.SaveFolderOverride, pages = observations }, Newtonsoft.Json.Formatting.Indented));
    }
    static IEnumerator Shot(string name)
    { yield return new WaitForEndOfFrame(); ScreenCapture.CaptureScreenshot(Path.Combine(Dir, name + ".png")); yield return null; }
}
