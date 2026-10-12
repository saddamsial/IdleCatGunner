using System;
using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEditor;
using UnityEditor.SceneManagement;

// Editor-only observation against a read-only clone of the current user profile.
// Disabled unless Begin is explicitly called; no gear, funds or progress injected.
[InitializeOnLoad]
public static class CatGunnerProgressionPreview
{
    private const string Flag="CatGunner.ProgressionVisualClone";
    private const string Folder="/tmp/catgunner-progression-visual-profile";
    private static readonly string Reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
    private static readonly string Visual=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/visual"));
    static CatGunnerProgressionPreview()
    {
        SceneManager.sceneLoaded+=Loaded;
        EditorApplication.playModeStateChanged+=state=>
        {
            if(state==PlayModeStateChange.EnteredEditMode&&SessionState.GetBool(Flag+"Restore",false))
            {SessionState.SetBool(Flag+"Restore",false);EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");}
        };
    }
    private static void Loaded(Scene scene,LoadSceneMode mode)
    {
        if(!SessionState.GetBool(Flag,false)||scene.name!="RecoveredClient")return;
        var client=scene.GetRootGameObjects().SelectMany(go=>go.GetComponentsInChildren<RecoveryForestClient>(true)).Single();
        client.SaveFolderOverride=Folder;client.Persist=true;
    }
    public static void Begin()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("Exit PlayMode before observation");
        if(!File.Exists(Path.Combine(Folder,"NoSaveFile.json")))throw new InvalidOperationException("Read-only profile clone missing");
        EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");
        // Fail closed: even if the load hook cannot run, the original save is never used.
        var client=UnityEngine.Object.FindFirstObjectByType<RecoveryForestClient>();
        client.Persist=false;EditorUtility.SetDirty(client);
        SessionState.SetBool(Flag,true);EditorApplication.isPlaying=true;
    }
    public static void Capture(string panel)
    {
        if(!SessionState.GetBool(Flag,false))throw new InvalidOperationException("Observation mode is disabled");
        EditorApplication.isPaused=false;RecoveryForestClient.Instance.StartCoroutine(CapturePanel(panel));
    }
    private static IEnumerator CapturePanel(string panel)
    {
        yield return null;
        var c=RecoveryForestClient.Instance;
        if(c.SaveFolderOverride!=Folder)throw new InvalidOperationException("Original user-save path must not be used for preview");
        c.Guns.gunItemList.gameObject.SetActive(false);c.PetUI.Pet_UI_obj.SetActive(false);
        c.MissionUI.Panel_Close();c.RebirthUI.rebirth_panel_ui.gameObject.SetActive(false);
        c.SpeedRun.Start_UI.gameObject.SetActive(false);c.SpeedRun.Start_UI.transform.parent.gameObject.SetActive(false);
        switch(panel)
        {
            case "inventory":c.Guns.gunItemList.gameObject.SetActive(true);c.Guns.ReloadGunUI();break;
            case "pet":c.PetUI.Panel_Open();break;
            case "mission":c.MissionUI.Panel_Open();break;
            case "rebirth":c.RebirthUI.Panel_Open();break;
            case "speedrun":c.SpeedRun.StartPanel_Open();break;
            default:throw new ArgumentException(panel);
        }
        yield return null;yield return null;Canvas.ForceUpdateCanvases();
        Directory.CreateDirectory(Visual);
        string path=Path.Combine(Visual,"progression-"+panel+"-current-profile.png");
        ScreenCapture.CaptureScreenshot(path);
        File.WriteAllText(Path.Combine(Reports,"progression-"+panel+"-visual-state.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
            scene=c.gameObject.scene.path,panel,screenshot=path,screen_width=Screen.width,screen_height=Screen.height,
            wallet=c.State.Money.Value.ToString(),dia=c.State.Dia,petcoin=c.State.PetCoin,
            guns=c.State.Selected_items,owned_guns=c.State.Owned_Gun_list,pets=c.State.Pet_Selected_items,
            owned_pets=c.State.Owned_Pet_list,upgrade_levels=c.State.Upgrade_Lv,stage=c.Forest.Stage_Now,wave=c.Forest.Level_Now,
            mission_season=c.State.Mission_Season_Num,source_profile_clone=Folder,
            fixture="Clone of current independent local user profile; only original panels opened. No currency, gear, level, mission or progression injection. Original profile remains untouched.",
            acceptance="Editor panel pixels only; not phone/Spine/all visuals or all-mode parity"},Newtonsoft.Json.Formatting.Indented));
        yield return new WaitForEndOfFrame();yield return null;
        EditorApplication.isPaused=true;
    }
    public static void Finish(){SessionState.SetBool(Flag,false);SessionState.SetBool(Flag+"Restore",true);Time.timeScale=1;EditorApplication.isPaused=false;EditorApplication.isPlaying=false;}
}
