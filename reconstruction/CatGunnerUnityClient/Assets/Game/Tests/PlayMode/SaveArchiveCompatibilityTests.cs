using System;
using System.IO;
using System.Text;
using CatGunner.Runtime;
using NUnit.Framework;

[Category("SceneArchitecture")]
public sealed class SaveArchiveCompatibilityTests
{
    static string LegacyEncoded => Convert.ToBase64String(Encoding.UTF8.GetBytes(
        "{\"Recovery_SimulatedPurchases\":[{\"productId\":\"local.test\",\"count\":2}],\"Recovery_WeeklyVipFirstOpened\":true}"));

    [Test] public void FormalFieldsReadLegacyLedgerAndRetainWireKeys()
    {
        var state=SaveArchive.Decode(LegacyEncoded);
        Assert.That(state.SimulatedPurchases.Count,Is.EqualTo(1));
        Assert.That(state.SimulatedPurchases[0].productId,Is.EqualTo("local.test"));
        Assert.That(state.SimulatedPurchases[0].count,Is.EqualTo(2));Assert.That(state.WeeklyVipFirstOpened,Is.True);
        string json=Encoding.UTF8.GetString(Convert.FromBase64String(SaveArchive.Encode(state)));
        Assert.That(json,Does.Contain("\"Recovery_SimulatedPurchases\":"));
        Assert.That(json,Does.Contain("\"Recovery_WeeklyVipFirstOpened\":true"));
        Assert.That(json,Does.Not.Contain("\"SimulatedPurchases\":"));
        var again=SaveArchive.Decode(SaveArchive.Encode(state));
        Assert.That(again.SimulatedPurchases[0].count,Is.EqualTo(2));Assert.That(again.WeeklyVipFirstOpened,Is.True);
    }
    [Test] public void BackupFallbackReadsLegacyLedgerAfterMainFileDamage()
    {
        string folder=Path.Combine(Path.GetTempPath(),"SaveCompatibility-"+Guid.NewGuid().ToString("N"));
        try
        {
            var archive=new SaveArchive(folder);archive.AllowSave();archive.SaveEncoded(LegacyEncoded);
            var state=SaveArchive.Decode(LegacyEncoded);state.SimulatedPurchases[0].count=3;archive.Save(state);
            File.WriteAllText(archive.MainPath,"corrupted fixture");
            var backup=archive.Load();Assert.That(backup.SimulatedPurchases[0].count,Is.EqualTo(2));
            Assert.That(backup.WeeklyVipFirstOpened,Is.True);
        }
        finally{if(Directory.Exists(folder))Directory.Delete(folder,true);}
    }
}
