using System.Collections;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class EquipmentTests
{
    [Test]
    public void PackageGunCatalogueAndCompactedSlotsKeepOriginalData()
    {
        var data=EquipmentCatalogue.Load();
        Assert.That(data.Selected_items,Is.EqualTo(new[]{0,-1,-1}));
        Assert.That(data.Gun_Collect.Count(owned=>owned),Is.EqualTo(1));
        Assert.That(data.Gun_list.Length,Is.EqualTo(65));
        Assert.That(data.Gun_list.Select(g=>g.type).Distinct().Count(),Is.EqualTo(7));
        Assert.That(data.Gun_list[0].Name,Is.EqualTo("초보자 권총"));
        Assert.That(data.Gun_list[0].Damage.Value.CompareTo(new DecimalAmount(100)),Is.Zero);
        Assert.That(data.Gun_list[0].AtkSpeed,Is.EqualTo(.6f));
        Assert.That(data.Gun_list[1].Damage.Value.CompareTo(new DecimalAmount(80)),Is.Zero);
        Assert.That(data.Gun_list[1].AtkSpeed,Is.EqualTo(.5f));
        Assert.That(EquipmentCatalogue.CompactSelected(new[]{-1,8,8}),Is.EqualTo(new[]{8,8}),"Keep duplicates and order; do not treat ids as inventory indices");
        Assert.That(EquipmentCatalogue.CompactSelected(new[]{-1,-1,-1}),Is.Empty);
        data.Gun_list[0].Damage.s_digits="999";
        Assert.That(EquipmentCatalogue.Load().Gun_list[0].Damage.s_digits,Is.EqualTo("100"),"Runtime catalogue mutation cannot change source or later loads");
    }

    [Test]
    public void NativeAttackCooldownUsesAdditiveSpeedWavePenaltyAndTwoClamps()
    {
        Assert.That(EquipmentCatalogue.CalculateAttackCooldown(.6f,100,100,100,0,true,false,false,1),Is.EqualTo(.6f).Within(.00001));
        Assert.That(EquipmentCatalogue.CalculateAttackCooldown(.6f,100,100,108,0,true,false,false,1),Is.EqualTo(.55555556f).Within(.00001));
        Assert.That(EquipmentCatalogue.CalculateAttackCooldown(.6f,100,100,140,1,true,false,false,1),Is.EqualTo(.54545455f).Within(.00001));
        Assert.That(EquipmentCatalogue.CalculateAttackCooldown(.6f,100,100,140,2,true,false,false,1),Is.EqualTo(.6f).Within(.00001));
        Assert.That(EquipmentCatalogue.CalculateAttackCooldown(.6f,120,130,150,0,false,false,false,1),Is.EqualTo(.3f).Within(.00001),"Add excess percentages; do not multiply speed bonuses");
        Assert.That(EquipmentCatalogue.CalculateAttackCooldown(10,100,100,100,0,false,false,false,4),Is.EqualTo(2f),"Buff division precedes final clamp");
        Assert.That(EquipmentCatalogue.CalculateAttackCooldown(.6f,100,100,80100,0,false,false,false,1),Is.EqualTo(.05f));
        Assert.That(EquipmentCatalogue.CalculateAttackCooldown(.6f,100,900,9000,0,false,true,true,1),Is.EqualTo(.6f).Within(.00001),"Raid skips rebirth; explicit special mode skips upgrade");
    }

    [UnityTest]
    public IEnumerator PackageReloadOverridesPlaceholderAndReadsOriginalUpgradeCaches()
    {
        yield return TestSceneLoader.LoadAsync("Forest");yield return null;
        var cat=Cat.instance;var bridge=cat.GetComponent<ForestCombatAcceptance>();bridge.enabled=false;
        Assert.That(bridge.LoadPackageEquipment,Is.True);Assert.That(bridge.EnableSingleAttacks,Is.True);
        Assert.That(cat.GunNum,Is.Zero);Assert.That(cat._gunInfo.type,Is.EqualTo(GunType.SINGLE));
        Assert.That(cat.Damage.Value.CompareTo(new DecimalAmount(100)),Is.Zero);
        Assert.That(cat.CriDmg.Value.CompareTo(new DecimalAmount(125)),Is.Zero);
        Assert.That(cat.CriPer,Is.Zero);Assert.That(cat.moveSpeed,Is.EqualTo(15));Assert.That(cat.AtkCool_Max,Is.EqualTo(.6f).Within(.00001));
        var data=EquipmentCatalogue.Load();
        Assert.That(data.ApplyPackageForest(cat,powerLevel:1,speedLevel:1),Is.True);
        Assert.That(cat.Damage.Value.CompareTo(new DecimalAmount(108)),Is.Zero);
        Assert.That(cat.CriDmg.Value.CompareTo(new DecimalAmount(135)),Is.Zero);
        Assert.That(cat.AtkCool_Max,Is.EqualTo(.55555556f).Within(.00001));
        data.Selected_items=new[]{-1,1,-1};
        Assert.That(data.ApplyPackageForest(cat),Is.True);Assert.That(cat.GunNum,Is.EqualTo(1));
        Assert.That(cat.Damage.Value.CompareTo(new DecimalAmount(80)),Is.Zero);
        Assert.That(cat.CriDmg.Value.CompareTo(new DecimalAmount(100)),Is.Zero);
        Assert.That(cat.Shoot_trans,Is.SameAs(cat.Gun_list[1].Shoot_trans));Assert.That(cat.Shoot_particle,Is.SameAs(cat.Gun_list[1].Shoot_particle));
        Assert.That(cat.Gun_list.Count(g=>g.gameObject.activeSelf),Is.EqualTo(1));
        data.Selected_items=new[]{-1,-1,-1};
        Assert.That(data.ApplyPackageForest(cat),Is.False);Assert.That(cat.GunNum,Is.EqualTo(1),"Empty result must not manufacture a gun or mutate previous state");
    }

    [UnityTest]
    public IEnumerator DefaultPackageEquipmentShootsAndKillsOriginalTreeWithoutInjectedPlayerStats()
    {
        yield return TestSceneLoader.LoadAsync("Forest");yield return null;
        var cat=Cat.instance;
        cat.GetComponent<ForestMovementAcceptance>().enabled=false;
        var tree=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).First(t=>t!=Tree_manager.instance.Boss_tree &&
            t.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0);
        foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(other!=tree) other.gameObject.SetActive(false);
        // Target position alone is a fixture; tree health and player equipment,
        // damage, cooldown, chance and spread remain package-derived.
        tree.transform.position=new Vector3(cat.Ray_trans.position.x,0,cat.Ray_trans.position.z+12);
        Assert.That(tree.enemy.Health_Max.Value.CompareTo(new DecimalAmount(250)),Is.Zero);
        Physics.SyncTransforms();cat.ClearNearObj();
        int count=Tree_manager.instance.TreeCount_Now,hits=0;bool critical=false;
        System.Action<Vector3,string,bool> listener=(p,text,isCritical)=>{hits++;critical|=isCritical;Assert.That(text,Is.EqualTo("100"));};
        ForestDamageDispatch.DamageTextPending+=listener;
        try
        {
            for(int i=0;i<240 && tree.gameObject.activeSelf;i++) yield return new WaitForFixedUpdate();
            Assert.That(tree.gameObject.activeSelf,Is.False);Assert.That(hits,Is.EqualTo(3));Assert.That(critical,Is.False);
            Assert.That(Tree_manager.instance.TreeCount_Now,Is.EqualTo(count-1));
            Assert.That(cat.GunNum,Is.Zero);Assert.That(cat.Damage_str,Is.EqualTo("100"));
        }
        finally {ForestDamageDispatch.DamageTextPending-=listener;}
    }
}
