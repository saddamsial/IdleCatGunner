using System.Collections;
using System.Linq;
using System.Reflection;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class ShotgunTests
{
    private const BindingFlags Private=BindingFlags.NonPublic|BindingFlags.Instance;
    private static void Set(Cat cat,string name,object value)=>typeof(Cat).GetField(name,Private).SetValue(cat,value);
    private static float Spread(Cat cat)=>(float)typeof(Cat).GetField("_spreadAngle",Private).GetValue(cat);
    private static bool Critical(Bullet bullet)=>(bool)typeof(Bullet).GetField("is_Cri",Private).GetValue(bullet);
    private static Bullet[] ActiveBullets()=>Polling_manager.instance.Polling_List[0].Objects
        .Where(go=>go.activeSelf).Select(go=>go.GetComponent<Bullet>()).ToArray();
    private static void ResetPool()
    {
        foreach(var go in Polling_manager.instance.Polling_List[0].Objects)
        {var bullet=go.GetComponent<Bullet>();bullet.CancelInvoke();go.SetActive(false);bullet.is_Die=false;}
        Polling_manager.instance.Polling_List[0].Object_Count=0;
    }
    private static IEnumerator Load(int gun)
    {
        yield return SceneManager.LoadSceneAsync("Forest");yield return null;
        var cat=Cat.instance;cat.GetComponent<ForestCombatAcceptance>().enabled=false;
        cat.GetComponent<ForestMovementAcceptance>().enabled=false;
        // Independent equipped-slot fixture, using original stats and parameters.
        // It does not grant inventory ownership or write a player save.
        var data=EquipmentCatalogue.Load();data.Selected_items=new[]{gun,-1,-1};
        Assert.That(data.ApplyPackageForest(cat),Is.True);ResetPool();
    }
    [UnityTest]
    public IEnumerator OriginalPelletCountsRandomAnglesAndMinimumOneArePreserved()
    {
        yield return Load(3);var cat=Cat.instance;var originalRandom=Random.state;
        try
        {
            Assert.That(cat._gunInfo.ShotgunPelletCount,Is.EqualTo(2));Assert.That(cat._gunInfo.ShotgunSpreadAngle,Is.EqualTo(10));
            var pos=new Vector3(1000,2,1000);Random.InitState(3579);
            float first=Random.Range(-10f,10f),second=Random.Range(-10f,10f),next=Random.value;
            Random.InitState(3579);
            Assert.That(cat.TryFireShotgun(pos,Vector3.forward,cat.Damage,cat.Damage_str,false),Is.True);
            var bullets=ActiveBullets();Assert.That(bullets.Length,Is.EqualTo(2));
            var angles=new[]{first,second};
            for(int i=0;i<2;i++)
            {
                Assert.That(Vector3.SignedAngle(Vector3.forward,bullets[i].transform.forward,Vector3.up),Is.EqualTo(angles[i]).Within(.001));
                Assert.That(bullets[i].rb.linearVelocity.magnitude,Is.EqualTo(70).Within(.001));
                Assert.That(bullets[i].gunType,Is.EqualTo(GunType.SHOTGUN));Assert.That(bullets[i].Damage_str,Is.EqualTo("80"));
                Assert.That(bullets[i].explosionRadius,Is.Zero);Assert.That(Critical(bullets[i]),Is.False);
            }
            Assert.That(Random.value,Is.EqualTo(next),"Exactly one independent angle sample per acquired pellet");
            ResetPool();cat._gunInfo.ShotgunPelletCount=-3;
            Assert.That(cat.TryFireShotgun(pos,Vector3.forward,cat.Damage,cat.Damage_str,false),Is.True);
            Assert.That(ActiveBullets().Length,Is.EqualTo(1),"Native clamp is one even for negative counts");
            ResetPool();var data=EquipmentCatalogue.Load();data.Selected_items=new[]{12,-1,-1};data.ApplyPackageForest(cat);
            Assert.That(cat._gunInfo.ShotgunPelletCount,Is.EqualTo(3));
            Assert.That(cat.TryFireShotgun(pos,Vector3.forward,cat.Damage,cat.Damage_str,false),Is.True);
            Assert.That(ActiveBullets().Length,Is.EqualTo(3));
            yield return new WaitForSeconds(.75f);
            Assert.That(ActiveBullets().All(b=>b.is_Die),Is.True,"Native .7-second flight lifetime has elapsed");
        }
        finally {Random.state=originalRandom;}
    }
    [UnityTest]
    public IEnumerator VolleyCriticalChoiceIsSharedAndShotgunIgnoresDynamicSpread()
    {
        yield return Load(3);var cat=Cat.instance;var originalRandom=Random.state;
        var target=new GameObject("Isolated volley RNG target");var coll=target.AddComponent<BoxCollider>();
        target.transform.position=Vector3.one*1000;Set(cat,"nearHitPoint",target.transform.position);Set(cat,"_spreadAngle",20f);
        try
        {
            Random.InitState(821);float criticalRoll=Random.value;
            float a=Random.Range(-10f,10f),b=Random.Range(-10f,10f),next=Random.value;
            cat.CriPer=criticalRoll; // Independent exact-equality boundary fixture.
            Random.InitState(821);Assert.That(cat.Attack(coll),Is.True);
            var bullets=ActiveBullets();Assert.That(bullets.Length,Is.EqualTo(2));
            Assert.That(bullets.All(p=>!Critical(p) && p.Damage_str=="80"),Is.True,"Critical comparison is strict <");
            var direction=Cat.CalcBulletDir(bullets[0].transform.position,target.transform.position);
            Assert.That(Vector3.SignedAngle(direction,bullets[0].transform.forward,Vector3.up),Is.EqualTo(a).Within(.001));
            Assert.That(Vector3.SignedAngle(direction,bullets[1].transform.forward,Vector3.up),Is.EqualTo(b).Within(.001));
            Assert.That(Random.value,Is.EqualTo(next),"One critical roll for the volley; no ordinary dynamic spread RNG");
            Assert.That(Spread(cat),Is.EqualTo(20),"Shotguns neither apply nor grow normal dynamic spread");
            ResetPool();cat.CriPer=1;Random.InitState(822);Assert.That(cat.Attack(coll),Is.True);
            Assert.That(ActiveBullets().All(p=>Critical(p) && p.Damage_str=="100"),Is.True,"Original 80 damage uses critical100 for every pellet; do not divide by pellet count");
            Assert.That(cat.Gun_bounce.Bouncing,Is.True);Assert.That(cat.Rebound_bounce.Bouncing,Is.True);Assert.That(cat.Shoot_particle.isPlaying,Is.True);
        }
        finally {Object.Destroy(target);cat.ClearNearObj();Random.state=originalRandom;}
    }
    [UnityTest]
    public IEnumerator FullPoolRetriesButPartialVolleySucceedsWithoutReclaimingLiveBullets()
    {
        yield return Load(12);var cat=Cat.instance;var originalRandom=Random.state;
        var target=new GameObject("Isolated partial shotgun target");var coll=target.AddComponent<BoxCollider>();target.transform.position=Vector3.one*1000;
        Set(cat,"nearObj",coll);Set(cat,"nearHitPoint",target.transform.position);cat.AtkCool_Now=cat.AtkCool_Max;
        var pool=Polling_manager.instance.Polling_List[0].Objects;
        foreach(var go in pool) {go.GetComponent<Bullet>().is_Die=false;go.SetActive(true);}
        try
        {
            Random.InitState(129);float first=Random.value;Random.InitState(129);
            Assert.That(cat.TryFireShotgun(Vector3.one*1000,Vector3.forward,cat.Damage,cat.Damage_str,false),Is.False);
            Assert.That(Random.value,Is.EqualTo(first),"Pool failure occurs before angle sampling");
            Assert.That(cat.TickProjectileAttackCooldown(),Is.False);
            Assert.That(cat.AtkCool_Now,Is.EqualTo(cat.AtkCool_Max-Time.deltaTime).Within(.0001));
            Assert.That(cat.Gun_bounce.Bouncing,Is.False);Assert.That(cat.Shoot_particle.isPlaying,Is.False);
            pool[0].SetActive(false);Assert.That(cat.TickProjectileAttackCooldown(),Is.True);
            Assert.That(cat.AtkCool_Now,Is.Zero);Assert.That(cat.Gun_bounce.Bouncing,Is.True);Assert.That(cat.Shoot_particle.isPlaying,Is.True);
            Assert.That(pool[0].GetComponent<Bullet>().gunType,Is.EqualTo(GunType.SHOTGUN));
            Assert.That(pool[0].GetComponent<Bullet>().Damage_str,Is.EqualTo("250"));
            Assert.That(pool.Skip(1).All(go=>go.activeSelf && !go.GetComponent<Bullet>().is_Die),Is.True,"Live bullets remain occupied; no reservation or rollback");
            Assert.That(Polling_manager.instance.Object_Polling_Smart(0),Is.Null);
        }
        finally {Object.Destroy(target);cat.ClearNearObj();Random.state=originalRandom;ResetPool();}
    }
    [UnityTest]
    public IEnumerator OriginalShotgunBridgeFindsTreeAndActualPelletsDealConfiguredDamage()
    {
        yield return Load(3);var cat=Cat.instance;var originalRandom=Random.state;
        var tree=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).First(t=>t!=Tree_manager.instance.Boss_tree &&
            t.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0);
        foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(other!=tree) other.gameObject.SetActive(false);
        tree.transform.position=new Vector3(cat.Ray_trans.position.x,0,cat.Ray_trans.position.z+12);
        Assert.That(tree.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250)),Is.Zero);
        Assert.That(cat.Damage_str,Is.EqualTo("80"));Assert.That(cat.CriDmg_str,Is.EqualTo("100"));Assert.That(cat.AtkCool_Max,Is.EqualTo(1));
        Physics.SyncTransforms();cat.ClearNearObj();Random.InitState(392);
        var bridge=cat.GetComponent<ForestCombatAcceptance>();bridge.EnableSingleAttacks=false;bridge.EnableShotgunAttacks=true;bridge.enabled=true;
        int count=Tree_manager.instance.TreeCount_Now,hits=0;
        System.Action<Vector3,string,bool> listener=(point,text,critical)=>{hits++;Assert.That(text,Is.EqualTo("80"));Assert.That(critical,Is.False);};
        ForestDamageDispatch.DamageTextPending+=listener;
        try
        {
            for(int i=0;i<450 && tree.gameObject.activeSelf;i++) yield return new WaitForFixedUpdate();
            Assert.That(tree.gameObject.activeSelf,Is.False,"Native rays/aim/volley/cooldown and real physics must close damage, not merely record an intent");
            Assert.That(hits,Is.EqualTo(4));Assert.That(Tree_manager.instance.TreeCount_Now,Is.EqualTo(count-1));
            Assert.That(cat.Shoot_particle.isPlaying,Is.True);Assert.That(Spread(cat),Is.Zero);
        }
        finally {bridge.enabled=false;ForestDamageDispatch.DamageTextPending-=listener;Random.state=originalRandom;}
    }
}
