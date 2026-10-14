using System;
using System.IO;
using System.Text;
using CatGunner.Runtime;
using NUnit.Framework;

public sealed class SaveTests
{
    [Test]
    public void LegacyClientEmptyProgressionArraysInitializeWithoutChangingWalletGearOrStage()
    {
        var gear=EquipmentCatalogue.Load();
        var data=new SaveData {Money=new CurrencyAmount{s_digits="143200000000",s_exponent=-8},Stage_Now=2,Level_Now=1,
            Selected_items=new[]{5,-1,-1},Gun_Collect=(bool[])gear.Gun_Collect.Clone(),Pet_Collect=Array.Empty<bool>(),
            Pet_Selected_items=Array.Empty<int>(),Owned_Pet_list=Array.Empty<int>(),Rebirth_Upgrade_Lv=Array.Empty<int>()};
        var legacy=SaveArchive.Decode(SaveArchive.Encode(data));
        var catalogue=ProgressionCatalogue.Load();var pets=new PetInventory(legacy,catalogue);var rebirth=new RebirthProgression(legacy,catalogue);
        Assert.That(legacy.Pet_Collect.Length,Is.EqualTo(10));Assert.That(legacy.Owned_Pet_list,Is.All.EqualTo(-1));Assert.That(legacy.Pet_Selected_items,Is.All.EqualTo(-1));
        Assert.That(legacy.Rebirth_Upgrade_Lv,Is.EqualTo(new int[3]));Assert.That(legacy.Money.Value.CompareTo(data.Money.Value),Is.Zero);
        Assert.That(legacy.Selected_items,Is.EqualTo(data.Selected_items));Assert.That((legacy.Stage_Now,legacy.Level_Now),Is.EqualTo((2,1)));Assert.That(legacy.Dia,Is.EqualTo(data.Dia));
        legacy.Pet_Collect=new bool[11];Assert.Throws<ArgumentException>(()=>new PetInventory(legacy,catalogue));
        legacy.Rebirth_Upgrade_Lv=new[]{1,2};Assert.Throws<ArgumentException>(()=>new RebirthProgression(legacy,catalogue));
    }

    [Test]
    public void OriginalSaveCodecRetainsLargeValuesNestedContentAndUnicode()
    {
        var data=new SaveData {
            Money=new CurrencyAmount {s_digits="375",s_exponent=2203},
            Upgrade_Lv=new[]{9999,10000,3},
            PlayFab_DisplayName="森林小猫",
            Relics=new[]{new RelicSave{Lv=7,Count=9,is_Unlock=true}},
            Adventure_Maps=new[]{new AdventureMapTypeSave{maps=new[]{new AdventureMapSave{is_Enter=true,Enter_dateTime="2026-10-08T00:00:00Z",Dispatched_Pet_Slots=new[]{1,4}}}}}
        };
        var encoded=SaveArchive.Encode(data);
        string json=Encoding.UTF8.GetString(Convert.FromBase64String(encoded));
        Assert.That(json,Does.Contain("森林小猫"));
        Assert.That(json,Does.Contain("\"s_exponent\":2203"));
        var result=SaveArchive.Decode(encoded);
        Assert.That(result.Money.Value.ToString(),Is.EqualTo("375e2203"));
        Assert.That(result.Upgrade_Lv,Is.EqualTo(data.Upgrade_Lv));
        Assert.That(result.PlayFab_DisplayName,Is.EqualTo(data.PlayFab_DisplayName));
        Assert.That(result.Relics[0].Lv,Is.EqualTo(7));
        Assert.That(result.Adventure_Maps[0].maps[0].Dispatched_Pet_Slots,Is.EqualTo(new[]{1,4}));
        Assert.That(result.AD_Gun_SlotIndex,Is.EqualTo(-1));
        Assert.That(result.RaidMission_Season_Index,Is.EqualTo(-1));
    }

    [Test]
    public void OriginalSaveGateBackupRotationAndCorruptMainFallback()
    {
        string folder=Path.Combine(Path.GetTempPath(),"catgunner-save-verification-"+Guid.NewGuid().ToString("N"));
        var archive=new SaveArchive(folder);
        int errors=0;
        archive.OnReadError=_=>errors++;
        try
        {
            Assert.That(archive.IsSaveAllowed,Is.False);
            archive.Save(new SaveData());
            Assert.That(Directory.Exists(folder),Is.False,"Native gate prevents premature first save");
            Assert.That(archive.Load(),Is.Null);
            archive.AllowSave();
            archive.Save(new SaveData{Stage_Now=1});
            string first=File.ReadAllText(archive.MainPath);
            Assert.That(File.Exists(archive.BackupPath),Is.False);
            archive.Save(new SaveData{Stage_Now=2});
            Assert.That(File.ReadAllText(archive.BackupPath),Is.EqualTo(first));
            Assert.That(archive.Load().Stage_Now,Is.EqualTo(2));
            archive.Save(new SaveData{Stage_Now=3});
            Assert.That(archive.DecodeBackupStage(),Is.EqualTo(2));
            Assert.That(File.Exists(archive.TemporaryPath),Is.False);
            File.WriteAllText(archive.MainPath,"corrupt-base64!");
            Assert.That(archive.Load().Stage_Now,Is.EqualTo(2));
            Assert.That(errors,Is.EqualTo(1));
            archive.DisallowSave();
            archive.Save(new SaveData{Stage_Now=4});
            Assert.That(File.ReadAllText(archive.MainPath),Is.EqualTo("corrupt-base64!"));
            File.WriteAllText(archive.BackupPath,Convert.ToBase64String(Encoding.UTF8.GetBytes("{malformed json")));
            Assert.That(archive.Load(),Is.Null);
            Assert.That(errors,Is.EqualTo(3));
        }
        finally { if(Directory.Exists(folder)) Directory.Delete(folder,true); }
    }
}

internal static class SaveVerificationExtensions
{
    internal static int DecodeBackupStage(this SaveArchive archive) => SaveArchive.Decode(File.ReadAllText(archive.BackupPath)).Stage_Now;
}
