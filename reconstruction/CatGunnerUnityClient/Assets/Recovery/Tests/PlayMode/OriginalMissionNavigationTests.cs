using System;
using System.Collections;
using System.IO;
using System.Linq;
using System.Reflection;
using CatGunner.Recovery;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class OriginalMissionNavigationTests
{
    string folder; RecoveryForestClient client; bool background;
    void Configure(Scene s,LoadSceneMode mode){if(s.name=="RecoveredClient")s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup(){background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"MissionNavigation-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Configure;yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();client=RecoveryForestClient.Instance;ForestRuntimeAcceptance.IsGaming=false;client.MissionUI.NewSeason_Start();yield return null;}
    [UnityTearDown] public IEnumerator Cleanup(){Time.timeScale=1;yield return SceneManager.LoadSceneAsync("RecoveredTarget");SceneManager.sceneLoaded-=Configure;if(Directory.Exists(folder))Directory.Delete(folder,true);Application.runInBackground=background;}
    int Call(string name){var method=typeof(Mission_manager).GetMethod(name);Assert.That(method,Is.Not.Null,name);return (int)method.Invoke(client.MissionUI,null);}
    void Scroll(int index){var method=typeof(Mission_manager).GetMethod("ScrollTo_RewardSlot");Assert.That(method,Is.Not.Null);method.Invoke(client.MissionUI,new object[]{index});}
    float Expected(int index)
    {
        Canvas.ForceUpdateCanvases();var m=client.MissionUI;var content=m.Reward_Scroll.content;var viewport=m.Reward_Scroll.viewport;
        float x=content.InverseTransformPoint(m.Mission_Reward_Slot_List[index].transform.position).x;
        return Mathf.Clamp01((x-content.rect.xMin-viewport.rect.width*.5f)/(content.rect.width-viewport.rect.width));
    }
    void Capture(string name){ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/"+name+"-gpu.png")));}
    [UnityTest] public IEnumerator OpeningSelectsFirstUnclaimedThenCurrentLevelAndResetsTaskScroll()
    {
        var m=client.MissionUI;client.State.Mission_Reward_Lv=12;for(int i=0;i<8;i++)client.State.NormalReward_Get[i]=true;m.Mission_Scroll.verticalNormalizedPosition=0;m.Reward_Scroll.horizontalNormalizedPosition=0;m.Panel_Open();yield return null;yield return null;
        Assert.That(m.Mission_Scroll.verticalNormalizedPosition,Is.EqualTo(1).Within(.001));Assert.That(m.Reward_Scroll.horizontalNormalizedPosition,Is.EqualTo(Expected(8)).Within(.002));Capture("mission-navigation-open");yield return null;
        m.Panel_Close();Array.Fill(client.State.NormalReward_Get,true);m.Panel_Open();yield return null;yield return null;Assert.That(m.Reward_Scroll.horizontalNormalizedPosition,Is.EqualTo(Expected(12)).Within(.002));
    }
    [UnityTest] public IEnumerator AlertPollsEveryTwoScaledSecondsAndClaimRestartsImmediately()
    {
        var m=client.MissionUI;Array.Fill(client.State.Mission_ExpGet,false);client.State.Mission_TreeCount_Value=0;m.Panel_Close();yield return new WaitForSeconds(2.15f);Assert.That(m.Mission_Alert_obj.activeSelf,Is.False);
        int index=Array.FindIndex(client.Missions.Catalogue.Missions,x=>!x.is_VIP_Mission&&x.type==0);client.State.Mission_TreeCount_Value=client.Missions.Catalogue.Missions[index].MissionValue;
        Time.timeScale=0;yield return new WaitForSecondsRealtime(.15f);Assert.That(m.Mission_Alert_obj.activeSelf,Is.False);Time.timeScale=1;yield return new WaitForSeconds(2.15f);Assert.That(m.Mission_Alert_obj.activeSelf,Is.True);Assert.That(m.Mission_Alert_obj.activeInHierarchy,Is.True);Capture("mission-navigation-alert");yield return null;
        for(int i=0;i<23;i++)if(i!=index)client.State.Mission_ExpGet[i]=true;m.Mission_Item_UI_List[index].Reward_Get();Assert.That(m.Mission_Alert_obj.activeSelf,Is.False);Assert.That(client.State.Mission_ExpGet[index],Is.True);
    }
    [UnityTest] public IEnumerator SelectorsPreservePremiumOrderingAndAdSlotsWithoutGranting()
    {
        var s=client.State;s.Mission_Reward_Lv=25;Array.Fill(s.NormalReward_Get,true);Assert.That(Call("First_Unclaimed_Reward_Lv_return"),Is.EqualTo(-1));Assert.That(Call("Next_GetAble_Reward_Lv_return"),Is.EqualTo(-1));Assert.That(Call("Scroll_Target_Lv_return"),Is.EqualTo(24));
        s.NormalReward_Get[3]=false;Assert.That(Call("Next_GetAble_Reward_Lv_return"),Is.EqualTo(3));int dia=s.Dia;client.MissionUI.Mission_Reward_Slot_List[3].Normal_Reward_item.Claim();Assert.That(s.Dia,Is.EqualTo(dia));Assert.That(s.NormalReward_Get[3],Is.False);
        s.NormalReward_Get[3]=true;s.Mission_is_Vip=true;s.EpicReward_Get[0]=false;Assert.That(Call("First_Unclaimed_Reward_Lv_return"),Is.Zero);Assert.That(Call("Next_GetAble_Reward_Lv_return"),Is.Zero);Assert.That(client.Missions.ClaimReward(0),Is.False);
        s.Mission_is_Vip=false;s.NormalReward_Get[20]=false;s.Mission_Reward_Lv=12;Assert.That(Call("Scroll_Target_Lv_return"),Is.EqualTo(12));Assert.That(Call("Next_GetAble_Reward_Lv_return"),Is.EqualTo(-1));yield return null;
    }
    [UnityTest] public IEnumerator ClaimScrollsToNextRewardAndReplacementHonorsPauseAndClamp()
    {
        var m=client.MissionUI;client.State.Mission_Reward_Lv=12;for(int i=0;i<8;i++)client.State.NormalReward_Get[i]=true;m.Panel_Open();yield return null;yield return null;
        int dia=client.State.Dia;m.Mission_Reward_Slot_List[8].Normal_Reward_item.Claim();Assert.That(client.State.NormalReward_Get[8],Is.True);Assert.That(client.State.Dia,Is.EqualTo(dia));yield return new WaitForSeconds(.4f);Assert.That(m.Reward_Scroll.horizontalNormalizedPosition,Is.EqualTo(Expected(9)).Within(.002));Capture("mission-navigation-next");yield return null;
        Scroll(24);yield return null;Time.timeScale=0;float held=m.Reward_Scroll.horizontalNormalizedPosition;yield return new WaitForSecondsRealtime(.15f);Assert.That(m.Reward_Scroll.horizontalNormalizedPosition,Is.EqualTo(held).Within(.0001));Time.timeScale=1;
        Scroll(-9);Scroll(99);yield return new WaitForSeconds(.4f);Assert.That(m.Reward_Scroll.horizontalNormalizedPosition,Is.EqualTo(Expected(24)).Within(.002));m.Panel_Close();m.Panel_Open();yield return null;yield return null;Assert.That(m.Reward_Scroll.horizontalNormalizedPosition,Is.EqualTo(Expected(9)).Within(.002));
    }
    [UnityTest] public IEnumerator PremiumIndicatorsAndOwnerLifecycleNeverCreateEntitlements()
    {
        var m=client.MissionUI;var s=client.State;var flags=BindingFlags.Instance|BindingFlags.NonPublic;
        Array.Fill(s.Mission_ExpGet,true);Array.Fill(s.Mission_ExpGet_Luxury,false);s.Mission_TreeCount_Value=s.Mission_StageClear_Value=s.Mission_Rebirth_Value=s.Mission_PlayMine_Value=int.MaxValue;
        int vip=Array.FindIndex(client.Missions.Catalogue.Missions,x=>x.is_VIP_Mission);Assert.That(vip,Is.GreaterThanOrEqualTo(0));s.Mission_ExpGet[vip]=false;
        m.Alert_Check();Assert.That(m.Mission_Alert_obj.activeSelf,Is.False);s.Mission_is_Vip=true;m.Alert_Check();Assert.That(m.Mission_Alert_obj.activeSelf,Is.True);Assert.That(client.Missions.ClaimMission(vip),Is.False);
        s.Mission_is_Vip=false;s.Mission_ExpGet[vip]=true;s.Mission_is_Luxury=true;m.Alert_Check();Assert.That(m.Mission_Alert_obj.activeSelf,Is.True);Array.Fill(s.Mission_ExpGet_Luxury,true);m.Alert_Check();Assert.That(m.Mission_Alert_obj.activeSelf,Is.False);
        m.Panel_Open();yield return null;yield return null;Scroll(24);yield return null;m.enabled=false;
        Assert.That(typeof(Mission_manager).GetField("_alertCoroutine",flags).GetValue(m),Is.Null);Assert.That(typeof(Mission_manager).GetField("_scrollLerpCoroutine",flags).GetValue(m),Is.Null);
        float held=m.Reward_Scroll.horizontalNormalizedPosition;yield return new WaitForSeconds(.4f);Assert.That(m.Reward_Scroll.horizontalNormalizedPosition,Is.EqualTo(held).Within(.001));
        m.enabled=true;m.Bind(client.Missions);m.Bind(client.Missions);Assert.That(typeof(Mission_manager).GetField("_alertCoroutine",flags).GetValue(m),Is.Not.Null);
        var listeners=(Action)typeof(OriginalMissions).GetField("Changed",flags).GetValue(client.Missions);Assert.That(listeners.GetInvocationList().Count(d=>d.Target==m&&d.Method.Name=="UI_Reload"),Is.EqualTo(1));
        int dia=s.Dia;client.MissionUI.Mission_Reward_Slot_List[0].Epic_Reward_item.Claim();Assert.That(s.Dia,Is.EqualTo(dia));Assert.That(s.EpicReward_Get[0],Is.False);
    }
    [UnityTest] public IEnumerator AllRewardsPromptRequiresBothTracksOnlyWhenVip()
    {
        var m=client.MissionUI;var method=typeof(Mission_manager).GetMethod("Check_All_Reward_Get");Assert.That(method,Is.Not.Null);Array.Fill(client.State.NormalReward_Get,true);client.State.Mission_is_Vip=true;method.Invoke(m,null);Assert.That(m.NewSeason_Panel_Forced_obj.activeSelf,Is.False);Array.Fill(client.State.EpicReward_Get,true);method.Invoke(m,null);Assert.That(m.NewSeason_Panel_Forced_obj.activeSelf,Is.True);m.NewSeason_Panel_Forced_obj.SetActive(false);client.State.Mission_is_Vip=false;Array.Fill(client.State.EpicReward_Get,false);method.Invoke(m,null);Assert.That(m.NewSeason_Panel_Forced_obj.activeSelf,Is.True);yield return null;
    }
}
