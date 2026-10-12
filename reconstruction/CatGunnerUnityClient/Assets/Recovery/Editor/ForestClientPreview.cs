using System;
using System.Collections;
using System.IO;
using CatGunner.Recovery;
using UnityEditor;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

// Default local recovery scene observation. No stat/weapon/target/pool
// fixture; the only game action is an original upgrade button after earned funds.
public static class ForestClientPreview
{
    private static DecimalAmount beforeUpgrade;
    private static bool bgmWhileRunning;
    private static int upgradeKind, beforeLevel;
    private static string raycastTarget;
    private static DecimalAmount spent;
    public static IEnumerator CaptureEarnedWallet()
    {
        var client=RecoveryForestClient.Instance;
        var startingIncome=client.State.Money_Accum.Value;
        upgradeKind=1;
        float deadline=Time.realtimeSinceStartup+90;
        while(Time.realtimeSinceStartup<deadline)
        {
            if(client.State!=null && client.State.Money.Value.CompareTo(client.Balance.Price(client.State.Upgrade_Lv[upgradeKind]))>=0 &&
                client.State.Money_Accum.Value.CompareTo(startingIncome+new DecimalAmount(50))>=0)
            {
                bgmWhileRunning=Sound_manager.instance!=null && Sound_manager.instance.bgmSource.isPlaying;
                EditorApplication.isPaused=true;Write("client-earned-wallet-visual-state.json");yield break;
            }
            yield return null;
        }
        throw new InvalidOperationException("Default scene did not earn first upgrade before observation deadline");
    }
    public static IEnumerator UpgradeFromEarnedWallet()
    {
        // Editor eval can expose SceneView Screen dimensions. Raycast only
        // after the iterator resumes in an actual player frame.
        yield return null;
        var client=RecoveryForestClient.Instance;beforeUpgrade=client.State.Money.Value;
        beforeLevel=client.State.Upgrade_Lv[upgradeKind];spent=client.Balance.Price(beforeLevel);
        var panel=client.UpgradePanels[upgradeKind];var rect=(RectTransform)panel.transform;
        var pointer=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center))};
        var hits=new System.Collections.Generic.List<RaycastResult>();EventSystem.current.RaycastAll(pointer,hits);
        if(hits.Count==0 || !hits[0].gameObject.transform.IsChildOf(panel.transform))throw new InvalidOperationException("Original upgrade button intercepted by another UI layer");
        raycastTarget=hits[0].gameObject.name;
        ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,pointer,ExecuteEvents.pointerDownHandler);
        ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,pointer,ExecuteEvents.pointerUpHandler);
        ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,pointer,ExecuteEvents.pointerClickHandler);
        if(client.State.Upgrade_Lv[upgradeKind]!=beforeLevel+1 || client.State.Money.Value.CompareTo(beforeUpgrade-spent)!=0)
            throw new InvalidOperationException("Original pointer click did not spend earned funds exactly once");
        yield return null;yield return null;
        EditorApplication.isPaused=true;Write("client-upgraded-wallet-visual-state.json");
    }
    public static IEnumerator CaptureNaturalNextWave()
    {
        yield return null;
        var client=RecoveryForestClient.Instance;
        int firstStage=client.Forest.Stage_Now,firstWave=client.Forest.Level_Now;
        float deadline=Time.realtimeSinceStartup+150;
        while(Time.realtimeSinceStartup<deadline)
        {
            if(client.RoundsStarted>=2 && !client.IsTransitioning &&
                (client.Forest.Stage_Now!=firstStage || client.Forest.Level_Now!=firstWave))
            {
                yield return new WaitForSeconds(.25f);
                bgmWhileRunning=Sound_manager.instance!=null && Sound_manager.instance.bgmSource.isPlaying;
                EditorApplication.isPaused=true;Write("client-natural-next-wave-visual-state.json");yield break;
            }
            yield return null;
        }
        EditorApplication.isPaused=true;Write("client-natural-wave-observation-timeout.json");
        throw new InvalidOperationException("Default automatic combat did not naturally advance before observation deadline; observation preserved");
    }
    private static void Write(string name)
    {
        var c=RecoveryForestClient.Instance;
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,name),Newtonsoft.Json.JsonConvert.SerializeObject(new{
            scene=c.gameObject.scene.path,stage=c.Forest.Stage_Now,wave=c.Forest.Level_Now,tree_count=c.Forest.TreeCount_Now,tree_count_max=c.Forest.TreeCount_Max,
            rounds_started=c.RoundsStarted,failures=c.Failures,is_transitioning=c.IsTransitioning,
            wallet=c.State.Money.Value.ToString(),wallet_integer=c.State.Money.Value.PlainInteger(),accumulated=c.State.Money_Accum.Value.ToString(),
            before_upgrade=beforeUpgrade.ToString(),upgrade_levels=c.State.Upgrade_Lv,damage=c.Hero.Damage.Value.ToString(),gun=c.Hero.GunNum,
            upgrade_kind=upgradeKind,before_level=beforeLevel,spent=spent.ToString(),pointer_first_hit=raycastTarget,
            input=new[]{c.Hero.joystick.Direction.x,c.Hero.joystick.Direction.y},position=new[]{c.Hero.transform.position.x,c.Hero.transform.position.y,c.Hero.transform.position.z},
            stage_label=c.Slider.Stage_txt.text,value_label=c.Slider.Value_txt.text,time=c.Forest.GameTime_Now,
            power_label=c.UpgradePanels[0].Lv_txt.text,power_price=c.UpgradePanels[0].Price_txt.text,power_value=c.UpgradePanels[0].Value_txt.text,
            speed_label=c.UpgradePanels[1].Lv_txt.text,speed_price=c.UpgradePanels[1].Price_txt.text,speed_value=c.UpgradePanels[1].Value_txt.text,
            bgm_playing=Sound_manager.instance!=null && Sound_manager.instance.bgmSource.isPlaying,
            bgm_playing_observed_while_running=bgmWhileRunning,
            save_folder=c.SaveFolderOverride??Path.Combine(Application.persistentDataPath,"RecoveredClient-vc257"),fixture="Current independent local recovery profile, existing earned progress preserved. Original Gun0/zero input/positions/pools/stats retained. Upgrade dispatches actual raycast PointerDown/Up/Click to original persistent callback and consumes earned money; progression persists normally.",
            paused_for_capture=true,time_scale=Time.timeScale},Newtonsoft.Json.Formatting.Indented));
    }
}
