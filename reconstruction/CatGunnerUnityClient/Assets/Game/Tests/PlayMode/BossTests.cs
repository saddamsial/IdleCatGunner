using System;
using System.Collections;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;
using UnityEngine.EventSystems;
public sealed class BossTests
{
    private static void Independent(Scene scene,LoadSceneMode mode)
    {if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().Persist=false;}
    [UnityTest, Category("ContentNavigation")] public IEnumerator AutomaticProjectilesWinOnceAndExitPreservesForest()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;
            var c=GameClient.Instance;ContentNavigationFixture.Unlock(c,Content_Type.Boss);yield return null;var m=c.BossMode;
            c.State.Owned_Gun_list[0]=20;Assert.That(c.Inventory.Equip(0,0),Is.True);
            int stage=c.Forest.Stage_Now,wave=c.Forest.Level_Now,dia=c.State.Dia,earned=c.State._getDia;
            var nav=UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="Boss_Btn");
            Canvas.ForceUpdateCanvases();var rect=(RectTransform)nav.transform;var evt=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center))};
            var hits=new System.Collections.Generic.List<RaycastResult>();EventSystem.current.RaycastAll(evt,hits);
            Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(nav));ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,evt,ExecuteEvents.pointerClickHandler);yield return null;
            Assert.That(m.Start_UI.gameObject.activeInHierarchy,Is.True);
            var enter=m.Start_UI.GetComponentsInChildren<Button>(true).Single(b=>b.gameObject.activeInHierarchy&&Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(n=>b.onClick.GetPersistentTarget(n)==m&&b.onClick.GetPersistentMethodName(n)=="Game_Enter"));
            enter.onClick.Invoke();Assert.That(c.Mode,Is.EqualTo(3));Assert.That(c.Forest.Map_obj.activeSelf,Is.False);
            float deadline=Time.realtimeSinceStartup+10;while(m.Entering&&Time.realtimeSinceStartup<deadline)yield return null;
            Assert.That(m.Playing,Is.True);Assert.That(m._boss.enemy.Health_Max.Value.PlainInteger(),Is.EqualTo("50000"));Assert.That(c.Hero.joystick.Direction,Is.EqualTo(Vector2.zero));
            deadline=Time.realtimeSinceStartup+65;while(m.Playing&&Time.realtimeSinceStartup<deadline)yield return null;
            System.IO.File.WriteAllText(System.IO.Path.GetFullPath(System.IO.Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/boss-projectile-combat-observation.json")),JsonUtility.ToJson(new Observation{won=m.GameWin_UI.activeSelf,seconds=m.GameTime_Now,health=m._boss.enemy.Health_Now.Value.ToString(),damage=c.Hero.Damage.Value.ToString(),cooldown=c.Hero.AtkCool_Max,fixture="Independent profile equipped original Gun20 via inventory. Actual automatic projectiles, no input, native 50000 health and 60-second timer; no user-save or starter-gear acceptance."},true));
            Assert.That(m.GameWin_UI.activeSelf,Is.True,"Original Gun20 fixture must defeat the wandering boss with actual projectiles");Assert.That(m._boss.gameObject.activeSelf,Is.True,"Native death animation retains boss object");
            Assert.That(m._boss.enemy.is_Die,Is.True);Assert.That(c.State.Boss_Stage,Is.EqualTo(1));Assert.That(c.State.Dia,Is.EqualTo(dia+150));Assert.That(c.State._getDia,Is.EqualTo(earned+450));
            m.Game_Win();m._boss.enemy.Die();m.Bonus_Get();Assert.That(c.State.Dia,Is.EqualTo(dia+150));
            var folder=System.IO.Path.Combine(Application.temporaryCachePath,"boss-independent-save-"+Guid.NewGuid().ToString("N"));var archive=new SaveArchive(folder);archive.AllowSave();archive.Save(c.State);Assert.That(archive.Load().Boss_Stage,Is.EqualTo(1));
            m.Loading_Then_Start();yield return new WaitForSeconds(4);Assert.That(c.Mode,Is.Zero);Assert.That((c.Forest.Stage_Now,c.Forest.Level_Now),Is.EqualTo((stage,wave)));Assert.That(c.Forest.Map_obj.activeSelf,Is.True);Assert.That(m.Map_obj.activeSelf,Is.False);Assert.That(m.Ingame_Upgrade_UI_obj.activeSelf,Is.True);
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return TestSceneLoader.LoadAsync("TargetPreview");
    }
    [UnityTest] public IEnumerator TimeoutBlocksLateDamageRewardsAndReturnsToForest()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;var m=c.BossMode;
            foreach(var cat in c.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;
            m.Game_Enter();yield return new WaitForSeconds(2.2f);int dia=c.State.Dia;
            m.GameTime_Now=0;yield return null;yield return null;Assert.That(m.GameFail_UI.activeInHierarchy,Is.True);Assert.That(m.Playing,Is.False);
            var health=m._boss.enemy.Health_Now.Value;m._boss.enemy.Damaged(m._boss.enemy.Health_Max);m.Game_Win();
            Assert.That(m._boss.enemy.Health_Now.Value.CompareTo(health),Is.Zero);Assert.That(c.State.Dia,Is.EqualTo(dia));Assert.That(c.State.Boss_Stage,Is.Zero);
            yield return null;Assert.That(m._boss.rb.linearVelocity.sqrMagnitude,Is.LessThan(.01));m.Game_Exit();yield return new WaitForSeconds(2);Assert.That(c.Mode,Is.Zero);Assert.That(m.ModeHUD.activeSelf,Is.False);
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return TestSceneLoader.LoadAsync("TargetPreview");
    }
    [UnityTest] public IEnumerator OriginalNineSkinsHealthCacheAndUnsupportedStageGuard()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;var m=c.BossMode;
            Assert.That(m.Health_Balance.Length,Is.EqualTo(1000));Assert.That(m.Health_return(999).Value.ToString(),Is.EqualTo("45e698"));
            ForestRuntimeAcceptance.IsGaming=false;m.Map_obj.SetActive(true);
            for(int i=0;i<9;i++){m.Stage_Now=i;m.Boss_Spawn();Assert.That(m._boss.Skin_obj.Count(g=>g.activeSelf),Is.EqualTo(1));Assert.That(m._boss.Skin_obj[i].activeSelf,Is.True);Assert.That(m._boss._anim.runtimeAnimatorController,Is.Not.Null);Assert.That(m._boss.Head_spriteRenderer[i].sprite,Is.SameAs(m.Boss_Head_Idle_sprites[i]));Assert.That(m._boss.transform.localPosition,Is.EqualTo(new Vector3(-15,0,15)));}
            m.Map_obj.SetActive(false);m.Stage_Now=1000;Assert.Throws<NotSupportedException>(()=>m.Game_Enter());Assert.That(c.Mode,Is.Zero);Assert.That(c.State.Boss_Stage,Is.Zero);m.Stage_Now=0;c.Restart();
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return TestSceneLoader.LoadAsync("TargetPreview");
    }
    [Test] public void AvoidanceProjectionUsesSegmentEndpointsStrictRadiusAndZeroSentinel()
    {
        Assert.That(Boss.PathCrossesCat(new Vector3(-110,0,0),new Vector3(-90,0,0),new Vector3(-100,0,0),4),Is.True);
        Assert.That(Boss.PathCrossesCat(new Vector3(-110,0,0),new Vector3(-90,0,0),new Vector3(-100,0,4),4),Is.False);
        Assert.That(Boss.PathCrossesCat(new Vector3(-110,0,0),new Vector3(-90,0,0),new Vector3(-85,0,0),4),Is.False);
        Assert.That(Boss.PathCrossesCat(Vector3.one,Vector3.one,new Vector3(2,0,0),4),Is.False);
        Assert.That(Boss.PathCrossesCat(-Vector3.one,Vector3.one,Vector3.zero,4),Is.False);
    }
    [Serializable]private sealed class Observation{public bool won;public float seconds,cooldown;public string health,damage,fixture;}
}
