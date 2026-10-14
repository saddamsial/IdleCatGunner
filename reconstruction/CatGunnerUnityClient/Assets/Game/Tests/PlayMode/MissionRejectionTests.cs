using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;
public sealed class MissionRejectionTests
{
    string folder; GameClient client; bool background;
    void Configure(Scene s,LoadSceneMode mode){if(s.name=="GameClient")s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup(){background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"MissionRejection-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Configure;yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;client.MissionUI.NewSeason_Start();client.MissionUI.Panel_Open();yield return null;yield return null;Alert.gameObject.SetActive(false);}
    [UnityTearDown] public IEnumerator Cleanup(){Time.timeScale=1;if(EventSystem.current!=null)EventSystem.current.GetComponent<StandaloneInputModule>().inputOverride=null;yield return SceneManager.LoadSceneAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;if(Directory.Exists(folder))Directory.Delete(folder,true);Application.runInBackground=background;}
    Alert Alert=>client.StarUpgrades.popup.FeedbackAlert;
    Mission_manager M=>client.MissionUI;
    void Capture(string name){ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mission-rejection-"+name+"-gpu.png")));}
    float Expected(int index){Canvas.ForceUpdateCanvases();var c=M.Reward_Scroll.content;var v=M.Reward_Scroll.viewport;float x=c.InverseTransformPoint(M.Mission_Reward_Slot_List[index].transform.position).x;return Mathf.Clamp01((x-c.rect.xMin-v.rect.width*.5f)/(c.rect.width-v.rect.width));}
    void AssertWarning(){Assert.That(Alert.gameObject.activeInHierarchy,Is.True);Assert.That(Alert.txt.text,Is.EqualTo(Application.systemLanguage==SystemLanguage.Chinese||Application.systemLanguage==SystemLanguage.ChineseSimplified?"请先领取上一个奖励。":Application.systemLanguage==SystemLanguage.ChineseTraditional?"請先領取上一個獎勵。":"Claim the previous reward first!"));}
    static IEnumerator Click(Button button)
    {
        Canvas.ForceUpdateCanvases();var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        var r=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(r.rect.center));var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
        Assert.That(hits.Count,Is.GreaterThan(0));Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(button),"Top hit: "+string.Join("/",hits[0].gameObject.GetComponentsInParent<Transform>().Reverse().Select(t=>t.name))+"; buttonActive="+button.gameObject.activeInHierarchy+" pos="+mouse.Position+" ancestors="+string.Join("/",button.GetComponentsInParent<Transform>(true).Reverse().Select(t=>t.name)));
        yield return null;mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;module.inputOverride=null;UnityEngine.Object.Destroy(mouse);
    }

    [UnityTest] public IEnumerator SeasonButtonUsesMaximumLevelEvenDuringActiveSeasonAndOpensOriginalModal()
    {
        foreach(int level in new[]{0,24,25}){client.State.Mission_Reward_Lv=level;M.UI_Reload();Assert.That(M.NewSeason_Btn_obj.activeSelf,Is.EqualTo(level==25));}
        yield return null;Capture("maximum-level");yield return null;
        yield return Click(M.NewSeason_Btn_obj.GetComponent<Button>());Assert.That(M.NewSeason_Panel_obj.activeSelf,Is.True);Assert.That(client.State.Mission_Reward_Lv,Is.EqualTo(25));M.NewSeason_Panel_obj.SetActive(false);
        client.State.Mission_is_SeasonStart=false;client.State.Mission_Reward_Lv=0;M.UI_Reload();Assert.That(M.NewSeason_Btn_obj.activeSelf,Is.False);
    }
    [UnityTest] public IEnumerator SequenceLockedOriginalButtonShowsWarningRejectsAndScrollsBackWithoutSaving()
    {
        client.State.Mission_Reward_Lv=12;M.UI_Reload();var item=M.Mission_Reward_Slot_List[1].Normal_Reward_item;Assert.That(item.SequenceLocked_obj.activeSelf&&item.SequenceLocked_obj2.activeSelf,Is.True);Assert.That(item.GetComponent<Button>().interactable,Is.True);
        M.Reward_Scroll.horizontalNormalizedPosition=Expected(1);yield return null;client.SaveNow();var save=File.ReadAllBytes(Path.Combine(folder,"NoSaveFile.json"));int dia=client.State.Dia;
        Setting.instance.PersistPreferences=false;Setting.instance.is_SFX_Mute=false;var f=BindingFlags.NonPublic|BindingFlags.Instance;var frames=(Dictionary<SfxType,int>)typeof(Sound_manager).GetField("lastPlayedFrame",f).GetValue(Sound_manager.instance);frames.Clear();((Dictionary<SfxType,float>)typeof(Sound_manager).GetField("lastPlayedTime",f).GetValue(Sound_manager.instance)).Clear();
        yield return Click(item.GetComponent<Button>());AssertWarning();Assert.That(frames.ContainsKey(SfxType.Dont),Is.True);Assert.That(frames.ContainsKey(SfxType.Purchase),Is.False);Capture("sequence-warning");yield return null;yield return new WaitForSeconds(.4f);
        Assert.That(M.Reward_Scroll.horizontalNormalizedPosition,Is.EqualTo(Expected(0)).Within(.002));Assert.That(client.State.Dia,Is.EqualTo(dia));Assert.That(client.State.NormalReward_Get.Any(x=>x),Is.False);Assert.That(Dia_Attraction.instance._diaFx.Emitted,Is.Zero);Assert.That(File.ReadAllBytes(Path.Combine(folder,"NoSaveFile.json")),Is.EqualTo(save));
    }
    [UnityTest] public IEnumerator RepeatedWarningsUseScaledScrollAndClosingCancelsOwnedMovement()
    {
        client.State.Mission_Reward_Lv=25;M.UI_Reload();M.ScrollTo_RewardSlot(24);yield return new WaitForSeconds(.4f);Time.timeScale=0;var item=M.Mission_Reward_Slot_List[23].Normal_Reward_item;item.Claim();item.Claim();yield return null;AssertWarning();float held=M.Reward_Scroll.horizontalNormalizedPosition;yield return new WaitForSecondsRealtime(.15f);Assert.That(M.Reward_Scroll.horizontalNormalizedPosition,Is.EqualTo(held).Within(.0001));
        Time.timeScale=1;yield return new WaitForSeconds(.1f);M.Panel_Close();float closed=M.Reward_Scroll.horizontalNormalizedPosition;yield return new WaitForSeconds(.4f);Assert.That(M.Reward_Scroll.horizontalNormalizedPosition,Is.EqualTo(closed).Within(.001));M.Panel_Open();yield return null;yield return null;Assert.That(M.Reward_Scroll.horizontalNormalizedPosition,Is.EqualTo(Expected(0)).Within(.002));
    }
    [UnityTest] public IEnumerator EarlierUnclaimedVipTrackWarnsWithoutGrantingPremiumOrSkippingAd()
    {
        client.State.Mission_Reward_Lv=12;client.State.NormalReward_Get[0]=true;client.State.Mission_is_Vip=true;M.UI_Reload();M.Reward_Scroll.horizontalNormalizedPosition=Expected(10);int dia=client.State.Dia;M.Mission_Reward_Slot_List[1].Normal_Reward_item.Claim();AssertWarning();yield return new WaitForSeconds(.4f);Assert.That(M.Reward_Scroll.horizontalNormalizedPosition,Is.EqualTo(Expected(0)).Within(.002));Assert.That(client.State.NormalReward_Get[1]||client.State.EpicReward_Get[0],Is.False);Assert.That(client.State.Dia,Is.EqualTo(dia));
        Alert.gameObject.SetActive(false);client.State.Mission_is_Vip=false;client.State.NormalReward_Get[1]=client.State.NormalReward_Get[2]=true;M.UI_Reload();M.Mission_Reward_Slot_List[3].Normal_Reward_item.Claim();Assert.That(Alert.gameObject.activeSelf,Is.False);Assert.That(client.State.NormalReward_Get[3],Is.False);
    }
    [UnityTest] public IEnumerator ClaimedFutureAndExpiredClaimsDoNotProduceSequenceWarningOrScroll()
    {
        client.State.Mission_Reward_Lv=1;client.State.NormalReward_Get[1]=true;M.UI_Reload();M.Reward_Scroll.horizontalNormalizedPosition=.65f;M.Mission_Reward_Slot_List[1].Normal_Reward_item.Claim();M.Mission_Reward_Slot_List[4].Normal_Reward_item.Claim();client.State.Mission_is_SeasonStart=false;client.State.Mission_Reward_Lv=12;M.Mission_Reward_Slot_List[2].Normal_Reward_item.Claim();yield return new WaitForSeconds(.4f);Assert.That(Alert.gameObject.activeSelf,Is.False);Assert.That(M.Reward_Scroll.horizontalNormalizedPosition,Is.EqualTo(.65f).Within(.002));Assert.That(Dia_Attraction.instance._diaFx.Emitted,Is.Zero);
    }
    [UnityTest] public IEnumerator ClaimingPreviousRewardUnlocksTheOriginalNextButtonAndColdReloadPreservesBothClaims()
    {
        client.State.Mission_Reward_Lv=2;M.UI_Reload();var first=M.Mission_Reward_Slot_List[0].Normal_Reward_item;var next=M.Mission_Reward_Slot_List[1].Normal_Reward_item;Assert.That(next.SequenceLocked_obj2.activeSelf,Is.True);yield return Click(first.GetComponent<Button>());yield return new WaitForSeconds(.4f);Assert.That(next.SequenceLocked_obj.activeSelf||next.SequenceLocked_obj2.activeSelf,Is.False);Assert.That(next.GetAble_obj.activeSelf,Is.True);int dia=client.State.Dia;yield return Click(next.GetComponent<Button>());Assert.That(client.State.Dia,Is.EqualTo(dia+client.Missions.Reward(1).value));Capture("unlocked-claims");yield return null;
        var saved=new SaveArchive(folder).Load();Assert.That(saved.NormalReward_Get.Take(2),Is.All.True);yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;M.Panel_Open();yield return null;yield return null;Assert.That(client.State.NormalReward_Get.Take(2),Is.All.True);Assert.That(M.Mission_Reward_Slot_List[1].Normal_Reward_item.SequenceLocked_obj2.activeSelf,Is.False);Assert.That(Alert.gameObject.activeSelf,Is.False);int restored=client.State.Dia;M.Mission_Reward_Slot_List[1].Normal_Reward_item.Claim();Assert.That(client.State.Dia,Is.EqualTo(restored));
    }
}
