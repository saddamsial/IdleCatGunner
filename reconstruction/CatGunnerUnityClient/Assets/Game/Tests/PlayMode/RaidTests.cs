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
public sealed class RaidTests
{
    private static void Independent(Scene scene,LoadSceneMode mode)
    {if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().Persist=false;}
    private static void StopCombat(GameClient c){foreach(var cat in c.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;}
    private static void Click(Button button)
    {
        Assert.That(button.interactable&&button.gameObject.activeInHierarchy,Is.True);Canvas.ForceUpdateCanvases();var r=(RectTransform)button.transform;
        var evt=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(r.rect.center))};
        var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(evt,hits);Assert.That(hits.Count,Is.GreaterThan(0));
        Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(button),string.Join(" | ",hits.Take(8).Select(h=>h.gameObject.name+" / "+h.gameObject.transform.parent.name)));ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,evt,ExecuteEvents.pointerClickHandler);
    }
    [Test] public void NativeRuntimeHealthReplacesOldSerializedCacheAndRewardTiersAreExact()
    {
        long[] health={10000000,30000000,90000000,270000000,810000000,2400000000,7200000000};
        for(int i=0;i<health.Length;i++)Assert.That(RaidRules.BossHealth(i).Value.PlainInteger(),Is.EqualTo(health[i].ToString()));
        Assert.That(RaidRules.BossHealth(-1).Value.PlainInteger(),Is.EqualTo("10000000"));
        Assert.That(RaidRules.StarGemReward(0),Is.Zero);Assert.That(RaidRules.StarGemReward(10),Is.EqualTo(250));
        Assert.That(RaidRules.StarGemReward(20),Is.EqualTo(450));Assert.That(RaidRules.StarGemReward(30),Is.EqualTo(550));Assert.That(RaidRules.StarGemReward(31),Is.EqualTo(555));
    }
    [Test] public void LocalClockCalendarRetainsFutureDatesAndOnlyRollsOwnRaidEntryFields()
    {
        var monday=new DateTime(2024,1,1);Assert.That(RaidRules.SeasonIndex(monday.AddDays(6)),Is.Zero);
        Assert.That(RaidRules.SeasonIndex(monday.AddDays(7)),Is.EqualTo(1));Assert.That(RaidRules.BossIndex(monday.AddDays(-1)),Is.EqualTo(4));
        var s=new SaveData{Raid_Entry_Charge_Date=monday.ToString("O"),Raid_Free_Use_Count=2,Raid_AD_Enter_Used=true,Raid_IAP_Enter_Used=true,StarGem=123,TimeStrike=8};
        Assert.That(RaidRules.ReloadLocalTickets(s,monday.AddHours(23)),Is.False);Assert.That(s.Raid_Free_Use_Count,Is.EqualTo(2));
        Assert.That(RaidRules.ReloadLocalTickets(s,monday.AddDays(-1)),Is.False);
        Assert.That(RaidRules.ReloadLocalTickets(s,monday.AddDays(1)),Is.True);Assert.That(s.Raid_Free_Use_Count,Is.Zero);Assert.That(s.Raid_AD_Enter_Used||s.Raid_IAP_Enter_Used,Is.False);
        Assert.That((s.StarGem,s.TimeStrike),Is.EqualTo((123,8)));s.Raid_Entry_Charge_Date="invalid";Assert.Throws<InvalidOperationException>(()=>RaidRules.ReloadLocalTickets(s,monday));
    }
    [UnityTest, Category("ContentNavigation")] public IEnumerator OriginalLoadoutUsesItemIdentitySortsWeakDamageAndCannotRemoveLastGun()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;ContentNavigationFixture.Unlock(c,Content_Type.Raid);yield return null;StopCombat(c);var m=c.RaidMode;
            m.Now=()=>new DateTime(2024,1,1);c.State.Owned_Gun_list[0]=30;c.State.Owned_Gun_list[1]=30;c.State.Safe_Gun_list=new[]{30,-1};
            var before=(int[])c.State.Selected_items.Clone();m.Season_Check();Assert.That(m.Buff_GunType_Now(),Is.EqualTo(GunType.PIERCE));
            Assert.That(m.Sorted_Index_List().Take(3),Is.EqualTo(new[]{3,4,19}));
            Click(UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="Raid_Btn"));yield return null;Assert.That(m.raidStart_ui.gameObject.activeInHierarchy,Is.True);
            Assert.That(m.Is_Index_Used_By_AnySlot(-1),Is.False);Assert.That(m.Gun_Index_List,Is.EqualTo(new[]{3,4,19}));Assert.That(m.Gun_List,Is.EqualTo(new[]{30,30,30}));
            Assert.That(c.State.Owned_Gun_list[0],Is.EqualTo(30));Assert.That(c.State.Selected_items,Is.EqualTo(before));
            m.Gun_SelectPanel_Open(0);yield return null;Assert.That(m.gunSelect_panel.gameObject.activeInHierarchy,Is.True);
            m.Gun_Select(4);Assert.That(m.Gun_Index_List[0],Is.EqualTo(3));m.Gun_Select(0);Assert.That(m.Gun_Index_List[0],Is.Zero);Assert.That(m.gunSelect_panel.gameObject.activeSelf,Is.False);
            m.Gun_UnSelect(0);m.Gun_UnSelect(1);m.Gun_UnSelect(2);Assert.That(m.GetEquippedCount(),Is.EqualTo(1));Assert.That(c.State.Selected_items,Is.EqualTo(before));
            m.Panel_Close();Assert.That(m.StartPanel.activeSelf,Is.False);
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("TargetPreview");
    }
    [UnityTest] public IEnumerator ZeroInputOriginalGunThirtyNaturalSixtySecondRaidAwardsOnceAndReturnsForestLoadout()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;var m=c.RaidMode;
            m.Now=()=>new DateTime(2024,1,1);m.Season_Check();c.State.Owned_Gun_list[0]=30;int gems=c.State.StarGem;
            var forest=(int[])c.State.Selected_items.Clone();var forestProgress=(c.Forest.Stage_Now,c.Forest.Level_Now);
            c.State.Upgrade_Lv[0]=100;c.State.Upgrade_Lv[1]=100;m.Panel_Open();m.Gun_UnSelect(1);yield return new WaitForSeconds(.4f);
            var enter=m.raidStart_ui.Enter_Normal_obj.GetComponent<Button>();Click(enter);Assert.That(c.Mode,Is.EqualTo(5));
            Assert.That(c.Hero.Damage.Value.PlainInteger(),Is.EqualTo("240000"));Assert.That(c.Hero.AtkCool_Max,Is.EqualTo(.1f).Within(.00001f));
            float started=Time.realtimeSinceStartup,deadline=started+75;var start=c.Hero.transform.position;float moved=0;
            while((m.Entering||m.Playing)&&Time.realtimeSinceStartup<deadline){moved=Mathf.Max(moved,Vector3.Distance(start,c.Hero.transform.position));yield return null;}
            File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/raid-projectile-combat-observation.json")),JsonUtility.ToJson(new Observation{score=m.Score_Now,gems=m.Reward_Value,seconds=Time.realtimeSinceStartup-started,moved=moved,fixture="Independent original Gun30 from owned slot; native weak type PIERCE, 10m first health and 60s timer. Zero joystick input, actual projectile dispatch; no damage/health/time injection. Fixed fixture calendar; user save untouched."},true));
            Assert.That(m.Playing,Is.False);Assert.That(m.GameEnd_UI.activeInHierarchy,Is.True);Assert.That(m.Score_Now,Is.GreaterThanOrEqualTo(1));Assert.That(m.GameTime_Max,Is.EqualTo(60));
            Assert.That(Time.realtimeSinceStartup-started,Is.GreaterThan(61));Assert.That(moved,Is.GreaterThan(1));Assert.That(c.Hero.joystick.Direction,Is.EqualTo(Vector2.zero));
            int reward=RaidRules.StarGemReward(m.Score_Now);Assert.That(c.State.StarGem,Is.EqualTo(gems+reward));Assert.That(c.State.Raid_Season_BestLevel,Is.EqualTo(m.Score_Now));Assert.That(c.State.Raid_Best_Level_ByType[2],Is.EqualTo(m.Score_Now));
            m.Game_End();m.Reward_Panel_Reload();m.Reward_Panel_Reload();m.Game_Enter_AD();m.Game_Enter_IAP();Assert.That(c.State.StarGem,Is.EqualTo(gems+reward));Assert.That(c.State.Raid_Free_Use_Count,Is.EqualTo(1));Assert.That(c.State.Raid_Season_TryCount,Is.EqualTo(1));
            var saved=SaveArchive.Decode(SaveArchive.Encode(c.State));Assert.That(saved.StarGem,Is.EqualTo(gems+reward));Assert.That(saved.Raid_Season_BestLevel,Is.EqualTo(m.Score_Now));Assert.That(saved.Selected_items,Is.EqualTo(forest));
            StopCombat(c);m.Game_Exit();yield return new WaitForSeconds(2);Assert.That(c.Mode,Is.Zero);Assert.That(c.State.Selected_items,Is.EqualTo(forest));Assert.That((c.Forest.Stage_Now,c.Forest.Level_Now),Is.EqualTo(forestProgress));Assert.That(c.Hero._gunInfo.Name,Is.EqualTo(Gun_manager.instance.Gun_list[c.State.Selected_items[0]].Name));
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("TargetPreview");
    }
    [UnityTest] public IEnumerator EntryCancellationConsumesTicketWithoutRunRewardAndNativeBossReloadKeepsSkin()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;StopCombat(c);var m=c.RaidMode;int gems=c.State.StarGem;
            m.Game_Enter_Normal();m.Game_Enter_Normal();m.Game_Exit();yield return new WaitForSeconds(3);
            Assert.That(c.Mode,Is.Zero);Assert.That(m.Entering,Is.False);Assert.That(c.State.Raid_Free_Use_Count,Is.EqualTo(1));Assert.That(c.State.Raid_Season_TryCount,Is.Zero);Assert.That(c.State.StarGem,Is.EqualTo(gems));
            m.Game_Enter_Normal();yield return new WaitForSeconds(2.1f);Assert.That(m.Playing,Is.True);Assert.That(m._boss.enemy.Health_Max.Value.PlainInteger(),Is.EqualTo("10000000"));int skin=m._boss.skinNum;
            var coll=m._boss.GetComponentsInChildren<EnemyColl>(true).First().GetComponent<Collider>();ForestDamageDispatch.Damage_Collider(coll,m._boss.enemy.Health_Max,Vector3.zero,"fixture",false);
            Assert.That(m.Score_Now,Is.EqualTo(1));Assert.That(m._boss.enemy.Health_Max.Value.PlainInteger(),Is.EqualTo("30000000"));Assert.That(m._boss.skinNum,Is.EqualTo(skin));Assert.That(m._boss.Skin_obj.Count(g=>g.activeSelf),Is.EqualTo(1));
            m.Game_Start();Assert.That(c.State.Raid_Season_TryCount,Is.EqualTo(1));m.Game_Exit();yield return new WaitForSeconds(2);Assert.That(c.State.StarGem,Is.EqualTo(gems));
            m.Game_Enter_Normal();Assert.That(c.Mode,Is.Zero);Assert.That(c.State.Raid_Free_Use_Count,Is.EqualTo(2));Assert.That(m.Free_Remain,Is.Zero);
            for(int i=0;i<5;i++){m._boss.Spawn(RaidRules.BossHealth(0),i);Assert.That(m._boss.Skin_obj.Count(g=>g.activeSelf),Is.EqualTo(1));Assert.That(m._boss.Skin_obj[i].activeSelf,Is.True);Assert.That(m._boss._anim,Is.Not.Null);}
            m.Map_obj.SetActive(false);
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("TargetPreview");
    }
    [Serializable]private sealed class Observation{public int score,gems;public float seconds,moved;public string fixture;}
}
