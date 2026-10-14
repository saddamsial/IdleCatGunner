using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;
public sealed class StarTests
{
    private static void Independent(Scene scene,LoadSceneMode mode)
    {
        if(scene.name!="GameClient")return;
        var c=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();c.Persist=false;
        foreach(var cat in c.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;
    }
    private static void Click(Button button)
    {
        Assert.That(button.gameObject.activeInHierarchy&&button.interactable,Is.True,button.name);Canvas.ForceUpdateCanvases();var rect=(RectTransform)button.transform;
        var data=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center))};
        var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(data,hits);Assert.That(hits.Count,Is.GreaterThan(0));
        Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(button),string.Join(" | ",hits.Take(8).Select(h=>h.gameObject.name+"/"+h.gameObject.transform.parent.name)));
        ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,data,ExecuteEvents.pointerClickHandler);
    }
    private static Button UpgradeButton(StarUpgrade_popup p)=>p.Upgrade_Btn_img.GetComponent<Button>();
    [Test] public void NativeTwentyLevelTablesKeepUnroundedAccumulatorAndExactInitializerRates()
    {
        long[] bonuses={0,50,140,310,650,1300,3000,6900,16000,43000,120000,350000,1100000,3800000,13000000,53000000,220000000,970000000,4600000000,23000000000,120000000000};
        for(int i=0;i<=20;i++){Assert.That(StarRules.BonusPct(i).PlainInteger(),Is.EqualTo(bonuses[i].ToString()));Assert.That(StarRules.DamageApply(new DecimalAmount(100),i).PlainInteger(),Is.EqualTo((100+bonuses[i]).ToString()));}
        Assert.That(StarRules.BonusPct(21).PlainInteger(),Is.EqualTo(bonuses[20].ToString()));
        Assert.That(StarRules.Catalogue.SuccessRates,Is.EqualTo(new[]{100,90,80,70,60,50,40,30,20,10,10,10,10,10,5,5,5,1,1,1}));
        for(int i=0;i<20;i++)Assert.That(StarRules.Cost(i),Is.EqualTo((i+1)*50));Assert.That(StarRules.Cost(20),Is.Zero);
        Assert.That(StarRules.Rate(16,100),Is.EqualTo(5));for(int failed=0;failed<7;failed++)Assert.That(StarRules.Rate(17,failed),Is.EqualTo(Math.Min(5,1+failed)));
        Assert.That(StarRules.Catalogue.SlotUpgrade[3],Is.EqualTo("强化槽位{0}"));
    }
    [Test] public void NativeGatesChargeBeforeRollAndFailedPityNeverLosesStarsOrSpendsOtherWallets()
    {
        var s=new SaveData{Stage_Value_Max=389,StarGem=5000,Dia=71,PetCoin=42,Selected_items=new[]{0,-1,-1}};
        int calls=0,roll=99;var m=new StarProgression(s,(min,max)=>{Assert.That((min,max),Is.EqualTo((0,100)));calls++;return roll;});
        Assert.That(m.Upgrade(0),Is.EqualTo(StarUpgrade_manager.UpgradeResult.Locked));Assert.That(calls,Is.Zero);s.Stage_Value_Max=390;
        Assert.That(m.Upgrade(-1),Is.EqualTo(StarUpgrade_manager.UpgradeResult.Locked));Assert.That(m.Upgrade(3),Is.EqualTo(StarUpgrade_manager.UpgradeResult.Locked));
        int seenWallet=-1;m.GemChanged+=()=>seenWallet=s.StarGem;
        Assert.That(m.Upgrade(0),Is.EqualTo(StarUpgrade_manager.UpgradeResult.Success));Assert.That((s.Star_Slot_Lv[0],seenWallet,s.StarGem),Is.EqualTo((1,4950,4950)));
        roll=90;Assert.That(m.Upgrade(0),Is.EqualTo(StarUpgrade_manager.UpgradeResult.Fail));Assert.That((s.Star_Slot_Lv[0],s.Star_Slot_FailCount[0],s.StarGem),Is.EqualTo((1,1,4850)));
        s.Star_Slot_Lv[1]=17;roll=1;Assert.That(m.Upgrade(1),Is.EqualTo(StarUpgrade_manager.UpgradeResult.Fail));Assert.That(m.Rate(1),Is.EqualTo(2));
        Assert.That(m.Upgrade(1),Is.EqualTo(StarUpgrade_manager.UpgradeResult.Success));Assert.That((s.Star_Slot_Lv[1],s.Star_Slot_FailCount[1]),Is.EqualTo((18,0)));
        s.Star_Slot_Lv[2]=20;int before=s.StarGem,counter=calls;Assert.That(m.Upgrade(2),Is.EqualTo(StarUpgrade_manager.UpgradeResult.MaxLv));Assert.That((s.StarGem,calls),Is.EqualTo((before,counter)));
        s.StarGem=99;Assert.That(m.Upgrade(0),Is.EqualTo(StarUpgrade_manager.UpgradeResult.NotEnoughGem));Assert.That((s.StarGem,calls),Is.EqualTo((99,counter)));Assert.That((s.Dia,s.PetCoin),Is.EqualTo((71,42)));
        var corrupt=new SaveData{StarGem=123,Star_Slot_Lv=new[]{1,2}};Assert.Throws<InvalidOperationException>(()=>StarRules.ValidateState(corrupt));Assert.That(corrupt.Star_Slot_Lv,Is.EqualTo(new[]{1,2}));Assert.That(corrupt.StarGem,Is.EqualTo(123));
        var old=new SaveData{StarGem=77,Star_Slot_Lv=Array.Empty<int>(),Star_Slot_FailCount=Array.Empty<int>()};StarRules.ValidateState(old);Assert.That(old.Star_Slot_Lv,Is.EqualTo(new int[3]));Assert.That(old.StarGem,Is.EqualTo(77));
    }
    [UnityTest] public IEnumerator OriginalSlotPopupUsesRealRaycastSuccessFailureAlertAndMaximumPresentation()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;var m=c.StarUpgrades;Assert.That(m,Is.Not.Null);var p=m.popup;
            c.Forest.Stage_Value_Max=389;c.Guns.ReloadGunUI();Assert.That(c.Guns.Gun_Slot_List[0].StarUpgrade_obj.activeSelf,Is.False);
            c.Forest.Stage_Value_Max=390;c.State.StarGem=200;m.RandomProvider=(min,max)=>99;c.Guns.ReloadGunUI();
            Click(UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="Gun_Btn"));yield return new WaitForSeconds(.4f);
            Click(c.Guns.Gun_Slot_List[0].StarUpgrade_obj.GetComponent<Button>());yield return new WaitForSeconds(.4f);
            Assert.That(p.gameObject.activeInHierarchy,Is.True);Assert.That(p.SlotNum_txt.font.HasCharacters(p.SlotNum_txt.text,out uint[] missingTitle,true,false),Is.True,"Original locale title glyphs");Assert.That(p.SlotNum_txt.fontSharedMaterial.shader.name,Is.EqualTo("TextMeshPro/Distance Field"));Assert.That(p.UpgradePrice_txt.spriteAsset.material.shader.name,Is.EqualTo("TextMeshPro/Sprite"));Assert.That(p.Percent_txt.text,Is.EqualTo("100%"));Assert.That(p.DamageValue_txt_After.text,Is.EqualTo("150"));
            Click(UpgradeButton(p));Assert.That(p.LastResult,Is.EqualTo(StarUpgrade_manager.UpgradeResult.Success));Assert.That(c.State.StarGem,Is.EqualTo(150));Assert.That(c.Hero.Damage_str,Is.EqualTo("150"));
            Assert.That(p.success_particle.PlayCount,Is.EqualTo(1));Assert.That(p.FeedbackAlert.txt.text,Is.EqualTo(StarRules.Catalogue.Text(StarRules.Catalogue.Success)));
            yield return new WaitForSeconds(.5f);Assert.That(p.success_particle.Playing,Is.False);
            string visual=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual"));Directory.CreateDirectory(visual);
            ScreenCapture.CaptureScreenshot(Path.Combine(visual,"star-upgrade-test-gpu.png"));yield return new WaitForSeconds(.2f);
            Click(UpgradeButton(p));Assert.That(p.LastResult,Is.EqualTo(StarUpgrade_manager.UpgradeResult.Fail));Assert.That((c.State.StarGem,c.State.Star_Slot_Lv[0],c.State.Star_Slot_FailCount[0]),Is.EqualTo((50,1,1)));
            Assert.That(p.FeedbackAlert.txt.text,Is.EqualTo(StarRules.Catalogue.Text(StarRules.Catalogue.Fail)));
            Click(UpgradeButton(p));Assert.That(p.LastResult,Is.EqualTo(StarUpgrade_manager.UpgradeResult.NotEnoughGem));Assert.That(c.State.StarGem,Is.EqualTo(50));
            c.State.Star_Slot_Lv[0]=20;p.Reload();Assert.That(new[]{p.StarLv_txt_After.text,p.StarValue_txt_After.text,p.Percent_txt.text,p.UpgradePrice_txt.text},Is.EqualTo(new[]{"-","-","-","-"}));
            Click(UpgradeButton(p));Assert.That(p.LastResult,Is.EqualTo(StarUpgrade_manager.UpgradeResult.MaxLv));Assert.That(c.State.StarGem,Is.EqualTo(50));
            Click(p.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));Assert.That(p.gameObject.activeSelf,Is.False);
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return TestSceneLoader.LoadAsync("TargetPreview");
    }
    [UnityTest] public IEnumerator IndependentSaveResumeKeepsSlotIdentityAcrossSwapRebirthAndRaid()
    {
        string folder=Path.Combine(Path.GetTempPath(),"catgunner-star-profile-"+Guid.NewGuid().ToString("N"));
        UnityEngine.Events.UnityAction<Scene,LoadSceneMode> saved=(scene,mode)=>{
            Independent(scene,mode);if(scene.name=="GameClient"){var c=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();c.Persist=true;c.SaveFolderOverride=folder;}};
        SceneManager.sceneLoaded+=saved;
        try
        {
            yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;var m=c.StarUpgrades;
            c.Forest.Stage_Value_Max=390;c.State.StarGem=200;m.RandomProvider=(min,max)=>99;
            Assert.That(m.Upgrade(0),Is.EqualTo(StarUpgrade_manager.UpgradeResult.Success));Assert.That(m.Upgrade(0),Is.EqualTo(StarUpgrade_manager.UpgradeResult.Fail));c.SaveNow();
            Assert.That(File.Exists(Path.Combine(folder,"NoSaveFile.json")),Is.True);
            yield return TestSceneLoader.LoadAsync("TargetPreview");yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;c=GameClient.Instance;m=c.StarUpgrades;
            Assert.That(c.SaveFolderOverride,Is.EqualTo(folder));Assert.That((c.State.StarGem,m.Lv_return(0),c.State.Star_Slot_FailCount[0]),Is.EqualTo((50,1,1)));Assert.That(c.Hero.Damage_str,Is.EqualTo("150"));
            Assert.That(c.Inventory.SwapSelected(0,1),Is.True);Assert.That(c.State.Star_Slot_Lv,Is.EqualTo(new[]{1,0,0}));Assert.That(c.Hero.SlotNum,Is.Zero);Assert.That(c.Hero.Damage_str,Is.EqualTo("150"),"Native compact Cat position, not the moved gun slot identity");
            m.Open_Popup(0,false);Assert.That(m.popup.Damage_Value_obj.activeSelf,Is.False);m.popup.Close();Assert.That(c.Inventory.SwapSelected(0,1),Is.True);
            c.Forest.Stage_Now=2;Assert.That(c.RebirthNow(),Is.True);Assert.That(c.State.Star_Slot_Lv,Is.EqualTo(new[]{1,0,0}));Assert.That(c.State.Star_Slot_FailCount[0],Is.EqualTo(1));Assert.That(c.State.StarGem,Is.EqualTo(50));
            var raid=c.RaidMode;raid.Now=()=>new DateTime(2024,1,1);c.State.Owned_Gun_list[0]=30;raid.Panel_Open();raid.Gun_UnSelect(1);
            raid.raidStart_ui.Gun_Slot_list[0].onClick_StarUpgrade();Assert.That(m.popup.IsRaid,Is.True);
            var expected=StarRules.DamageApply(raid.Raid_Damage_return(30).Value,1);Assert.That(m.popup.DamageValue_txt_Now.text,Is.EqualTo(expected.PlainInteger()));m.popup.Close();
            raid.Game_Enter_Normal();yield return new WaitForSeconds(2.15f);Assert.That(c.Mode,Is.EqualTo(5));Assert.That(c.Hero.Damage.Value.CompareTo(expected),Is.Zero);
            raid.Game_Exit();yield return new WaitForSeconds(1.85f);Assert.That(c.Mode,Is.Zero);Assert.That(c.Hero.Damage_str,Is.EqualTo("150"));Assert.That(c.State.StarGem,Is.EqualTo(50));
            c.Persist=false;
        }
        finally{SceneManager.sceneLoaded-=saved;}
        yield return TestSceneLoader.LoadAsync("TargetPreview");Directory.Delete(folder,true);
    }
    [Serializable] private sealed class CombatObservation {public int hits;public string damage;public bool critical;public int starLevel;public string fixture;}
    [UnityTest] public IEnumerator UpgradedOriginalGunZeroKillsOriginalTreeWithTwoNaturalProjectiles()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;c.Forest.Stage_Value_Max=390;c.State.StarGem=50;
            Assert.That(c.StarUpgrades.Upgrade(0),Is.EqualTo(StarUpgrade_manager.UpgradeResult.Success));Assert.That(c.State.StarGem,Is.Zero);Assert.That(c.Hero.Damage_str,Is.EqualTo("150"));
            var trees=c.Forest.Map_obj.GetComponentsInChildren<Tree>(false);var tree=trees.First(t=>t!=c.Forest.Boss_tree&&t.enemy.Health_Max.Value.CompareTo(new DecimalAmount(250))==0);
            foreach(var other in trees)if(other!=tree)other.gameObject.SetActive(false);
            tree.transform.position=c.Hero.transform.position+new Vector3(0,0,12);Physics.SyncTransforms();c.Hero.ClearNearObj();c.Hero.ClearAutoTarget();
            int hits=0;bool critical=false;Action<Vector3,string,bool> listener=(point,text,cri)=>{hits++;critical|=cri;Assert.That(text,Is.EqualTo("150"));};
            ForestDamageDispatch.DamageTextPending+=listener;
            try
            {
                var combat=c.Hero.GetComponent<ForestCombatAcceptance>();Assert.That(combat.LoadPackageEquipment,Is.False);combat.enabled=true;
                for(int i=0;i<240&&tree.gameObject.activeSelf;i++)yield return new WaitForFixedUpdate();
                Assert.That(tree.gameObject.activeSelf,Is.False);Assert.That(hits,Is.EqualTo(2));Assert.That(critical,Is.False);
                string report=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/star-projectile-observation.json"));
                File.WriteAllText(report,JsonUtility.ToJson(new CombatObservation{hits=hits,damage=c.Hero.Damage_str,critical=critical,starLevel=1,fixture="Independent earned first-star upgrade using50fixture gems; original Gun0 and250HP tree. Target placement only; no direct damage/health/time injection. Actual projectile dispatch and zero joystick input."},true));
            }
            finally{ForestDamageDispatch.DamageTextPending-=listener;}
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return TestSceneLoader.LoadAsync("TargetPreview");
    }
}
