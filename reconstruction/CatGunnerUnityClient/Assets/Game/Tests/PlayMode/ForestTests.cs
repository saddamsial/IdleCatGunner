using CatGunner.Runtime;
using NUnit.Framework;
using System.Collections;
using System.Linq;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class ForestTests
{
    [UnityTest]
    public IEnumerator OriginalScenePoolSpawnsFiveWavesAndAllTenMapSkins()
    {
        var randomState=Random.state;
        yield return TestSceneLoader.LoadAsync("Forest");
        yield return null;
        Cat.instance.GetComponent<ForestCombatAcceptance>().enabled=false;
        try
        {
            var manager=Tree_manager.instance;
            Assert.That(manager.Tree_Grid_list.Length,Is.EqualTo(5));
            Assert.That(Object.FindObjectsByType<Tree>(FindObjectsInactive.Include).Length,Is.EqualTo(501));
            Assert.That(manager.Stage_Health_Balance.Length,Is.EqualTo(5000));
            Assert.That(manager.Stage_Money_Balance.Length,Is.EqualTo(5000));
            foreach(var grid in manager.Tree_Grid_list)
                Assert.That(grid.Tree_list.Length,Is.EqualTo(100));
            for(int wave=0;wave<5;wave++)
            {
                manager.Stage_Now=0;manager.Level_Now=wave;manager.Map_Batch();
                Assert.That(Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).Length,
                    Is.EqualTo(new[]{30,60,90,120,151}[wave]));
                Assert.That(manager.TreeCount_Now,Is.EqualTo(manager.TreeCount_Max));
                Assert.That(manager.LastBorder_trans.localPosition.z,Is.EqualTo(110+50*wave));
                foreach(var tree in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude))
                {
                    Assert.That(tree.enemy.Slider,Is.Not.Null);
                    Assert.That(tree.enemy.Slider.gameObject.activeSelf,Is.False,"Spawn hides original health slider");
                    Assert.That(tree.spriteRenderer.sprite.texture,Is.Not.Null);
                    Assert.That(tree.enemy.Health_Now.Value.CompareTo(tree.enemy.Health_Max.Value),Is.Zero);
                    Assert.That(tree.enemy.is_Die,Is.False);
                    if(tree!=manager.Boss_tree)
                    {
                        Assert.That(tree.transform.localPosition.x,Is.InRange(-1.5f,46.5f));
                        Assert.That(tree.transform.localPosition.z,Is.InRange(-1.5f,46.5f));
                    }
                }
            }
            for(int stage=0;stage<10;stage++)
            {
                manager.Stage_Now=stage;manager.Level_Now=0;manager.Map_Batch();
                Assert.That(manager.Ground_SpriteRenderer.sprite,Is.SameAs(manager.Ground_sprite_list[stage]));
                foreach(var map in manager.Map_Grid_list)
                {
                    Assert.That(map.Border_Up[0].sprite,Is.SameAs(map.Border_Up_sprite_list[stage]));
                    Assert.That(map.Border_Down[1].sprite,Is.SameAs(map.Border_Down_sprite_list[stage]));
                    Assert.That(map.Upper_sprite.color,Is.EqualTo(map.Upper_sprite_Color_list[stage]));
                }
            }
            var skin=Object.FindObjectsByType<Component>(FindObjectsInactive.Include)
                .Single(c=>c.GetType().FullName=="UnityEngine.U2D.Animation.SpriteSkin");
            var bones=(Transform[])skin.GetType().GetProperty("boneTransforms").GetValue(skin);
            Assert.That(bones.Length,Is.EqualTo(9));
            Assert.That(bones.All(b=>b!=null),Is.True);
            var valid=skin.GetType().GetProperty("isValid",System.Reflection.BindingFlags.NonPublic|System.Reflection.BindingFlags.Instance);
            Assert.That((bool)valid.GetValue(skin),Is.True,"Original weights and bones produce a valid public SpriteSkin");
        }
        finally {Random.state=randomState;}
    }

    [UnityTest]
    public IEnumerator TreeDamageHonorsGamingGateLethalHitAndDuplicateDeath()
    {
        yield return TestSceneLoader.LoadAsync("Forest");
        yield return null;
        Cat.instance.GetComponent<ForestCombatAcceptance>().enabled=false;
        var manager=Tree_manager.instance;
        var trees=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude);
        var enemy=trees[0].enemy;
        var before=enemy.Health_Now.Value;
        var half=CurrencyAmount.FromValue(before*new DecimalAmount(5,-1));
        ForestRuntimeAcceptance.IsGaming=false;
        enemy.Damaged(half);
        Assert.That(enemy.Health_Now.Value.CompareTo(before),Is.Zero);
        Assert.That(manager.TreeCount_Now,Is.EqualTo(30));
        ForestRuntimeAcceptance.IsGaming=true;
        enemy.Damaged(half);
        Assert.That(enemy.is_Die,Is.False);
        Assert.That(enemy.Slider.gameObject.activeSelf,Is.True);
        Assert.That(enemy.Slider.Fill.GetComponent<SpriteRenderer>().color.r,Is.EqualTo(.5f).Within(.00001f));
        int drops=0,completed=0;
        enemy.MoneyDropped+=(money,position)=>{drops++;Assert.That(money.Value.CompareTo(enemy.Money.Value),Is.Zero);};
        manager.WaveCleared+=()=>completed++;
        enemy.Damaged(half);
        Assert.That(enemy.is_Die,Is.True);
        Assert.That(enemy.gameObject.activeSelf,Is.False);
        Assert.That(manager.TreeCount_Now,Is.EqualTo(29));
        enemy.Die();enemy.Damaged(half);
        Assert.That(drops,Is.EqualTo(1));
        Assert.That(manager.TreeCount_Now,Is.EqualTo(29));
        foreach(var tree in trees.Skip(1)) tree.enemy.Damaged(tree.enemy.Health_Now);
        Assert.That(manager.TreeCount_Now,Is.Zero);
        Assert.That(completed,Is.EqualTo(1));
        manager.Map_Batch();
        Assert.That(manager.TreeCount_Now,Is.EqualTo(30));
        Assert.That(enemy.is_Die,Is.False,"Pool respawn clears death guard");
        Assert.That(enemy.Slider.gameObject.activeSelf,Is.False);
    }
    [Test]
    public void NativeGridSelectionSpreadsThirtyTreesAndRespectsProbabilityBoundaries()
    {
        var selected=ForestRules.SelectSlots(100,30);
        int count=0;
        for(int i=0;i<selected.Length;i++) if(selected[i]) count++;
        Assert.That(count,Is.EqualTo(30));
        Assert.That(selected[0],Is.True);
        Assert.That(ForestRules.Morton(1,0),Is.EqualTo(1));
        Assert.That(ForestRules.Morton(0,1),Is.EqualTo(2));
        Assert.That(ForestRules.Morton(3,3),Is.EqualTo(15));
        Assert.That(ForestRules.Morton(9,9),Is.EqualTo(195));
        Assert.That(ForestRules.SelectSlots(100,500),Is.All.True);
        Assert.That(ForestRules.SelectSlots(100,-1),Is.All.False);
        Assert.That(ForestRules.SelectSlots(0,30),Is.Empty);
        Assert.That(ForestRules.DegreeAtRoll(0,99.999f),Is.EqualTo(1));
        Assert.That(ForestRules.DegreeAtRoll(0,100f),Is.Zero);
        Assert.That(ForestRules.DegreeAtRoll(1,49.999f),Is.Zero);
        Assert.That(ForestRules.DegreeAtRoll(1,50f),Is.EqualTo(1));
        Assert.That(ForestRules.DegreeAtRoll(4,14.999f),Is.EqualTo(1));
        Assert.That(ForestRules.DegreeAtRoll(4,15f),Is.EqualTo(2));
        Assert.That(ForestRules.DegreeAtRoll(4,60f),Is.EqualTo(2));
        Assert.That(ForestRules.DegreeAtRoll(4,99.999f),Is.EqualTo(2));
    }
    [Test]
    public void OriginalFiveWaveCycleAndBossTreeCountMatchNativePlanning()
    {
        int stage=0,level=0;
        int[] firstStageCounts={30,60,90,120,151};
        for(int wave=0;wave<5;wave++)
        {
            Assert.That(level,Is.EqualTo(wave));
            Assert.That(ForestRules.TreeCount(stage,level),Is.EqualTo(firstStageCounts[wave]));
            Assert.That(ForestRules.ActiveGridCount(level),Is.EqualTo(wave+1));
            Assert.That(ForestRules.HasBoss(level),Is.EqualTo(wave==4));
            Assert.That(ForestRules.LastBorderLocalZ(level),Is.EqualTo(110+50*wave));
            ForestRules.Advance(ref stage,ref level);
        }
        Assert.That(stage,Is.EqualTo(1));
        Assert.That(level,Is.Zero);
        Assert.That(ForestRules.TreeCount(stage,level),Is.EqualTo(40));
        Assert.That(ForestRules.TreesPerGrid(6),Is.EqualTo(90));
        Assert.That(ForestRules.TreesPerGrid(7),Is.EqualTo(100));
        Assert.That(ForestRules.TreeCount(5000,4),Is.EqualTo(501));
        Assert.That(ForestRules.GroundSpriteIndex(10),Is.Zero);
        Assert.That(ForestRules.GroundSpriteIndex(19),Is.EqualTo(9));
    }
}
