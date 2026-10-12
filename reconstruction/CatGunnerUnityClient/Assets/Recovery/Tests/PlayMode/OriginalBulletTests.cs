using System.Collections;
using System.Linq;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using CatGunner.Recovery;

public sealed class OriginalBulletTests
{
    private static OriginalAmount Amount(int n) => OriginalAmount.FromValue(new DecimalAmount(n));
    private static IEnumerator Load()
    {
        yield return SceneManager.LoadSceneAsync("RecoveredForest");yield return null;
        Cat.instance.GetComponent<ForestCombatAcceptance>().enabled=false;
        Assert.That(Polling_manager.instance,Is.Not.Null);
    }
    [UnityTest]
    public IEnumerator OriginalPoolPreservesReferencesAndDoesNotStealLiveProjectiles()
    {
        yield return Load();var manager=Polling_manager.instance;var pool=manager.Polling_List[0];
        Assert.That(pool.Objects.Length,Is.EqualTo(27));Assert.That(manager.Polling_List[1].Objects.Length,Is.EqualTo(10));
        foreach(var go in pool.Objects)
        {
            var bullet=go.GetComponent<Bullet>();
            Assert.That(bullet.rb,Is.Not.Null);Assert.That(bullet.particle,Is.Not.Null);
            Assert.That(bullet.Speed,Is.EqualTo(70));Assert.That(bullet.Skin_particles.Length,Is.EqualTo(65));
            Assert.That(bullet.Skin_particles.All(p=>p!=null),Is.True);
            Assert.That(go.GetComponentsInChildren<BounceStart>(true).Length,Is.EqualTo(1),"Original Bounce_Stat child, not root");
            go.SetActive(false);
        }
        manager.Polling_List[0].Object_Count=0;
        Assert.That(manager.Object_Polling_Smart(0),Is.SameAs(pool.Objects[0]));
        pool.Objects[0].SetActive(true);
        Assert.That(manager.Object_Polling_Smart(0),Is.SameAs(pool.Objects[1]));
        foreach(var go in pool.Objects) {go.GetComponent<Bullet>().is_Die=false;go.SetActive(true);}
        int cursor=manager.Polling_List[0].Object_Count;
        Assert.That(manager.Object_Polling_Smart(0),Is.Null);
        var cat=Cat.instance;cat.GunNum=0;
        Assert.That(cat.TrySpawnBulletEx(Vector3.one*1000,Vector3.forward,GunType.SINGLE,0,1,Amount(100),"100",false),Is.False);
        Assert.That(manager.Polling_List[0].Object_Count,Is.EqualTo(cursor));
        var dead=pool.Objects[3].GetComponent<Bullet>();dead.DieAndWait();
        Assert.That(dead.IsInvoking("Deactivate"),Is.True);
        Assert.That(manager.Object_Polling_Smart(0),Is.SameAs(pool.Objects[3]));
        Assert.That(pool.Objects[3].activeSelf,Is.False);Assert.That(dead.IsInvoking("Deactivate"),Is.False);
        manager.Polling_List[0].Object_Count=3;
        Assert.That(cat.TrySpawnBulletEx(new Vector3(1000,0,1000),Vector3.forward,GunType.SINGLE,0,5,Amount(123),"123",true),Is.True);
        Assert.That(dead.is_Die,Is.False);Assert.That(dead.rb.isKinematic,Is.False);
        Assert.That(dead.GetComponent<Collider>().enabled,Is.True);Assert.That(dead.IsInvoking("Destroy"),Is.True);
        Assert.That(dead.Damage.Value.CompareTo(new DecimalAmount(123)),Is.Zero);
    }

    [UnityTest]
    public IEnumerator RealOriginalProjectileCollisionDamagesTreePlaysFXAndRecycles()
    {
        yield return Load();var manager=Polling_manager.instance;var cat=Cat.instance;cat.GunNum=0;
        var tree=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).First(t=>t!=Tree_manager.instance.Boss_tree);
        foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(other!=tree) other.gameObject.SetActive(false);
        tree.enemy.Spawn(Amount(250),Amount(20));
        var collider=tree.GetComponentsInChildren<Collider>().Single(c=>c.GetComponent<EnemyColl>()!=null);
        var center=collider.bounds.center;var start=center-Vector3.forward*12;
        int texts=0;bool criticalSeen=false;
        System.Action<Vector3,string,bool> text=(point,value,critical)=>{texts++;criticalSeen=critical;Assert.That(value,Is.EqualTo("100"));};
        ForestDamageDispatch.DamageTextPending+=text;
        try
        {
            Assert.That(cat.TrySpawnBulletEx(start,Vector3.forward,GunType.SINGLE,0,5,Amount(100),"100",true),Is.True);
            var bullet=manager.Polling_List[0].Objects.First(go=>go.activeInHierarchy).GetComponent<Bullet>();
            Assert.That(bullet.rb.linearVelocity.z,Is.EqualTo(70).Within(.01));
            for(int i=0;i<50 && !bullet.is_Die;i++) yield return new WaitForFixedUpdate();
            Assert.That(bullet.is_Die,Is.True,"Must reach tree through real physics trigger, not SendMessage");
            Assert.That(tree.enemy.Health_Now.Value.CompareTo(new DecimalAmount(150)),Is.Zero);
            Assert.That(texts,Is.EqualTo(1));Assert.That(criticalSeen,Is.True);
            Assert.That(tree.enemy.Slider.gameObject.activeSelf,Is.True);
            Assert.That(bullet.rb.isKinematic,Is.True);Assert.That(bullet.GetComponent<Collider>().enabled,Is.False);
            Assert.That(manager.Polling_List[1].Objects.Any(go=>go.activeInHierarchy && go.GetComponent<Bullet_FX>().particle.isPlaying),Is.True);
            bullet.SendMessage("OnTriggerEnter",collider);Assert.That(texts,Is.EqualTo(1),"Dead bullet cannot damage twice");
            yield return new WaitForSeconds(1.1f);Assert.That(bullet.gameObject.activeSelf,Is.False);
            int count=Tree_manager.instance.TreeCount_Now;
            // Next original collision is lethal. Reuse original objects, no allocation.
            ForestDamageDispatch.DamageTextPending-=text;
            Assert.That(cat.TrySpawnBulletEx(start,Vector3.forward,GunType.SINGLE,0,5,Amount(150),"150",false),Is.True);
            for(int i=0;i<50 && tree.gameObject.activeSelf;i++) yield return new WaitForFixedUpdate();
            Assert.That(tree.gameObject.activeSelf,Is.False);
            Assert.That(Tree_manager.instance.TreeCount_Now,Is.EqualTo(count-1));
        }
        finally {ForestDamageDispatch.DamageTextPending-=text;}
    }

    [UnityTest]
    public IEnumerator NativeTravelDistanceLimitAndDelayedReturnCancelOldInvokesOnRespawn()
    {
        yield return Load();var manager=Polling_manager.instance;
        var go=manager.Object_Polling_Smart(0);var bullet=go.GetComponent<Bullet>();
        bullet.SpawnEx(0,new Vector3(500,0,500),Vector3.forward,Amount(100),"100",false,GunType.SINGLE,0,640,5);
        var start=bullet.transform.position;
        yield return new WaitForSeconds(.8f);
        Assert.That(bullet.transform.position.z-start.z,Is.InRange(45,57));
        Assert.That(bullet.is_Die,Is.True,"Native lifetime min(requested,50/Max(speed,.1))");
        Assert.That(go.activeSelf,Is.True,"Original 1-second trail/deactivation wait");
        Assert.That(bullet.IsInvoking("Deactivate"),Is.True);
        yield return new WaitForSeconds(1.1f);Assert.That(go.activeSelf,Is.False);
        bullet.SpawnEx(0,new Vector3(500,0,500),Vector3.forward,Amount(100),"100",false,GunType.SHOTGUN,0,640,.1f);
        yield return new WaitForSeconds(.15f);Assert.That(bullet.is_Die,Is.True);
        bullet.SpawnEx(1,new Vector3(600,0,500),Vector3.forward,Amount(200),"200",false,GunType.SINGLE,0,640,.6f);
        Assert.That(bullet.is_Die,Is.False);Assert.That(bullet.IsInvoking("Deactivate"),Is.False);
        Assert.That(bullet.GetComponent<Collider>().enabled,Is.True);
        yield return new WaitForSeconds(.2f);Assert.That(bullet.is_Die,Is.False);
    }

    [UnityTest]
    public IEnumerator OriginalFXLifecycleUsesScaledTimeAndNativeThrottleKeepsLimits()
    {
        yield return Load();var manager=Polling_manager.instance;
        var go=manager.Object_Polling(1);var fx=go.GetComponent<Bullet_FX>();var lifetime=go.GetComponent<global::Destroy>();
        Assert.That(lifetime,Is.Not.Null);Assert.That(lifetime.Destroy_Time,Is.GreaterThan(0));
        fx.Spawn(0,new Vector3(400,0,400));Assert.That(fx.particle.isPlaying,Is.True);
        Time.timeScale=0;
        try {yield return new WaitForSecondsRealtime(lifetime.Destroy_Time+.1f);Assert.That(go.activeSelf,Is.True,"Original WaitForSeconds pauses with scaled time");}
        finally {Time.timeScale=1;}
        yield return new WaitForSeconds(lifetime.Destroy_Time+.1f);Assert.That(go.activeSelf,Is.False);
        Assert.That(FXThrottle.CanSpawn(64,new Vector3(100,0,100)),Is.True);
        Assert.That(FXThrottle.CanSpawn(63,new Vector3(100,0,100)),Is.True);
        Assert.That(FXThrottle.CanSpawn(62,new Vector3(100,0,100)),Is.True);
        Assert.That(FXThrottle.CanSpawn(61,new Vector3(100,0,100)),Is.False,"Max three in one frame");
        yield return null;
        Assert.That(FXThrottle.CanSpawn(64,new Vector3(100,0,100)),Is.False,"Same gun and nearby position within .05 seconds");
        Assert.That(FXThrottle.CanSpawn(64,new Vector3(101.5f,0,100)),Is.True,"Exact 2.25 distance-squared boundary accepted");
        yield return new WaitForSeconds(.06f);
        Assert.That(FXThrottle.CanSpawn(64,new Vector3(101.5f,0,100)),Is.True);
    }
}
