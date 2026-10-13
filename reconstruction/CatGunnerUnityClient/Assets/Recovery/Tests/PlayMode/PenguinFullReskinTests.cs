using System;using System.IO;using System.Linq;using System.Collections;using CatGunner.Recovery;using NUnit.Framework;using UnityEngine;using UnityEngine.SceneManagement;using UnityEngine.TestTools;using UnityEngine.UI;using Object=UnityEngine.Object;
public sealed class PenguinFullReskinTests
{
 string folder;RecoveryForestClient client;PenguinFullReskin theme;
 void Isolate(Scene s,LoadSceneMode m){if(s.name=="RecoveredClient")s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride=folder;}
 [UnitySetUp]public IEnumerator Setup(){Time.timeScale=1;Application.runInBackground=true;folder=Path.Combine(Application.temporaryCachePath,"PenguinFull-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Isolate;yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();client=RecoveryForestClient.Instance;client.DailyLogin.AutoShow=false;client.Tutorial.SetCleared();client.DailyLogin.Close();theme=client.GetComponent<PenguinFullReskin>();Assert.That(theme,Is.Not.Null);}
 [UnityTearDown]public IEnumerator Cleanup(){Time.timeScale=1;yield return SceneManager.LoadSceneAsync("RecoveredTarget");SceneManager.sceneLoaded-=Isolate;if(Directory.Exists(folder))Directory.Delete(folder,true);}
 [UnityTest]public IEnumerator FullCataloguePreservesInputHitboxesStatsAndCanRestore()
 {
  ForestRuntimeAcceptance.IsGaming=false;yield return null;
  var guns=client.Guns.Gun_list.Select(g=>new{g.type,damage=g.Damage.Value,speed=g.AtkSpeed}).ToArray();var selected=client.State.Selected_items.ToArray();var money=client.State.Money.Value;int dia=client.State.Dia;
  var bones=client.Skins.Skin_Bone_sprites.ToArray();var colliders=Object.FindObjectsByType<Collider>(FindObjectsInactive.Include,FindObjectsSortMode.None).Select(c=>c.GetInstanceID()).OrderBy(x=>x).ToArray();
  var buttons=client.Slider.GetComponentInParent<Canvas>().GetComponentsInChildren<Button>(true).Select(b=>new{b,rect=((RectTransform)b.transform).rect,bindings=Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Select(i=>b.onClick.GetPersistentTarget(i).GetInstanceID()+":"+b.onClick.GetPersistentMethodName(i)).ToArray()}).ToArray();
  Assert.That(client.Skins.Skin_sprites.Select(s=>s.texture).Distinct().Count(),Is.EqualTo(25));Assert.That(client.Guns.Gun_sprites.Select(s=>s.texture).Distinct().Count(),Is.EqualTo(65));Assert.That(client.Fish.Fish_sprites.Length,Is.EqualTo(13));Assert.That(client.PetUI.Pet_sprites.Length,Is.EqualTo(13));
  Assert.That(theme.OriginalGlyphs.Length,Is.EqualTo(5));for(int i=0;i<5;i++){Assert.That(theme.ThemedGlyphs[i].spriteCharacterTable.Select(g=>g.glyphIndex),Is.EqualTo(theme.OriginalGlyphs[i].spriteCharacterTable.Select(g=>g.glyphIndex)));Assert.That(theme.ThemedGlyphs[i].spriteGlyphTable.Select(g=>g.metrics),Is.EqualTo(theme.OriginalGlyphs[i].spriteGlyphTable.Select(g=>g.metrics)));}
  var ui=client.GetComponent<PenguinUiTheme>();ui.enabled=false;theme.enabled=false;yield return null;Assert.That(client.Skins.Skin_sprites[0].name,Is.EqualTo("0"));Assert.That(client.Guns.Gun_sprites[0].name,Is.EqualTo("0"));
  theme.enabled=true;ui.enabled=true;yield return null;Assert.That(client.Skins.Skin_sprites[0].name,Does.StartWith("Fit_"));Assert.That(client.Skins.Skin_Bone_sprites,Is.EqualTo(bones));
  Assert.That(client.Guns.Gun_list.Select(g=>new{g.type,damage=g.Damage.Value,speed=g.AtkSpeed}),Is.EqualTo(guns));Assert.That(client.State.Selected_items,Is.EqualTo(selected));Assert.That(client.State.Money.Value.CompareTo(money),Is.Zero);Assert.That(client.State.Dia,Is.EqualTo(dia));
  Assert.That(Object.FindObjectsByType<Collider>(FindObjectsInactive.Include,FindObjectsSortMode.None).Select(c=>c.GetInstanceID()).OrderBy(x=>x),Is.EqualTo(colliders));
  foreach(var r in buttons){Assert.That(((RectTransform)r.b.transform).rect,Is.EqualTo(r.rect));Assert.That(Enumerable.Range(0,r.b.onClick.GetPersistentEventCount()).Select(i=>r.b.onClick.GetPersistentTarget(i).GetInstanceID()+":"+r.b.onClick.GetPersistentMethodName(i)),Is.EqualTo(r.bindings));}
 }
 [UnityTest]public IEnumerator AllThreePenguinsAnimateSelectedSkinBlinkAndHonorPause()
 {
  ForestRuntimeAcceptance.IsGaming=false;client.Inventory.AddRewardGun(5);client.Inventory.Equip(Array.FindIndex(client.State.Owned_Gun_list,g=>g==5),1);client.Inventory.AddRewardGun(10);client.Inventory.Equip(Array.FindIndex(client.State.Owned_Gun_list,g=>g==10),2);client.ApplyBalance();yield return null;
  client.State.Skin_Unlock[17]=true;Assert.That(client.Skins.Select(17),Is.True);yield return null;
  var motions=client.Team.Cat_list.Select(c=>c.GetComponentInChildren<PenguinBoneMotion>(true)).ToArray();Assert.That(motions.Length,Is.EqualTo(3));
  foreach(var c in client.Team.Cat_list){c.enabled=false;var combat=c.GetComponent<ForestCombatAcceptance>();if(combat!=null)combat.enabled=false;var movement=c.GetComponent<ForestMovementAcceptance>();if(movement!=null)movement.enabled=false;c.skin_spriteRenderer.enabled=false;c.anim.SetBool("Walk",true);}
  foreach(var m in motions)Assert.That(m.Renderer.sharedMaterial.mainTexture,Is.SameAs(theme.Skins[17].texture));
  var before=motions.Select(m=>m.VisualMesh.vertices).ToArray();yield return new WaitForSeconds(.38f);
  for(int i=0;i<3;i++)Assert.That(before[i].Zip(motions[i].VisualMesh.vertices,(a,b)=>Vector3.Distance(a,b)).Max(),Is.GreaterThan(.01f));
  yield return new WaitForSeconds(4.1f);Assert.That(theme.Expressions.Take(3).All(e=>e.BlinkCount>0),Is.True);
  Time.timeScale=0;yield return null;var frozen=motions.Select(m=>m.VisualMesh.vertices).ToArray();var blink=theme.Expressions.Select(e=>e.Blink).ToArray();yield return new WaitForSecondsRealtime(.2f);
  for(int i=0;i<3;i++)Assert.That(frozen[i].Zip(motions[i].VisualMesh.vertices,(a,b)=>Vector3.Distance(a,b)).Max(),Is.LessThan(.0001f));Assert.That(theme.Expressions.Select(e=>e.Blink),Is.EqualTo(blink));Time.timeScale=1;
 }
 [UnityTest]public IEnumerator AdventurePetsKeepTheLivePreviewCameraAndSelection()
 {
  ForestRuntimeAcceptance.IsGaming=false;client.State.Pet_Selected_items=new[]{0,2,4};client.State.Selected_LockGroup=new[]{-1,-1,-1};client.ApplyBalance();client.Adventure.Open();yield return new WaitForSeconds(.35f);
  var panel=client.Adventure.adventure_panel_ui;var raw=panel.GetComponentsInChildren<UnityEngine.UI.RawImage>(true).Single(r=>r.texture is RenderTexture);var texture=(RenderTexture)raw.texture;
  Assert.That(texture.IsCreated(),Is.True);var camera=panel.RenderTexture_Map_obj.GetComponentInChildren<Camera>();Assert.That(camera.enabled&&camera.gameObject.activeInHierarchy,Is.True);Assert.That(camera.targetTexture,Is.SameAs(texture));
  var shown=panel.Pet_Dummy_list.Where(d=>d.gameObject.activeInHierarchy).ToArray();Assert.That(shown.Length,Is.EqualTo(3));Assert.That(panel.Pet_Dummy_list.All(d=>d.GetComponentInChildren<PenguinPetPreview>(true)!=null),Is.True);
  foreach(var d in shown){int n=Array.FindIndex(d.Skin_obj,g=>g.activeSelf);var r=d.GetComponentInChildren<PenguinPetPreview>().GetComponent<SpriteRenderer>();Assert.That(r.sprite,Is.SameAs(theme.Pets[n]));Assert.That(r.enabled,Is.True);Assert.That(r.bounds.size.magnitude,Is.GreaterThan(.1f));Assert.That(d.Skin_obj[n].GetComponentsInChildren<Renderer>().All(v=>!v.enabled),Is.True);var point=camera.WorldToViewportPoint(r.bounds.center);Assert.That(point.x,Is.InRange(0f,1f));Assert.That(point.y,Is.InRange(0f,1f));}
  client.Adventure.Close();yield return null;Assert.That(camera.gameObject.activeInHierarchy,Is.False);
 }
 [UnityTest]public IEnumerator NaturalShotsKeepSingleRewardAndHavePolarEffectTextures()
 {
  Assert.That(theme.StyledParticleCount,Is.GreaterThan(100));
  var attackEmitters=Object.FindObjectsByType<ParticleSystem>(FindObjectsInactive.Include,FindObjectsSortMode.None).Where(p=>p.GetComponentInParent<Bullet>(true)!=null||p.GetComponentInParent<Bullet_FX>(true)!=null||p.GetComponentInParent<Gun>(true)!=null);foreach(var p in attackEmitters){var tex=p.GetComponent<ParticleSystemRenderer>().sharedMaterial?.mainTexture;if(tex!=null)Assert.That(tex.name,Does.Not.StartWith("effects-"));}
  var bullet=Object.FindObjectsByType<Bullet>(FindObjectsInactive.Include,FindObjectsSortMode.None).First();Assert.That(theme.PreserveOriginalAttackEffects,Is.True);foreach(var p in bullet.GetComponentsInChildren<ParticleSystem>(true)){var r=p.GetComponent<ParticleSystemRenderer>();if(r.sharedMaterial?.mainTexture!=null)Assert.That(r.sharedMaterial.mainTexture.name,Does.Not.StartWith("effects-"));}
  int before=client.Forest.TreeCount_Now;var wallet=client.State.Money.Value;float until=Time.realtimeSinceStartup+25;
  while(client.Forest.TreeCount_Now==before&&Time.realtimeSinceStartup<until)yield return null;Assert.That(client.Forest.TreeCount_Now,Is.LessThan(before));Assert.That(client.State.Money.Value.CompareTo(wallet),Is.GreaterThan(0));
  ForestRuntimeAcceptance.IsGaming=false;foreach(var c in client.Team.Cat_list)c.enabled=false;foreach(var b in Object.FindObjectsByType<Bullet>())b.gameObject.SetActive(false);
  var ice=Object.FindObjectsByType<Tree>().First(t=>!t.enemy.is_Die);wallet=client.State.Money.Value;var expected=ice.enemy.Money.Value.Percent(client.Balance.Money(client.State.Upgrade_Lv[2]));ForestRuntimeAcceptance.IsGaming=true;ice.enemy.Die();ice.enemy.Die();Assert.That((client.State.Money.Value-wallet).CompareTo(expected),Is.Zero);
  Assert.That(Object.FindObjectsByType<Transform>(FindObjectsInactive.Include,FindObjectsSortMode.None).Any(t=>t.name=="Ice shard"||t.name=="Ice fracture"),Is.False);
 }
 [UnityTest]public IEnumerator EveryBossVariantUsesNewBodyAndNativeDeathPaysOnce()
 {
  client.BossMode.Stage_Now=270;client.BossMode.Game_Enter();yield return new WaitForSeconds(2.3f);ForestRuntimeAcceptance.IsGaming=false;
  for(int i=0;i<9;i++){client.BossMode.Stage_Now=270+i;client.BossMode._boss.Spawn();yield return null;var actor=client.BossMode._boss.GetComponentInChildren<PenguinCatalogActor>();Assert.That(actor.Visual.sprite,Is.SameAs(theme.Bosses[i]));Assert.That(client.BossMode._boss.enemy.Health_Now.Value.CompareTo(client.BossMode.Health_return(270+i).Value),Is.Zero);Assert.That(client.BossMode._boss.Head_spriteRenderer.All(r=>!r.enabled),Is.True);}
  int dia=client.State.Dia;ForestRuntimeAcceptance.IsGaming=true;client.BossMode._boss.enemy.Die();client.BossMode._boss.enemy.Die();Assert.That(client.State.Dia-dia,Is.EqualTo(150));Assert.That(client.State.Boss_Stage,Is.EqualTo(279));
  client.BossMode.Game_Exit();yield return new WaitForSeconds(2.5f);client.RaidMode.Map_obj.SetActive(true);
  for(int i=0;i<5;i++){client.RaidMode._boss.Spawn(client.RaidMode.Health_Balance[0],i);yield return null;var actor=client.RaidMode._boss.GetComponentInChildren<PenguinCatalogActor>();Assert.That(actor.Visual.sprite,Is.SameAs(theme.RaidBosses[i]));}
 }
 [UnityTest]public IEnumerator ExtraBindingsPreserveHealthFractionAndRestoreRawTextures()
 {
  ForestRuntimeAcceptance.IsGaming=false;foreach(var cat in client.Team.Cat_list)cat.enabled=false;
  var fill=client.Forest.GetComponentsInChildren<SpriteFill>(true).First();fill.Value_Reload(.37f);var renderer=fill.GetComponent<SpriteRenderer>();Assert.That(renderer.sprite.name,Does.Contain("extras-health-fill"));
  var raw=client.Slider.GetComponentInParent<Canvas>().GetComponentsInChildren<RawImage>(true).First(r=>r.name=="Prism");var live=client.Slider.GetComponentInParent<Canvas>().GetComponentsInChildren<RawImage>(true).First(r=>r.texture is RenderTexture);var rt=live.texture;
  Assert.That(raw.texture,Is.SameAs(theme.ThemedTextures[0]));theme.enabled=false;yield return null;Assert.That(renderer.color.r,Is.EqualTo(.37f));Assert.That(raw.texture,Is.SameAs(theme.OriginalTextures[0]));var bounds=renderer.sprite.bounds;
  theme.enabled=true;yield return null;Assert.That(renderer.color.r,Is.EqualTo(.37f));Assert.That(renderer.sprite.bounds,Is.EqualTo(bounds));Assert.That(raw.texture,Is.SameAs(theme.ThemedTextures[0]));Assert.That(live.texture,Is.SameAs(rt));
  raw.texture=theme.OriginalTextures[0];yield return new WaitForEndOfFrame();Assert.That(raw.texture,Is.SameAs(theme.ThemedTextures[0]));
 }

}
