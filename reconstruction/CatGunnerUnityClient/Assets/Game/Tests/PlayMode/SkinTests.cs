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
public sealed class SkinTests
{
    private static void Independent(Scene s,LoadSceneMode mode)
    {
        if(s.name!="GameClient")return;
        var c=s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();c.Persist=false;
        foreach(var cat in c.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;
    }
    private static void Click(Button b)
    {
        Assert.That(b.gameObject.activeInHierarchy&&b.interactable,Is.True,b.name);Canvas.ForceUpdateCanvases();var r=(RectTransform)b.transform;
        var e=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,r.TransformPoint(r.rect.center))};
        var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(e,hits);Assert.That(hits.Count,Is.GreaterThan(0));
        Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(b),string.Join(" | ",hits.Take(6).Select(h=>h.gameObject.name+"/"+h.gameObject.transform.parent.name)));
        ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,e,ExecuteEvents.pointerClickHandler);
    }
    private static string Reports=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
    [Test] public void NativeTwentyFiveRowsUseAllUnlockedBonusesAndKeepPurchaseSeparateFromSelection()
    {
        var s=new SaveData{Dia=300,PetCoin=17,StarGem=21};var m=new SkinProgression(s);var c=m.Catalogue;
        Assert.That(c.PercentFormat,Is.EqualTo("+{0}%"));Assert.That(c.PriceFormat,Is.EqualTo("<sprite=1>{0}"));
        for(int i=0;i<25;i++)Assert.That((c.Rows[i].Damage,c.Rows[i].Speed,c.Rows[i].Money,c.Prices[i]),Is.EqualTo((16*i,10*i,5*i,100*i)));
        Assert.That(m.Purchase(1),Is.True);Assert.That((s.Dia,s._useDia,s.Skin_Selected_num),Is.EqualTo((200,300,0)));
        Assert.That(m.Purchase(2),Is.True);Assert.That((s.Dia,s._useDia,s.Skin_Selected_num),Is.EqualTo((0,900,0)));
        Assert.That((m.Bonus(0),m.Bonus(1),m.Bonus(2)),Is.EqualTo((48,30,15)));Assert.That(m.Select(2),Is.True);Assert.That(m.Select(0),Is.True);
        Assert.That((m.Bonus(0),m.Bonus(1),m.Bonus(2)),Is.EqualTo((48,30,15)));Assert.That((s.PetCoin,s.StarGem),Is.EqualTo((17,21)));
        s.Dia=30000;for(int i=3;i<25;i++)Assert.That(m.Purchase(i),Is.True);Assert.That((m.Bonus(0),m.Bonus(1),m.Bonus(2)),Is.EqualTo((4800,3000,1500)));
    }
    [Test] public void OwnershipWalletAndMalformedProfilesRejectBeforeMutationAndLegacyInitializesNeutral()
    {
        var s=new SaveData{Dia=99};var m=new SkinProgression(s);
        foreach(int i in new[]{-1,0,1,25})Assert.That(m.Purchase(i),Is.False);Assert.That(m.Select(1),Is.False);Assert.That((s.Dia,s._useDia,s.Skin_Selected_num),Is.EqualTo((99,0,0)));Assert.That(s.Skin_Unlock.Count(x=>x),Is.EqualTo(1));
        s.Dia=100;Assert.That(m.Purchase(1),Is.True);Assert.That(m.Purchase(1),Is.False);Assert.That(s.Dia,Is.Zero);
        var bad=new SaveData{Dia=81,Skin_Unlock=new[]{true,false},Skin_Selected_num=0};Assert.Throws<InvalidOperationException>(()=>SkinRules.ValidateState(bad));Assert.That(bad.Skin_Unlock.Length,Is.EqualTo(2));Assert.That(bad.Dia,Is.EqualTo(81));
        var missing=new SaveData{Skin_Selected_num=2};Assert.Throws<InvalidOperationException>(()=>SkinRules.ValidateState(missing));Assert.That(missing.Skin_Unlock,Is.Null);
        var locked=new SaveData{Skin_Unlock=new bool[25],Skin_Selected_num=1};locked.Skin_Unlock[0]=true;Assert.Throws<InvalidOperationException>(()=>SkinRules.ValidateState(locked));Assert.That(locked.Skin_Unlock[1],Is.False);
        var legacy=new SaveData{Dia=37,Skin_Unlock=Array.Empty<bool>()};SkinRules.ValidateState(legacy);Assert.That(legacy.Skin_Unlock,Is.EqualTo(new[]{true}.Concat(new bool[24]).ToArray()));Assert.That(legacy.Dia,Is.EqualTo(37));
    }
    [UnityTest] public IEnumerator OriginalListDetailsPurchaseSelectAndNavigationUseActualPointerRaycasts()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;var m=c.Skins;var p=m.skin_info_ui;
            Assert.That(m.Skin_item_list.Length,Is.EqualTo(25));Assert.That(c.Team.Cat_list.All(cat=>cat.skin_spriteRenderer.sprite==m.Skin_Bone_sprites[0]),Is.True);
            Click(UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="Skin_Btn"));yield return new WaitForSeconds(.4f);
            Assert.That(m.Skin_List_UI.activeInHierarchy,Is.True);Click(m.Skin_item_list[1].GetComponent<Button>());yield return new WaitForSeconds(.4f);
            Assert.That(p.SkinNum,Is.EqualTo(1));Assert.That(p.Purchase_Btn.interactable,Is.False);Assert.That(p.Price_txt.color,Is.EqualTo(p.Color_Disable));Assert.That(p.Locked_img.gameObject.activeSelf,Is.True);
            Assert.That(new[]{p.Damage_txt.text,p.Speed_txt.text,p.Money_txt.text,p.Price_txt.text},Is.EqualTo(new[]{"+16%","+10%","+5%","<sprite=1>100"}));
            c.State.Dia=100;c.SkinChanged();Assert.That(p.Purchase_Btn.interactable,Is.True);Assert.That(p.Price_txt.color,Is.EqualTo(Color.white));
            Directory.CreateDirectory(Path.Combine(Reports,"visual"));ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/skin-locked-test-gpu.png"));yield return new WaitForSeconds(.2f);
            Click(p.Purchase_Btn);Assert.That(c.State.Dia,Is.Zero);Assert.That(m.Selected_num,Is.Zero);Assert.That(p.Select_Btn_obj.activeSelf,Is.True);Assert.That(p.Purchase_Btn_obj.activeSelf,Is.False);Assert.That(c.Hero.Damage_str,Is.EqualTo("116"));
            yield return new WaitForSeconds(.4f);Click(p.Select_Btn_obj.GetComponent<Button>());Assert.That(m.Selected_num,Is.EqualTo(1));Assert.That(p.Selected_obj.activeSelf,Is.True);
            foreach(var cat in c.Team.Cat_list){Assert.That(cat.skin_spriteRenderer.sprite,Is.SameAs(m.Skin_Bone_sprites[1]));Assert.That(cat.hand_spriteRenderer.color,Is.EqualTo(m.Skin_Colors[1]));}
            ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/skin-selected-test-gpu.png"));yield return new WaitForSeconds(.2f);
            Click(p.Next_Btn_obj.GetComponent<Button>());Assert.That(p.SkinNum,Is.EqualTo(2));Click(p.Before_Btn_obj.GetComponent<Button>());Assert.That(p.SkinNum,Is.EqualTo(1));
            p.Reload(24);Assert.That(p.Next_Btn_obj.activeSelf,Is.False);p.Panel_Next();Assert.That(p.SkinNum,Is.EqualTo(24));p.Reload(0);Assert.That(p.Before_Btn_obj.activeSelf,Is.False);p.Panel_Before();Assert.That(p.SkinNum,Is.Zero);
            Click(p.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));Assert.That(p.gameObject.activeSelf,Is.False);
            Click(m.Skin_List_UI.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));Assert.That(m.Skin_List_UI.activeSelf,Is.False);
            ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/skin-world-test-gpu.png"));yield return new WaitForSeconds(.2f);
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("TargetPreview");
    }
    [UnityTest] public IEnumerator IndependentProfileReloadRebirthAndRaidPreserveOwnershipSelectionAndCumulativeBonus()
    {
        string folder=Path.Combine(Path.GetTempPath(),"catgunner-skin-profile-"+Guid.NewGuid().ToString("N"));
        UnityEngine.Events.UnityAction<Scene,LoadSceneMode> isolated=(s,mode)=>{Independent(s,mode);if(s.name=="GameClient"){var c=s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();c.Persist=true;c.SaveFolderOverride=folder;}};
        SceneManager.sceneLoaded+=isolated;
        try
        {
            yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;c.State.Dia=300;Assert.That(c.Skins.Purchase(1)&&c.Skins.Purchase(2)&&c.Skins.Select(2),Is.True);c.Skins.skin_info_ui.Close();c.Skins.Skin_List_UI.SetActive(false);c.SaveNow();
            yield return SceneManager.LoadSceneAsync("TargetPreview");yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;c=GameClient.Instance;
            Assert.That(c.SaveFolderOverride,Is.EqualTo(folder));Assert.That((c.Skins.Selected_num,c.State.Dia,c.State._useDia),Is.EqualTo((2,0,900)));Assert.That(c.State.Skin_Unlock.Count(x=>x),Is.EqualTo(3));Assert.That(c.Hero.Damage_str,Is.EqualTo("148"));
            c.Forest.Stage_Now=2;Assert.That(c.RebirthNow(),Is.True);Assert.That(c.Skins.Selected_num,Is.EqualTo(2));Assert.That(c.Hero.Damage_str,Is.EqualTo("148"));
            var raid=c.RaidMode;raid.Now=()=>new DateTime(2024,1,1);c.State.Owned_Gun_list[0]=30;raid.Panel_Open();raid.Gun_UnSelect(1);
            raid.Game_Enter_Normal();yield return new WaitForSeconds(2.15f);Assert.That(c.Mode,Is.EqualTo(5));
            var expected=raid.Raid_Damage_return(30).Value.Percent(new DecimalAmount(148));Assert.That(c.Hero.Damage.Value.CompareTo(expected),Is.Zero);
            Assert.That(c.Hero.skin_spriteRenderer.sprite,Is.SameAs(c.Skins.Skin_Bone_sprites[2]));raid.Game_Exit();yield return new WaitForSeconds(1.85f);
            Assert.That(c.Mode,Is.Zero);Assert.That(c.Hero.Damage_str,Is.EqualTo("148"));Assert.That(c.Skins.Selected_num,Is.EqualTo(2));c.Persist=false;
        }
        finally{SceneManager.sceneLoaded-=isolated;}
        yield return SceneManager.LoadSceneAsync("TargetPreview");Directory.Delete(folder,true);
    }
    [Serializable] private sealed class Observation {public int hits,skinPurchased,skinSelected;public string damage,reward,wallet,fixture;public bool critical;public float cooldownBefore,cooldownAfter;}
    [UnityTest] public IEnumerator PurchasedSkinChangesNaturalProjectilesCooldownAndOriginalTreeWalletReward()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;var c=GameClient.Instance;float before=c.Hero.AtkCool_Max;c.State.Dia=100;Assert.That(c.Skins.Purchase(1),Is.True);c.Skins.skin_info_ui.Close();c.Skins.Skin_List_UI.SetActive(false);
            Assert.That(c.Hero.Damage_str,Is.EqualTo("116"));Assert.That(c.Hero.AtkCool_Max,Is.EqualTo(before*100/110).Within(.0001f));
            var trees=c.Forest.Map_obj.GetComponentsInChildren<Tree>(false);var tree=trees.First(t=>t!=c.Forest.Boss_tree&&t.enemy.Health_Max.Value.CompareTo(new DecimalAmount(250))==0);
            foreach(var t in trees)if(t!=tree)t.gameObject.SetActive(false);tree.transform.position=c.Hero.transform.position+new Vector3(0,0,12);Physics.SyncTransforms();c.Hero.ClearNearObj();c.Hero.ClearAutoTarget();
            var money=c.State.Money.Value;var reward=tree.enemy.Money.Value.Percent(new DecimalAmount(105));int hits=0;bool critical=false;
            Action<Vector3,string,bool> observed=(pos,text,cri)=>{hits++;critical|=cri;Assert.That(text,Is.EqualTo("116"));};ForestDamageDispatch.DamageTextPending+=observed;
            try
            {
                c.Hero.GetComponent<ForestCombatAcceptance>().enabled=true;for(int i=0;i<260&&tree.gameObject.activeSelf;i++)yield return new WaitForFixedUpdate();
                Assert.That(tree.gameObject.activeSelf,Is.False);Assert.That(hits,Is.EqualTo(3));Assert.That(critical,Is.False);Assert.That(c.State.Money.Value.CompareTo(money+reward),Is.Zero);
                File.WriteAllText(Path.Combine(Reports,"skin-projectile-observation.json"),JsonUtility.ToJson(new Observation {hits=hits,damage=c.Hero.Damage_str,critical=critical,skinPurchased=1,skinSelected=c.Skins.Selected_num,cooldownBefore=before,cooldownAfter=c.Hero.AtkCool_Max,reward=reward.PlainInteger(),wallet=c.State.Money.Value.PlainInteger(),fixture="Independent100diamond purchase; original Gun0/tree250HP. Position only; natural targeting/projectiles/drop event, no damage/HP/time injection."},true));
            }
            finally{ForestDamageDispatch.DamageTextPending-=observed;}
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("TargetPreview");
    }
}
