using System;
using System.Collections;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public sealed class ProgressionTests
{
    [UnityTest, Category("ContentNavigation")] public IEnumerator ActualNavigationRaycastsOpenPetMissionAndRebirthAboveJoystick()
    {
        void Configure(Scene scene,LoadSceneMode mode){if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().Persist=false;}
        SceneManager.sceneLoaded+=Configure;
        try
        {
            yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;ContentNavigationFixture.Unlock(c,Content_Type.Pet);yield return null;c.Hero.GetComponent<ForestCombatAcceptance>().enabled=false;
            var panels=new[]{c.PetUI.Pet_UI_obj,c.MissionUI.Mission_UI_Panel.gameObject,c.RebirthUI.rebirth_panel_ui.gameObject};
            var owners=new UnityEngine.Object[]{c.PetUI,c.MissionUI,c.RebirthUI};
            for(int i=0;i<owners.Length;i++)
            {
                var owner=owners[i];var button=i==1?UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(n=>b.onClick.GetPersistentTarget(n)==owner&&b.onClick.GetPersistentMethodName(n)=="Panel_Open")):c.ContentUnlock.Content_list.Single(info=>info.Type==(i==0?Content_Type.Pet:Content_Type.Rebirth)).Btn_obj.GetComponent<Button>();
                Canvas.ForceUpdateCanvases();var rect=(RectTransform)button.transform;var evt=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center))};
                var hits=new System.Collections.Generic.List<RaycastResult>();EventSystem.current.RaycastAll(evt,hits);Assert.That(hits.Count,Is.GreaterThan(0));
                Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(button),"Original navigation must be the actual top hit above the joystick: "+string.Join("/",hits[0].gameObject.GetComponentsInParent<Transform>().Reverse().Select(t=>t.name)));
                ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,evt,ExecuteEvents.pointerClickHandler);yield return null;Assert.That(panels[i].activeInHierarchy,Is.True);panels[i].SetActive(false);yield return null;
            }
        }
        finally {SceneManager.sceneLoaded-=Configure;}
        yield return TestSceneLoader.LoadAsync("TargetPreview");
    }
    private static SaveData Profile()=>new SaveData {Selected_items=new[]{0,-1,-1},Gun_Collect=new bool[65],Upgrade_Lv=new int[3],Star_Slot_Lv=new int[3]};
    [Test] public void PetDrawMergeEquipAndSavePreserveCostsSparseSlotsAndDuplicateBuffs()
    {
        var s=Profile();s.PetCoin=200;s.Dia=100;var pets=new PetInventory(s,ProgressionCatalogue.Load());
        Assert.That(pets.Draw(),Is.Zero);Assert.That(pets.Draw(),Is.Zero);Assert.That(s.PetCoin,Is.Zero);
        Assert.That(pets.Merge(0,1),Is.True);Assert.That(s.Owned_Pet_list.Take(2),Is.EqualTo(new[]{-1,1}));
        Assert.That(pets.Equip(1,0),Is.True);Assert.That(pets.Draw(true),Is.Zero);Assert.That(s.Dia,Is.Zero);Assert.That(s._useDia,Is.EqualTo(100));
        Assert.That(pets.Equip(0,1),Is.True);Assert.That(pets.MoveSpeedPercent,Is.EqualTo(106));Assert.That(pets.MoneyPercent.PlainInteger(),Is.EqualTo("108"));
        Assert.That(pets.Unequip(0),Is.True);Assert.That(pets.Unequip(1),Is.True);Assert.That(pets.MoveSpeedPercent,Is.EqualTo(100));
        var saved=SaveArchive.Decode(SaveArchive.Encode(s));Assert.That(saved.Owned_Pet_list,Is.EqualTo(s.Owned_Pet_list));Assert.That(saved.Pet_Collect[1],Is.True);
    }
    [Test] public void FullInventoryDispatchLocksStaleMergeAndMaximumPetCannotLoseItemsOrCurrency()
    {
        var s=Profile();s.PetCoin=100;s.Dia=100;var pets=new PetInventory(s,ProgressionCatalogue.Load());Array.Fill(s.Owned_Pet_list,0);
        Assert.That(pets.Draw(),Is.EqualTo(-1));Assert.That(pets.Draw(true),Is.EqualTo(-1));Assert.That(s.PetCoin,Is.EqualTo(100));Assert.That(s.Dia,Is.EqualTo(100));
        s.Owned_Pet_LockGroup[0]=2;Assert.That(pets.Merge(0,1),Is.False);Assert.That(pets.Equip(0,0),Is.False);Assert.That(pets.SwapOwned(0,1),Is.False);
        s.Owned_Pet_LockGroup[0]=-1;Assert.That(pets.Merge(0,1,3),Is.False);s.Owned_Pet_list[0]=s.Owned_Pet_list[1]=9;Assert.That(pets.Merge(0,1),Is.False);
        Assert.That(s.Owned_Pet_list.Take(2),Is.EqualTo(new[]{9,9}));
    }
    [Test] public void RebirthRejectsEarlyStageThenResetsForestAndKeepsEquipmentCollectionAndPermanentLevels()
    {
        var s=Profile();s.Stage_Now=2;s.Level_Now=0;s.Stage_Value_Max=41;s.Selected_items[1]=4;s.Upgrade_Lv=new[]{6,7,8};
        s.Money=s.Money_Accum=CurrencyAmount.FromValue(new DecimalAmount(1500));var model=new RebirthProgression(s,ProgressionCatalogue.Load());s.Rebirth_Upgrade_Lv[0]=2;
        Assert.That(model.ResetForest(1,4),Is.False);Assert.That(s.Upgrade_Lv[0],Is.EqualTo(6));
        Assert.That(RebirthProgression.Reward(2,0).ToString(),Is.EqualTo("31622e-2"));Assert.That(model.ResetForest(2,0),Is.True);
        Assert.That(s.Ruby.Value.ToString(),Is.EqualTo("31622e-2"));Assert.That(s.Rebirth_Count,Is.EqualTo(1));Assert.That(s.Upgrade_Lv,Is.EqualTo(new[]{0,0,0}));
        Assert.That(s.Money.Value.Coefficient.IsZero,Is.True);Assert.That(s.Money_Accum.Value.Coefficient.IsZero,Is.True);Assert.That((s.Stage_Now,s.Level_Now,s.Stage_Value_Max),Is.EqualTo((0,0,41)));
        Assert.That(s.Selected_items,Is.EqualTo(new[]{0,4,-1}));Assert.That(s.Rebirth_Upgrade_Lv[0],Is.EqualTo(2));
    }
    [Test] public void PermanentUpgradeChargesExactOriginalCachePriceAndHonoursLevelCap()
    {
        var s=Profile();var cat=ProgressionCatalogue.Load();var model=new RebirthProgression(s,cat);s.Ruby=cat.RebirthPrice[0];
        Assert.That(model.Upgrade(0),Is.True);Assert.That(s.Ruby.Value.Coefficient.IsZero,Is.True);Assert.That(s.Rebirth_Upgrade_Lv[0],Is.EqualTo(1));
        Assert.That(model.Percent(0).CompareTo(new DecimalAmount(100)),Is.GreaterThan(0));Assert.That(model.Upgrade(1),Is.False);
        s.Rebirth_Upgrade_Lv[2]=20000;Assert.That(model.Upgrade(2),Is.False);
    }
    [Test] public void DailyMissionClaimsOnceAndRollsCountersWithoutResettingSeasonRewards()
    {
        var s=Profile();var now=new DateTime(2026,10,9,10,0,0);var m=new Missions(s,ProgressionCatalogue.Load(),new GunInventory(s,(a,b)=>a),()=>now);
        Assert.That(m.StartSeason(),Is.True);Assert.That(m.StartSeason(),Is.False);int i=Array.FindIndex(m.Catalogue.Missions,x=>!x.is_VIP_Mission&&x.type==0);
        Assert.That(m.ClaimMission(i),Is.False);for(int n=0;n<m.Catalogue.Missions[i].MissionValue;n++)m.Increase(0);
        Assert.That(m.ClaimMission(i),Is.True);Assert.That(m.ClaimMission(i),Is.False);int exp=s.Mission_Reward_Exp;
        s.NormalReward_Get[0]=true;now=now.AddDays(1);m.ReloadDay();Assert.That(s.Mission_TreeCount_Value,Is.Zero);Assert.That(s.Mission_ExpGet[i],Is.False);
        Assert.That(s.Mission_Reward_Exp,Is.EqualTo(exp));Assert.That(s.NormalReward_Get[0],Is.True);now=now.AddMonths(2);Assert.That(m.ClaimMission(i),Is.False);
    }
    [Test] public void MissionRewardRequiresLevelOrderSpaceAndAdWhileHighestGunsUseVerifiedStaticArray()
    {
        var s=Profile();var now=new DateTime(2026,10,9);var gun=new GunInventory(s,(a,b)=>a);var m=new Missions(s,ProgressionCatalogue.Load(),gun,()=>now);m.StartSeason();
        Assert.That(m.ClaimReward(0),Is.False);s.Mission_Reward_Lv=4;Assert.That(m.ClaimReward(1),Is.False);
        s._getDia=41; // Preserve an existing counter prefix, then apply native Get_Dia*3.
        Assert.That(m.ClaimReward(0),Is.True);Assert.That(s.Dia,Is.EqualTo(600));Assert.That(s._getDia,Is.EqualTo(1841));
        Assert.That(m.ClaimReward(0),Is.False);Assert.That(s._getDia,Is.EqualTo(1841));
        Assert.That(m.ClaimReward(1),Is.True);Assert.That(s.Dia,Is.EqualTo(1220));Assert.That(s._getDia,Is.EqualTo(3701));
        Array.Fill(s.Owned_Gun_list,0);Assert.That(m.ClaimReward(2),Is.False);Assert.That(s.NormalReward_Get[2],Is.False);s.Owned_Gun_list[9]=-1;
        Assert.That(m.ClaimReward(2),Is.True);Assert.That(s.Owned_Gun_list[9],Is.EqualTo(16));Assert.That(m.ClaimReward(3),Is.False);Assert.That(s.NormalReward_Get[3],Is.False);
        Assert.That(m.Catalogue.HighTierGuns,Is.EqualTo(new[]{16,18,20,22,24,25,27,29}));Assert.That(m.Reward(23).value,Is.EqualTo(29));
    }
    [UnityTest] public IEnumerator OriginalPetPanelDragAndMissionAndRebirthButtonsUseOneIsolatedProfile()
    {
        void Configure(Scene scene,LoadSceneMode mode){if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().Persist=false;}
        SceneManager.sceneLoaded+=Configure;
        try
        {
            yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;c.Hero.GetComponent<ForestCombatAcceptance>().enabled=false;
            Assert.That(c.PetUI.newPet_ui,Is.Not.Null);Assert.That(c.MissionUI.Mission_Item_UI_List.Length,Is.EqualTo(23));
            c.PetUI.Pet_UI_obj.SetActive(true);yield return null;c.State.PetCoin=200;c.PetUI.DrawPet_Normal();c.PetUI.newPet_ui.gameObject.SetActive(false);c.PetUI.DrawPet_Normal();c.PetUI.newPet_ui.gameObject.SetActive(false);
            Assert.That(c.State.PetCoin,Is.Zero);var a=c.PetUI.gunItemList.ActiveItems[0];var b=c.PetUI.gunItemList.ActiveItems[1];int target=b.ListIndex;Canvas.ForceUpdateCanvases();
            var data=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,b.transform.position)};
            ExecuteEvents.Execute(a.gameObject,data,ExecuteEvents.beginDragHandler);ExecuteEvents.Execute(a.gameObject,data,ExecuteEvents.dragHandler);ExecuteEvents.Execute(a.gameObject,data,ExecuteEvents.endDragHandler);
            Assert.That(c.State.Owned_Pet_list[target],Is.EqualTo(1));c.PetUI.newPet_ui.gameObject.SetActive(false);a=c.PetUI.gunItemList.ActiveItems.Single();
            data.position=RectTransformUtility.WorldToScreenPoint(null,c.PetUI.Pet_Slot_List[0].transform.position);
            ExecuteEvents.Execute(a.gameObject,data,ExecuteEvents.beginDragHandler);ExecuteEvents.Execute(a.gameObject,data,ExecuteEvents.dragHandler);ExecuteEvents.Execute(a.gameObject,data,ExecuteEvents.endDragHandler);
            Assert.That(c.State.Pet_Selected_items[0],Is.EqualTo(1));Assert.That(c.PetFollowers.Pets[0].gameObject.activeSelf,Is.True);Assert.That(c.Pets.MoveSpeedPercent,Is.EqualTo(104));
            var start=c.PetFollowers.Pets[0].transform.position;c.Hero.Warp(start+new Vector3(20,0,0));yield return new WaitForSeconds(1);Assert.That(Vector3.Distance(start,c.PetFollowers.Pets[0].transform.position),Is.GreaterThan(.5f));
            c.MissionUI.NewSeason_Start();int index=Array.FindIndex(c.Missions.Catalogue.Missions,m=>!m.is_VIP_Mission&&m.type==0);c.State.Mission_TreeCount_Value=c.Missions.Catalogue.Missions[index].MissionValue;
            c.MissionUI.Mission_Item_UI_List[index].Reward_Get();Assert.That(c.State.Mission_ExpGet[index],Is.True);
            c.Forest.Stage_Now=2;c.Forest.Level_Now=0;c.State.Upgrade_Lv[0]=3;c.State.Money=CurrencyAmount.FromValue(new DecimalAmount(1234));
            c.RebirthUI.Rebirth();Assert.That(c.State.Rebirth_Count,Is.EqualTo(1));Assert.That(c.Forest.Stage_Now,Is.Zero);Assert.That(c.State.Upgrade_Lv[0],Is.Zero);Assert.That(c.State.Ruby.Value.ToString(),Is.EqualTo("31622e-2"));
            Assert.That(c.State.Pet_Selected_items[0],Is.EqualTo(1));Assert.That(c.State.Mission_Rebirth_Value,Is.EqualTo(1));
            c.Forest.Stage_Now=2;c.RebirthUI.Panel_Open();c.RebirthUI.rebirth_panel_ui.Rebirth_Popup_Open();
            var confirm=c.RebirthUI.rebirth_panel_ui.Rebirth_Popup_obj.GetComponentsInChildren<Button>(true).Single(button=>Enumerable.Range(0,button.onClick.GetPersistentEventCount()).Any(i=>button.onClick.GetPersistentMethodName(i)=="Rebirth_Start"));
            Assert.That(confirm.interactable,Is.True);confirm.onClick.Invoke();Assert.That(c.RebirthUI.rebirth_fx.gameObject.activeSelf,Is.True);
            float until=Time.realtimeSinceStartup+12;while(c.RebirthUI.rebirth_fx.gameObject.activeSelf&&Time.realtimeSinceStartup<until)yield return null;
            Assert.That(c.State.Rebirth_Count,Is.EqualTo(2),"Original animation event must complete the normal confirmation flow exactly once");Assert.That(c.RebirthUI.rebirth_fx.gameObject.activeSelf,Is.False);
            Assert.That(c.PetUI.Pet_UI_obj.GetComponentInChildren<Currency_PetCoin>(true).PetCoin_txt.text,Is.EqualTo("0"));
            c.PetUI.Pet_Slot_List[0].Unequip();Assert.That(c.PetFollowers.Pets[0].gameObject.activeSelf,Is.False);
        }
        finally {SceneManager.sceneLoaded-=Configure;}
        yield return TestSceneLoader.LoadAsync("TargetPreview");
    }
}
