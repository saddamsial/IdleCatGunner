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

public sealed class MissionPresentationTests
{
    string folder; GameClient client; bool background;
    void Configure(Scene s,LoadSceneMode mode){if(s.name=="GameClient")s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup(){background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"MissionPresentation-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Configure;yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;client.MissionUI.NewSeason_Start();client.MissionUI.Panel_Open();yield return new WaitForSeconds(.4f);}
    [UnityTearDown] public IEnumerator Cleanup(){Time.timeScale=1;yield return SceneManager.LoadSceneAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;if(Directory.Exists(folder))Directory.Delete(folder,true);Application.runInBackground=background;}
    static IEnumerator Click(Button button)
    {
        Canvas.ForceUpdateCanvases();var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        var r=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(r.rect.center));var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
        Assert.That(hits.Count,Is.GreaterThan(0));Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(button),"Top hit: "+string.Join("/",hits[0].gameObject.GetComponentsInParent<Transform>().Reverse().Select(t=>t.name))+"; buttonActive="+button.gameObject.activeInHierarchy+" pos="+mouse.Position+" ancestors="+string.Join("/",button.GetComponentsInParent<Transform>(true).Reverse().Select(t=>t.name)));
        yield return null;mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;module.inputOverride=null;UnityEngine.Object.Destroy(mouse);
    }
    [UnityTest] public IEnumerator TaskClaimBouncesExperienceBarAndUsesOneBasedLevel()
    {
        var m=client.MissionUI;var slider=m.Exp_Slider;Assert.That(slider.Lv_txt.text,Is.EqualTo("Lv.1"));
        var field=typeof(Mission_Exp_Slider).GetField("_bounce");Assert.That(field,Is.Not.Null);var bounce=(Bounce)field.GetValue(slider);Assert.That(bounce,Is.Not.Null);Assert.That(bounce.WantSize,Is.EqualTo(.9f));Assert.That(bounce._upSizeTime,Is.EqualTo(.2f));
        int index=Array.FindIndex(client.Missions.Catalogue.Missions,x=>!x.is_VIP_Mission&&x.type==0);var info=client.Missions.Catalogue.Missions[index];client.State.Mission_TreeCount_Value=info.MissionValue;m.UI_Reload();yield return null;Canvas.ForceUpdateCanvases();yield return null;
        var row=m.Mission_Item_UI_List[index];var button=row.GetComponentsInChildren<Button>(true).Single(b=>Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(i=>b.onClick.GetPersistentTarget(i)==row&&b.onClick.GetPersistentMethodName(i)=="Reward_Get"));
        int dia=client.State.Dia;yield return Click(button);Assert.That(client.State.Mission_ExpGet[index],Is.True);Assert.That(bounce.Bouncing,Is.True);Assert.That(Dia_Attraction.instance._diaFx.Emitted,Is.Zero);Assert.That(client.State.Dia,Is.EqualTo(dia));
        Assert.That(slider.Lv_txt.text,Is.EqualTo("Lv."+(client.State.Mission_Reward_Lv+1)));int exp=client.State.Mission_Reward_Exp;row.Reward_Get();Assert.That(client.State.Mission_Reward_Exp,Is.EqualTo(exp));yield return new WaitForSeconds(.3f);Assert.That(bounce.Bouncing,Is.False);Assert.That(bounce.transform.localScale,Is.EqualTo(Vector3.one));
    }
    [UnityTest] public IEnumerator SeasonDiamondRealClickEmitsEightAndPersistsExactlyOnce()
    {
        var m=client.MissionUI;client.State.Mission_Reward_Lv=2;m.UI_Reload();yield return null;
        var fx=Dia_Attraction.instance._diaFx;var item=m.Mission_Reward_Slot_List[0].Normal_Reward_item;var target=m.Mission_UI_Panel.GetComponentInChildren<Dia_Attraction_Target>(true);
        var wallet=target.transform.parent.GetComponent<Currency>();Assert.That(wallet,Is.Not.Null,"Original mission currency component must be restored");int dia=client.State.Dia,ledger=client.State._getDia;int amount=client.Missions.Reward(0).value;
        yield return Click(item.GetComponent<Button>());Assert.That(client.State.NormalReward_Get[0],Is.True);Assert.That(client.State.Dia,Is.EqualTo(dia+amount));Assert.That(client.State._getDia,Is.EqualTo(ledger+amount*3));Assert.That(wallet.Dia_txt.text,Is.EqualTo((dia+amount).ToString()));Assert.That(fx.Emitted,Is.EqualTo(8));Assert.That(fx.LiveCount,Is.GreaterThan(0));
        var path=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mission-diamonds-flight-gpu.png"));ScreenCapture.CaptureScreenshot(path);
        item.Claim();Assert.That(fx.Emitted,Is.EqualTo(8));bool sawBounce=false;float until=Time.realtimeSinceStartup+2;
        while(fx.LiveCount>0&&Time.realtimeSinceStartup<until){sawBounce|=target._bounce.Bouncing;yield return null;}sawBounce|=target._bounce.Bouncing;
        Assert.That(sawBounce,Is.True);Assert.That(fx.Finished,Is.EqualTo(8));Assert.That(client.State.Dia,Is.EqualTo(dia+amount));yield return new WaitForSeconds(.3f);
        ScreenCapture.CaptureScreenshot(path.Replace("flight","settled"));yield return null;var saved=new SaveArchive(folder).Load();Assert.That(saved.NormalReward_Get[0],Is.True);Assert.That(saved.Dia,Is.EqualTo(dia+amount));
        m.Panel_Close();yield return null;yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;client.MissionUI.Panel_Open();yield return new WaitForSeconds(.3f);
        client.MissionUI.Mission_Reward_Slot_List[0].Normal_Reward_item.Claim();Assert.That(Dia_Attraction.instance._diaFx.Emitted,Is.Zero);Assert.That(client.State.Dia,Is.EqualTo(dia+amount));
    }
    [UnityTest] public IEnumerator RejectedAndNonDiamondRewardsNeverEmitDiamonds()
    {
        var m=client.MissionUI;var fx=Dia_Attraction.instance._diaFx;int dia=client.State.Dia;
        m.Mission_Reward_Slot_List[0].Normal_Reward_item.Claim();Assert.That(fx.Emitted,Is.Zero);client.State.Mission_Reward_Lv=4;
        m.Mission_Reward_Slot_List[1].Normal_Reward_item.Claim();m.Mission_Reward_Slot_List[0].Epic_Reward_item.Claim();Assert.That(fx.Emitted,Is.Zero);Assert.That(client.State.Dia,Is.EqualTo(dia));
        client.State.NormalReward_Get[0]=client.State.NormalReward_Get[1]=true;Array.Fill(client.State.Owned_Gun_list,0);m.Mission_Reward_Slot_List[2].Normal_Reward_item.Claim();Assert.That(client.State.NormalReward_Get[2],Is.False);Assert.That(fx.Emitted,Is.Zero);
        client.State.Owned_Gun_list[9]=-1;m.Mission_Reward_Slot_List[2].Normal_Reward_item.Claim();Assert.That(client.State.NormalReward_Get[2],Is.True);Assert.That(client.State.Owned_Gun_list[9],Is.EqualTo(16));Assert.That(fx.Emitted,Is.Zero);m.Mission_Reward_Slot_List[3].Normal_Reward_item.Claim();Assert.That(client.State.NormalReward_Get[3],Is.False);Assert.That(fx.Emitted,Is.Zero);
        client.State.Mission_is_SeasonStart=false;m.Mission_Reward_Slot_List[4].Normal_Reward_item.Claim();Assert.That(fx.Emitted,Is.Zero);Assert.That(client.State.Dia,Is.EqualTo(dia));yield return null;
    }
    [UnityTest] public IEnumerator ClosingPausingAndReopeningDuringFlightPreservesWalletAndTargetStack()
    {
        var m=client.MissionUI;client.State.Mission_Reward_Lv=1;var a=Dia_Attraction.instance;var target=m.Mission_UI_Panel.GetComponentInChildren<Dia_Attraction_Target>(true);Assert.That(a.Target_list.Last(),Is.SameAs(target));int dia=client.State.Dia;int reward=client.Missions.Reward(0).value;
        m.Mission_Reward_Slot_List[0].Normal_Reward_item.Claim();Assert.That(a._diaFx.Emitted,Is.EqualTo(8));m.Panel_Close();Assert.That(a.Target_list.Contains(target),Is.False);Time.timeScale=0;int finished=a._diaFx.Finished;yield return new WaitForSecondsRealtime(.2f);Assert.That(a._diaFx.Finished,Is.EqualTo(finished));Time.timeScale=1;yield return new WaitForSeconds(1.1f);Assert.That(client.State.Dia,Is.EqualTo(dia+reward));Assert.That(a._diaFx.Finished,Is.EqualTo(8));
        for(int i=0;i<3;i++){m.Panel_Open();yield return null;Assert.That(a.Target_list.Count(t=>t==target),Is.EqualTo(1));Assert.That(target.transform.parent.GetComponent<Currency>().Dia_txt.text,Is.EqualTo(client.State.Dia.ToString()));m.Panel_Close();yield return null;}
    }
    [UnityTest] public IEnumerator RepeatedBindingRealClaimDoesNotPlayRejectionAfterSuccess()
    {
        var m=client.MissionUI;client.State.Mission_Reward_Lv=1;var slot=m.Mission_Reward_Slot_List[0];slot.Bind(0);slot.Bind(0);m.UI_Reload();yield return null;Canvas.ForceUpdateCanvases();yield return null;
        Setting.instance.PersistPreferences=false;Setting.instance.is_SFX_Mute=false;
        var flags=System.Reflection.BindingFlags.NonPublic|System.Reflection.BindingFlags.Instance;
        var played=(Dictionary<SfxType,int>)typeof(Sound_manager).GetField("lastPlayedFrame",flags).GetValue(Sound_manager.instance);played.Clear();
        ((Dictionary<SfxType,float>)typeof(Sound_manager).GetField("lastPlayedTime",flags).GetValue(Sound_manager.instance)).Clear();
        int before=client.State.Dia;yield return Click(slot.Normal_Reward_item.GetComponent<Button>());
        Assert.That(client.State.Dia,Is.EqualTo(before+client.Missions.Reward(0).value));Assert.That(Dia_Attraction.instance._diaFx.Emitted,Is.EqualTo(8));
        Assert.That(played.ContainsKey(SfxType.Purchase),Is.True);Assert.That(played.ContainsKey(SfxType.Dont),Is.False,"One original successful click must not invoke a second rejected claim");
    }
    [Test] public void MaximumSeasonLevelIgnoresNewExperienceButMarksTaskClaimed()
    {
        var s=new SaveData{Gun_Collect=new bool[65],Selected_items=new[]{0,-1,-1},Upgrade_Lv=new int[3],Star_Slot_Lv=new int[3]};var now=new DateTime(2026,10,11);var m=new Missions(s,ProgressionCatalogue.Load(),new GunInventory(s,(a,b)=>a),()=>now);m.StartSeason();s.Mission_Reward_Lv=25;s.Mission_Reward_Exp=17;int i=Array.FindIndex(m.Catalogue.Missions,x=>!x.is_VIP_Mission&&x.type==0);s.Mission_TreeCount_Value=m.Catalogue.Missions[i].MissionValue;
        Assert.That(m.ClaimMission(i),Is.True);Assert.That(s.Mission_ExpGet[i],Is.True);Assert.That(s.Mission_Reward_Exp,Is.EqualTo(17));Assert.That(s.Mission_Reward_Lv,Is.EqualTo(25));Assert.That(m.ClaimMission(i),Is.False);
    }
}
