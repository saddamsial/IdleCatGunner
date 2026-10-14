using System.Collections;
using System.Linq;
using System.Reflection;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class MissileTests
{
    private const BindingFlags Private=BindingFlags.NonPublic|BindingFlags.Instance;
    private static readonly Vector3 Center=new Vector3(500,2,500);
    private static CurrencyAmount Amount(int n)=>CurrencyAmount.FromValue(new DecimalAmount(n));
    private static T Field<T>(object b,string name)=>(T)b.GetType().GetField(name,Private).GetValue(b);
    private static void Set(object b,string name,object value)=>b.GetType().GetField(name,Private).SetValue(b,value);
    private static Collider Coll(Tree t)=>t.GetComponentsInChildren<Collider>().Single(c=>c.GetComponent<EnemyColl>()!=null);
    private static void Position(Tree t,Vector3 center)=>t.transform.position+=center-Coll(t).bounds.center;
    private static void HealthIs(Tree t,int n)=>Assert.That(t.enemy.Health_Now.Value.CompareTo(new DecimalAmount(n)),Is.Zero);
    private static Tree[] Isolate()
    {
        var trees=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).Where(t=>t!=Tree_manager.instance.Boss_tree).Take(2).ToArray();
        foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(!trees.Contains(other)) other.gameObject.SetActive(false);
        for(int i=0;i<trees.Length;i++) {trees[i].enemy.Spawn(Amount(500),Amount(1));Position(trees[i],Center+Vector3.right*i*2);}
        Physics.SyncTransforms();return trees;
    }
    private static IEnumerator Load(int gun=24)
    {
        Time.timeScale=1;yield return TestSceneLoader.LoadAsync("Forest");yield return null;
        var cat=Cat.instance;cat.GetComponent<ForestCombatAcceptance>().enabled=false;cat.GetComponent<ForestMovementAcceptance>().enabled=false;
        var data=EquipmentCatalogue.Load();data.Selected_items=new[]{gun,-1,-1};Assert.That(data.ApplyPackageForest(cat),Is.True);
        ResetPool();
    }
    private static void ResetPool()
    {
        foreach(var go in Polling_manager.instance.Polling_List[0].Objects)
        {var b=go.GetComponent<Bullet>();b.CancelInvoke();b.enabled=true;go.SetActive(false);b.is_Die=false;}
        Polling_manager.instance.Polling_List[0].Object_Count=0;
    }
    private static Bullet Spawn(Vector3 start,Vector3 end,float duration=1,float radius=5)
    {
        var b=Polling_manager.instance.Object_Polling_Smart(0).GetComponent<Bullet>();
        b.SpawnMissile(24,start,end,Amount(100),"100",true,radius,Cat.instance.EnemyLayer,duration);
        return b;
    }
    private static Bullet Active()=>Polling_manager.instance.Polling_List[0].Objects.First(go=>go.activeSelf).GetComponent<Bullet>();

    [UnityTest]
    public IEnumerator FactoryUsesTransformSnapshotAngleThenUniformRadiusAndExactThreshold()
    {
        yield return Load();var cat=Cat.instance;
        var target=new GameObject("Missile transform target");target.transform.position=Center+new Vector3(8,3,6);
        var coll=target.AddComponent<BoxCollider>();coll.center=new Vector3(30,0,0);
        var start=Center;int seed=721;
        try
        {
            Random.InitState(seed);float angle=Random.Range(0f,360f)*Mathf.Deg2Rad;
            float radius=Random.Range(0f,10*Mathf.Tan(8*Mathf.Deg2Rad));float next=Random.value;
            var expected=target.transform.position+new Vector3(radius*Mathf.Cos(angle),0,radius*Mathf.Sin(angle));
            Random.InitState(seed);Assert.That(cat.TryFireMissile(start,coll,8,Amount(100),"100",true),Is.True);
            var b=Active();Assert.That(Vector3.Distance(Field<Vector3>(b,"_msEnd"),expected),Is.LessThan(.0001));Assert.That(Random.value,Is.EqualTo(next));
            var d=expected-start;Assert.That(Field<float>(b,"_msDuration"),Is.EqualTo(new Vector2(d.x,d.z).magnitude/50).Within(.00001));
            Assert.That(b.explosionRadius,Is.EqualTo(9));target.transform.position+=Vector3.one*50;
            Assert.That(Vector3.Distance(Field<Vector3>(b,"_msEnd"),expected),Is.LessThan(.0001),"Target movement cannot change captured endpoint");
            ResetPool();Set(cat,"nearHitPoint",Center+Vector3.forward*10);cat._gunInfo.MissileSpeed=0;
            Random.InitState(seed);next=Random.value;Random.InitState(seed);
            Assert.That(cat.TryFireMissile(start,null,.01f,Amount(100),"100",false),Is.True);b=Active();
            Assert.That(Field<Vector3>(b,"_msEnd"),Is.EqualTo(Center+Vector3.forward*10));Assert.That(Field<float>(b,"_msDuration"),Is.EqualTo(100));
            Assert.That(Random.value,Is.EqualTo(next),"Exactly0.01 does not sample scatter; fallback uses nearHitPoint");
            Assert.That(EquipmentCatalogue.Load().Selected_items,Is.EqualTo(new[]{0,-1,-1}));
            var aim=Cat.MissileAimPoint(Vector3.zero,new Vector3(3,2,4));
            Assert.That(Vector3.Distance(aim,new Vector3(3,10,4).normalized*10),Is.LessThan(.0001),"Native launch tangent adds4*(5*0.4) to target Y");
        }
        finally {Object.Destroy(target);}
    }

    [UnityTest]
    public IEnumerator FullPoolFailsBeforeScatterWithoutStealingLiveMissiles()
    {
        yield return Load();var cat=Cat.instance;
        foreach(var go in Polling_manager.instance.Polling_List[0].Objects) {go.SetActive(true);go.GetComponent<Bullet>().is_Die=false;}
        Random.InitState(443);float next=Random.value;Random.InitState(443);
        Assert.That(cat.TryFireMissile(Center,null,10,Amount(100),"100",false),Is.False);
        Assert.That(Random.value,Is.EqualTo(next));Assert.That(Polling_manager.instance.Polling_List[0].Objects.All(go=>go.activeSelf && !go.GetComponent<Bullet>().is_Die),Is.True);
    }

    [UnityTest]
    public IEnumerator ParabolaRetainsPreviousXYZAndUsesScaledTimeAndDisplacementForward()
    {
        yield return Load();var start=Center;var end=start+new Vector3(10,4,0);var b=Spawn(start,end,2,0);
        Assert.That(b.rb.isKinematic,Is.True);Assert.That(Vector3.Distance(b.transform.forward,(end-start).normalized),Is.LessThan(.001));
        Time.timeScale=0;
        try
        {
            yield return null;float timer=Field<float>(b,"_msTimer");var paused=b.transform.position;
            yield return null;Assert.That(Field<float>(b,"_msTimer"),Is.EqualTo(timer));Assert.That(b.transform.position,Is.EqualTo(paused));
            b.enabled=false;Set(b,"_msTimer",1f);b.transform.position=start+new Vector3(1,7,2);var previous=b.transform.position;
            b.SendMessage("Update");var apex=start+new Vector3(5,6,0);
            Assert.That(Vector3.Distance(b.transform.position,apex),Is.LessThan(.0001));Assert.That(Field<Vector3>(b,"LastPos"),Is.EqualTo(previous));
            Assert.That(Vector3.Distance(b.transform.forward,(apex-previous).normalized),Is.LessThan(.001));Assert.That(b.is_Die,Is.False);
        }
        finally {Time.timeScale=1;}
    }

    [UnityTest]
    public IEnumerator MissileExpiryUsesDurationPlusHalfSecondAndCurrentPositionWithoutLinearCap()
    {
        yield return Load();var trees=Isolate();var b=Spawn(Center,Center+Vector3.forward*1000,1);
        b.enabled=false;b.GetComponent<Collider>().enabled=false;
        yield return new WaitForSeconds(1.15f);Assert.That(b.is_Die,Is.False,"No linear50-unit lifetime cap");HealthIs(trees[0],500);
        yield return new WaitForSeconds(.45f);Assert.That(b.is_Die,Is.True);HealthIs(trees[0],400);HealthIs(trees[1],400);
        b.SendMessage("Destroy");HealthIs(trees[0],400);Assert.That(b.IsInvoking("Deactivate"),Is.True);
    }

    [UnityTest]
    public IEnumerator ActualUpdateAtEndpointExplodesOnceAndReturnsToPool()
    {
        yield return Load();var trees=Isolate();var b=Spawn(Center-Vector3.forward*20,Center,.12f);
        b.GetComponent<Collider>().enabled=false;
        for(int i=0;i<120 && !b.is_Die;i++) yield return null;
        Assert.That(b.is_Die,Is.True);Assert.That(Vector3.Distance(b.transform.position,Center),Is.LessThan(.001));HealthIs(trees[0],400);HealthIs(trees[1],400);
        yield return new WaitForSeconds(.6f);HealthIs(trees[0],400);HealthIs(trees[1],400);
        yield return new WaitForSeconds(.6f);Assert.That(b.gameObject.activeSelf,Is.False);
    }

    [UnityTest]
    public IEnumerator PhysicalEarlyContactExplodesBeforeEndpointAndDoesNotRepeatOnTimeout()
    {
        yield return Load();var trees=Isolate();var contact=Center+new Vector3(0,8,10);
        Position(trees[0],contact);Position(trees[1],contact+Vector3.right*2);Physics.SyncTransforms();
        var b=Spawn(Center,Center+Vector3.forward*20,1);
        for(int i=0;i<120 && !b.is_Die;i++) yield return new WaitForFixedUpdate();
        Assert.That(b.is_Die,Is.True);Assert.That(Field<float>(b,"_msTimer"),Is.LessThan(.95f),"Actual trigger reached elevated tree before fixed endpoint");
        HealthIs(trees[0],400);HealthIs(trees[1],400);
        yield return new WaitForSeconds(.7f);HealthIs(trees[0],400);HealthIs(trees[1],400);
    }

    [UnityTest]
    public IEnumerator ReuseResetsMissileStateAndLinearSpawnResumesRigidbodyFlight()
    {
        yield return Load();var b=Spawn(Center,Center+Vector3.forward*10);
        b.DieAndWait();b.SpawnMissile(24,Center,Center+Vector3.up*.02f,Amount(70),"70",false,9,Cat.instance.EnemyLayer,0);
        Assert.That(Field<float>(b,"_msTimer"),Is.Zero);Assert.That(b.is_Die,Is.False);Assert.That(b.GetComponent<Collider>().enabled,Is.True);
        var old=b.transform.forward;Assert.That(Vector3.Distance(old,Vector3.forward),Is.LessThan(.001),"Initial squared distance0.0004 retains orientation");
        yield return null;yield return null;Assert.That(b.is_Die,Is.True,"Zero horizontal distance reaches endpoint on next positive delta");
        b.SpawnEx(0,Center,Vector3.right,Amount(100),"100",false,GunType.SINGLE,0,Cat.instance.EnemyLayer,.7f);
        Assert.That(Field<bool>(b,"_isMissile"),Is.False);Assert.That(b.rb.isKinematic,Is.False);
        Assert.That(Vector3.Distance(b.rb.linearVelocity,Vector3.right*b.Speed),Is.LessThan(.001f),"Transform.forward rotation has floating point tolerance");
        var pos=b.transform.position;yield return new WaitForFixedUpdate();yield return new WaitForFixedUpdate();Assert.That(b.transform.position.x,Is.GreaterThan(pos.x));
    }

    [UnityTest]
    public IEnumerator OriginalMissileGunsAimFireAndKillOriginalNeighborsThroughPhysics()
    {
        foreach(int gun in new[]{24,38})
        {
            yield return Load(gun);var cat=Cat.instance;Assert.That(cat._gunInfo.MissileSpeed,Is.EqualTo(gun==24?50:35));
            Assert.That(cat.Damage.Value.CompareTo(new DecimalAmount(gun==24?600:24000)),Is.Zero);
            var trees=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).Where(t=>t!=Tree_manager.instance.Boss_tree && t.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0).Take(2).ToArray();Assert.That(trees.Length,Is.EqualTo(2));
            foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(!trees.Contains(other)) other.gameObject.SetActive(false);
            trees[0].transform.position=new Vector3(cat.Ray_trans.position.x,0,cat.Ray_trans.position.z+15);trees[1].transform.position=trees[0].transform.position+Vector3.right*3;
            Physics.SyncTransforms();cat.ClearNearObj();int count=Tree_manager.instance.TreeCount_Now;
            var bridge=cat.GetComponent<ForestCombatAcceptance>();bridge.EnableSingleAttacks=false;bridge.EnableShotgunAttacks=false;bridge.EnablePenetratingAttacks=false;bridge.EnableExplosiveAttacks=false;
            bridge.EnableMissileAttacks=true;bridge.enabled=true;
            for(int i=0;i<200 && !trees.All(t=>t.enemy.is_Die);i++) yield return new WaitForFixedUpdate();
            bridge.enabled=false;Assert.That(trees.All(t=>t.enemy.is_Die),Is.True,"Actual missiles must detonate against both native250-health trees");
            Assert.That(Tree_manager.instance.TreeCount_Now,Is.EqualTo(count-2));
            Assert.That(Polling_manager.instance.Polling_List[0].Objects.Any(go=>go.activeSelf && go.GetComponent<Bullet>().gunType==GunType.MISSILE),Is.True);
        }
    }
}
