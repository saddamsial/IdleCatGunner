using System;
using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using Object=UnityEngine.Object;

public sealed class CurrencyFeedbackTests
{
    private string folder;
    private GameClient client;
    private DamageTextPresenter presenter;
    private bool background;
    private void Configure(Scene scene,LoadSceneMode mode)
    {
        if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;
        folder=Path.Combine(Application.temporaryCachePath,"CurrencyFeedback-"+Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded+=Configure;
        yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();
        client=GameClient.Instance;presenter=Object.FindAnyObjectByType<DamageTextPresenter>();
        foreach(var cat in client.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;
        foreach(var bullet in Object.FindObjectsByType<Bullet>())bullet.gameObject.SetActive(false);
        presenter.enabled=false;presenter.enabled=true;
    }
    [UnityTearDown] public IEnumerator Teardown()
    {
        yield return SceneManager.LoadSceneAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;
        if(Directory.Exists(folder))Directory.Delete(folder,true);
        Application.runInBackground=background;Time.timeScale=1;
    }
    private bool HasAtlas(string name)=>presenter.GetComponentsInChildren<MeshRenderer>().Any(r=>r.sharedMaterial!=null&&r.sharedMaterial.mainTexture!=null&&r.sharedMaterial.mainTexture.name==name);
    [UnityTest] public IEnumerator TreeRewardShowsOriginalMoneyGlyphOnceAfterActualCredit()
    {
        // Capture the real reward on a visible original tree without moving it.
        var tree=Object.FindObjectsByType<Tree>().Where(t=>!t.enemy.is_Die)
            .Select(t=>new{tree=t,view=Camera.main.WorldToViewportPoint(t.transform.position)})
            .Where(t=>t.view.z>0&&t.view.x>.1f&&t.view.x<.9f&&t.view.y>.25f&&t.view.y<.75f)
            .OrderBy(t=>(new Vector2(t.view.x,t.view.y)-new Vector2(.5f,.5f)).sqrMagnitude).First().tree;
        var before=client.State.Money.Value;var accumulated=client.State.Money_Accum.Value;int emitted=presenter.EmittedCount;
        var expected=tree.enemy.Money.Value.Percent(client.Balance.Money(client.State.Upgrade_Lv[2]));
        tree.enemy.Die();
        Assert.That(presenter.LastContent,Is.EqualTo("+"+NumberText.Format(expected)));
        Assert.That(presenter.EmittedCount,Is.EqualTo(emitted+1));Assert.That(HasAtlas("Money_Cri"),Is.True);
        Assert.That((client.State.Money.Value-before).CompareTo(expected),Is.Zero);
        Assert.That((client.State.Money_Accum.Value-accumulated).CompareTo(expected),Is.Zero);
        tree.enemy.Die();Assert.That(presenter.EmittedCount,Is.EqualTo(emitted+1));
        yield return new WaitForSeconds(.25f);
        ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/forest-money-reward-gpu.png")));
        yield return null;
        tree=Object.FindObjectsByType<Tree>().First(t=>!t.enemy.is_Die);tree.enemy.is_MoneyDontDrop=true;
        before=client.State.Money.Value;emitted=presenter.EmittedCount;tree.enemy.Die();
        Assert.That(client.State.Money.Value.CompareTo(before),Is.Zero);Assert.That(presenter.EmittedCount,Is.EqualTo(emitted));
    }
    [UnityTest] public IEnumerator OreFractionTextDoesNotCreditWalletBeforeOrdinarySettlement()
    {
        var mine=client.MineMode;mine.Game_Enter();float deadline=Time.realtimeSinceStartup+20;
        while(mine.Entering&&Time.realtimeSinceStartup<deadline)yield return null;
        Assert.That(mine.Playing,Is.True);int dia=client.State.Dia,earned=client.State._getDia,score=mine.Dia_Score;
        Assert.That(mine.Map_obj.GetComponentsInChildren<SpriteRenderer>(true).All(r=>r.sharedMaterial!=null&&r.sharedMaterial.shader.isSupported),Is.True,"Mine sprites must have supported GPU materials");
        Assert.That(mine.Map_obj.GetComponentsInChildren<SpriteRenderer>(true).Single(r=>r.name=="Ground (1)").sharedMaterial.mainTextureScale,Is.EqualTo(new Vector2(14,7.48f)),"Original Floor3 tiling must be retained");
        foreach(int value in new[]{1,10})
        {
            // Select a visible original ore; do not move it or alter its health.
            var ore=mine.Ore_list.Where(o=>o.gameObject.activeSelf&&o._diaValue==value)
                .Select(o=>new{ore=o,view=Camera.main.WorldToViewportPoint(o.transform.position)})
                .Where(o=>o.view.z>0&&o.view.x>.1f&&o.view.x<.9f&&o.view.y>.15f&&o.view.y<.85f)
                .OrderBy(o=>(new Vector2(o.view.x,o.view.y)-new Vector2(.5f,.5f)).sqrMagnitude).First().ore;
            int emitted=presenter.EmittedCount;
            ore.enemy.Die();Assert.That(presenter.LastContent,Is.EqualTo(value==1?"+0.1":"+1"));
            Assert.That(presenter.EmittedCount,Is.EqualTo(emitted+1));Assert.That(HasAtlas("Dia"),Is.True);
            Assert.That(presenter.GetComponentsInChildren<MeshFilter>().Any(m=>m.GetComponent<MeshRenderer>().sharedMaterial.mainTexture.name=="Dia"&&m.sharedMesh.vertexCount==(value==1?16:8)),Is.True,"Original plus and decimal glyphs must all render");
            Assert.That(client.State.Dia,Is.EqualTo(dia));Assert.That(client.State._getDia,Is.EqualTo(earned));
            score+=value;Assert.That(mine.Dia_Score,Is.EqualTo(score));ore.enemy.Die();Assert.That(mine.Dia_Score,Is.EqualTo(score));
        }
        yield return new WaitForSeconds(.25f);
        ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mine-diamond-fractions-gpu.png")));yield return null;
        mine.Game_End();int reward=score/10;Assert.That(client.State.Dia,Is.EqualTo(dia+reward));
        Assert.That(client.State._getDia,Is.EqualTo(earned+reward*3));Assert.That(client.Currency.Dia_txt.text,Is.EqualTo((dia+reward).ToString()));
        mine.Game_End();Assert.That(client.State.Dia,Is.EqualTo(dia+reward));
        mine.Game_Exit();
    }
    [UnityTest] public IEnumerator SpeedRunRewardUsesNativeTripleCounterAndReloadDoesNotGrantAgain()
    {
        int dia=client.State.Dia,earned=client.State._getDia;client.SpeedRun.Game_Enter();yield return new WaitForSeconds(2);
        Assert.That(client.SpeedRun.Playing,Is.True);int reward=SpeedRun_manager.Reward_Value;
        client.SpeedRun.Game_Win();Assert.That(client.State.Dia,Is.EqualTo(dia+reward));
        Assert.That(client.State._getDia,Is.EqualTo(earned+reward*3));Assert.That(client.Currency.Dia_txt.text,Is.EqualTo((dia+reward).ToString()));
        client.SpeedRun.Game_Win();client.SaveNow();var saved=new SaveArchive(folder).Load();
        Assert.That(saved.Dia,Is.EqualTo(dia+reward));Assert.That(saved._getDia,Is.EqualTo(earned+reward*3));
        client.SpeedRun.Game_Exit();yield return new WaitForSeconds(2);
        yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();
        Assert.That(GameClient.Instance.State.Dia,Is.EqualTo(saved.Dia));Assert.That(GameClient.Instance.State._getDia,Is.EqualTo(saved._getDia));
    }
    [UnityTest] public IEnumerator CurrencyDisablingDetachesWalletAndReenableRefreshesLatestValue()
    {
        var currency=client.Currency;string before=currency.Money_txt.text;currency.enabled=false;
        client.AwardModeTreeMoney(CurrencyAmount.FromValue(new DecimalAmount(100)),client.Hero.transform.position);
        Assert.That(currency.Money_txt.text,Is.EqualTo(before),"Native OnDisable must detach its wallet listener");
        currency.enabled=true;Assert.That(currency.Money_txt.text,Is.EqualTo(client.State.Money.Value.PlainInteger()));
        currency.Bind(client);currency.Bind(client);currency.enabled=false;
        before=currency.Money_txt.text;client.AwardModeTreeMoney(CurrencyAmount.FromValue(new DecimalAmount(100)),client.Hero.transform.position);
        Assert.That(currency.Money_txt.text,Is.EqualTo(before));currency.enabled=true;
        Assert.That(currency.Money_txt.text,Is.EqualTo(client.State.Money.Value.PlainInteger()));yield return null;
    }
    [UnityTest] public IEnumerator MoneyAndDamageShareNativeCellThrottleWithoutLosingAnyIncome()
    {
        var tree=Object.FindObjectsByType<Tree>().First(t=>!t.enemy.is_Die);var coll=tree.GetComponentsInChildren<Collider>().First(c=>c.GetComponent<EnemyColl>()!=null);
        var point=tree.transform.position;var before=client.State.Money.Value;
        Assert.That(ForestDamageDispatch.Damage_Collider(coll,CurrencyAmount.FromValue(new DecimalAmount(1)),point,"1",false),Is.True);
        int emitted=presenter.EmittedCount;
        client.AwardModeTreeMoney(CurrencyAmount.FromValue(new DecimalAmount(2)),point);
        Assert.That(presenter.EmittedCount,Is.EqualTo(emitted),"Same-cell money text must wait0.2s even after damage text");
        Assert.That((client.State.Money.Value-before).CompareTo(new DecimalAmount(2)),Is.Zero);
        yield return new WaitForSeconds(.21f);
        client.AwardModeTreeMoney(CurrencyAmount.FromValue(new DecimalAmount(2)),point);
        Assert.That(presenter.EmittedCount,Is.EqualTo(emitted+1));Assert.That(presenter.LastContent,Is.EqualTo("+2"));
        ForestDamageDispatch.Damage_Collider(coll,CurrencyAmount.FromValue(new DecimalAmount(1)),point,"1",false);
        Assert.That(presenter.EmittedCount,Is.EqualTo(emitted+1));
        Assert.That((client.State.Money.Value-before).CompareTo(new DecimalAmount(4)),Is.Zero);
    }
    [Test] public void OrdinaryDiamondCounterKeepsExistingPrefixAndNativeIntegerArithmetic()
    {
        var state=new SaveData{Dia=17,_getDia=41};DiamondReward.Apply(state,30);
        Assert.That(state.Dia,Is.EqualTo(47));Assert.That(state._getDia,Is.EqualTo(131));
        DiamondReward.Apply(state,0);Assert.That(state._getDia,Is.EqualTo(131));
        state.Dia=int.MaxValue;state._getDia=int.MaxValue;DiamondReward.Apply(state,1);
        Assert.That(state.Dia,Is.EqualTo(int.MinValue));Assert.That(state._getDia,Is.EqualTo(int.MinValue+2));
    }
}
