using System.Collections;
using System.Linq;
using System.Reflection;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using CatGunner.Recovery;

public sealed class OriginalCombatTests
{
    private const BindingFlags Private=BindingFlags.NonPublic|BindingFlags.Instance;
    private static OriginalAmount Amount(int value)=>OriginalAmount.FromValue(new DecimalAmount(value));
    private static void Set(Cat cat,string name,object value)=>typeof(Cat).GetField(name,Private).SetValue(cat,value);
    private static IEnumerator Load()
    {
        yield return SceneManager.LoadSceneAsync("RecoveredForest");yield return null;
        Cat.instance.GetComponent<ForestCombatAcceptance>().enabled=false;
        Cat.instance.GetComponent<ForestMovementAcceptance>().enabled=false;
    }
    [UnityTest]
    public IEnumerator OriginalCombatFieldsScreenBoundariesRayOrderAndIdleLockArePreserved()
    {
        yield return Load();var cat=Cat.instance;
        Assert.That(cat._gunInfo.type,Is.EqualTo(GunType.SINGLE),"Native equipment reload overrides the serialized placeholder with original selected slot zero");
        Assert.That(cat.GunNum,Is.Zero);
        Assert.That(cat.Damage.Value.CompareTo(new DecimalAmount(100)),Is.Zero);
        Assert.That(cat.Target_obj.name,Is.EqualTo("Target"));Assert.That(cat.Target_obj.GetComponentInChildren<SpriteRenderer>(true).sprite,Is.Not.Null);
        Assert.That(cat.Gun_bounce.WantSize,Is.EqualTo(new Vector3(.7f,1.1f,1)));Assert.That(cat.Rebound_bounce.WantPos,Is.EqualTo(new Vector3(-.6f,0,0)));
        var camera=Camera.main;
        Assert.That(cat.IsOnScreen(camera.ViewportToWorldPoint(new Vector3(.5f,.5f,30))),Is.True);
        Assert.That(cat.IsOnScreen(camera.ViewportToWorldPoint(new Vector3(-.021f,.5f,30))),Is.False);
        Assert.That(cat.IsOnScreen(camera.ViewportToWorldPoint(new Vector3(-.019f,.5f,30))),Is.True);
        Assert.That(cat.IsOnScreen(camera.transform.position-camera.transform.forward),Is.False);
        foreach(var tree in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) tree.gameObject.SetActive(false);
        var first=new GameObject("Isolated native ray nearest");var second=new GameObject("Isolated native ray farther");
        try
        {
            int layer=Enumerable.Range(0,32).First(i=>(cat.EnemyLayer.value&(1<<i))!=0);
            first.layer=second.layer=layer;var a=first.AddComponent<BoxCollider>();var b=second.AddComponent<BoxCollider>();
            first.transform.position=cat.Ray_trans.position+Vector3.forward*10;second.transform.position=cat.Ray_trans.position+Vector3.right*20;
            Assert.That(cat.IsOnScreen(first.transform.position),Is.True);Physics.SyncTransforms();
            Assert.That(cat.FindNearestEnemyByRaycast(),Is.SameAs(a));Assert.That(cat.Target_obj.activeSelf,Is.True);
            Set(cat,"nearObj",a);cat.ResolveManualAttackTarget();
            Set(cat,"nearObj",b);cat.ResolveManualAttackTarget();Assert.That(cat.AttackTarget,Is.SameAs(a),"Idle lock retains a valid in-range target");
            first.SetActive(false);Set(cat,"nearObj",b);cat.ResolveManualAttackTarget();Assert.That(cat.AttackTarget,Is.SameAs(b));
            second.transform.position=cat.Ray_trans.position+Vector3.right*41;Set(cat,"nearObj",null);cat.ResolveManualAttackTarget();Assert.That(cat.AttackTarget,Is.Null);
            Assert.That(cat.Target_obj.activeSelf,Is.False);
            cat.ClearNearObj();Set(cat,"_mainCam",null);camera.gameObject.SetActive(false);
            Assert.That(cat.IsOnScreen(Vector3.one*99999),Is.True,"Native missing-camera fallback is true");
        }
        finally {camera.gameObject.SetActive(true);Object.Destroy(first);Object.Destroy(second);cat.ClearNearObj();}
    }
    [UnityTest]
    public IEnumerator NativeGunPlaneDirectionSpreadAndAimHaveIndependentAnchors()
    {
        yield return Load();var cat=Cat.instance;
        var p=Cat.ProjectGunToBulletPlane(new Vector3(10,4,20));
        Assert.That(p.y,Is.EqualTo(2));Assert.That(p.x,Is.EqualTo(8.3146f).Within(.002));Assert.That(p.z,Is.EqualTo(21.6854f).Within(.002));
        Assert.That(Cat.CalcBulletDir(Vector3.zero,new Vector3(0,100,.005f)),Is.EqualTo(Vector3.forward));
        var direction=Cat.CalcBulletDir(Vector3.zero,new Vector3(3,999,4));Assert.That(direction,Is.EqualTo(new Vector3(.6f,0,.8f)));
        Assert.That(Cat.ApplySpread(direction,.009f),Is.EqualTo(direction));
        for(int i=0;i<20;i++) {var spread=Cat.ApplySpread(direction,20);Assert.That(Vector3.Angle(direction,spread),Is.LessThanOrEqualTo(20.01));Assert.That(spread.y,Is.Zero);}
        cat.AtkCool_Max=.05f;cat.SpreadAngleMin=2;cat.SpreadAngleMax=20;cat.UpdateSpreadState();Assert.That(cat.Debug_SpreadMaxAngle,Is.EqualTo(20).Within(.0001));
        cat.AtkCool_Max=2;cat.UpdateSpreadState();Assert.That(cat.Debug_SpreadMaxAngle,Is.EqualTo(2).Within(.0001));
        cat.InitializeHandPose();Set(cat,"nearObj",null);
        // Native smoothing is deltaTime-based. Automatic startup can leave a
        // different initial face angle; sixty fast Editor frames are not a
        // fixed duration. Keep the angular assertion and wait in scaled time.
        float poseDeadline=Time.time+2;
        while(Time.time<poseDeadline && Mathf.Abs(Mathf.DeltaAngle(cat.Face_Pivot_trans.localEulerAngles.z,90))>.1f)
        {cat.UpdateHandRotation();cat.UpdateFaceRotation();yield return null;}
        Assert.That(Mathf.DeltaAngle(cat.RightHand.localEulerAngles.z,130),Is.Zero.Within(.001));
        Assert.That(Mathf.DeltaAngle(cat.Face_Pivot_trans.localEulerAngles.z,90),Is.Zero.Within(1));
        var target=new GameObject("Aim field fixture");var collider=target.AddComponent<BoxCollider>();
        try
        {
            target.transform.position=cat.transform.position+Vector3.forward*15;Set(cat,"nearObj",collider);Set(cat,"nearHitPoint",target.transform.position);cat.FaceTowardEnemy(collider);
            float before=cat.RightHand.localEulerAngles.z;
            for(int i=0;i<8;i++) {cat.UpdateHandRotation();cat.UpdateFaceRotation();yield return null;}
            Assert.That(Mathf.Abs(Mathf.DeltaAngle(before,cat.RightHand.localEulerAngles.z)),Is.GreaterThan(1));
            Assert.That(cat.Face_Pivot_trans.localEulerAngles.z,Is.InRange(19f,161f));
        }
        finally {cat.ClearNearObj();Object.Destroy(target);}
    }
    [UnityTest]
    public IEnumerator ContinuousNormalAttackFindsOriginalTreeThroughRaysAndClosesActualHits()
    {
        yield return Load();var cat=Cat.instance;
        // Explicit independent fixture weapon/damage. Original equipment and balance loader pending.
        cat._gunInfo.type=GunType.SINGLE;cat.ReloadGunPresentation(0);cat.Damage=Amount(100);cat.CriDmg=Amount(200);
        cat.Damage_str="100";cat.CriDmg_str="200";cat.CriPer=1;cat.SpreadAngleMin=cat.SpreadAngleMax=0;
        var tree=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).First(t=>t!=Tree_manager.instance.Boss_tree);
        foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(other!=tree) other.gameObject.SetActive(false);
        tree.transform.position=new Vector3(cat.Ray_trans.position.x,0,cat.Ray_trans.position.z+12);
        tree.enemy.Spawn(Amount(400),Amount(20));Physics.SyncTransforms();cat.ClearNearObj();
        var bridge=cat.GetComponent<ForestCombatAcceptance>();bridge.EnableSingleAttacks=true;bridge.enabled=true;
        int count=Tree_manager.instance.TreeCount_Now;int hits=0;bool allCritical=true;
        System.Action<Vector3,string,bool> listener=(point,text,critical)=>{hits++;allCritical&=critical;Assert.That(text,Is.EqualTo("200"));};ForestDamageDispatch.DamageTextPending+=listener;
        try
        {
            for(int i=0;i<160 && tree.gameObject.activeSelf;i++) yield return new WaitForFixedUpdate();
            Assert.That(tree.gameObject.activeSelf,Is.False,"Native ray/cooldown/factory path must cause actual physics damage and death");
            Assert.That(hits,Is.EqualTo(2));Assert.That(allCritical,Is.True);Assert.That(Tree_manager.instance.TreeCount_Now,Is.EqualTo(count-1));
            Assert.That(cat.Shoot_particle.isPlaying,Is.True);Assert.That(Polling_manager.instance.Polling_List[1].Objects.Any(go=>go.activeInHierarchy),Is.True);
            yield return new WaitForSeconds(.3f);Assert.That(cat.Gun_bounce.Bouncing,Is.False);Assert.That(cat.Rebound_bounce.Bouncing,Is.False);
            Assert.That(cat.Gun_bounce.transform.localScale,Is.EqualTo(Vector3.one));Assert.That(cat.Rebound_bounce.transform.localPosition,Is.EqualTo(Vector3.zero));
            bridge.enabled=false;cat.HandleRaycastTimer();cat.ResolveManualAttackTarget();Assert.That(cat.AttackTarget,Is.Null);
        }
        finally {bridge.enabled=false;ForestDamageDispatch.DamageTextPending-=listener;}
    }
    [UnityTest]
    public IEnumerator NativePoolFailureRetriesWithoutEffectsAndRecoilRestartReturnsOriginalPose()
    {
        yield return Load();var cat=Cat.instance;cat._gunInfo.type=GunType.SINGLE;cat.ReloadGunPresentation(0);cat.Damage=Amount(100);cat.CriDmg=Amount(200);cat.CriPer=0;
        var target=new GameObject("Cooldown failure fixture");var collider=target.AddComponent<BoxCollider>();target.transform.position=cat.transform.position+Vector3.forward*10;
        Set(cat,"nearObj",collider);Set(cat,"nearHitPoint",target.transform.position);cat.AtkCool_Now=cat.AtkCool_Max;
        foreach(var go in Polling_manager.instance.Polling_List[0].Objects) {go.GetComponent<Bullet>().is_Die=false;go.SetActive(true);}
        try
        {
            Assert.That(cat.TickSingleAttackCooldown(),Is.False);
            Assert.That(cat.AtkCool_Now,Is.EqualTo(cat.AtkCool_Max-Time.deltaTime).Within(.0001));Assert.That(cat.Gun_bounce.Bouncing,Is.False);
            var free=Polling_manager.instance.Polling_List[0].Objects[0];free.SetActive(false);
            Assert.That(cat.TickSingleAttackCooldown(),Is.True);
            Assert.That(free.GetComponent<Bullet>().Damage.Value.CompareTo(new DecimalAmount(100)),Is.Zero);
            Assert.That(cat.AtkCool_Now,Is.Zero);Assert.That(cat.Gun_bounce.Bouncing,Is.True);
            yield return new WaitForSeconds(.06f);var scale=cat.Gun_bounce.transform.localScale;
            Assert.That(scale.x,Is.LessThan(1));Assert.That(cat.Rebound_bounce.transform.localPosition.x,Is.LessThan(0));
            cat.Gun_bounce.Bounce_Start();cat.Rebound_bounce.Bounce_Start();Assert.That(cat.Gun_bounce.time,Is.Zero);
            yield return new WaitForSeconds(.25f);
            Assert.That(cat.Gun_bounce.Bouncing,Is.False);Assert.That(cat.Gun_bounce.transform.localScale,Is.EqualTo(Vector3.one));Assert.That(cat.Rebound_bounce.transform.localPosition,Is.EqualTo(Vector3.zero));
        }
        finally {cat.ClearNearObj();Object.Destroy(target);}
    }
}
