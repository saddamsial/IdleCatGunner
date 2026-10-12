using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using CatGunner.Recovery;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class OriginalExplosionTests
{
    private const BindingFlags Private=BindingFlags.NonPublic|BindingFlags.Instance;
    private static readonly Vector3 Center=new Vector3(500,2,500);
    private static OriginalAmount Amount(int n)=>OriginalAmount.FromValue(new DecimalAmount(n));
    private static T Field<T>(Bullet b,string name)=>(T)typeof(Bullet).GetField(name,Private).GetValue(b);
    private static Collider Coll(Tree t)=>t.GetComponentsInChildren<Collider>().Single(c=>c.GetComponent<EnemyColl>()!=null);
    private static Tree[] Trees()=>Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).Where(t=>t!=Tree_manager.instance.Boss_tree).Take(4).ToArray();
    private static void Position(Tree t,Vector3 center)=>t.transform.position+=center-Coll(t).bounds.center;
    private static void Health(Tree t,int n) {t.gameObject.SetActive(true);t.enemy.Spawn(Amount(n),Amount(1));}
    private static void Isolate(Tree[] trees)
    {
        foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(!trees.Contains(other)) other.gameObject.SetActive(false);
        for(int i=0;i<trees.Length;i++) {Health(trees[i],500);Position(trees[i],Center+Vector3.forward*(30+i*10));}
        Physics.SyncTransforms();
    }
    private static IEnumerator Load(int gun=14)
    {
        yield return SceneManager.LoadSceneAsync("RecoveredForest");yield return null;
        var cat=Cat.instance;cat.GetComponent<ForestCombatAcceptance>().enabled=false;cat.GetComponent<ForestMovementAcceptance>().enabled=false;
        var data=OriginalEquipmentCatalogue.Load();data.Selected_items=new[]{gun,-1,-1};data.ApplyPackageForest(cat);
        foreach(var go in Polling_manager.instance.Polling_List[0].Objects)
        {var b=go.GetComponent<Bullet>();b.CancelInvoke();go.SetActive(false);b.is_Die=false;}
        Polling_manager.instance.Polling_List[0].Object_Count=0;
    }
    private static Bullet Spawn(GunType type=GunType.EXPLOSIVE,float radius=5,int damage=100,Vector3? position=null,float lifetime=2)
    {
        var b=Polling_manager.instance.Object_Polling_Smart(0).GetComponent<Bullet>();
        b.SpawnEx(Cat.instance.GunNum,position??new Vector3(1000,2,1000),Vector3.forward,Amount(damage),damage.ToString(),true,type,radius,Cat.instance.EnemyLayer,lifetime);
        return b;
    }
    private static void Hit(Bullet b,Collider c)=>b.SendMessage("OnTriggerEnter",c);
    private static void Explode(Bullet b,Vector3 p)=>b.SendMessage("Explode",p);

    [UnityTest]
    public IEnumerator ExplosionQueriesRadiusLayerAndColliderIdsWithoutDistanceFalloff()
    {
        yield return Load();var trees=Trees();Isolate(trees);
        Position(trees[0],Center);Position(trees[1],Center+Vector3.right*4);
        Position(trees[2],Center+Vector3.right*15);Position(trees[3],Center+Vector3.left*3);
        int layer=Coll(trees[3]).gameObject.layer;Coll(trees[3]).gameObject.layer=0;Physics.SyncTransforms();
        var points=new List<Vector3>();System.Action<Vector3,string,bool> listener=(p,s,c)=>{points.Add(p);Assert.That(s,Is.EqualTo("100"));Assert.That(c,Is.True);};
        ForestDamageDispatch.DamageTextPending+=listener;
        try
        {
            var b=Spawn();Explode(b,Center);
            Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("400"));Assert.That(trees[1].enemy.Health_Now.s_digits,Is.EqualTo("400"),"Full damage at outer range");
            Assert.That(trees[2].enemy.Health_Now.s_digits,Is.EqualTo("500"));Assert.That(trees[3].enemy.Health_Now.s_digits,Is.EqualTo("500"),"Layer mask excludes nearby collider");
            Assert.That(points.Count,Is.EqualTo(2));Assert.That(points.Any(p=>Vector3.Distance(p,Coll(trees[0]).ClosestPoint(Center))<.001),Is.True);
            Assert.That(points.Any(p=>Vector3.Distance(p,Coll(trees[1]).ClosestPoint(Center))<.001),Is.True);
            Explode(b,Center);Assert.That(points.Count,Is.EqualTo(2),"Shared hit IDs block a second query on same projectile");
            b.DieAndWait();b.SpawnEx(14,new Vector3(1000,2,1000),Vector3.forward,Amount(100),"100",true,GunType.EXPLOSIVE,5,Cat.instance.EnemyLayer,2);
            Explode(b,Center);Assert.That(points.Count,Is.EqualTo(4));Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("300"));
        }
        finally {ForestDamageDispatch.DamageTextPending-=listener;Coll(trees[3]).gameObject.layer=layer;}
    }

    [UnityTest]
    public IEnumerator DistinctCollidersCanDamageSameEnemyAndQueryHonorsGlobalTriggerSetting()
    {
        yield return Load();var trees=Trees();Isolate(trees);Position(trees[0],Center);var coll=Coll(trees[0]);
        bool trigger=coll.isTrigger,global=Physics.queriesHitTriggers;coll.isTrigger=true;
        var duplicate=coll.gameObject.AddComponent<BoxCollider>();duplicate.isTrigger=true;duplicate.size=Vector3.one*.2f;
        duplicate.center=coll.transform.InverseTransformPoint(Center);Physics.SyncTransforms();
        try
        {
            Physics.queriesHitTriggers=false;var b=Spawn();Explode(b,Center);Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("500"));
            Physics.queriesHitTriggers=true;Explode(b,Center);
            Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("300"),"Native deduplicates Collider ID, not Enemy identity");
            Explode(b,Center);Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("300"));
        }
        finally {Physics.queriesHitTriggers=global;coll.isTrigger=trigger;Object.Destroy(duplicate);}
    }

    [UnityTest]
    public IEnumerator NonpositiveRadiusDoesNoDirectDamageAndObstacleImpactStillExplodes()
    {
        yield return Load();var trees=Trees();Isolate(trees);Position(trees[0],Center);Physics.SyncTransforms();
        foreach(float radius in new[]{0f,-1f})
        {
            var b=Spawn(radius:radius,position:Center+Vector3.forward*70*Time.fixedDeltaTime);
            Hit(b,Coll(trees[0]));Assert.That(b.is_Die,Is.True);Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("500"),"Impact has no separate direct damage");
        }
        var obstacle=new GameObject("Explosion obstacle");obstacle.transform.position=Center;var box=obstacle.AddComponent<BoxCollider>();Physics.SyncTransforms();
        try
        {
            var b=Spawn(position:Center+Vector3.forward*70*Time.fixedDeltaTime);Hit(b,box);
            Assert.That(b.is_Die,Is.True);Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("400"),"Non-enemy impact explodes against queried enemies");
            b.SendMessage("Destroy");Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("400"),"Dead impact must not explode again on expiry");
        }
        finally {Object.Destroy(obstacle);}
    }

    [UnityTest]
    public IEnumerator ExpiryExplodesAtCurrentPositionButBlastSniperExpiryOnlyReturns()
    {
        yield return Load();var trees=Trees();Isolate(trees);Position(trees[0],Center);Physics.SyncTransforms();
        var b=Spawn(position:Center,lifetime:.05f);b.rb.linearVelocity=Vector3.zero;b.GetComponent<Collider>().enabled=false;
        yield return new WaitForSeconds(.1f);
        Assert.That(b.is_Die,Is.True);Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("400"));Assert.That(b.IsInvoking("Deactivate"),Is.True);
        b.SendMessage("Destroy");Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("400"));
        var sniper=Spawn(GunType.BLAST_SNIPER,position:Center,lifetime:.05f);sniper.rb.linearVelocity=Vector3.zero;sniper.GetComponent<Collider>().enabled=false;
        yield return new WaitForSeconds(.1f);Assert.That(sniper.is_Die,Is.True);Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("400"),"Type6 expiry has no blast");
    }

    [UnityTest]
    public IEnumerator BlastFirstKillKeepsFlyingThenPiercesWithoutRepeatingSplashDamage()
    {
        yield return Load(29);var trees=Trees();Isolate(trees);Health(trees[0],100);Health(trees[1],250);
        Position(trees[0],Center);Position(trees[1],Center+Vector3.right*2.5f);Health(trees[2],250);Health(trees[3],250);Physics.SyncTransforms();
        var b=Spawn(GunType.BLAST_SNIPER,3,position:Center+Vector3.forward*70*Time.fixedDeltaTime);Hit(b,Coll(trees[0]));
        Assert.That(trees[0].enemy.is_Die,Is.True);Assert.That(trees[1].enemy.Health_Now.s_digits,Is.EqualTo("150"));Assert.That(b.is_Die,Is.False,"Pre-hit equality kills and allows continuation");
        Assert.That(Field<bool>(b,"_firstHitDone"),Is.True);Assert.That(Field<int>(b,"_pierceCount"),Is.Zero);
        Hit(b,Coll(trees[1]));Assert.That(trees[1].enemy.Health_Now.s_digits,Is.EqualTo("150"),"Splash already recorded collider ID");
        Hit(b,Coll(trees[2]));Assert.That(trees[2].enemy.Health_Now.s_digits,Is.EqualTo("150"));Assert.That(b.is_Die,Is.False,"First later piercing hit may survive");
        Hit(b,Coll(trees[3]));Assert.That(trees[3].enemy.Health_Now.s_digits,Is.EqualTo("150"));Assert.That(b.is_Die,Is.True);
        Assert.That(Field<int>(b,"_pierceCount"),Is.EqualTo(2));Assert.That(Field<bool>(b,"_fxSpawned"),Is.True);
        b.SpawnEx(29,new Vector3(1000,2,1000),Vector3.forward,Amount(100),"100",false,GunType.BLAST_SNIPER,3,Cat.instance.EnemyLayer,2);
        Assert.That(Field<bool>(b,"_firstHitDone"),Is.False);Assert.That(Field<bool>(b,"_fxSpawned"),Is.False);Assert.That(Field<int>(b,"_pierceCount"),Is.Zero);
    }

    [UnityTest]
    public IEnumerator BlastFirstSurvivorOrInvalidTargetStopsAndAttackUsesCorrectRadiusLifetime()
    {
        yield return Load(29);var trees=Trees();Isolate(trees);Health(trees[0],101);Position(trees[0],Center);Physics.SyncTransforms();
        var b=Spawn(GunType.BLAST_SNIPER,3,position:Center+Vector3.forward*70*Time.fixedDeltaTime);Hit(b,Coll(trees[0]));
        Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("1"));Assert.That(b.is_Die,Is.True,"First nonlethal blast stops immediately");
        var invalid=new GameObject("Invalid Enemy-tagged blast target");invalid.tag="Enemy";var coll=invalid.AddComponent<BoxCollider>();invalid.transform.position=Vector3.one*1000;
        try
        {
            b=Spawn(GunType.BLAST_SNIPER);Hit(b,coll);Assert.That(b.is_Die,Is.True);
            foreach(int gun in new[]{14,29})
            {
                var cat=Cat.instance;var data=OriginalEquipmentCatalogue.Load();data.Selected_items=new[]{gun,-1,-1};data.ApplyPackageForest(cat);
                foreach(var go in Polling_manager.instance.Polling_List[0].Objects) {go.GetComponent<Bullet>().CancelInvoke();go.SetActive(false);go.GetComponent<Bullet>().Speed=10;}
                typeof(Cat).GetField("nearHitPoint",Private).SetValue(cat,invalid.transform.position);
                Assert.That(cat.Attack(coll),Is.True);Assert.That(cat.Gun_bounce.Bouncing,Is.True);Assert.That(cat.Shoot_particle.isPlaying,Is.True);b=Polling_manager.instance.Polling_List[0].Objects.First(go=>go.activeSelf).GetComponent<Bullet>();
                Assert.That(b.gunType,Is.EqualTo(gun==14?GunType.EXPLOSIVE:GunType.BLAST_SNIPER));Assert.That(b.explosionRadius,Is.EqualTo(gun==14?5:5.5));
                Assert.That(b.Damage_str,Is.EqualTo(gun==14?"120":"1600"));
                yield return new WaitForSeconds(1.2f);Assert.That(b.is_Die,Is.False);
                yield return new WaitForSeconds(.4f);Assert.That(b.is_Die,Is.EqualTo(gun==14),"Explosive request1.5; blast sniper request2");
                if(gun==29) {yield return new WaitForSeconds(.5f);Assert.That(b.is_Die,Is.True);}
            }
        }
        finally {Object.Destroy(invalid);foreach(var go in Polling_manager.instance.Polling_List[0].Objects) go.GetComponent<Bullet>().Speed=70;}
    }

    [UnityTest]
    public IEnumerator BothOriginalGunsAutoAimAndDamageNeighborsThroughRealPhysics()
    {
        foreach(int gun in new[]{14,29})
        {
            yield return Load(gun);var cat=Cat.instance;
            var trees=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).Where(t=>t!=Tree_manager.instance.Boss_tree && t.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0).Take(2).ToArray();
            Assert.That(trees.Length,Is.EqualTo(2));
            foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(!trees.Contains(other)) other.gameObject.SetActive(false);
            trees[0].transform.position=new Vector3(cat.Ray_trans.position.x,0,cat.Ray_trans.position.z+12);
            trees[1].transform.position=trees[0].transform.position+Vector3.right*3;Physics.SyncTransforms();cat.ClearNearObj();
            var bridge=cat.GetComponent<ForestCombatAcceptance>();bridge.EnableSingleAttacks=false;bridge.EnableShotgunAttacks=false;bridge.EnablePenetratingAttacks=false;
            bridge.EnableExplosiveAttacks=true;bridge.enabled=true;int count=Tree_manager.instance.TreeCount_Now;
            for(int i=0;i<150 && trees[0].enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0 && trees[1].enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0;i++) yield return new WaitForFixedUpdate();
            bridge.enabled=false;
            if(gun==14) Assert.That(trees.All(t=>t.enemy.Health_Now.Value.CompareTo(new DecimalAmount(130))==0 && !t.enemy.is_Die),Is.True,"One physical impact splashes full120 to both original250-health trees");
            else {Assert.That(trees.All(t=>t.enemy.is_Die),Is.True,"Gun29 physical splash health="+string.Join(",",trees.Select(t=>t.enemy.Health_Now.Value.PlainInteger())));Assert.That(Tree_manager.instance.TreeCount_Now,Is.EqualTo(count-2),"Gun29 actual1600 blast kills both original trees");}
        }
    }
}
