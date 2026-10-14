using System;
using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;
using Object=UnityEngine.Object;

public sealed class RelicSkipRuleTests
{
    [Test] public void ZeroChanceConsumesNoRollAndNormalAdvanceRaisesFrontier()
    {
        int stage=0,level=4,maximum=4;
        Assert.That(ForestRules.AdvanceAfterWin(ref stage,ref level,ref maximum,0,()=>throw new Exception("No roll expected")),Is.False);
        Assert.That((stage,level,maximum),Is.EqualTo((1,0,10)));
    }
    [Test] public void PositiveChanceRollsOnceEvenWhenCandidateIsBeyondFrontier()
    {
        foreach(int frontier in new[]{0,1,2})
        {
            int s=0,l=0,m=frontier,calls=0;
            Assert.That(ForestRules.AdvanceAfterWin(ref s,ref l,ref m,102,()=>{calls++;return 0;}),Is.False);
            Assert.That((s,l,m,calls),Is.EqualTo((0,1,Math.Max(frontier,1),1)));
        }
    }
    [Test] public void PercentageAndOldFrontierBothUseStrictLessThan()
    {
        int s=0,l=0,m=3;
        Assert.That(ForestRules.AdvanceAfterWin(ref s,ref l,ref m,50,()=>.5f),Is.False);
        s=l=0;m=3;Assert.That(ForestRules.AdvanceAfterWin(ref s,ref l,ref m,50,()=>.499f),Is.True);
        Assert.That((s,l,m),Is.EqualTo((0,2,3)));
        s=l=0;m=2;Assert.That(ForestRules.AdvanceAfterWin(ref s,ref l,ref m,100,()=>0),Is.False);
    }
    [Test] public void SkipCanCrossStageBoundaryButNeverChainsOrSkipsPastMaximum()
    {
        foreach(var row in new[]{(0,3,10,false,0,4),(0,3,11,true,1,0),(0,4,11,false,1,0),(0,4,12,true,1,1)})
        {
            int s=row.Item1,l=row.Item2,m=row.Item3,calls=0;
            Assert.That(ForestRules.AdvanceAfterWin(ref s,ref l,ref m,306,()=>{calls++;return 1;}),Is.EqualTo(row.Item4));
            Assert.That((s,l,m,calls),Is.EqualTo((row.Item5,row.Item6,row.Item3,1)));
        }
    }
    [Test] public void OriginalUnlockedRelicTotalsAreNotClampedToOneHundred()
    {
        var state=new SaveData();var p=new RelicProgression(state);
        Assert.That(p.Special(Relic_Type.Skip),Is.Zero);
        foreach(int i in new[]{4,9,14})state.Relics[i].is_Unlock=true;
        Assert.That(p.Special(Relic_Type.Skip),Is.EqualTo(6));
        foreach(int i in new[]{4,9,14})state.Relics[i].Lv=50;
        Assert.That(p.Special(Relic_Type.Skip),Is.EqualTo(306));
        int s=0,l=0,m=100;Assert.That(ForestRules.AdvanceAfterWin(ref s,ref l,ref m,306,()=>1),Is.True);
    }
}

public sealed class RelicSkipFlowTests
{
    [Serializable] private sealed class Observation
    {
        public string fixture,money,hud;public int actualTrees,stage,level,maximum,missionClears;public bool notification;
    }
    private GameClient client;
    private string folder;
    private bool background;
    private static string Reports=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
    private void Configure(Scene s,LoadSceneMode mode)
    {
        if(s.name!="GameClient")return;
        var c=s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();
        c.SaveFolderOverride=folder;
        foreach(var cat in c.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;
        folder=Path.Combine(Application.temporaryCachePath,"RelicSkip-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Configure;
        yield return Load();
    }
    private IEnumerator Load()
    {
        yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;
        client=GameClient.Instance;
    }
    [UnityTearDown] public IEnumerator Teardown()
    {
        yield return SceneManager.LoadSceneAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;
        if(Directory.Exists(folder))Directory.Delete(folder,true);
        Time.timeScale=1;Application.runInBackground=background;
    }
    private void UnlockSkip()
    {
        // Independent original Lv50/102% fixture, never the user's profile.
        client.State.Relics[4].is_Unlock=true;client.State.Relics[4].Lv=50;
        client.Forest.Stage_Value_Max=100;client.Relics.Value_Reload();client.GameStart();
        Assert.That(Relic_manager.Skip_Value,Is.EqualTo(102));
    }
    [UnityTest] public IEnumerator NaturalProjectilesClearWaveSkipOnceAndPlayOriginalNextWaveNotification()
    {
        UnlockSkip();client.State.Owned_Gun_list[0]=5;Assert.That(client.Inventory.Equip(0,0),Is.True);
        foreach(var cat in client.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=true;
        var trees=client.Forest.Map_obj.GetComponentsInChildren<Tree>(false);Assert.That(trees.Length,Is.EqualTo(30));
        var money=client.State.Money.Value;var expected=trees.Aggregate(new DecimalAmount(0),(sum,t)=>sum+t.enemy.Money.Value.Percent(client.Balance.Money(0)));
        int cleared=client.State.Mission_StageClear_Value,treeMission=client.State.Mission_TreeCount_Value,rounds=client.RoundsStarted;
        float deadline=Time.realtimeSinceStartup+60;
        while(!client.IsTransitioning&&Time.realtimeSinceStartup<deadline)yield return null;
        Assert.That(client.IsTransitioning,Is.True,"Actual automatic movement and Gun5 projectiles must clear all original trees");
        foreach(var cat in client.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;
        Assert.That((client.Forest.Stage_Now,client.Forest.Level_Now,client.Forest.Stage_Value_Max),Is.EqualTo((0,2,100)));
        Assert.That(client.State.Mission_StageClear_Value,Is.EqualTo(cleared+1));Assert.That(client.State.Mission_TreeCount_Value,Is.EqualTo(treeMission+30));
        Assert.That(client.State.Money.Value.CompareTo(money+expected),Is.Zero,"No reward for the skipped wave");
        Assert.That(client.Forest.GameSkip_UI.activeSelf,Is.False);Assert.That(client.WinUI.activeSelf,Is.True);
        client.GameWin();Assert.That(client.State.Mission_StageClear_Value,Is.EqualTo(cleared+1));
        float transition=Time.time;while(client.RoundsStarted==rounds&&Time.realtimeSinceStartup<deadline+5)yield return null;
        Assert.That(Time.time-transition,Is.InRange(1.6f,2.1f));Assert.That(client.Forest.GameSkip_UI.activeSelf,Is.True);
        Assert.That(client.Slider.Stage_txt.text,Is.EqualTo("Stage 1-3"));Assert.That(client.Forest.TreeCount_Max,Is.EqualTo(90));
        var scroll=client.Forest.GameSkip_UI.GetComponentInChildren<RawImage>(true);float x=scroll.uvRect.x;
        yield return new WaitForSeconds(.35f);Assert.That(scroll.uvRect.x,Is.LessThan(x-.02f));
        Assert.That(client.WinUI.activeSelf||client.LoadingUI.activeSelf,Is.False);
        ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/relic-skip-next-wave-gpu.png"));yield return null;
        File.WriteAllText(Path.Combine(Reports,"relic-skip-natural-wave-observation.json"),JsonUtility.ToJson(new Observation{fixture="Independent original Gun5 and Lv50 Skip relic, stage0 wave0; no HP/position/timer changes",actualTrees=30,stage=client.Forest.Stage_Now,level=client.Forest.Level_Now,maximum=client.Forest.Stage_Value_Max,missionClears=client.State.Mission_StageClear_Value-cleared,money=expected.ToString(),notification=client.Forest.GameSkip_UI.activeSelf,hud=client.Slider.Stage_txt.text},true));
        client.State.Relics[4].is_Unlock=false;client.State.Relics[4].Lv=0;client.GameWin();
        yield return new WaitForSeconds(2.05f);Assert.That(client.Forest.Level_Now,Is.EqualTo(3));Assert.That(client.Forest.GameSkip_UI.activeSelf,Is.False);
    }
    [UnityTest] public IEnumerator SaveReloadKeepsAdvancedWaveWithoutReplayingCueOrDuplicatingRewards()
    {
        UnlockSkip();client.GameWin();client.SaveNow();var expected=client.State.Money.Value;int mission=client.State.Mission_StageClear_Value;
        var saved=new SaveArchive(folder).Load();Assert.That((saved.Stage_Now,saved.Level_Now,saved.Stage_Value_Max),Is.EqualTo((0,2,100)));
        yield return SceneManager.LoadSceneAsync("TargetPreview");yield return Load();
        Assert.That((client.Forest.Stage_Now,client.Forest.Level_Now,client.Forest.Stage_Value_Max),Is.EqualTo((0,2,100)));
        Assert.That(client.Forest.GameSkip_UI.activeSelf,Is.False);Assert.That(client.State.Mission_StageClear_Value,Is.EqualTo(mission));
        Assert.That(client.State.Money.Value.CompareTo(expected),Is.Zero);Assert.That(Relic_manager.Skip_Value,Is.EqualTo(102));
    }
    [UnityTest] public IEnumerator FailureAndLocalTransitionCancellationCannotAwardOrLeakSkipCue()
    {
        UnlockSkip();int mission=client.State.Mission_StageClear_Value;client.GameFail();
        yield return new WaitForSeconds(2.05f);Assert.That((client.Forest.Stage_Now,client.Forest.Level_Now),Is.EqualTo((0,0)));
        Assert.That(client.Forest.GameSkip_UI.activeSelf,Is.False);Assert.That(client.State.Mission_StageClear_Value,Is.EqualTo(mission));
        client.GameWin();Assert.That(client.Forest.Level_Now,Is.EqualTo(2));client.Restart();
        Assert.That(client.Forest.GameSkip_UI.activeSelf,Is.False);int rounds=client.RoundsStarted;
        yield return new WaitForSeconds(2.05f);Assert.That(client.RoundsStarted,Is.EqualTo(rounds));
        client.GameWin();client.SuspendForestForMode(1);client.GameStart();Assert.That(client.Forest.GameSkip_UI.activeSelf,Is.False);
        Assert.That(client.State.Mission_StageClear_Value,Is.EqualTo(mission+2));
    }
    [UnityTest] public IEnumerator AllThreeOriginalBannerScrollsPreserveUvsAndPauseWithTimeScaleAndInactiveHierarchy()
    {
        foreach(var banner in new[]{client.WinUI,client.FailUI,client.Forest.GameSkip_UI})
        {
            var raw=banner.GetComponentInChildren<RawImage>(true);var scrolling=raw.GetComponent<Scrolling>();
            Assert.That(scrolling,Is.Not.Null);Assert.That(scrolling.Speed,Is.EqualTo(new Vector2(-.1f,0)));
            var before=raw.uvRect;banner.SetActive(true);yield return null;float x=raw.uvRect.x;
            yield return new WaitForSeconds(.22f);Assert.That(raw.uvRect.x,Is.LessThan(x-.015f));
            Assert.That((raw.uvRect.y,raw.uvRect.width,raw.uvRect.height),Is.EqualTo((before.y,before.width,before.height)));
            Time.timeScale=0;yield return null;x=raw.uvRect.x;yield return new WaitForSecondsRealtime(.15f);Assert.That(raw.uvRect.x,Is.EqualTo(x));Time.timeScale=1;
            banner.SetActive(false);x=raw.uvRect.x;yield return new WaitForSeconds(.15f);Assert.That(raw.uvRect.x,Is.EqualTo(x));
            banner.SetActive(true);yield return null;Assert.That(raw.uvRect.x,Is.LessThanOrEqualTo(x));banner.SetActive(false);
        }
    }
}
