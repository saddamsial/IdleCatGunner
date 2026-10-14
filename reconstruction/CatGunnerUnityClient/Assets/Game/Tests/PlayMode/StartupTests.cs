using System;
using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

internal static class ClientStartupWait
{
    public static IEnumerator Ready(bool completeTutorial=true)
    {
        float deadline=Time.realtimeSinceStartup+15;
        while((GameClient.Instance==null||!GameClient.Instance.ReadyForPlay)&&Time.realtimeSinceStartup<deadline)yield return null;
        Assert.That(GameClient.Instance!=null&&GameClient.Instance.ReadyForPlay,Is.True,"GameClient startup must complete before interaction");
        // Feature fixtures test their own UI after onboarding. Tutorial tests opt
        // out explicitly; this helper never changes the production scene or save.
        // Suppress only this unrelated feature popup in isolated fixtures.
        if(GameClient.Instance.DailyLogin!=null)GameClient.Instance.DailyLogin.AutoShow=false;
        if(completeTutorial&&GameClient.Instance.Tutorial!=null)
        {
            GameClient.Instance.Tutorial.SetCleared();
            // Newly enabled Graphics need a render/layout frame before raycasts.
            yield return null;Canvas.ForceUpdateCanvases();
        }
    }
}

[Category("SceneArchitecture")]
public sealed class StartupTests
{
    private string folder;
    private bool disableStartup;
    private string ReportPath(string file)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports",file));
    private void Independent(Scene scene,LoadSceneMode mode)
    {
        if(scene.name!="GameClient")return;
        var c=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();
        c.SaveFolderOverride=folder;c.Persist=true;if(disableStartup)c.enabled=false;
    }
    [SetUp] public void SetUp()
    {
        folder=Path.Combine(Application.temporaryCachePath,"StartupTests-"+Guid.NewGuid().ToString("N"));
        disableStartup=false;Time.timeScale=1;SceneManager.sceneLoaded+=Independent;
    }
    [UnityTearDown] public IEnumerator TearDown()
    {
        SceneManager.sceneLoaded-=Independent;
        yield return SceneManager.LoadSceneAsync("TargetPreview");
        if(Directory.Exists(folder))Directory.Delete(folder,true);
        Time.timeScale=1;
    }
    [Test] public void NativeBestArrayKeepsLegacyPrefixAndDoesNotAlterInput()
    {
        Assert.That(RaidRules.EnsureBestArray(null),Is.EqualTo(new int[7]));
        Assert.That(RaidRules.EnsureBestArray(Array.Empty<int>()),Is.EqualTo(new int[7]));
        var old=new[]{3,8,2};var result=RaidRules.EnsureBestArray(old);
        Assert.That(result,Is.EqualTo(new[]{3,8,2,0,0,0,0}));Assert.That(old,Is.EqualTo(new[]{3,8,2}));
        var full=new[]{0,1,2,3,4,5,6};Assert.That(RaidRules.EnsureBestArray(full),Is.EqualTo(full));
        Assert.That(RaidRules.EnsureBestArray(full),Is.Not.SameAs(full));
    }
    [Test] public void UnsupportedRaidValuesRejectBeforeStateMutation()
    {
        foreach(var s in new[]{new SaveData{Raid_Free_Use_Count=3},new SaveData{Raid_Season_TryCount=-1},
            new SaveData{Raid_Season_BestLevel=-1},new SaveData{Raid_Best_Level_ByType=new[]{-1}},
            new SaveData{Raid_Best_Level_ByType=new int[8]},new SaveData{Raid_Entry_Charge_Date="bad-date"}})
        {
            string before=SaveArchive.Encode(s);Assert.Throws<InvalidOperationException>(()=>RaidRules.ValidateState(s));
            Assert.That(SaveArchive.Encode(s),Is.EqualTo(before));
        }
    }
    [UnityTest] public IEnumerator ActualLegacyProfileStartsWithWalkingCatThenMovesAndShootsWithoutInputAndReloads()
    {
        // Frozen copy taken before the repair; never open the user's live save.
        string checkpoint=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/checkpoints/pre-startup-legacy-raid-fix/NoSaveFile.json"));
        Directory.CreateDirectory(folder);var archive=new SaveArchive(folder);File.Copy(checkpoint,archive.MainPath);
        var before=archive.Load();Assert.That(before.Raid_Best_Level_ByType.Length,Is.Zero);
        yield return SceneManager.LoadSceneAsync("GameClient");
        var c=GameClient.Instance;
        Assert.That(c.IsStarting,Is.True);Assert.That(c.ReadyForPlay,Is.False);
        Assert.That(c.LoadingUI.activeInHierarchy,Is.True);Assert.That(c.Forest.Map_obj.activeSelf,Is.False);
        Assert.That(ForestRuntimeAcceptance.IsGaming,Is.False);Assert.That(c.RoundsStarted,Is.Zero);
        Assert.That(c.UpgradePanels.All(p=>p.gameObject.activeInHierarchy),Is.True,"Authored HUD remains visible during startup");
        var input=c.Slider.GetComponentInParent<Canvas>().GetComponent<CanvasGroup>();
        Assert.That(input.interactable||input.blocksRaycasts,Is.False,"Visible startup HUD must not accept input");
        Assert.That(c.Upgrade(0),Is.False,"Startup must not accept upgrade actions");
        Assert.That(c.LoadingUI.GetComponentsInChildren<TMPro.TMP_Text>().Any(t=>!string.IsNullOrWhiteSpace(t.text)),Is.True,"Loading caption remains visible");
        var mascot=c.LoadingUI.GetComponentInChildren<PenguinLoadingMascot>();
        Assert.That(mascot,Is.Not.Null);Assert.That(mascot.Authored&&mascot.enabled,Is.True);
        var rect=mascot.GetComponent<RectTransform>();var position=rect.anchoredPosition;
        yield return new WaitForSecondsRealtime(.3f);
        Assert.That(Vector2.Distance(rect.anchoredPosition,position),Is.GreaterThan(.01f),"Authored penguin loading motion keeps playing");
        Directory.CreateDirectory(ReportPath("visual"));
        ScreenCapture.CaptureScreenshot(ReportPath("visual/mobile77-startup-walking-cat-gpu.png"));
        yield return null;
        yield return ClientStartupWait.Ready();
        Assert.That(c.LoadingUI.activeSelf,Is.False);Assert.That(c.Forest.Map_obj.activeSelf,Is.True);
        Assert.That(c.UpgradePanels.All(p=>p.gameObject.activeInHierarchy),Is.True);
        Assert.That(c.State.Raid_Best_Level_ByType.Length,Is.EqualTo(7));
        Assert.That((c.Forest.Stage_Now,c.Forest.Level_Now),Is.EqualTo((before.Stage_Now,before.Level_Now)));
        Assert.That(c.State.Selected_items,Is.EqualTo(before.Selected_items));Assert.That(c.State.Upgrade_Lv,Is.EqualTo(before.Upgrade_Lv));
        var start=c.Hero.transform.position;float moved=0;int count=c.Forest.TreeCount_Now;float deadline=Time.realtimeSinceStartup+12;
        while((c.Forest.TreeCount_Now==count||moved<=.5f)&&Time.realtimeSinceStartup<deadline)
        {moved=Mathf.Max(moved,Vector3.Distance(start,c.Hero.transform.position));yield return null;}
        Assert.That(c.Hero.joystick.Direction,Is.EqualTo(Vector2.zero));Assert.That(moved,Is.GreaterThan(.5f));
        Assert.That(c.Forest.TreeCount_Now,Is.LessThan(count),"Actual automatic projectile attacks must destroy a tree");
        ScreenCapture.CaptureScreenshot(ReportPath("visual/playtest-fixes-startup-auto-combat-gpu.png"));
        c.SaveNow();string savedText=File.ReadAllText(archive.MainPath);var saved=archive.Load();
        File.WriteAllText(ReportPath("playtest-fixes-startup-legacy-profile-observation.json"),JsonUtility.ToJson(new Observation{moved=moved,treesBefore=count,treesAfter=c.Forest.TreeCount_Now,raidArrayLength=c.State.Raid_Best_Level_ByType.Length,stage=c.Forest.Stage_Now,wave=c.Forest.Level_Now,zeroInput=true},true));
        yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();
        c=GameClient.Instance;
        Assert.That(c.State.Money.Value.CompareTo(saved.Money.Value),Is.Zero);Assert.That(c.State.Selected_items,Is.EqualTo(saved.Selected_items));
        Assert.That(c.State.Raid_Best_Level_ByType,Is.EqualTo(saved.Raid_Best_Level_ByType));
        var current=archive.Load();
        var expectedTime=DateTime.Parse(saved.LastSaveTime,null,System.Globalization.DateTimeStyles.RoundtripKind).ToUniversalTime();
        var actualTime=DateTime.Parse(current.LastSaveTime,null,System.Globalization.DateTimeStyles.RoundtripKind).ToUniversalTime();
        saved.LastSaveTime=current.LastSaveTime=null;
        Assert.That(JsonUtility.ToJson(saved)==JsonUtility.ToJson(current),Is.True,"Cold reload must preserve every saved field except the lifecycle timestamp");
        Assert.That(actualTime,Is.GreaterThanOrEqualTo(expectedTime));
    }
    [UnityTest] public IEnumerator FailedInitializationCannotEnableAutosaveOrOverwriteMainAndBackup()
    {
        var legacy=SaveArchive.Decode(File.ReadAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/checkpoints/pre-startup-legacy-raid-fix/NoSaveFile.json"))));
        legacy.Raid_Free_Use_Count=3;var archive=new SaveArchive(folder);archive.AllowSave();archive.Save(legacy);archive.Save(legacy);
        string main=File.ReadAllText(archive.MainPath),backup=File.ReadAllText(archive.BackupPath);disableStartup=true;
        yield return SceneManager.LoadSceneAsync("GameClient");var c=GameClient.Instance;
        Assert.Throws<InvalidOperationException>(()=>c.Initialize());c.SaveNow();
        yield return new WaitForSecondsRealtime(5.2f);
        Assert.That(c.ReadyForPlay,Is.False);Assert.That(c.RaidMode.Bound,Is.False);Assert.That(ForestRuntimeAcceptance.IsGaming,Is.False);
        Assert.That(File.ReadAllText(archive.MainPath),Is.EqualTo(main));Assert.That(File.ReadAllText(archive.BackupPath),Is.EqualTo(backup));
    }
    [Serializable] private sealed class Observation{public float moved;public int treesBefore,treesAfter,raidArrayLength,stage,wave;public bool zeroInput;}
}
