using System;
using System.Collections;
using System.Linq;
using System.IO;
using CatGunner.Recovery;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.TestTools.Utils;
using UnityEngine.UI;
using UnityEngine.EventSystems;
public sealed class OriginalMonsterTests
{
    private static void Independent(Scene scene,LoadSceneMode mode)
    {if(scene.name=="RecoveredClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().Persist=false;}
    private static void StopCombat(RecoveryForestClient c){foreach(var cat in c.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;}
    [Test] public void NativeInitializerAndPrecisionAndSpawnEllipseContract()
    {
        Assert.That(OriginalMonsterRules.Counts,Is.EqualTo(new[]{90,120,160,200,240}));Assert.That(OriginalMonsterRules.Intervals,Is.EqualTo(new[]{.35f,.2f,.17f,.12f,.08f}));
        Assert.That(OriginalMonsterRules.Precision2(new DecimalAmount(13500)).Value.PlainInteger(),Is.EqualTo("13000"));
        Assert.That(OriginalMonsterRules.Precision2(new DecimalAmount(500)*new DecimalAmount(3)).Value.PlainInteger(),Is.EqualTo("1500"));
        Assert.That(OriginalMonsterRules.Precision2(new DecimalAmount(3,-6)).Value.CompareTo(new DecimalAmount(3,-6)),Is.Zero);
        Assert.That(OriginalMonsterRules.SpawnPoint(.5f,0,0),Is.EqualTo(OriginalMonsterRules.Center+new Vector3(30*.7071067690849304f,0,30*.7071067690849304f)).Using(Vector3ComparerWithEqualsOperator.Instance));
        Assert.That(OriginalMonsterRules.SpawnPoint(1,Mathf.PI*.5f,0).magnitude,Is.GreaterThan(0));
    }
    [UnityTest, Category("ContentNavigation")] public IEnumerator OriginalNavigationZeroInputProjectilesClearNinetyAndKeepRewardOnGiveUp()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();yield return null;var c=RecoveryForestClient.Instance;ContentNavigationFixture.Unlock(c,Content_Type.Monster);yield return null;var m=c.MonsterMode;
            c.State.Owned_Gun_list[0]=20;Assert.That(c.Inventory.Equip(0,0),Is.True);int coin=c.State.PetCoin,stage=c.Forest.Stage_Now,forestWave=c.Forest.Level_Now;
            c.State.Upgrade_Lv[0]=50;c.State.Upgrade_Lv[1]=50;c.ApplyBalance();var nativeGun=OriginalEquipmentCatalogue.Load().Gun_list[20];
            var nav=UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="Monster_Btn");Canvas.ForceUpdateCanvases();var rect=(RectTransform)nav.transform;
            var evt=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center))};var hits=new System.Collections.Generic.List<RaycastResult>();EventSystem.current.RaycastAll(evt,hits);
            Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(nav));ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,evt,ExecuteEvents.pointerClickHandler);yield return null;Assert.That(m.monster_start_ui.gameObject.activeInHierarchy,Is.True);
            var enter=m.monster_start_ui.GetComponentsInChildren<Button>(true).Single(b=>b.gameObject.activeInHierarchy&&Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(n=>b.onClick.GetPersistentTarget(n)==m&&b.onClick.GetPersistentMethodName(n)=="Game_Enter"));Assert.That(enter.interactable,Is.True);Canvas.ForceUpdateCanvases();var enterRect=(RectTransform)enter.transform;evt.position=RectTransformUtility.WorldToScreenPoint(null,enterRect.TransformPoint(enterRect.rect.center));hits.Clear();EventSystem.current.RaycastAll(evt,hits);Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(enter));ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,evt,ExecuteEvents.pointerClickHandler);
            Assert.That(c.Mode,Is.EqualTo(4));Assert.That(c.Hero.RayCount,Is.EqualTo(60));Assert.That(c.Hero.Attack_Length,Is.EqualTo(60));
            Assert.That(c.Hero.Damage.Value.CompareTo(nativeGun.Damage.Value.DiscardFraction()),Is.Zero);Assert.That(c.Hero.AtkCool_Max,Is.EqualTo(Mathf.Clamp(nativeGun.AtkSpeed,.05f,2f)).Within(.00001));
            float began=Time.realtimeSinceStartup,deadline=began+70;var start=c.Hero.transform.position;
            while(m.Playing||m.Entering){if(m.PetCoin_Accum>=30||Time.realtimeSinceStartup>=deadline)break;yield return null;}
            File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/monster-projectile-combat-observation.json")),JsonUtility.ToJson(new Observation{kills=m.KilledCount,coin=m.PetCoin_Accum,seconds=Time.realtimeSinceStartup-began,moved=Vector3.Distance(start,c.Hero.transform.position),hp=m.HP_Now,wave=m.Wave_Now,level=m.Lv_Now,fixture="Independent original Gun20, zero input, original 500 health and quota 90, actual projectiles, native timings. User save untouched."},true));
            Assert.That(m.PetCoin_Accum,Is.EqualTo(30));Assert.That(m.KilledCount,Is.EqualTo(90));Assert.That(m.Clearing,Is.True);Assert.That(m.Lv_Now,Is.EqualTo(1));Assert.That(c.State.Lv_Now,Is.EqualTo(1));Assert.That(c.State.PetCoin,Is.EqualTo(coin+30));
            Assert.That(c.Hero.joystick.Direction,Is.EqualTo(Vector2.zero));Assert.That(Vector3.Distance(start,c.Hero.transform.position),Is.GreaterThan(1));Assert.That(Vector3.Distance(OriginalMonsterRules.Center,c.Hero.transform.position),Is.LessThanOrEqualTo(14.05));
            m.LevelClear();m.Game_GiveUp();m.Game_GiveUp();m.Bonus_Get();Assert.That(c.State.PetCoin,Is.EqualTo(coin+30));Assert.That(m.GameEnd_UI.activeInHierarchy,Is.True);Assert.That(m.Reward_txt.text,Is.EqualTo("30"));
            var saved=OriginalSaveArchive.Decode(OriginalSaveArchive.Encode(c.State));Assert.That(saved.Lv_Now,Is.EqualTo(1));Assert.That(saved.PetCoin,Is.EqualTo(coin+30));
            m.Game_Exit();yield return new WaitForSeconds(2);Assert.That(c.Mode,Is.Zero);Assert.That(m.NonSpawned_Monster.Count,Is.EqualTo(240));Assert.That(m.Spawned_Monster.Count,Is.Zero);Assert.That(Camera.main.orthographicSize,Is.EqualTo(40));Assert.That((c.Forest.Stage_Now,c.Forest.Level_Now),Is.EqualTo((stage,forestWave)));
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");
    }
    [UnityTest] public IEnumerator KnockbackSlimeDeathReplacementAndLastLifeFailureAreDistinct()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();yield return null;var c=RecoveryForestClient.Instance;var m=c.MonsterMode;StopCombat(c);m.HP_Max=2;m.Game_Enter();yield return new WaitForSeconds(2.1f);Assert.That(m.Playing,Is.True);m.StopAllGameCoroutines();
            Assert.That(m.HP_Disc.AngRadiansEnd,Is.EqualTo(360));var first=m.Spawned_Monster.First();var coll=first.GetComponentsInChildren<EnemyColl>().First().GetComponent<Collider>();
            var direction=(first.transform.position-OriginalMonsterRules.Center).normalized;
            Assert.That(Vector3.Dot(first.MoveVelocity,direction),Is.LessThan(0));
            ForestDamageDispatch.Damage_Collider(coll,OriginalAmount.FromValue(new DecimalAmount(250)),Vector3.zero,"250",false);Assert.That(first.enemy.Health_Now.Value.PlainInteger(),Is.EqualTo("250"));Assert.That(first.KnockingBack,Is.True);Assert.That(Vector3.Dot(first.rb.linearVelocity,direction),Is.GreaterThan(0));
            yield return new WaitForSeconds(.22f);Assert.That(first.KnockingBack,Is.False);Assert.That(Vector3.Dot(first.rb.linearVelocity,direction),Is.LessThan(0));
            var slime=Particle_Polling.instance_slime._particleSystem.Single();slime.Clear();ForestDamageDispatch.Damage_Collider(coll,OriginalAmount.FromValue(new DecimalAmount(250)),Vector3.zero,"250",false);
            Assert.That(m.KilledCount,Is.EqualTo(1));Assert.That(slime.particleCount,Is.EqualTo(5));Assert.That(first.gameObject.activeSelf,Is.False);first.enemy.Die();Assert.That(m.KilledCount,Is.EqualTo(1));
            var invader=m.Spawned_Monster.First();invader.Barrier_Touched();Assert.That(m.HP_Now,Is.EqualTo(1));Assert.That(m.HP_Disc.AngRadiansEnd,Is.EqualTo(180));Assert.That(m.InvasionPending,Is.EqualTo(1));Assert.That(m.KilledCount,Is.EqualTo(1));Assert.That(m.Playing,Is.True);
            m.Spawned_Monster.First().Barrier_Touched();Assert.That(m.HP_Now,Is.Zero);Assert.That(m.Playing,Is.False);Assert.That(m.GameEnd_UI.activeInHierarchy,Is.True);Assert.That(m.PetCoin_Accum,Is.Zero);
            foreach(var enemy in m.Spawned_Monster)Assert.That(enemy.rb.linearVelocity,Is.EqualTo(Vector3.zero));m.LevelClear();Assert.That(m.PetCoin_Accum,Is.Zero);
            m.Game_Exit();yield return new WaitForSeconds(2);Assert.That(m.NonSpawned_Monster.Count,Is.EqualTo(240));Assert.That(m.NonSpawned_Monster.Distinct().Count(),Is.EqualTo(240));
            Assert.That(m.WaveBaseHealth_return(2000).Value.CompareTo(OriginalMonsterRules.Precision2(m.Health_Balance[1999].Value*new DecimalAmount(3)).Value),Is.Zero);
            Assert.That(m.WaveBaseHealth_return(2000).Value.CompareTo(m.WaveBaseHealth_Pure(2000).Value),Is.Zero);
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");
    }
    [UnityTest] public IEnumerator NaturalOriginalSingleLifeBreachAndEntryCancellationCannotAwardOrRestart()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();yield return null;var c=RecoveryForestClient.Instance;var m=c.MonsterMode;StopCombat(c);int coin=c.State.PetCoin;
            m.Game_Enter();m.Game_Exit();yield return new WaitForSeconds(3.2f);Assert.That(c.Mode,Is.Zero);Assert.That(m.Entering,Is.False);Assert.That(m.GameExplain_obj.activeSelf,Is.False);Assert.That(c.State.PetCoin,Is.EqualTo(coin));
            m.Game_Enter();float began=Time.realtimeSinceStartup,deadline=began+50;
            while((m.Entering||m.Playing)&&Time.realtimeSinceStartup<deadline)yield return null;
            Assert.That(m.HP_Max,Is.EqualTo(1));Assert.That(m.HP_Now,Is.Zero);Assert.That(m.Playing,Is.False);Assert.That(m.GameEnd_UI.activeInHierarchy,Is.True);Assert.That(m.KilledCount,Is.Zero);Assert.That(c.State.PetCoin,Is.EqualTo(coin));
            File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/monster-natural-breach-observation.json")),JsonUtility.ToJson(new Observation{seconds=Time.realtimeSinceStartup-began,kills=m.KilledCount,hp=m.HP_Now,coin=m.PetCoin_Accum,fixture="Independent zero-fire fixture: original Rigidbody movement, original barrier trigger, HP_Max=1 and native spawn/entry timing. No scripted invasion or elapsed-time injection."},true));
            m.Game_Exit();yield return new WaitForSeconds(2);Assert.That(c.Mode,Is.Zero);Assert.That(m.Spawned_Monster.Count,Is.Zero);
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");
    }
    [UnityTest] public IEnumerator FifthLevelBigEnemiesRollIntoNextWaveAndRestoreOriginalHud()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();yield return null;var c=RecoveryForestClient.Instance;var m=c.MonsterMode;StopCombat(c);m.Lv_Now=4;c.State.Lv_Now=4;int coin=c.State.PetCoin;
            m.Game_Enter();float deadline=Time.realtimeSinceStartup+35;int normal=0,big=0;
            while(m.PetCoin_Accum==0&&Time.realtimeSinceStartup<deadline)
            {
                foreach(var monster in m.Spawned_Monster.ToArray())
                {
                    if(monster.IsBig){big++;Assert.That(monster.enemy.Health_Max.Value.PlainInteger(),Is.EqualTo("1500"));Assert.That(monster._spriteRenderer.sprite,Is.SameAs(m.Monster_sprites[1]));Assert.That(monster._spriteRenderer.transform.localScale,Is.EqualTo(Vector3.one*1.5f));}
                    else{normal++;Assert.That(monster.enemy.Health_Max.Value.PlainInteger(),Is.EqualTo("500"));}
                    monster.enemy.Damaged(monster.enemy.Health_Max);
                }
                yield return null;
            }
            Assert.That(big+normal,Is.EqualTo(240));Assert.That(big,Is.GreaterThan(0));Assert.That(m.PetCoin_Accum,Is.EqualTo(30));Assert.That((m.Wave_Now,m.Lv_Now),Is.EqualTo((1,0)));Assert.That((c.State.Wave_Now,c.State.Lv_Now),Is.EqualTo((1,0)));Assert.That(c.State.PetCoin,Is.EqualTo(coin+30));
            yield return new WaitForSeconds(2.1f);Assert.That(m.monster_game_slider.Wave_txt.text,Is.EqualTo("Wave 2-1"));Assert.That(m.monster_game_slider.Stage_Fill.fillAmount,Is.Zero);Assert.That(m.KilledCount,Is.Zero);
            Assert.That(m.Spawned_Monster.All(o=>o.enemy.Health_Max.Value.PlainInteger()=="1500"),Is.True);m.Game_GiveUp();m.Game_Exit();yield return new WaitForSeconds(2);Assert.That(c.Mode,Is.Zero);Assert.That(m.NonSpawned_Monster.Count,Is.EqualTo(240));
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");
    }
    [Serializable]private sealed class Observation{public int kills,coin,hp,wave,level;public float seconds,moved;public string fixture;}
}
