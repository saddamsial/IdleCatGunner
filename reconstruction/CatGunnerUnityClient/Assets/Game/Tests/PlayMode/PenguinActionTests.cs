using System;using System.IO;using System.Linq;using System.Collections;using NUnit.Framework;using UnityEngine;using UnityEngine.SceneManagement;using UnityEngine.TestTools;using CatGunner.Runtime;
[Category("PenguinSkinningRegression")]
public sealed class PenguinActionTests
{
 string folder;GameClient c;
 void Isolate(Scene s,LoadSceneMode m){if(s.name=="GameClient")s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
 [UnitySetUp]public IEnumerator Setup(){Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"PenguinAction-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Isolate;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();c=GameClient.Instance;c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Tutorial.SetCleared();}
 [UnityTearDown]public IEnumerator Cleanup(){Time.timeScale=1;yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Isolate;if(Directory.Exists(folder))Directory.Delete(folder,true);}
 [UnityTest]public IEnumerator ShortWingTracksEquipmentWithoutMovingNativeMuzzle()
 {
  ForestRuntimeAcceptance.IsGaming=false;foreach(var cat in c.Team.Cat_list){cat.enabled=false;var movement=cat.GetComponent<ForestMovementAcceptance>();if(movement!=null)movement.enabled=false;var combat=cat.GetComponent<ForestCombatAcceptance>();if(combat!=null)combat.enabled=false;}
  var h=c.Hero;var wing=h.GetComponentInChildren<PenguinHoldingWing>(true);var motion=h.GetComponentInChildren<PenguinBoneMotion>(true);Assert.That(wing,Is.Not.Null);
  for(int id=0;id<65;id+=16){var slot=h.Gun_list[id];var gun=slot.GetComponent<Gun>();var pos=gun.Shoot_trans.localPosition;var rot=gun.Shoot_trans.localRotation;h.GunNum=id;yield return new WaitForEndOfFrame();Assert.That(wing.Weapon.sprite,Is.SameAs(slot.GetComponent<SpriteRenderer>().sprite));Assert.That(wing.GripSpan/motion.BodyHeight,Is.LessThan(.25f));Assert.That(gun.Shoot_trans.localPosition,Is.EqualTo(pos));Assert.That(gun.Shoot_trans.localRotation,Is.EqualTo(rot));Assert.That(slot.GetComponent<SpriteRenderer>().enabled,Is.False);}
  var full=c.GetComponent<PenguinFullReskin>();Assert.That(full.EyeA.All(e=>e.z>0)&&full.EyeB.All(e=>e.z>0),Is.True);Assert.That(full.Skins.Select(s=>s.texture).Distinct().Count(),Is.EqualTo(25));
 }
 [UnityTest]public IEnumerator NativeShotsExpressFocusAndNativeWinMakesThreeVisualHopsOnce()
 {
  var m=c.Hero.GetComponentInChildren<PenguinBoneMotion>(true);var e=c.Hero.GetComponentInChildren<PenguinExpression>(true);int shots=m.Shots;float until=Time.realtimeSinceStartup+25;float focus=0;
  while(m.Shots==shots&&Time.realtimeSinceStartup<until){focus=Mathf.Max(focus,e.Focus);yield return null;}yield return new WaitForSeconds(.08f);Assert.That(m.Shots,Is.GreaterThan(shots));Assert.That(e.Focus,Is.GreaterThan(.1f));
  c.Forest.Stage_Value_Max=c.Forest.Stage_Now*10+c.Forest.Level_Now;int wins=m.VictoryCount,stage=c.Forest.Stage_Now*10+c.Forest.Level_Now;c.GameWin();c.GameWin();yield return new WaitForEndOfFrame();Assert.That(m.VictoryCount,Is.EqualTo(wins+1));var next=c.Forest.Stage_Now*10+c.Forest.Level_Now;Assert.That(next,Is.GreaterThan(stage));
  int peaks=0;bool above=false;float age=0,maxHappy=0;var root=c.Hero.transform.position;float maxLift=0;while(age<1.55f){age+=Time.deltaTime;bool now=m.JumpAmount>.9f;if(now&&!above)peaks++;above=now;maxLift=Mathf.Max(maxLift,m.JumpAmount);maxHappy=Mathf.Max(maxHappy,e.Happy);Assert.That(c.Hero.GetComponentInChildren<PenguinHoldingWing>().Weapon.enabled,Is.True);yield return null;}
  Assert.That(maxHappy,Is.GreaterThan(.99f));Assert.That(peaks,Is.EqualTo(3));Assert.That(maxLift,Is.GreaterThan(.95f));Assert.That(c.Hero.transform.position.y,Is.EqualTo(root.y).Within(.01f));Assert.That(c.Forest.Stage_Now*10+c.Forest.Level_Now,Is.EqualTo(next));Assert.That(m.VictoryCount,Is.EqualTo(wins+1));
 }
}
