using System;
using System.Collections;
using System.Linq;
using CatGunner.Recovery;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public sealed class OriginalInventoryTests
{
    private static OriginalSaveData Profile()=>new OriginalSaveData{Selected_items=new[]{0,-1,-1},Gun_Collect=OriginalEquipmentCatalogue.Load().Gun_Collect};
    [Test] public void DrawChargesDiamondsOnceAndFullInventoryDoesNotConsumeCurrencyOrRandomness()
    {
        var s=Profile();s.Dia=300;int calls=0;var inventory=new OriginalGunInventory(s,(lo,hi)=>{calls++;return hi-1;});
        Assert.That(inventory.DrawNormal(),Is.EqualTo(4));Assert.That(s.Dia,Is.EqualTo(200));Assert.That(s._useDia,Is.EqualTo(100));
        Assert.That(s.Gacha_Draw_Count,Is.EqualTo(1));Assert.That(s.Gun_Collect[4],Is.True);Assert.That(s.Weapon_Get_Counts[0],Is.EqualTo(1));
        Array.Fill(s.Owned_Gun_list,0);Assert.That(inventory.DrawNormal(),Is.EqualTo(-1));Assert.That(s.Dia,Is.EqualTo(200));Assert.That(calls,Is.EqualTo(1));
    }
    [Test] public void SameGradeDifferentTypesMergeIntoTargetWithCorrectNextGradeRange()
    {
        var s=Profile();int low=-1,high=-1;var inventory=new OriginalGunInventory(s,(lo,hi)=>{low=lo;high=hi;return hi-1;});
        s.Owned_Gun_list[2]=0;s.Owned_Gun_list[12]=4;
        Assert.That(inventory.Merge(2,12,0,4),Is.True);Assert.That((low,high),Is.EqualTo((5,10)));
        Assert.That(s.Owned_Gun_list[2],Is.EqualTo(-1));Assert.That(s.Owned_Gun_list[12],Is.EqualTo(9));Assert.That(s.Has_Merged,Is.True);
        Assert.That(s.Gun_Collect[9],Is.True);Assert.That(s.Weapon_Get_Counts[1],Is.EqualTo(1));
    }
    [Test] public void PausedAdMaximumGradeAndStaleMergeDoNotMutateOrDrawRandomness()
    {
        var s=Profile();var inventory=new OriginalGunInventory(s,(lo,hi)=>throw new Exception("Blocked transaction must not draw"));
        s.Owned_Gun_list[0]=0;s.Owned_Gun_list[1]=4;s.Owned_Gun_Pause[0]=true;Assert.That(inventory.Merge(0,1),Is.False);
        s.Owned_Gun_Pause[0]=false;s.AD_Gun_SlotIndex=1;Assert.That(inventory.Merge(0,1),Is.False);
        s.AD_Gun_SlotIndex=-1;Assert.That(inventory.Merge(0,1,3,4),Is.False);
        s.Owned_Gun_list[0]=60;s.Owned_Gun_list[1]=64;Assert.That(inventory.Merge(0,1),Is.False);Assert.That(s.Owned_Gun_list.Take(2),Is.EqualTo(new[]{60,64}));
    }
    [Test] public void EquipSwapsOwnershipAndPauseWhileLastEquippedWeaponCannotBeRemoved()
    {
        var s=Profile();var inventory=new OriginalGunInventory(s,(lo,hi)=>lo);s.Owned_Gun_list[7]=9;s.Owned_Gun_Pause[7]=true;
        Assert.That(inventory.Equip(7,0),Is.True);Assert.That(s.Selected_items[0],Is.EqualTo(9));Assert.That(s.Selected_Pause[0],Is.True);
        Assert.That(s.Owned_Gun_list[7],Is.Zero);Assert.That(s.Owned_Gun_Pause[7],Is.False);Assert.That(inventory.Unequip(0),Is.False);
        Assert.That(inventory.Equip(7,2),Is.True);Assert.That(inventory.Unequip(0),Is.True);Assert.That(s.Selected_items,Is.EqualTo(new[]{-1,-1,0}));
        Assert.That(s.Owned_Gun_list[0],Is.EqualTo(9));Assert.That(s.Owned_Gun_Pause[0],Is.True);
    }
    [Test] public void LegacyArrayExpansionAndSaveRoundTripPreserveSparseInventoryAndDuplicates()
    {
        var s=Profile();s.Owned_Gun_list=new[]{4,-1,3};s.Weapon_Get_Counts=new[]{7,4};
        var inventory=new OriginalGunInventory(s,(lo,hi)=>lo);Assert.That(s.Owned_Gun_list.Length,Is.EqualTo(16));Assert.That(s.Owned_Gun_list[15],Is.EqualTo(-1));
        Assert.That(s.Weapon_Get_Counts.Length,Is.EqualTo(13));Assert.That(s.Weapon_Get_Counts.Take(2),Is.EqualTo(new[]{7,4}));
        s.Selected_items=new[]{4,-1,4};var restored=OriginalSaveArchive.Decode(OriginalSaveArchive.Encode(s));
        Assert.That(OriginalEquipmentCatalogue.CompactSelected(restored.Selected_items),Is.EqualTo(new[]{4,4}));Assert.That(restored.Owned_Gun_list,Is.EqualTo(s.Owned_Gun_list));
    }
    [Serializable] private sealed class FollowObservation {public float displacement,leader_distance,native_follow_max;public int gun;public string state_after_two_seconds,fixture;}
    [UnityTest] public IEnumerator OriginalOpenButtonAndDragMergeEquipActivateCorrectCompanion()
    {
        // Isolated test scene/profile: user save is never used or funded.
        void Configure(Scene scene,LoadSceneMode mode){if(scene.name=="RecoveredClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().Persist=false;}
        SceneManager.sceneLoaded+=Configure;
        try
        {
            yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();yield return null;
            var client=RecoveryForestClient.Instance;client.Hero.GetComponent<ForestCombatAcceptance>().enabled=false;
            var owner=client.Guns;Assert.That(client.Team.Cat_list.Count(c=>c.gameObject.activeSelf),Is.EqualTo(1));
            var open=UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="Gun_Btn");open.onClick.Invoke();yield return null;
            Assert.That(owner.gunItemList.gameObject.activeInHierarchy,Is.True);Assert.That(owner.Gun_sprites.All(s=>s!=null),Is.True);
            client.State.Dia=200;owner.DrawRandom_Normal();owner.newGun_ui.gameObject.SetActive(false);owner.DrawRandom_Normal();owner.newGun_ui.gameObject.SetActive(false);
            Assert.That(client.State.Dia,Is.Zero);Assert.That(owner.gunItemList.ActiveItems.Count,Is.EqualTo(2));
            var a=owner.gunItemList.ActiveItems[0];var b=owner.gunItemList.ActiveItems[1];int target=b.ListIndex;Canvas.ForceUpdateCanvases();
            var data=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,b.transform.position)};
            ExecuteEvents.Execute(a.gameObject,data,ExecuteEvents.beginDragHandler);ExecuteEvents.Execute(a.gameObject,data,ExecuteEvents.dragHandler);ExecuteEvents.Execute(a.gameObject,data,ExecuteEvents.endDragHandler);
            Assert.That(client.State.Owned_Gun_list[target],Is.InRange(5,9));Assert.That(owner.gunItemList.ActiveItems.Count,Is.EqualTo(2));Assert.That(owner.gunItemList.ActiveItems.Single(i=>i.IsAdReward).GunNum,Is.EqualTo(14));Assert.That(client.State.Gun_Collect[14],Is.False);owner.newGun_ui.gameObject.SetActive(false);
            a=owner.gunItemList.ActiveItems.Single(i=>!i.IsAdReward);int gun=a.GunNum;data.position=RectTransformUtility.WorldToScreenPoint(null,owner.Gun_Slot_List[1].transform.position);
            ExecuteEvents.Execute(a.gameObject,data,ExecuteEvents.beginDragHandler);ExecuteEvents.Execute(a.gameObject,data,ExecuteEvents.dragHandler);ExecuteEvents.Execute(a.gameObject,data,ExecuteEvents.endDragHandler);
            Assert.That(client.State.Selected_items[1],Is.EqualTo(gun));Assert.That(client.Team.Cat_list[1].gameObject.activeSelf,Is.True);
            Assert.That(client.Team.Cat_list[1].GunNum,Is.EqualTo(gun));Assert.That(client.Team.Cat_list[1].is_AI,Is.True);
            // The hero bridge is intentionally disabled above for UI isolation. Give
            // its stationary trail explicitly and use an obstacle-free follow fixture,
            // beyond the native FollowMaxDist, rather than a random gun/target state.
            client.Team.Warp(new Vector3(-200,0,0));
            var companion=client.Team.Cat_list[1];var start=companion.transform.position;
            client.Hero.Warp(start+new Vector3(companion.FollowMaxDist+8,0,0));Cat.ResetLeaderTrail();client.Hero.RecordLeaderTrail();
            Assert.That(companion.EvaluateCompanionState(Vector3.Distance(companion.transform.position,client.Hero.transform.position)),Is.EqualTo(Cat.CompanionState.Follow));
            yield return new WaitForSeconds(2);
            float moved=Vector3.Distance(start,companion.transform.position);
            string reports=System.IO.Path.GetFullPath(System.IO.Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
            System.IO.File.WriteAllText(System.IO.Path.Combine(reports,"companion-follow-physics-observation.json"),JsonUtility.ToJson(new FollowObservation{
                displacement=moved,state_after_two_seconds=companion.AIState.ToString(),leader_distance=Vector3.Distance(companion.transform.position,client.Hero.transform.position),
                native_follow_max=companion.FollowMaxDist,gun=gun,fixture="Independent inventory/UI test; original follow algorithm, gear, speed and real Rigidbody movement. Stationary hero bridge disabled for UI; leader trail explicitly recorded. Follow checked before movement; arrival may legitimately transition to Assist/Chase/Attack."},true));
            Assert.That(moved,Is.GreaterThan(.5f));
            owner.Gun_Slot_List[1].Unequip();Assert.That(client.Team.Cat_list[1].gameObject.activeSelf,Is.False);
        }
        finally {SceneManager.sceneLoaded-=Configure;}
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");
    }
}
