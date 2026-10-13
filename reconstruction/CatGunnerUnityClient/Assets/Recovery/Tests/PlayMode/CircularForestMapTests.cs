using System;
using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using Object=UnityEngine.Object;

public sealed class CircularForestMapTests
{
    string folder;
    RecoveryForestClient client;
    void Isolate(Scene scene,LoadSceneMode mode)
    {
        if(scene.name=="RecoveredClient")
            scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride=folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        Time.timeScale=1;Application.runInBackground=true;
        folder=Path.Combine(Application.temporaryCachePath,"CircularForest-"+Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded+=Isolate;
        yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();
        client=RecoveryForestClient.Instance;StopCombat();
    }
    void StopCombat()
    {
        foreach(var cat in Object.FindObjectsByType<Cat>(FindObjectsInactive.Include))
        {
            if(cat.TryGetComponent<ForestCombatAcceptance>(out var combat))combat.enabled=false;
            if(cat.TryGetComponent<ForestMovementAcceptance>(out var movement))movement.enabled=false;
            if(cat.rb!=null)cat.rb.linearVelocity=Vector3.zero;
        }
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        Time.timeScale=1;yield return SceneManager.LoadSceneAsync("RecoveredTarget");
        SceneManager.sceneLoaded-=Isolate;if(Directory.Exists(folder))Directory.Delete(folder,true);
    }
    static float Distance(Vector3 a,Vector3 b)=>new Vector2(a.x-b.x,a.z-b.z).magnitude;
    Tree[] Active()=>client.Forest.Map_obj.GetComponentsInChildren<Tree>().Where(t=>t.gameObject.activeInHierarchy).ToArray();

    [UnityTest] public IEnumerator AllWavesKeepCountsAndIceInsideCircleWithoutBlockingSpawn()
    {
        var f=client.Forest;var center=f.Map_obj.transform.position;
        foreach(int stage in new[]{0,7,4999}) for(int wave=0;wave<5;wave++)
        {
            f.Stage_Now=stage;f.Level_Now=wave;f.Map_Batch();var trees=Active();
            Assert.That(trees.Length,Is.EqualTo(OriginalForestRules.TreeCount(stage,wave)));
            Assert.That(f.TreeCount_Max,Is.EqualTo(trees.Length));
            foreach(var t in trees)
            {
                Assert.That(Distance(t.transform.position,center),Is.InRange(16f,76.01f));
                var b=t.spriteRenderer.bounds;
                for(int x=-1;x<=1;x+=2)for(int z=-1;z<=1;z+=2)
                    Assert.That(Distance(b.center+new Vector3(x*b.extents.x,0,z*b.extents.z),center),Is.LessThan(100f));
                Assert.That(t.enemy.is_Die,Is.False);
                Assert.That(t.enemy.Health_Now.Value.CompareTo(t.enemy.Health_Max.Value),Is.Zero);
            }
            for(int i=0;i<trees.Length;i++)for(int j=i+1;j<trees.Length;j++)
                Assert.That(Distance(trees[i].transform.position,trees[j].transform.position),Is.GreaterThan(5.4f));
        }
        yield return null;
    }

    [UnityTest] public IEnumerator CircleUsesSmallerMineFloorAndHidesStripBorders()
    {
        var f=client.Forest;
        Assert.That(f.GetComponent("CircularForestMap"),Is.Not.Null);
        var ground=f.Map_obj.transform.Find("Circular forest ground").GetComponent<SpriteRenderer>();
        var mine=client.MineMode.Map_obj.GetComponentsInChildren<SpriteRenderer>(true).Single(r=>r.name=="Ground (1)");
        Assert.That(ground.sprite,Is.SameAs(mine.sprite));
        Assert.That(ground.transform.localScale.x/mine.transform.localScale.x,Is.EqualTo(2f/3f).Within(.001f));
        Assert.That(ground.gameObject.activeInHierarchy,Is.True);
        Assert.That(f.Ground_SpriteRenderer.gameObject.activeInHierarchy,Is.False);
        Assert.That(f.LastBorder_trans.gameObject.activeInHierarchy,Is.False);
        yield return null;
    }

    [UnityTest] public IEnumerator AutoTargetSearchIncludesIceFromEveryFormerGrid()
    {
        var f=client.Forest;f.Stage_Now=0;f.Level_Now=4;f.Map_Batch();
        foreach(var t in Active())t.gameObject.SetActive(false);
        var center=f.Map_obj.transform.position;client.Hero.Warp(center);
        var far=f.Tree_Grid_list[0].Tree_list[0];far.gameObject.SetActive(true);far.transform.position=center+Vector3.right*8;
        var near=f.Tree_Grid_list[4].Tree_list[0];near.gameObject.SetActive(true);near.transform.position=center+Vector3.left*4;
        Assert.That(client.Hero.FindNearestTreeByGrid(),Is.SameAs(near.transform));
        yield return null;
    }

    [UnityTest] public IEnumerator CircularBoundaryKeepsTeamInsideAndAllowsTangentialMovement()
    {
        var center=client.Forest.Map_obj.transform.position;
        client.Hero.Warp(center+Vector3.right*140);
        client.Hero.rb.linearVelocity=new Vector3(10,0,7);
        yield return new WaitForSeconds(.1f);
        Assert.That(Distance(client.Hero.transform.position,center),Is.LessThanOrEqualTo(98.01f));
        Assert.That(Vector3.Dot(client.Hero.rb.linearVelocity,(client.Hero.rb.position-center).normalized),Is.LessThanOrEqualTo(.05f));
        Assert.That(client.Hero.rb.linearVelocity.z,Is.GreaterThan(5.4f));
    }

    [UnityTest] public IEnumerator ClearingRoundRestartsCircleAndMineExitRestoresIt()
    {
        int wave=client.Forest.Level_Now,rounds=client.RoundsStarted;
        foreach(var t in Active())t.enemy.Damaged(t.enemy.Health_Now);
        float deadline=Time.realtimeSinceStartup+10;
        while(client.RoundsStarted==rounds&&Time.realtimeSinceStartup<deadline)yield return null;
        Assert.That(client.Forest.Level_Now,Is.EqualTo(wave+1));Assert.That(client.RoundsStarted,Is.GreaterThan(rounds));
        StopCombat();
        Assert.That(Active().All(t=>Distance(t.transform.position,client.Forest.Map_obj.transform.position)<77),Is.True);
        client.MineMode.Game_Enter();deadline=Time.realtimeSinceStartup+20;
        while(client.MineMode.Entering&&Time.realtimeSinceStartup<deadline)yield return null;
        Assert.That(client.Mode,Is.EqualTo(2));Assert.That(client.Forest.Map_obj.activeSelf,Is.False);
        Assert.That(client.MineMode.outerRadius,Is.EqualTo(150));
        client.Hero.Warp(client.MineMode.center+Vector3.right*135);
        yield return new WaitForFixedUpdate();
        Assert.That(Distance(client.Hero.transform.position,client.MineMode.center),Is.GreaterThan(130));
        client.MineMode.Game_Exit();deadline=Time.realtimeSinceStartup+10;
        while(client.Mode!=0&&Time.realtimeSinceStartup<deadline)yield return null;
        Assert.That(client.Mode,Is.Zero);Assert.That(client.Forest.Map_obj.activeSelf,Is.True);
        Assert.That(Active().All(t=>Distance(t.transform.position,client.Forest.Map_obj.transform.position)<77),Is.True);
    }
    [UnityTest] public IEnumerator SnowFloorAndOriginalWallStyleSurroundEntireSmallerCircle()
    {
        var f=client.Forest;Assert.That(f.CircularMap.Radius,Is.EqualTo(100));
        var floor=f.Map_obj.transform.Find("Circular forest ground").GetComponent<SpriteRenderer>();
        Assert.That(floor.sharedMaterial.shader.name,Is.EqualTo("Recovery/CircularSnow"));
        var walls=f.Map_obj.transform.Find("Raised snow platform");Assert.That(walls,Is.Not.Null);
        Assert.That(walls.GetComponentsInChildren<MeshRenderer>().Count(r=>r.name=="Raised snow cliff"),Is.EqualTo(1));
        Assert.That(walls.GetComponentsInChildren<BoxCollider>().Length,Is.EqualTo(64));
        var cliff=walls.GetComponentsInChildren<MeshRenderer>().First(r=>r.name=="Raised snow cliff");
        Assert.That(cliff.sharedMaterial.shader.name,Is.EqualTo("Recovery/VerticalIceCliff"));
        Assert.That(cliff.sharedMaterial.mainTexture,Is.Not.Null);
        Assert.That(cliff.sharedMaterial.mainTexture,Is.Not.SameAs(client.GetComponent<PenguinExpeditionTheme>().GlacierDown.texture));
        Assert.That(f.GetComponent("SnowFootprintTrail"),Is.Not.Null);
        yield return null;
    }
    MeshRenderer[] Steps()=>client.Forest.Map_obj.GetComponentsInChildren<MeshRenderer>().Where(r=>r.name.StartsWith("Snow step ")&&r.gameObject.activeInHierarchy).ToArray();
    static float Alpha(MeshRenderer r)
    {
        var block=new MaterialPropertyBlock();r.GetPropertyBlock(block);return block.GetColor("_Color").a;
    }
    [UnityTest] public IEnumerator WalkingLeavesAlternatingPrintsThatPauseFadeAndDisappear()
    {
        client.Hero.rb.linearVelocity=Vector3.right*8;
        yield return new WaitForSeconds(1.2f);client.Hero.rb.linearVelocity=Vector3.zero;
        var steps=Steps();Assert.That(steps.Length,Is.GreaterThanOrEqualTo(4));
        Assert.That(steps.Length,Is.LessThanOrEqualTo(192));
        Assert.That(steps.Select(r=>r.transform.position.z).Distinct().Count(),Is.GreaterThanOrEqualTo(2));
        yield return new WaitForSeconds(1);
        var step=Steps().First();float alpha=Alpha(step);Time.timeScale=0;
        yield return new WaitForSecondsRealtime(.25f);Assert.That(Alpha(step),Is.EqualTo(alpha).Within(.0001f));Time.timeScale=1;
        yield return new WaitForSeconds(.5f);Assert.That(Alpha(step),Is.LessThan(alpha));
        yield return new WaitForSeconds(4.5f);Assert.That(Steps(),Is.Empty);
        yield return new WaitForSeconds(.2f);Assert.That(Steps(),Is.Empty,"Standing still must not leave footprints");
    }
    [UnityTest] public IEnumerator WarpsAndRestartsDoNotLeaveLongTrailsOrPreviousRoundPrints()
    {
        client.Hero.rb.linearVelocity=Vector3.right*8;
        yield return new WaitForSeconds(.8f);client.Hero.rb.linearVelocity=Vector3.zero;
        int before=Steps().Length;Assert.That(before,Is.GreaterThan(0));
        client.Hero.Warp(client.Forest.CircularMap.Center+Vector3.left*50);yield return null;yield return null;
        Assert.That(Steps().Length,Is.LessThanOrEqualTo(before));
        client.GameStart();yield return null;Assert.That(Steps(),Is.Empty);
        Assert.That(client.Forest.Map_obj.transform.Find("Raised snow platform").gameObject.activeInHierarchy,Is.True);
    }

}
