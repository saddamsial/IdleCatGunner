using System;
using System.Collections;
using System.Linq;
using System.IO;
using CatGunner.Recovery;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;
using UnityEngine.EventSystems;
public sealed class OriginalMineTests
{
    private static void Independent(Scene scene,LoadSceneMode mode)
    {if(scene.name=="RecoveredClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().Persist=false;}
    private static void StopCombat(RecoveryForestClient c){foreach(var cat in c.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;}
    [Test] public void DailyTicketsKeepSameAndFutureDatesAndRenewOnlyOnNextDay()
    {
        var state=new OriginalSaveData{TicketUse_Count=2,TicketCharge_Date=new DateTime(2026,10,10).ToString("O")};
        Assert.That(OriginalMineTickets.Reload(state,new DateTime(2026,10,10,23,59,0)),Is.False);Assert.That(state.TicketUse_Count,Is.EqualTo(2));
        Assert.That(OriginalMineTickets.Reload(state,new DateTime(2026,10,9)),Is.False);Assert.That(state.TicketUse_Count,Is.EqualTo(2));
        Assert.That(OriginalMineTickets.Reload(state,new DateTime(2026,10,11)),Is.True);Assert.That(state.TicketUse_Count,Is.Zero);
        var roundtrip=OriginalSaveArchive.Decode(OriginalSaveArchive.Encode(state));Assert.That(roundtrip.TicketCharge_Date,Is.EqualTo(state.TicketCharge_Date));
        state.TicketCharge_Date="malformed";Assert.Throws<InvalidDataException>(()=>OriginalMineTickets.Reload(state,DateTime.Now));
        Assert.That(state.TicketCharge_Date,Is.EqualTo("malformed"));
    }
    [Test] public void NativeLatticeRanksNoiseAndMarksExactlyOneHundredRarePositions()
    {
        OriginalMineLayout.Point[] result=null;var scan=OriginalMineLayout.Generate(42,1000,new Vector3(-100,0,0),24.3f,150,.085f,.517f,30,points=>result=points);
        int yielded=0;while(scan.MoveNext())yielded++;
        Assert.That(yielded,Is.GreaterThan(100));Assert.That(result.Length,Is.EqualTo(1000));Assert.That(result.Count(p=>p.Degree==1),Is.EqualTo(100));
        Assert.That(result.Select(p=>p.Position).Distinct().Count(),Is.EqualTo(1000));
        foreach(var p in result){float distance=(p.Position-new Vector3(-100,0,0)).magnitude;Assert.That(distance,Is.InRange(24.3f,150f));Assert.That((p.Position.x+100)%4,Is.Zero);Assert.That(p.Position.z%4,Is.Zero);Assert.That(p.Noise,Is.GreaterThanOrEqualTo(.517f));}
        for(int i=1;i<result.Length;i++)Assert.That(result[i].Noise,Is.LessThanOrEqualTo(result[i-1].Noise));
        OriginalMineLayout.Point[] small=null;scan=OriginalMineLayout.Generate(42,7,new Vector3(-100,0,0),24.3f,150,.085f,.517f,30,p=>small=p);while(scan.MoveNext()){}
        Assert.That(small.Length,Is.EqualTo(7));Assert.That(small.All(p=>p.Degree==1),Is.True);Assert.That(small.Select(p=>p.Position),Is.EqualTo(result.Take(7).Select(p=>p.Position)));
    }
    [UnityTest, Category("ContentNavigation")] public IEnumerator AutomaticProjectilesMineWithZeroInputAndNaturalSixtySecondSettlement()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();yield return null;var c=RecoveryForestClient.Instance;ContentNavigationFixture.Unlock(c,Content_Type.Mine);yield return null;var m=c.MineMode;
            c.State.Owned_Gun_list[0]=20;Assert.That(c.Inventory.Equip(0,0),Is.True);int forest=c.Forest.Stage_Now,wave=c.Forest.Level_Now,dia=c.State.Dia;
            int mission=c.State.Mission_PlayMine_Value;
            var nav=UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="Mine_Btn");Canvas.ForceUpdateCanvases();var rect=(RectTransform)nav.transform;
            var evt=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center))};var hits=new System.Collections.Generic.List<RaycastResult>();EventSystem.current.RaycastAll(evt,hits);
            Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(nav));ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,evt,ExecuteEvents.pointerClickHandler);yield return null;
            Assert.That(m.mineStart_ui.gameObject.activeInHierarchy,Is.True);
            var enter=m.mineStart_ui.GetComponentsInChildren<Button>(true).Single(b=>b.gameObject.activeInHierarchy&&Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(n=>b.onClick.GetPersistentTarget(n)==m&&b.onClick.GetPersistentMethodName(n)=="Game_Enter"));
            enter.onClick.Invoke();Assert.That(c.Mode,Is.EqualTo(2));Assert.That(c.State.TicketUse_Count,Is.EqualTo(1));Assert.That(c.State.Mission_PlayMine_Value,Is.EqualTo(mission+1));
            float deadline=Time.realtimeSinceStartup+20;while(m.Entering&&Time.realtimeSinceStartup<deadline)yield return null;
            Assert.That(m.Playing,Is.True);Assert.That(c.Hero.Damage.Value.PlainInteger(),Is.EqualTo("1"));Assert.That(c.Hero.CriPer,Is.Zero);Assert.That(m.OreCount_Max,Is.EqualTo(1000));Assert.That(m.Ore_list.Count(o=>o.gameObject.activeSelf),Is.EqualTo(1000));Assert.That(m.Ore_list.Count(o=>o._diaValue==10),Is.EqualTo(100));
            var start=c.Hero.transform.position;float began=Time.realtimeSinceStartup;
            deadline=began+66;while(m.Playing&&Time.realtimeSinceStartup<deadline)yield return null;
            File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mine-projectile-combat-observation.json")),JsonUtility.ToJson(new Observation{score=m.Dia_Score,reward=m.Reward_Value,seconds=Time.realtimeSinceStartup-began,remaining=m.GameTime_Now,moved=Vector3.Distance(start,c.Hero.transform.position),fixture="Independent original Gun20 profile, zero input, actual automatic projectiles and natural 60-second timer. No user save or visual/device acceptance."},true));
            Assert.That(c.Hero.joystick.Direction,Is.EqualTo(Vector2.zero));Assert.That(Vector3.Distance(start,c.Hero.transform.position),Is.GreaterThan(5));
            Assert.That(m.Dia_Score,Is.GreaterThanOrEqualTo(10));Assert.That(m.GameEnd_UI.activeInHierarchy,Is.True);Assert.That(c.State.Dia,Is.EqualTo(dia+m.Dia_Score/10));Assert.That(m.GameTime_Now,Is.LessThanOrEqualTo(0));
            int awarded=c.State.Dia;m.Game_End();m.Bonus_Get();Assert.That(c.State.Dia,Is.EqualTo(awarded));
            m.Game_Exit();yield return new WaitForSeconds(2);Assert.That(c.Mode,Is.Zero);Assert.That((c.Forest.Stage_Now,c.Forest.Level_Now),Is.EqualTo((forest,wave)));Assert.That(m.Map_obj.activeSelf,Is.False);
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");
    }
    [UnityTest] public IEnumerator UnitHitRoutingRareHealthFloorRewardDustAndLateHits()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();yield return null;var c=RecoveryForestClient.Instance;var m=c.MineMode;StopCombat(c);m.Game_Enter();
            float deadline=Time.realtimeSinceStartup+20;while(m.Entering&&Time.realtimeSinceStartup<deadline)yield return null;Assert.That(m.Playing,Is.True);
            var normal=m.Ore_list.First(o=>o._diaValue==1);var rare=m.Ore_list.First(o=>o._diaValue==10);
            var coll=normal.GetComponentsInChildren<EnemyColl>().First().GetComponent<Collider>();
            Assert.That(ForestDamageDispatch.Damage_Collider(coll,OriginalAmount.FromValue(new DecimalAmount(999999)),Vector3.zero,"999999",true),Is.True);
            Assert.That(normal.enemy.Health_Now.Value.PlainInteger(),Is.EqualTo("2"));Assert.That(normal.enemy.is_Die,Is.False);
            Assert.That(normal.enemy._bounce is Bounce_Custom,Is.True);Assert.That(((Bounce_Custom)normal.enemy._bounce).Bouncing,Is.True);
            var dust=Particle_Polling.instance_dust._particleSystem.Single();dust.Clear();
            ForestDamageDispatch.Damage_Collider(coll,OriginalAmount.FromValue(new DecimalAmount(1)),Vector3.zero,"1",false);
            ForestDamageDispatch.Damage_Collider(coll,OriginalAmount.FromValue(new DecimalAmount(999999)),Vector3.zero,"999999",false);
            Assert.That(normal.gameObject.activeSelf,Is.False);Assert.That(m.Dia_Score,Is.EqualTo(1));Assert.That(dust.particleCount,Is.EqualTo(5));
            coll=rare.GetComponentsInChildren<EnemyColl>().First().GetComponent<Collider>();
            for(int i=0;i<4;i++)ForestDamageDispatch.Damage_Collider(coll,OriginalAmount.FromValue(new DecimalAmount(999999)),Vector3.zero,"x",false);
            Assert.That(rare.enemy.Health_Now.Value.PlainInteger(),Is.EqualTo("1"));Assert.That(m.Dia_Score,Is.EqualTo(1));
            ForestDamageDispatch.Damage_Collider(coll,OriginalAmount.FromValue(new DecimalAmount(999999)),Vector3.zero,"x",false);Assert.That(m.Dia_Score,Is.EqualTo(11));
            int dia=c.State.Dia;m.GameTime_Now=0;yield return null;yield return null;Assert.That(m.Reward_Value,Is.EqualTo(1));Assert.That(c.State.Dia,Is.EqualTo(dia+1));Assert.That(c.State.Best_Reward,Is.EqualTo(1));
            var live=m.Ore_list.First(o=>o.gameObject.activeSelf);var health=live.enemy.Health_Now.Value;live.enemy.Damaged(OriginalAmount.FromValue(new DecimalAmount(999999)));normal.enemy.Die();m.Game_End();
            Assert.That(live.enemy.Health_Now.Value.CompareTo(health),Is.Zero);Assert.That(m.Dia_Score,Is.EqualTo(11));Assert.That(c.State.Dia,Is.EqualTo(dia+1));
            string folder=Path.Combine(Application.temporaryCachePath,"mine-fixture-"+Guid.NewGuid().ToString("N"));var archive=new OriginalSaveArchive(folder);archive.AllowSave();archive.Save(c.State);var saved=archive.Load();Assert.That(saved.TicketUse_Count,Is.EqualTo(1));Assert.That(saved.Best_Reward,Is.EqualTo(1));
            m.Game_Exit();yield return new WaitForSeconds(2);Assert.That(m.ModeHUD.activeSelf,Is.False);Assert.That(m.Ingame_Upgrade_UI_obj.activeSelf,Is.True);
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");
    }
    [UnityTest] public IEnumerator EntryCancellationAndExhaustedTicketsCannotRestartOrAward()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();yield return null;var c=RecoveryForestClient.Instance;var m=c.MineMode;StopCombat(c);
            int dia=c.State.Dia;m.Game_Enter();Assert.That(m.Entering,Is.True);m.Game_Exit();yield return new WaitForSeconds(2);
            Assert.That(c.Mode,Is.Zero);Assert.That(m.Entering,Is.False);Assert.That(c.State.TicketUse_Count,Is.EqualTo(1));Assert.That(c.State.Dia,Is.EqualTo(dia));
            m.Game_Enter();m.Game_Exit();yield return new WaitForSeconds(2);Assert.That(c.State.TicketUse_Count,Is.EqualTo(2));
            m.StartPanel_Open();m.Game_Enter();Assert.That(c.Mode,Is.Zero);Assert.That(m.Entering,Is.False);Assert.That(c.State.TicketUse_Count,Is.EqualTo(2));Assert.That(m.mineStart_ui.TicketCount_txt.text,Is.EqualTo("0/2"));
            yield return new WaitForSeconds(2);Assert.That(m.Map_obj.activeSelf,Is.False);
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");
    }
    [Serializable]private sealed class Observation{public int score,reward;public float seconds,remaining,moved;public string fixture;}
}
