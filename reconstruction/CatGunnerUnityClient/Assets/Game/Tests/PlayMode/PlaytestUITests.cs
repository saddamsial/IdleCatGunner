using System;
using System.IO;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public sealed class PlaytestUITests
{
    string folder; GameClient c; bool background;
    void Independent(Scene s,LoadSceneMode m){if(s.name=="GameClient")s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup(){background=Application.runInBackground;Application.runInBackground=true;folder=Path.Combine(Application.temporaryCachePath,"PlaytestUI-"+Guid.NewGuid().ToString("N"));if(TestContext.CurrentContext.Test.Name==nameof(UserProgressCloneNaturallyAnimatesMovesFiresAndAdvancesBar)){Directory.CreateDirectory(folder);var clone=SaveArchive.Decode(File.ReadAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/checkpoints/playtest-ui-before/NoSaveFile.json"))));clone.LastSaveTime=DateTime.UtcNow.ToString("O");File.WriteAllText(Path.Combine(folder,"NoSaveFile.json"),SaveArchive.Encode(clone));}SceneManager.sceneLoaded+=Independent;yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();c=GameClient.Instance;c.DailyLogin.Close();c.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;}
    [UnityTearDown] public IEnumerator Cleanup(){Time.timeScale=1;yield return SceneManager.LoadSceneAsync("TargetPreview");SceneManager.sceneLoaded-=Independent;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
    Transform Find(string name)=>c.Slider.GetComponentInParent<Canvas>().GetComponentsInChildren<Transform>(true).First(t=>t.name==name);
    IEnumerator Capture(string name){yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/playtest-ui-"+name+"-gpu.png")));yield return new WaitForSecondsRealtime(.2f);}
    [UnityTest] public IEnumerator CompanionsUseAnimatedBonesAndOriginalPlacement()
    {
        c.State.Selected_items=new[]{20,20,35};c.ApplyBalance();c.Team.Warp(new Vector3(-100,0,0));yield return null;
        yield return Capture("companions");Find("Gun_UI  (SafeArea)").gameObject.SetActive(true);Find("GunList_UI").gameObject.SetActive(true);c.Guns.ReloadGunUI();yield return null;yield return Capture("inventory");
        var row=new {cats=c.Team.Cat_list.Select(x=>new{pos=x.transform.position.ToString(),skinBounds=x.skin_spriteRenderer.bounds.ToString(),components=x.skin_spriteRenderer.GetComponents<Component>().Select(b=>b.GetType().FullName).ToArray()}),stageFill=c.Slider.Stage_Fill.fillAmount,valueFill=c.Slider.Value_Fill.fillAmount,stageScale=c.Slider.Stage_Fill.transform.lossyScale.ToString(),valueScale=c.Slider.Value_Fill.transform.lossyScale.ToString()};
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/playtest-ui-after-observation.txt")),row.ToString());
        {
            Assert.That(c.Team.Cat_list[1].skin_spriteRenderer.GetComponents<Component>().Any(x=>x.GetType().Name=="SpriteSkin"),Is.True,"second cat needs original animated skin");
            var root=Find("Gun_UI  (SafeArea)");Assert.That(root.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Info_Btn").interactable,Is.True);
            Assert.That(root.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Collection_Btn").interactable,Is.True);
            c.Forest.Stage_Now=0;c.Forest.Level_Now=0;c.Forest.Stage_Value_Max=100;c.ApplyBalance();Assert.That(c.Hero.moveSpeed,Is.EqualTo(30),"cleared forest stage native two-times move speed");
        }
    }
    IEnumerator Click(Component target)
    {
        Assert.That(target.gameObject.activeInHierarchy,Is.True,target.name);Canvas.ForceUpdateCanvases();var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        try
        {
            var rect=(RectTransform)target.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
            Assert.That(hits.FirstOrDefault().gameObject?.GetComponentInParent(target.GetType()),Is.SameAs(target),string.Join("|",hits.Take(5).Select(h=>h.gameObject.name)));
            mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
        }
        finally{module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
    }
    IEnumerator OpenInventory(){yield return Click(Find("Gun_Btn").GetComponent<Button>());yield return new WaitForSecondsRealtime(.6f);}
    [UnityTest] public IEnumerator OriginalInformationCollectionAndWalletUseActualMouseClicks()
    {
        c.State.Dia=99;c.NotifyTutorialCurrencyChanged();yield return OpenInventory();var page=Find("GunList_UI");var presentation=c.GetComponent<ClientPresentation>();
        var wallet=page.Find("Panel/Menu (Gun List)/Currency");Assert.That(wallet.Find("Money").gameObject.activeSelf,Is.False);Assert.That(wallet.Find("Dia/Price_txt").GetComponent<TMPro.TMP_Text>().text,Is.EqualTo("99"));
        var price=page.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Draw_Btn").transform.Find("Price_txt").GetComponent<TMPro.TMP_Text>();Assert.That(price.color,Is.EqualTo(c.UpgradePanels[0].Color_Disable));
        c.State.Dia=100;c.NotifyTutorialCurrencyChanged();Assert.That(price.color,Is.EqualTo(Color.white));Assert.That(wallet.Find("Dia/Price_txt").GetComponent<TMPro.TMP_Text>().text,Is.EqualTo("100"));
        yield return Click(page.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Info_Btn"));Assert.That(presentation.DrawInformation.activeInHierarchy,Is.True);yield return Capture("draw-information");
        yield return Click(presentation.DrawInformation.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));Assert.That(presentation.DrawInformation.activeSelf,Is.False);
        c.State.Gun_Collect[0]=true;c.State.Gun_Collect[64]=false;yield return Click(page.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Collection_Btn"));var collection=presentation.Collection;Assert.That(collection.gameObject.activeInHierarchy,Is.True);Assert.That(collection.Gun_Item_list.Length,Is.EqualTo(65));
        Assert.That(collection.Gun_Item_list[0].Locked_obj.activeSelf,Is.False);Assert.That(collection.Gun_Item_list[64].Locked_obj.activeSelf,Is.True);yield return Capture("collection");
        var item=collection.Gun_Item_list[0];yield return Click(item.GetComponent<Button>());Assert.That(c.Guns.gun_info_ui.gameObject.activeInHierarchy,Is.True);Assert.That(c.Guns.gun_info_ui.Gun_img.sprite,Is.SameAs(c.Guns.Gun_sprites[0]));c.Guns.gun_info_ui.Close();
        yield return Click(collection.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));Assert.That(collection.gameObject.activeSelf,Is.False);
        c.Forest.Stage_Value_Max=389;c.Guns.ReloadGunUI();Assert.That(c.Guns.Gun_Slot_List[0].StarUpgrade_obj.activeSelf,Is.False);Assert.That(c.Guns.Gun_Slot_List[0].transform.Find("FusionAble_obj").gameObject.activeSelf,Is.False);
        c.Forest.Stage_Value_Max=390;c.State.StarGem=50;c.Guns.ReloadGunUI();var slot=c.Guns.Gun_Slot_List[0];Assert.That(slot.StarUpgrade_obj.activeSelf,Is.True);Assert.That(slot.StarUpgrade_Lv_txt.text,Is.EqualTo("0"));yield return Capture("star-slots");yield return Click(slot.StarUpgrade_obj.GetComponent<Button>());
        Assert.That(c.StarUpgrades.popup.gameObject.activeInHierarchy,Is.True);yield return Click(c.StarUpgrades.popup.Upgrade_Btn_img.GetComponent<Button>());Assert.That(c.State.StarGem,Is.Zero);Assert.That(c.State.Star_Slot_Lv[0],Is.EqualTo(1));c.StarUpgrades.popup.Close();
    }
    [UnityTest] public IEnumerator StageAndPercentBarsExpandTheirActualRenderedMeshes()
    {
        Mesh MeshOf(SlicedFilledImage fill){Canvas.ForceUpdateCanvases();return UnityEngine.Object.Instantiate(fill.canvasRenderer.GetMesh());}
        c.Slider.Value_Reload(.25f);c.Slider.Stage_Reload(0,1);yield return null;var mesh=MeshOf(c.Slider.Value_Fill);Assert.That(mesh.bounds.size.x,Is.EqualTo(c.Slider.Value_Fill.rectTransform.rect.width*.25f).Within(1));UnityEngine.Object.Destroy(mesh);yield return Capture("progress25");
        c.Slider.Value_Reload(.75f);c.Slider.Stage_Reload(0,3);yield return null;mesh=MeshOf(c.Slider.Value_Fill);Assert.That(mesh.bounds.size.x,Is.EqualTo(c.Slider.Value_Fill.rectTransform.rect.width*.75f).Within(1));UnityEngine.Object.Destroy(mesh);mesh=MeshOf(c.Slider.Stage_Fill);Assert.That(mesh.bounds.size.x,Is.EqualTo(c.Slider.Stage_Fill.rectTransform.rect.width*.75f).Within(1));UnityEngine.Object.Destroy(mesh);Assert.That(c.Slider.Value_txt.text,Is.EqualTo("75%"));yield return Capture("progress75");
    }
    [UnityTest] public IEnumerator SideMenusRespectOrderAndOnlyNearestLockedFeatures()
    {
        var left=Find("Left_Menu");var right=Find("Right_Menu");
        Assert.That(left.Cast<Transform>().Select(t=>t.name).ToArray(),Is.EqualTo(new[]{"StepUp_obj","Buff_obj","Shop_Btn","Rebirth_Btn","Pet_Btn ","Fish_Btn","Skin_Btn","Gun_Btn"}));
        Assert.That(right.Cast<Transform>().Select(t=>t.name).ToArray(),Is.EqualTo(new[]{"DiaPig_obj","Auto_obj","Raid_Btn","Adventure_Btn","Monster_Btn","Boss_Btn","Mine_Btn","SpeedRun_Btn"}));
        var gates=Contents_Unlock_manager.instance;
        foreach(int display in new[]{1,3,4,5,6,10,11,12,34,35,39,40})
        {
            c.Forest.Stage_Value_Max=(display-1)*10;gates.Reload();yield return null;Canvas.ForceUpdateCanvases();int next=Contents_Unlock_manager.Next_Unlock_Stage_return();
            foreach(var feature in gates.Content_list){int unlock=Contents_Unlock_manager.Unlock_Stage_return(feature.Type);Assert.That(feature.Btn_obj.activeSelf,Is.EqualTo(unlock<=display||unlock==next),display+"/"+feature.Type);}
            foreach(var group in new[]{left,right}){var active=group.Cast<Transform>().Where(t=>t.gameObject.activeSelf).ToArray();for(int i=1;i<active.Length;i++)Assert.That(active[i-1].position.y,Is.GreaterThan(active[i].position.y),display+"/"+active[i].name);}
        }
        yield return Capture("all-unlocked-menu");int completed=c.LocalStore.Completed;yield return Click(left.Find("Shop_Btn").GetComponent<Button>());Assert.That(c.LocalStore.Completed,Is.EqualTo(completed),"Shop entry opens catalogue without buying a specific product");
    }
    [TestCase(999,"999")][TestCase(1000,"1a")][TestCase(1050,"1.05a")][TestCase(1234,"1.23a")][TestCase(99999,"99.99a")][TestCase(1000000,"1b")]
    public void NativeNumberTruncationAndUnitsKeepArithmetic(long value,string expected){var n=new DecimalAmount(value);Assert.That(NumberText.Format(n),Is.EqualTo(expected));Assert.That(n.PlainInteger(),Is.EqualTo(value.ToString()));}
    [UnityTest] public IEnumerator ClearedForestDoublesActualPhysicsMovementAndResetsAtFrontier()
    {
        c.State.Selected_items=new[]{0,0,-1};c.Forest.Stage_Now=0;c.Forest.Level_Now=0;c.Forest.Stage_Value_Max=0;c.ApplyBalance();Assert.That(c.Hero.moveSpeed,Is.EqualTo(15));Assert.That(c.Team.Cat_list[1].moveSpeed,Is.EqualTo(17));
        var cat=c.Hero;typeof(Joystick).GetField("input",System.Reflection.BindingFlags.Instance|System.Reflection.BindingFlags.NonPublic).SetValue(cat.joystick,Vector2.right);
        cat.Warp(new Vector3(1000,10,1000));cat.rb.useGravity=false;cat.HandleMovement();var start=cat.transform.position;for(int i=0;i<10;i++)yield return new WaitForFixedUpdate();float normal=Vector3.Distance(cat.transform.position,start);
        c.Forest.Stage_Value_Max=1;c.ApplyBalance();Assert.That(cat.moveSpeed,Is.EqualTo(30));Assert.That(c.Team.Cat_list[1].moveSpeed,Is.EqualTo(34));cat.Warp(new Vector3(1000,10,1000));cat.HandleMovement();start=cat.transform.position;for(int i=0;i<10;i++)yield return new WaitForFixedUpdate();float fast=Vector3.Distance(cat.transform.position,start);Assert.That(fast/normal,Is.EqualTo(2).Within(.05));
        c.Forest.Level_Now=1;c.ApplyBalance();Assert.That(cat.moveSpeed,Is.EqualTo(15));Assert.That(c.Team.Cat_list[1].moveSpeed,Is.EqualTo(17));c.SuspendForestForMode(3);c.Forest.Stage_Value_Max=100;c.ApplyBalance();Assert.That(cat.moveSpeed,Is.EqualTo(15),"Boss mode excludes cleared-forest bonus");
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/playtest-ui-movement-distance.txt")),"normal="+normal+", cleared="+fast+", ratio="+fast/normal);
    }
    [UnityTest] public IEnumerator STierLaserTransparencyAndSSSXOriginalParticlesRemainBound()
    {
        var bullet=Polling_manager.instance.Polling_List[0].Objects[0].GetComponent<Bullet>();
        foreach(int gun in new[]{23,34,39})
        {
            var p=bullet.Skin_particles[gun];Assert.That(p,Is.Not.Null);if(gun==23){var ring=p.transform.Find("Ring").GetComponent<ParticleSystemRenderer>();Assert.That(ring.sharedMaterial.GetFloat("_SrcBlend"),Is.EqualTo(5));Assert.That(ring.sharedMaterial.GetFloat("_DstBlend"),Is.EqualTo(10));Assert.That(ring.mesh.name,Is.EqualTo("RingMesh02"));}
            else Assert.That(p.transform.Find("Mesh").GetComponent<ParticleSystemRenderer>().sharedMaterial.name,Is.EqualTo("50379979a12ff894db75a22a52189633"));
            bullet.SpawnEx(gun,c.Hero.transform.position+Vector3.up*3,Vector3.right,CurrencyAmount.FromValue(new DecimalAmount(100)),"100",false,GunType.SINGLE,0,640,.6f);yield return new WaitForSeconds(.12f);Time.timeScale=0;yield return Capture("projectile"+gun);Time.timeScale=1;bullet.DieAndWait();yield return new WaitForSeconds(1.1f);
        }
    }
    [UnityTest] public IEnumerator UserProgressCloneNaturallyAnimatesMovesFiresAndAdvancesBar()
    {
        Assert.That(c.State.Selected_items,Is.EqualTo(new[]{34,39,23}));var cats=c.Team.Cat_list;var before=cats.Select(x=>x.transform.position).ToArray();int hits=0;Action<Vector3,string,bool> onHit=(p,v,cri)=>hits++;ForestDamageDispatch.DamageTextPending+=onHit;float maxFill=0;var bone=cats[1].skin_spriteRenderer.transform.Find("bone_1");Assert.That(bone,Is.Not.Null);var local=bone.localPosition;bool boneMoved=false;int rounds=c.RoundsStarted;ForestRuntimeAcceptance.IsGaming=true;
        try
        {
            float end=Time.realtimeSinceStartup+8;while(Time.realtimeSinceStartup<end){yield return null;maxFill=Mathf.Max(maxFill,c.Slider.Value_Fill.fillAmount);boneMoved|=Vector3.Distance(local,bone.localPosition)>.001f;}
            Assert.That(hits,Is.GreaterThan(0),"natural original projectile physics damage");Assert.That(maxFill>0||c.RoundsStarted>rounds,Is.True,"natural tree defeats advance progress");Assert.That(boneMoved,Is.True,"second companion bone animation runs");
            for(int i=0;i<cats.Length;i++){Assert.That(Vector3.Distance(before[i],cats[i].transform.position),Is.GreaterThan(.1f),"cat"+i+" moves automatically");Assert.That(Vector3.Distance(cats[i].skin_spriteRenderer.bounds.center,cats[i].transform.position),Is.LessThan(20),"skin follows cat"+i);}
            Assert.That(c.Currency.Money_txt.text.Length,Is.LessThan(15));ForestRuntimeAcceptance.IsGaming=false;yield return new WaitForSeconds(2.5f);yield return Capture("user-profile-natural");
            File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/playtest-ui-natural-observation.txt")),"hits="+hits+", maxFill="+maxFill+", newRounds="+(c.RoundsStarted-rounds)+", boneMoved="+boneMoved+", wallet="+c.Currency.Money_txt.text);
        }
        finally{ForestRuntimeAcceptance.IsGaming=false;ForestDamageDispatch.DamageTextPending-=onHit;}
    }
}
