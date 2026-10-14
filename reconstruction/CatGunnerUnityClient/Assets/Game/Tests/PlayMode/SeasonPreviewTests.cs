using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;

public sealed class SeasonPreviewTests
{
    string folder;GameClient client;bool background;
    Mission_manager M=>client.MissionUI;
    string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/"+name));
    NewSeason_UI Normal=>M.NewSeason_Panel_obj.GetComponent<NewSeason_UI>();
    NewSeason_UI Forced=>M.NewSeason_Panel_Forced_obj.GetComponent<NewSeason_UI>();
    void Configure(Scene scene,LoadSceneMode mode)
    {if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup()
    {
        background=Application.runInBackground;Application.runInBackground=true;
        folder=Path.Combine(Application.temporaryCachePath,"SeasonPreview-"+Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded+=Configure;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();
        client=GameClient.Instance;client.DailyLogin.Close();client.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;
        M.NewSeason_Start();M.Panel_Open();yield return new WaitForSecondsRealtime(.4f);
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {Time.timeScale=1;yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
    IEnumerator Click(Button target,Button receiver=null)
    {
        // Source popup Animator changes scale/position during entry; measure
        // and press only after it settles so down/up target the same Button.
        yield return new WaitForSecondsRealtime(.4f);
        Assert.That(target.gameObject.activeInHierarchy,Is.True,target.name);Canvas.ForceUpdateCanvases();
        var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        try
        {
            var rect=(RectTransform)target.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));
            var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
            Assert.That(hits.FirstOrDefault().gameObject?.GetComponentInParent<Button>(),Is.SameAs(target),string.Join("|",hits.Take(4).Select(h=>h.gameObject.name)));
            Assert.That(ExecuteEvents.GetEventHandler<IPointerClickHandler>(hits[0].gameObject)?.GetComponent<Button>(),Is.SameAs(receiver??target),"enabled source event receiver");
            mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
        }
        finally{module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
    }
    [UnityTest] public IEnumerator NormalEntryUsesLatestThreeEpicRewardsAndPreservesWallet()
    {
        client.State.Mission_Reward_Lv=25;M.UI_Reload();int diamonds=client.State.Dia;
        M.Reward_Scroll.horizontalNormalizedPosition=1;yield return null;Canvas.ForceUpdateCanvases();yield return null;
        yield return Click(M.NewSeason_Btn_obj.GetComponent<Button>());yield return new WaitForSecondsRealtime(.4f);
        Assert.That(M.NewSeason_Panel_obj.activeInHierarchy,Is.True);
        var items=M.NewSeason_Panel_obj.GetComponentsInChildren<Mission_Reward_Item>(true);
        Assert.That(items.Select(x=>x._Lv),Is.EqualTo(new[]{22,23,24}),"original level-selected preview window");
        Assert.That(items.Select(x=>x._degree),Is.All.EqualTo(1));Assert.That(client.State.Dia,Is.EqualTo(diamonds));
        AssertPreview(Normal);yield return Capture("last-three");
    }
    IEnumerator Capture(string name)
    {yield return new WaitForSecondsRealtime(.4f);yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Report("visual/season-preview-"+name+"-gpu.png"));yield return new WaitForSecondsRealtime(.2f);}
    void AssertPreview(NewSeason_UI panel)
    {
        var before=client.State.Dia;var state=client.State;
        Assert.That(panel.VIP_Purchase_popup_obj.activeSelf,Is.EqualTo(!state.Mission_is_Vip));if(state.Mission_is_Vip)return;
        foreach(var item in panel.Mission_Reward_Items)
        {
            var reward=client.Missions.Reward(item._Lv,true);
            Assert.That(item._degree,Is.EqualTo(1));Assert.That(item.Dia_obj.activeSelf,Is.EqualTo(reward.type==0));Assert.That(item.Gun_obj.activeSelf,Is.EqualTo(reward.type==1));Assert.That(item.Core_obj.activeSelf,Is.EqualTo(reward.type==2));
            if(reward.type==0)Assert.That(item.Dia_Reward_txt.text,Is.EqualTo(reward.value.ToString()));
            if(reward.type==2)Assert.That(item.Core_Reward_txt.text,Is.EqualTo(reward.value.ToString()));
            if(reward.type==1)
            {
                Assert.That(item.Gun_img.sprite,Is.SameAs(client.Guns.Gun_sprites[reward.value]));Assert.That(item.Shadow_img.sprite,Is.SameAs(item.Gun_img.sprite));
                Assert.That(item.Type_txt.text,Is.EqualTo(Gun_manager.TypeText(reward.value)));
                Assert.That(item.Degree_objs.Select(g=>g.activeSelf),Is.EqualTo(Enumerable.Range(0,item.Degree_objs.Length).Select(i=>i==reward.value/5)));
                item.Type_txt.ForceMeshUpdate();Assert.That(item.Type_txt.isTextOverflowing,Is.False);foreach(char ch in item.Type_txt.text)Assert.That(item.Type_txt.font.HasCharacter(ch,true,true),Is.True,"type glyph "+ch);
            }
            int status=state.EpicReward_Get[item._Lv]?2:item._Lv<state.Mission_Reward_Lv?1:0;
            Assert.That(item.NonClear_obj.activeSelf,Is.EqualTo(status==0));Assert.That(item.GetAble_obj.activeSelf,Is.EqualTo(status==1));Assert.That(item.Get_obj.activeSelf,Is.EqualTo(status==2));
            Assert.That(item.Locked_obj.activeSelf||item.SequenceLocked_obj.activeSelf||item.SequenceLocked_obj2.activeSelf||item.AD_Reward_obj.activeSelf,Is.False);
        }
        Assert.That(client.State.Dia,Is.EqualTo(before));
    }
    [UnityTest] public IEnumerator BothPanelsRefreshRewardTypesAndAllBoundaryLevelsWithoutGranting()
    {
        var inventory=client.State.Owned_Gun_list.ToArray();int diamonds=client.State.Dia;
        foreach(var season in new[]{0,1})foreach(bool gunSeason in new[]{true,false})
        {
            client.State.Mission_Season_Num=season;client.State.Mission_is_GunSeason=gunSeason;
            foreach(int level in new[]{0,1,2,3,4,24,25})
            {
                client.State.Mission_Reward_Lv=level;
                foreach(var panel in new[]{Normal,Forced})
                {
                    panel.gameObject.SetActive(true);AssertPreview(panel);Assert.That(panel.Mission_Reward_Items.Select(x=>x._Lv),Is.EqualTo(Enumerable.Range(Math.Max(0,level-3),3)));panel.gameObject.SetActive(false);
                }
            }
        }
        client.State.Mission_is_GunSeason=false;client.State.Mission_Reward_Lv=3;Forced.gameObject.SetActive(true);yield return null;AssertPreview(Forced);yield return Capture("core");
        Forced.gameObject.SetActive(false);client.State.Mission_is_GunSeason=true;client.State.Mission_Season_Num=0;client.State.Mission_Reward_Lv=3;Normal.gameObject.SetActive(true);yield return null;AssertPreview(Normal);yield return Capture("first-season");
        Assert.That(client.State.Owned_Gun_list,Is.EqualTo(inventory));Assert.That(client.State.Dia,Is.EqualTo(diamonds));
    }
    static Button Callback(GameObject root,string method)
        =>root.GetComponentsInChildren<Button>(true).Single(b=>b.gameObject.activeInHierarchy&&Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(i=>b.onClick.GetPersistentMethodName(i)==method));
    static Button TargetSetActive(GameObject root,GameObject target,bool active)
        =>root.GetComponentsInChildren<Button>(true).Single(b=>b.gameObject.activeInHierarchy&&Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(i=>b.onClick.GetPersistentTarget(i)==target&&b.onClick.GetPersistentMethodName(i)=="SetActive")&&b.name==(active?"NewSeason_Btn":"Cancel_Btn"));
    [UnityTest] public IEnumerator RealCancelPreservesSeasonAndConfirmResetsProgressOnce()
    {
        client.State.Mission_Reward_Lv=25;client.State.Mission_Reward_Exp=17;client.State.NormalReward_Get[0]=true;M.UI_Reload();M.Reward_Scroll.horizontalNormalizedPosition=1;yield return null;yield return Click(M.NewSeason_Btn_obj.GetComponent<Button>());
        int season=client.State.Mission_Season_Num,diamonds=client.State.Dia;yield return Click(TargetSetActive(M.NewSeason_Panel_obj,M.NewSeason_Panel_obj,false));
        Assert.That(M.NewSeason_Panel_obj.activeSelf,Is.False);Assert.That(client.State.Mission_Reward_Lv,Is.EqualTo(25));Assert.That(client.State.Mission_Reward_Exp,Is.EqualTo(17));Assert.That(client.State.NormalReward_Get[0],Is.True);
        yield return Click(M.NewSeason_Btn_obj.GetComponent<Button>());yield return Click(Callback(M.NewSeason_Panel_obj,"NewSeason_Start"));
        Assert.That(client.State.Mission_Season_Num,Is.EqualTo(season+1));Assert.That(client.State.Mission_Reward_Lv,Is.Zero);Assert.That(client.State.Mission_Reward_Exp,Is.Zero);Assert.That(client.State.NormalReward_Get,Is.All.False);Assert.That(M.NewSeason_Panel_obj.activeSelf,Is.False);Assert.That(client.State.Dia,Is.EqualTo(diamonds));
        var saved=new SaveArchive(folder).Load();Assert.That(saved.Mission_Season_Num,Is.EqualTo(season+1));Assert.That(saved.Mission_Reward_Lv,Is.Zero);
    }
    [UnityTest] public IEnumerator ForcedEntryHidesOfferForVipAndColdReloadShowsFreshRewardState()
    {
        client.State.Mission_Reward_Lv=25;Array.Fill(client.State.NormalReward_Get,true);Array.Fill(client.State.EpicReward_Get,true);
        M.Check_All_Reward_Get();yield return null;Assert.That(Forced.gameObject.activeInHierarchy,Is.True);AssertPreview(Forced);
        client.State.Mission_is_Vip=true;Forced.gameObject.SetActive(false);Forced.gameObject.SetActive(true);Assert.That(Forced.VIP_Purchase_popup_obj.activeSelf,Is.False);yield return Capture("vip-hidden");
        Forced.gameObject.SetActive(false);client.State.Mission_is_Vip=false;client.State.EpicReward_Get[23]=false;client.SaveNow();
        yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;client.DailyLogin.Close();client.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;M.Panel_Open();
        M.Check_All_Reward_Get();yield return null;Assert.That(Forced.gameObject.activeInHierarchy,Is.True);AssertPreview(Forced);
        Assert.That(Forced.Mission_Reward_Items.Single(x=>x._Lv==23).GetAble_obj.activeSelf,Is.True);Assert.That(Forced.Mission_Reward_Items.Single(x=>x._Lv==22).Get_obj.activeSelf,Is.True);
    }
    [UnityTest] public IEnumerator RebindingPreservesDisabledPreviewsAndSourceParentPurchaseRoute()
    {
        var canvas=client.Slider.GetComponentInParent<Canvas>().transform;
        SeasonPreview.Bind(canvas);SeasonPreview.Bind(canvas);Assert.That(M.NewSeason_Panel_obj.GetComponents<NewSeason_UI>().Length,Is.EqualTo(1));Assert.That(M.NewSeason_Panel_Forced_obj.GetComponents<NewSeason_UI>().Length,Is.EqualTo(1));
        client.State.Mission_Reward_Lv=25;Normal.gameObject.SetActive(true);yield return null;var items=Normal.Mission_Reward_Items;
        int diamonds=client.State.Dia;var guns=client.State.Owned_Gun_list.ToArray();var epic=client.State.EpicReward_Get.ToArray();
        foreach(var item in Normal.Mission_Reward_Items.Concat(Forced.Mission_Reward_Items))
        {
            var button=item.GetComponent<Button>();Assert.That(button.onClick.GetPersistentEventCount(),Is.EqualTo(1));Assert.That(button.onClick.GetPersistentTarget(0),Is.SameAs(M.Mission_Reward_Slot_List[5]));Assert.That(button.onClick.GetPersistentMethodName(0),Is.EqualTo("Epic_Reward_Click"));
            Assert.That(button.enabled,Is.False,"original six preview Buttons are disabled");
        }
        Assert.That(client.State.Dia,Is.EqualTo(diamonds));Assert.That(client.State.Owned_Gun_list,Is.EqualTo(guns));Assert.That(client.State.EpicReward_Get,Is.EqualTo(epic));
        for(int i=0;i<3;i++){Normal.gameObject.SetActive(false);Normal.gameObject.SetActive(true);AssertPreview(Normal);}yield return null;
        // Original disabled child Button bubbles pointer clicks to the enabled
        // purchase Panel. Retain that route and verify only the local VIP pack.
        var purchase=Normal.VIP_Purchase_popup_obj.transform.Find("Panel").GetComponent<Button>();
        yield return Click(items[0].GetComponent<Button>(),purchase);
        Assert.That(Normal.gameObject.activeSelf,Is.False);Assert.That(client.State.Mission_is_Vip,Is.True);
        Assert.That(client.State.Dia,Is.EqualTo(diamonds+500));Assert.That(client.State.Owned_Gun_list,Is.EqualTo(guns));Assert.That(client.State.EpicReward_Get,Is.EqualTo(epic));
        Normal.gameObject.SetActive(true);AssertPreview(Normal);
    }
    [Test] public void PreviewRangeClampsToSourceWindowIncludingShortArrays()
    {
        Assert.That(NewSeason_UI.PreviewStart(-10,25,3),Is.Zero);Assert.That(NewSeason_UI.PreviewStart(99,25,3),Is.EqualTo(22));
        Assert.That(NewSeason_UI.PreviewStart(2,2,3),Is.Zero);Assert.That(NewSeason_UI.PreviewStart(0,0,3),Is.Zero);
        Assert.That(NewSeason_UI.PreviewStart(13,25,3),Is.EqualTo(10));
    }
}
