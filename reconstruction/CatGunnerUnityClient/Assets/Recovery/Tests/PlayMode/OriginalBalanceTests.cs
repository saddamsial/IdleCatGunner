using System;
using System.Numerics;
using CatGunner.Recovery;
using NUnit.Framework;

public sealed class OriginalBalanceTests
{
    [Test]
    public void OriginalFullCachesRetainNativeBoundaryValuesAndUnboundedExponents()
    {
        var c=OriginalBalanceCatalogue.Load();
        Assert.That(c.Price(0).CompareTo(new DecimalAmount(50)),Is.Zero);
        Assert.That(c.Price(1).CompareTo(new DecimalAmount(68)),Is.Zero,"Original cache truncation is not naive 50*1.38");
        Assert.That(c.Price(5000).ToString(),Is.EqualTo("420e698"));
        Assert.That(c.Price(5001).ToString(),Is.EqualTo("840e698"));
        Assert.That(c.Price(10000).ToString(),Is.EqualTo("375e2203"));
        Assert.That(c.Power(0).CompareTo(new DecimalAmount(100)),Is.Zero);
        Assert.That(c.Power(10000).ToString(),Is.EqualTo("122e326"));
        for(int i=0;i<10001;i++)
        {
            Assert.That(c.Speed(i),Is.EqualTo(100+8*i));
            Assert.That(c.Power(i).CompareTo(c.Money(i)),Is.Zero,"Identical original growth caches at "+i);
            if(i==0) continue;
            Assert.That(c.Price(i).CompareTo(c.Price(i-1)),Is.GreaterThan(0));
            Assert.That(c.Power(i).CompareTo(c.Power(i-1)),Is.GreaterThan(0));
        }
        Assert.That(c.Stage_Health_Balance[0].Value.CompareTo(new DecimalAmount(250)),Is.Zero);
        Assert.That(c.Stage_Money_Balance[0].Value.CompareTo(new DecimalAmount(20)),Is.Zero);
    }

    [Test]
    public void UpgradeTransactionPreservesRejectedStateAndClosesLevel10000Boundary()
    {
        var c=OriginalBalanceCatalogue.Load();
        int[] levels={0,0,0};
        var wallet=new DecimalAmount(49);
        Assert.That(OriginalUpgradeTransaction.TryUpgrade(c,levels,0,ref wallet),Is.False);
        Assert.That(wallet.CompareTo(new DecimalAmount(49)),Is.Zero);
        Assert.That(levels[0],Is.Zero);
        wallet=new DecimalAmount(50);
        Assert.That(OriginalUpgradeTransaction.TryUpgrade(c,levels,0,ref wallet),Is.True);
        Assert.That(wallet.CompareTo(new DecimalAmount(0)),Is.Zero);
        Assert.That(levels,Is.EqualTo(new[]{1,0,0}));
        levels[2]=9999; wallet=c.Price(9999);
        Assert.That(OriginalUpgradeTransaction.TryUpgrade(c,levels,2,ref wallet),Is.True);
        Assert.That(wallet.CompareTo(new DecimalAmount(0)),Is.Zero);
        Assert.That(levels[2],Is.EqualTo(10000));
        wallet=c.Price(10000);
        var unchanged=wallet;
        Assert.That(OriginalUpgradeTransaction.TryUpgrade(c,levels,2,ref wallet),Is.False);
        Assert.That(wallet.CompareTo(unchanged),Is.Zero);
        Assert.Throws<IndexOutOfRangeException>(() => OriginalUpgradeTransaction.TryUpgrade(c,levels,3,ref wallet));
    }

    [Test]
    public void NativeAutoUpgradePrioritizesAffordableMinimumAndStableTies()
    {
        var c=OriginalBalanceCatalogue.Load();
        int[] levels={0,0,0};
        var wallet=new DecimalAmount(118);
        Assert.That(OriginalUpgradeTransaction.TryAutoUpgradeAll(c,levels,ref wallet),Is.True);
        Assert.That(levels,Is.EqualTo(new[]{1,1,0}),"Lower slot wins equal-level ties; do not exhaust slot zero first");
        Assert.That(wallet.CompareTo(new DecimalAmount(18)),Is.Zero);
        Assert.That(OriginalUpgradeTransaction.TryAutoUpgradeAll(c,levels,ref wallet),Is.False);
        levels=new[]{10000,1,1}; wallet=new DecimalAmount(68);
        Assert.That(OriginalUpgradeTransaction.TryAutoUpgradeAll(c,levels,ref wallet),Is.True);
        Assert.That(levels,Is.EqualTo(new[]{10000,2,1}));
        Assert.That(wallet.CompareTo(new DecimalAmount(0)),Is.Zero);
        levels=new[]{10000,10000,10000}; wallet=c.Price(10000);
        var unchanged=wallet;
        Assert.That(OriginalUpgradeTransaction.TryAutoUpgradeAll(c,levels,ref wallet),Is.False);
        Assert.That(wallet.CompareTo(unchanged),Is.Zero);
    }
}
