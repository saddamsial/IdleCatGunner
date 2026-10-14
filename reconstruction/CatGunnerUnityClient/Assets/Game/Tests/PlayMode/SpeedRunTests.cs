using System.Collections;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;

public sealed class SpeedRunTests
{
    [Test] public void NativeTreeCountAndRingLayoutRespectCapsCountAndOriginalJitterBounds()
    {
        Assert.That(SpeedRun_manager.GetStageTreeCount(0),Is.EqualTo(20));Assert.That(SpeedRun_manager.GetStageTreeCount(11),Is.EqualTo(185));Assert.That(SpeedRun_manager.GetStageTreeCount(12),Is.EqualTo(190));
        foreach(int count in new[]{20,35,185,190})
        {
            int calls=0;var points=SpeedRunLayout.Place(count,22,70,3,2,(lo,hi)=>{calls++;return (lo+hi)*.5f;});
            Assert.That(points.Length,Is.EqualTo(count));Assert.That(calls,Is.EqualTo(count*2));Assert.That(points.All(p=>p.y==0&&p.magnitude>=22&&p.magnitude<=70),Is.True);
            Assert.That(points.Distinct().Count(),Is.EqualTo(count));
        }
    }
    [UnityTest] public IEnumerator OriginalCatalogueGearFixtureAutomaticallyClearsPaysOnceAndReturnsToUnchangedForestProgress()
    {
        void Configure(Scene scene,LoadSceneMode mode){if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().Persist=false;}
        SceneManager.sceneLoaded+=Configure;
        try
        {
            yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;var mode=c.SpeedRun;
            // Explicit isolated equipment fixture, never the user's save. The
            // package does not establish that starter Gun0 must beat this timed
            // mode. Use original Gun5 values; no damage/health/time alteration.
            c.State.Owned_Gun_list[0]=5;Assert.That(c.Inventory.Equip(0,0),Is.True);
            var nav=Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="SpeedRun_Btn");nav.onClick.Invoke();yield return null;Assert.That(mode.Start_UI.gameObject.activeInHierarchy,Is.True);
            int stage=c.Forest.Stage_Now,wave=c.Forest.Level_Now;mode.Game_Enter();Assert.That(c.Mode,Is.EqualTo(1));Assert.That(c.Forest.Map_obj.activeSelf,Is.False);
            float deadline=Time.realtimeSinceStartup+15;while(mode.Entering&&Time.realtimeSinceStartup<deadline)yield return null;
            Assert.That(mode.Playing,Is.True);Assert.That(mode.Tree_Alive.Count,Is.EqualTo(20));Assert.That(mode.Tree_list.Count(t=>t.gameObject.activeInHierarchy),Is.EqualTo(20));
            Assert.That(mode.GameTime_Now,Is.GreaterThan(58));Assert.That(c.Hero.joystick.Direction,Is.EqualTo(Vector2.zero));
            int dia=c.State.Dia;deadline=Time.realtimeSinceStartup+65;while(mode.Playing&&Time.realtimeSinceStartup<deadline)yield return null;
            var report=System.IO.Path.GetFullPath(System.IO.Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/speedrun-projectile-combat-observation.json"));
            System.IO.File.WriteAllText(report,JsonUtility.ToJson(new Observation {gun=c.Hero.GunNum,remaining=mode.TreeCount_Now,seconds=mode.GameTime_Now,won=mode.GameWin_UI.activeSelf,damage=c.Hero.Damage.Value.ToString(),cooldown=c.Hero.AtkCool_Max,fixture="Independent test profile equipped original catalogue Gun5 through inventory; zero input, original target health/positions/timer. Not default starter gear or user-save acceptance."},true));
            Assert.That(mode.GameWin_UI.activeSelf,Is.True,"Original catalogue Gun5 fixture must clear by actual automatic projectiles without manual movement or injected enemy damage");
            Assert.That(mode.Stage_Now,Is.EqualTo(1));Assert.That(c.State.SpeedRun_Stage_Now,Is.EqualTo(1));Assert.That(c.State.Dia,Is.EqualTo(dia+30));
            mode.Game_Win();Assert.That(c.State.Dia,Is.EqualTo(dia+30));Assert.That((c.Forest.Stage_Now,c.Forest.Level_Now),Is.EqualTo((stage,wave)));
            mode.Game_Exit();yield return new WaitForSeconds(2);Assert.That(c.Mode,Is.Zero);Assert.That(c.Forest.Map_obj.activeSelf,Is.True);Assert.That(mode.Map_obj.activeSelf,Is.False);
        }
        finally {SceneManager.sceneLoaded-=Configure;}
        yield return SceneManager.LoadSceneAsync("TargetPreview");
    }
    [System.Serializable] private sealed class Observation {public int gun,remaining;public float seconds,cooldown;public bool won;public string damage,fixture;}
    [UnityTest] public IEnumerator TimedFailurePaysNothingAndExplicitExitStopsModeUpdates()
    {
        void Configure(Scene scene,LoadSceneMode mode){if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().Persist=false;}
        SceneManager.sceneLoaded+=Configure;
        try
        {
            yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;c.Hero.GetComponent<ForestCombatAcceptance>().enabled=false;var mode=c.SpeedRun;mode.Game_Enter();
            yield return new WaitForSeconds(2);int dia=c.State.Dia;mode.GameTime_Now=0;yield return null;Assert.That(mode.GameFail_UI.activeSelf,Is.True);Assert.That(c.State.Dia,Is.EqualTo(dia));Assert.That(mode.Stage_Now,Is.Zero);
            mode.Game_Exit();yield return new WaitForSeconds(2);Assert.That(c.Mode,Is.Zero);Assert.That(c.State.Dia,Is.EqualTo(dia));Assert.That(mode.Playing,Is.False);
        }
        finally {SceneManager.sceneLoaded-=Configure;}
        yield return SceneManager.LoadSceneAsync("TargetPreview");
    }
}
