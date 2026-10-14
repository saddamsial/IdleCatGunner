using System.Collections;
using System.Linq;
using System.Reflection;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class PenetratingTests
{
    private const BindingFlags Private=BindingFlags.NonPublic|BindingFlags.Instance;
    private static CurrencyAmount Amount(int n)=>CurrencyAmount.FromValue(new DecimalAmount(n));
    private static T Field<T>(Bullet b,string name)=>(T)typeof(Bullet).GetField(name,Private).GetValue(b);
    private static Collider Coll(Tree tree)=>tree.GetComponentsInChildren<Collider>().Single(c=>c.GetComponent<EnemyColl>()!=null);
    private static Tree[] Trees()=>Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).Where(t=>t!=Tree_manager.instance.Boss_tree).Take(4).ToArray();
    private static IEnumerator Load(int gun=8)
    {
        yield return SceneManager.LoadSceneAsync("Forest");yield return null;
        var cat=Cat.instance;cat.GetComponent<ForestCombatAcceptance>().enabled=false;
        cat.GetComponent<ForestMovementAcceptance>().enabled=false;
        var data=EquipmentCatalogue.Load();data.Selected_items=new[]{gun,-1,-1};data.ApplyPackageForest(cat);
        foreach(var go in Polling_manager.instance.Polling_List[0].Objects)
        {var b=go.GetComponent<Bullet>();b.CancelInvoke();go.SetActive(false);b.is_Die=false;}
        Polling_manager.instance.Polling_List[0].Object_Count=0;
    }
    private static Bullet Spawn(GunType type,int damage=100)
    {
        var b=Polling_manager.instance.Object_Polling_Smart(0).GetComponent<Bullet>();
        b.SpawnEx(Cat.instance.GunNum,new Vector3(1000,2,1000),Vector3.forward,Amount(damage),damage.ToString(),false,type,0,Cat.instance.EnemyLayer,2);
        return b;
    }
    private static void Hit(Bullet b,Collider c)=>b.SendMessage("OnTriggerEnter",c);
    private static void Health(Tree t,int n) {t.gameObject.SetActive(true);t.enemy.Spawn(Amount(n),Amount(1));}

    [UnityTest]
    public IEnumerator PierceUsesPreHitHealthAndDoesNotHaveATwoTargetMaximum()
    {
        yield return Load();var trees=Trees();var b=Spawn(GunType.PIERCE);
        Health(trees[0],101);Health(trees[1],100);Health(trees[2],100);Health(trees[3],101);
        Hit(b,Coll(trees[0]));Assert.That(b.is_Die,Is.False,"First nonlethal hit continues");
        Hit(b,Coll(trees[0]));Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("1"));
        Assert.That(Field<int>(b,"_pierceCount"),Is.EqualTo(1),"Duplicate collider consumes no count or damage");
        Hit(b,Coll(trees[1]));Assert.That(b.is_Die,Is.False,"Exact equality is lethal using pre-hit health");
        Hit(b,Coll(trees[2]));Assert.That(b.is_Die,Is.False,"Consecutive kills keep penetrating after second target");
        Hit(b,Coll(trees[3]));Assert.That(trees[3].enemy.Health_Now.s_digits,Is.EqualTo("1"));
        Assert.That(b.is_Die,Is.True);Assert.That(Field<int>(b,"_pierceCount"),Is.EqualTo(4));
        Assert.That(b.rb.isKinematic,Is.True);Assert.That(b.GetComponent<Collider>().enabled,Is.False);
    }

    [UnityTest]
    public IEnumerator InvalidOrDeadEnemyConsumesIdOnlyAndPoolReuseClearsAllHitState()
    {
        yield return Load();var trees=Trees();var b=Spawn(GunType.PIERCE);
        var invalid=new GameObject("Enemy-tagged collider without link");invalid.tag="Enemy";
        var coll=invalid.AddComponent<BoxCollider>();
        try
        {
            Hit(b,coll);Assert.That(b.is_Die,Is.False);Assert.That(Field<int>(b,"_pierceCount"),Is.Zero);
            invalid.AddComponent<EnemyColl>().enemyScript=trees[0].enemy;
            Health(trees[0],250);Hit(b,coll);
            Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("250"),"Id recorded even when no EnemyColl exists");
            trees[1].enemy.is_Die=true;Hit(b,Coll(trees[1]));trees[1].enemy.is_Die=false;Hit(b,Coll(trees[1]));
            Assert.That(Field<int>(b,"_pierceCount"),Is.Zero,"Dead targets do not consume pierce count");
            b.DieAndWait();b.SpawnEx(8,new Vector3(1000,2,1000),Vector3.forward,Amount(100),"100",true,GunType.PIERCE,0,Cat.instance.EnemyLayer,2);
            Assert.That(Field<int>(b,"_pierceCount"),Is.Zero);Assert.That(Field<bool>(b,"_fxSpawned"),Is.False);
            Assert.That(b.IsInvoking("Deactivate"),Is.False);Hit(b,coll);
            Assert.That(trees[0].enemy.Health_Now.s_digits,Is.EqualTo("150"));Assert.That(Field<int>(b,"_pierceCount"),Is.EqualTo(1));
        }
        finally {Object.Destroy(invalid);}
    }

    [UnityTest]
    public IEnumerator LaserDamagesMoreThanTwoSurvivorsOnceEachAndObstacleStopsFlight()
    {
        yield return Load(19);var trees=Trees();var b=Spawn(GunType.LASER);
        int texts=0;System.Action<Vector3,string,bool> text=(p,s,c)=>texts++;
        ForestDamageDispatch.DamageTextPending+=text;
        var obstacle=new GameObject("Non-enemy obstacle");var coll=obstacle.AddComponent<BoxCollider>();
        try
        {
            foreach(var tree in trees) {Health(tree,250);Hit(b,Coll(tree));Hit(b,Coll(tree));}
            Assert.That(texts,Is.EqualTo(4));Assert.That(trees.All(t=>t.enemy.Health_Now.s_digits=="150"),Is.True);
            Assert.That(b.is_Die,Is.False);Assert.That(Field<int>(b,"_pierceCount"),Is.Zero);
            Assert.That(Field<bool>(b,"_fxSpawned"),Is.True);
            Assert.That(Polling_manager.instance.Polling_List[1].Objects.Count(go=>go.activeSelf),Is.EqualTo(1),"Only first enemy hit requests FX");
            Hit(b,coll);Assert.That(b.is_Die,Is.True);Assert.That(texts,Is.EqualTo(4),"Obstacle is not damaged as enemy");
        }
        finally {ForestDamageDispatch.DamageTextPending-=text;Object.Destroy(obstacle);}
    }

    [UnityTest]
    public IEnumerator RealPhysicsDistinguishesPierceStopFromLaserContinuation()
    {
        foreach(int gun in new[]{8,19})
        {
            yield return Load(gun);var trees=Trees();
            foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(!trees.Contains(other)) other.gameObject.SetActive(false);
            for(int i=0;i<4;i++)
            {
                Health(trees[i],i<2?150:250);
                // Align actual collider centers, retaining original colliders/scripts.
                var desired=new Vector3(500,2,505+i*7);
                trees[i].transform.position+=desired-Coll(trees[i]).bounds.center;
            }
            Physics.SyncTransforms();var cat=Cat.instance;
            Assert.That(cat.TrySpawnBulletEx(new Vector3(500,2,500),Vector3.forward,cat._gunInfo.type,0,cat._gunInfo.PenetratingBulletLifetime,cat.Damage,cat.Damage_str,false),Is.True);
            var b=Polling_manager.instance.Polling_List[0].Objects.First(go=>go.activeSelf).GetComponent<Bullet>();
            for(int i=0;i<45 && !b.is_Die;i++) yield return new WaitForFixedUpdate();
            Assert.That(trees[0].enemy.is_Die && trees[1].enemy.is_Die,Is.True,"Actual physics must kill both first targets");
            Assert.That(trees[2].enemy.Health_Now.s_digits,Is.EqualTo(gun==8?"100":"50"));
            Assert.That(trees[3].enemy.Health_Now.s_digits,Is.EqualTo(gun==8?"250":"50"));
            Assert.That(b.is_Die,Is.True,"Pierce stops on third nonlethal target; laser eventually reaches native distance cap");
        }
    }

    [UnityTest]
    public IEnumerator AttackUsesConfiguredPenetratingLifetimeAndBridgeSupportsBothTypes()
    {
        foreach(int gun in new[]{8,19})
        {
            yield return Load(gun);var cat=Cat.instance;var trees=Trees();var tree=trees[0];Health(tree,250);
            foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(other!=tree) other.gameObject.SetActive(false);
            tree.transform.position=new Vector3(cat.Ray_trans.position.x,0,cat.Ray_trans.position.z+12);Physics.SyncTransforms();
            var bridge=cat.GetComponent<ForestCombatAcceptance>();bridge.EnableSingleAttacks=false;bridge.EnableShotgunAttacks=false;
            bridge.EnablePenetratingAttacks=true;bridge.enabled=true;
            for(int i=0;i<100 && tree.enemy.Health_Now.s_digits=="250";i++) yield return new WaitForFixedUpdate();
            Assert.That(tree.enemy.Health_Now.s_digits,Is.EqualTo(gun==8?"100":"50"),"Native ray/aim/cooldown/attack/physics path");
            bridge.enabled=false;cat.ClearNearObj();
            foreach(var go in Polling_manager.instance.Polling_List[0].Objects) {go.GetComponent<Bullet>().CancelInvoke();go.SetActive(false);}
            var target=new GameObject("Penetrating lifetime target");var coll=target.AddComponent<BoxCollider>();target.transform.position=new Vector3(1000,2,1000);
            // Slow original pooled projectile isolates configured2s lifetime from50-unit cap.
            foreach(var go in Polling_manager.instance.Polling_List[0].Objects) go.GetComponent<Bullet>().Speed=10;
            typeof(Cat).GetField("nearHitPoint",Private).SetValue(cat,target.transform.position);
            try
            {
                Assert.That(cat.Attack(coll),Is.True);var b=Polling_manager.instance.Polling_List[0].Objects.First(go=>go.activeSelf).GetComponent<Bullet>();
                Assert.That(b.gunType,Is.EqualTo(cat._gunInfo.type));Assert.That(b.Damage_str,Is.EqualTo(gun==8?"150":"200"));
                yield return new WaitForSeconds(.8f);Assert.That(b.is_Die,Is.False,"Penetrating attack does not use normal .7s lifetime");
                yield return new WaitForSeconds(1.3f);Assert.That(b.is_Die,Is.True);
            }
            finally {Object.Destroy(target);foreach(var go in Polling_manager.instance.Polling_List[0].Objects) go.GetComponent<Bullet>().Speed=70;}
        }
    }
}
