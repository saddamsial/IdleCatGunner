using System.Collections;
using System.Linq;
using System.Reflection;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class AutoMoveTests
{
    private const BindingFlags Private=BindingFlags.Instance|BindingFlags.NonPublic;
    private static void Set(Cat cat,string field,object value)=>typeof(Cat).GetField(field,Private).SetValue(cat,value);
    private static T Get<T>(Cat cat,string field)=>(T)typeof(Cat).GetField(field,Private).GetValue(cat);
    private static void Input(Cat cat,Vector2 value)=>typeof(Joystick).GetField("input",Private).SetValue(cat.joystick,value);
    private static IEnumerator Load(bool isolate=true)
    {
        Time.timeScale=1;
        yield return TestSceneLoader.LoadAsync("Forest");yield return null;
        if(!isolate) yield break;
        var cat=Cat.instance;
        cat.GetComponent<ForestCombatAcceptance>().enabled=false;
        cat.GetComponent<ForestMovementAcceptance>().enabled=false;
        cat.Warp(Vector3.zero);cat.ClearNearObj();cat.ClearAutoTarget();
        var manager=Tree_manager.instance;
        // Clear inactive grids' children too: enabling a grid otherwise revives
        // its serialized activeSelf trees and contaminates selection fixtures.
        foreach(var tree in Object.FindObjectsByType<Tree>(FindObjectsInactive.Include)) tree.gameObject.SetActive(false);
        for(int i=0;i<manager.Tree_Grid_list.Length;i++) manager.Tree_Grid_list[i].gameObject.SetActive(i==0);
        manager.Level_Now=0;
    }
    private static Tree Put(int slot,Vector3 position,int grid=0)
    {
        var tree=Tree_manager.instance.Tree_Grid_list[grid].Tree_list[slot];
        tree.gameObject.SetActive(true);tree.transform.position=position;
        return tree;
    }
    private static void Target(Cat cat,Tree tree)
    {
        Set(cat,"_autoTarget",tree.transform);Set(cat,"_autoSearchTimer",0f);
        Set(cat,"_autoSmoothVelocity",Vector3.zero);
    }
    private static void VectorNear(Vector3 actual,Vector3 expected,float tolerance=.002f)=>
        Assert.That(Vector3.Distance(actual,expected),Is.LessThan(tolerance));

    [UnityTest]
    public IEnumerator WeightedSelectionKeepsNearbyBoundaryAndNativeStableTies()
    {
        yield return Load();var cat=Cat.instance;
        var behind=Put(0,new Vector3(0,0,-9));var ahead=Put(1,new Vector3(0,100,8));
        Assert.That(cat.FindNearestTreeByGrid(),Is.SameAs(ahead.transform),"XZ-only scoring; exactly radius8 has no forward penalty");
        ahead.transform.position=new Vector3(0,0,8.01f);
        Assert.That(cat.FindNearestTreeByGrid(),Is.SameAs(behind.transform),"Beyond radius8 the forward Z penalty makes the9-unit rear tree preferable");
        behind.transform.position=Vector3.left*7;ahead.transform.position=Vector3.right*7;
        Assert.That(cat.FindNearestTreeByGrid(),Is.SameAs(behind.transform),"Strict score comparison retains the earlier equal candidate");
        behind.enemy.gameObject.SetActive(false);
        Assert.That(cat.FindNearestTreeByGrid(),Is.SameAs(ahead.transform));
        ahead.enemy.is_Die=true;
        Assert.That(cat.FindNearestTreeByGrid(),Is.SameAs(ahead.transform),"Search uses active hierarchy, rather than an invented is_Die filter");
    }

    [UnityTest]
    public IEnumerator GridLowerBoundsOrderingBossWaveAndEmptyGridFollowNativeBranches()
    {
        yield return Load();var cat=Cat.instance;var manager=Tree_manager.instance;
        var grids=manager.Tree_Grid_list;grids[0].transform.position=Vector3.forward*45;
        grids[1].gameObject.SetActive(true);grids[1].transform.position=Vector3.zero;
        var far=Put(0,Vector3.forward*46);var near=Put(0,Vector3.left*7,1);
        Assert.That(cat.FindNearestTreeByGrid(),Is.SameAs(near.transform));
        grids[0].transform.position=Vector3.zero;far.transform.position=Vector3.right*7;
        Assert.That(cat.FindNearestTreeByGrid(),Is.SameAs(far.transform),"Equal grid lower bounds retain original array order");
        manager.Boss_tree.gameObject.SetActive(true);manager.Boss_tree.transform.position=Vector3.forward*2;
        Assert.That(cat.FindNearestTreeByGrid(),Is.SameAs(far.transform),"Boss only participates at original wave index4");
        manager.Level_Now=4;
        Assert.That(cat.FindNearestTreeByGrid(),Is.SameAs(manager.Boss_tree.transform));
        foreach(var grid in grids) grid.gameObject.SetActive(false);
        Assert.That(cat.FindNearestTreeByGrid(),Is.Null,"No active grids returns before even an active boss is considered");
    }

    [UnityTest]
    public IEnumerator NativeScreenSpeedHasIndependentHorizontalVerticalAndDiagonalAnchors()
    {
        yield return Load();
        float q=Mathf.Sqrt(.5f);
        Assert.That(Cat.ScreenSpeedMultiplier(new Vector3(q,0,q)),Is.EqualTo(.8333333f).Within(.00001));
        Assert.That(Cat.ScreenSpeedMultiplier(new Vector3(-q,0,q)),Is.EqualTo(1.4433757f).Within(.00001));
        Assert.That(Cat.ScreenSpeedMultiplier(Vector3.forward),Is.EqualTo(1.0206207f).Within(.00001));
        Assert.That(Cat.ScreenSpeedMultiplier(Vector3.zero),Is.EqualTo(1));
    }

    [UnityTest]
    public IEnumerator ApproachUsesNineUnitOffsetCapSmoothstepSlowdownAndPreservesBodyY()
    {
        yield return Load();var cat=Cat.instance;
        var tree=Put(0,Vector3.forward*20);Target(cat,tree);
        var constraints=cat.rb.constraints;cat.rb.constraints=constraints & ~RigidbodyConstraints.FreezePositionY;
        try
        {
            cat.rb.linearVelocity=new Vector3(0,2.75f,0);
            cat.HandleAutoMove();float alpha=Mathf.Clamp01(Time.deltaTime*8);
            VectorNear(cat.rb.linearVelocity,new Vector3(0,2.75f,15.3093105f*alpha));
            Assert.That(cat.anim.GetBool("Walk"),Is.True);
            tree.transform.position=Vector3.forward*11;Target(cat,tree);cat.rb.linearVelocity=new Vector3(0,2.75f,0);
            cat.HandleAutoMove();VectorNear(cat.rb.linearVelocity,new Vector3(0,2.75f,9.1855863f*alpha));
            // For a20-unit diagonal target the capped offset is9, giving(12,7).
            // A wrongly restored AutoStopRatio(.8) would produce(12,8).
            tree.transform.position=new Vector3(12,0,16);Target(cat,tree);cat.HandleAutoMove();
            Assert.That(cat.rb.linearVelocity.x/cat.rb.linearVelocity.z,Is.EqualTo(12f/7).Within(.0001));
            cat.VelocitySmoothSpeed=999;Target(cat,tree);cat.HandleAutoMove();
            Assert.That(Get<Vector3>(cat,"_autoSmoothVelocity").magnitude,Is.LessThan(25*alpha),"Forest uses constant8 rather than the AI speed field");
        }
        finally {cat.rb.constraints=constraints;}
    }

    [UnityTest]
    public IEnumerator StopAndRetreatUseClosestPointMinimumDistanceAndBackFallback()
    {
        yield return Load();var cat=Cat.instance;var tree=Put(0,Vector3.forward*8);Target(cat,tree);
        cat.HandleAutoMove();Assert.That(cat.anim.GetBool("Walk"),Is.False);VectorNear(cat.rb.linearVelocity,Vector3.zero);
        var collider=tree.GetComponentInChildren<Collider>();Assert.That(collider,Is.Not.Null);
        Set(cat,"nearObj",collider);Set(cat,"nearHitPoint",Vector3.forward*2);Target(cat,tree);
        cat.HandleAutoMove();Assert.That(cat.rb.linearVelocity.z,Is.LessThan(0));Assert.That(cat.anim.GetBool("Walk"),Is.True);
        Set(cat,"nearHitPoint",Vector3.zero);Target(cat,tree);cat.HandleAutoMove();
        Assert.That(cat.rb.linearVelocity.z,Is.LessThan(0),"Degenerate retreat uses proven Vector3.back static field");
        Assert.That(cat.rb.linearVelocity.x,Is.Zero.Within(.0001));
        Set(cat,"nearHitPoint",Vector3.forward*5);Target(cat,tree);cat.HandleAutoMove();
        Assert.That(cat.anim.GetBool("Walk"),Is.False,"Exactly minimum5 belongs to the stopping branch");
    }

    [UnityTest]
    public IEnumerator ClearAndSmoothStopRespectDifferentThresholdsAndPreserveY()
    {
        yield return Load();var cat=Cat.instance;var tree=Put(0,Vector3.forward*20);Target(cat,tree);
        Set(cat,"_autoSearchTimer",.2f);Set(cat,"_autoSmoothVelocity",new Vector3(.02f,0,0));
        cat.rb.linearVelocity=new Vector3(3,0,4);cat.ClearAutoTarget();
        Assert.That(cat.AutoTarget,Is.Null);Assert.That(Get<float>(cat,"_autoSearchTimer"),Is.Zero);
        VectorNear(Get<Vector3>(cat,"_autoSmoothVelocity"),new Vector3(.02f,0,0));
        VectorNear(cat.rb.linearVelocity,new Vector3(3,0,4));
        Set(cat,"_autoSmoothVelocity",Vector3.right);cat.ClearAutoTarget();VectorNear(Get<Vector3>(cat,"_autoSmoothVelocity"),Vector3.zero);
        var constraints=cat.rb.constraints;cat.rb.constraints=constraints & ~RigidbodyConstraints.FreezePositionY;
        try
        {
            cat.rb.linearVelocity=new Vector3(0,2.75f,0);Set(cat,"_autoSmoothVelocity",Vector3.right*4);
            cat.AutoSmoothStop();VectorNear(cat.rb.linearVelocity,new Vector3(4*(1-Mathf.Clamp01(Time.deltaTime*8)),2.75f,0));
            Set(cat,"_autoSmoothVelocity",Vector3.right*.09f);cat.AutoSmoothStop();VectorNear(cat.rb.linearVelocity,new Vector3(0,2.75f,0));
        }
        finally {cat.rb.constraints=constraints;}
    }

    [UnityTest]
    public IEnumerator SearchIntervalReusesTargetButInactiveTargetImmediatelyRetargets()
    {
        yield return Load();var cat=Cat.instance;var a=Put(0,Vector3.forward*20);var b=Put(1,Vector3.right*25);
        Target(cat,a);b.transform.position=Vector3.right*6;
        cat.HandleAutoMove();Assert.That(cat.AutoTarget,Is.SameAs(a.transform));
        Set(cat,"_autoSearchTimer",cat.AutoSearchInterval);cat.HandleAutoMove();Assert.That(cat.AutoTarget,Is.SameAs(b.transform));
        Target(cat,a);a.gameObject.SetActive(false);cat.HandleAutoMove();Assert.That(cat.AutoTarget,Is.SameAs(b.transform));
        b.gameObject.SetActive(false);cat.HandleAutoMove();Assert.That(cat.AutoTarget,Is.Null);Assert.That(cat.anim.GetBool("Walk"),Is.False);
    }

    [UnityTest]
    public IEnumerator AutomaticResolverUsesChildColliderClosestPointAndFullThreeDimensionalRange()
    {
        yield return Load();var cat=Cat.instance;var camera=Camera.main;camera.gameObject.SetActive(false);Set(cat,"_mainCam",null);
        var root=new GameObject("Isolated automatic collider parent");var child=new GameObject("Collider child");child.transform.SetParent(root.transform);
        var collider=child.AddComponent<BoxCollider>();collider.size=Vector3.one*2;
        try
        {
            root.transform.position=cat.Ray_trans.position+Vector3.forward*10;Set(cat,"_autoTarget",root.transform);Physics.SyncTransforms();
            cat.ResolveAttackTarget();Assert.That(cat.AttackTarget,Is.SameAs(collider));VectorNear(cat.AttackPoint,collider.ClosestPoint(cat.Ray_trans.position));
            Assert.That(Vector3.Distance(cat.AttackPoint,collider.transform.position),Is.GreaterThan(.5));
            root.transform.position=cat.Ray_trans.position+Vector3.up*41;Physics.SyncTransforms();cat.ResolveAttackTarget();
            Assert.That(cat.AttackTarget,Is.Null);Assert.That(Get<Collider>(cat,"_lockedAttackTarget"),Is.Null);VectorNear(cat.AttackPoint,collider.ClosestPoint(cat.Ray_trans.position));
            Assert.That(cat.Target_obj.activeSelf,Is.False);
        }
        finally {camera.gameObject.SetActive(true);Object.Destroy(root);cat.ClearNearObj();}
    }

    [UnityTest]
    public IEnumerator JoystickOverridesAutomaticMovementAndReleaseResumesSearch()
    {
        yield return Load();var cat=Cat.instance;var tree=Put(0,Vector3.forward*20);Target(cat,tree);
        Input(cat,Vector2.right);cat.TickForestMovement();Assert.That(cat.AutoTarget,Is.Null);
        VectorNear(cat.rb.linearVelocity,new Vector3(8.838835f,0,8.838835f));
        Input(cat,Vector2.zero);cat.TickForestMovement();Assert.That(cat.AutoTarget,Is.SameAs(tree.transform));Assert.That(cat.rb.linearVelocity.z,Is.GreaterThan(0));
        cat.AutoMove=false;cat.TickForestMovement();Assert.That(cat.AutoTarget,Is.Null);VectorNear(cat.rb.linearVelocity,Vector3.zero);
    }

    [UnityTest]
    public IEnumerator DefaultForestMovesShootsKillsAndRetargetsWithNoInputOrInjectedStats()
    {
        yield return Load(false);var cat=Cat.instance;var start=cat.transform.position;var manager=Tree_manager.instance;
        Assert.That(cat.AutoMove,Is.True);Assert.That(cat.GunNum,Is.Zero);Assert.That(cat.Damage.Value.CompareTo(new DecimalAmount(100)),Is.Zero);
        var original=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).Where(t=>t!=manager.Boss_tree && t.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0).Take(2).ToArray();
        Assert.That(original.Length,Is.EqualTo(2));
        foreach(var tree in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(!original.Contains(tree)) tree.gameObject.SetActive(false);
        original[0].transform.position=start+Vector3.forward*20;original[1].transform.position=start+new Vector3(16,0,35);
        cat.ClearNearObj();cat.ClearAutoTarget();Physics.SyncTransforms();
        bool walked=false,stopped=false,firstTarget=false,secondTarget=false;float timeout=Time.realtimeSinceStartup+45;
        while(!original.All(t=>t.enemy.is_Die) && Time.realtimeSinceStartup<timeout)
        {
            Assert.That(cat.joystick.Direction,Is.EqualTo(Vector2.zero));
            walked|=cat.anim.GetBool("Walk");stopped|=!cat.anim.GetBool("Walk") && cat.AttackTarget!=null;
            firstTarget|=cat.AutoTarget==original[0].transform;secondTarget|=cat.AutoTarget==original[1].transform;
            yield return null;
        }
        Assert.That(walked && stopped,Is.True,"Actual frame loop must approach and stop for shooting");
        Assert.That(firstTarget && secondTarget,Is.True,"No pointer input; target death must lead to a second target");
        Assert.That(Vector3.Distance(cat.transform.position,start),Is.GreaterThan(10));
        Assert.That(original.All(t=>t.enemy.is_Die),Is.True,"Unmodified initial Gun0 must cause real pooled bullet hits on both original250-health targets");
        Assert.That(manager.TreeCount_Now,Is.EqualTo(manager.TreeCount_Max-2));
    }
}
