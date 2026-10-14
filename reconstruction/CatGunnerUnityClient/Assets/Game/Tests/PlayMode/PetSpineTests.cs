using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using Spine.Unity;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
public sealed class PetSpineTests
{
 private static void Independent(Scene s,LoadSceneMode mode)
 {
  if(s.name!="GameClient")return;
  var c=s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();c.Persist=false;
  foreach(var cat in c.Team.Cat_list){cat.GetComponent<ForestCombatAcceptance>().enabled=false;var move=cat.GetComponent<ForestMovementAcceptance>();if(move!=null)move.enabled=false;}
 }
 private static string Reports=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
 [Test] public void AllThirteenOriginalSkeletonsRetainFourAnimationTracksAndAtlas()
 {
#if UNITY_EDITOR
  string[] names={"BlackCat","Slime","Slime2","Pigeon","Dove","Ghost","PillowGhost","Acorn","Frog","Bee","Chicken","PinkRabbit","Griffin"};
  foreach(var name in names){var a=UnityEditor.AssetDatabase.LoadAssetAtPath<SkeletonDataAsset>("Assets/MonoBehaviour/"+name+"_SkeletonData.asset");Assert.That(a,Is.Not.Null,name);var d=a.GetSkeletonData(false);Assert.That(d,Is.Not.Null,name);foreach(string n in new[]{"Idle","Walk","Attack","Busking"})Assert.That(d.FindAnimation(n),Is.Not.Null,name+"/"+n);Assert.That(a.atlasAssets[0].PrimaryMaterial.mainTexture.width,Is.GreaterThan(32));}
#endif
 }
 [UnityTest] public IEnumerator WorldPetsUseOriginalSkinsAndWalkIdleFacingWithoutRestartingSameTrack()
 {
  SceneManager.sceneLoaded+=Independent;
  try{
   yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;var manager=c.PetFollowers;
   c.State.Pet_Selected_items=new[]{0,5,9};c.ApplyBalance();manager.enabled=false;
   foreach(var p in manager.Pets){Assert.That(p.Skin_list.Count(g=>g.activeSelf),Is.EqualTo(1));Assert.That(p.Skin_list.First(g=>g.activeSelf).GetComponent<SkeletonAnimation>(),Is.Not.Null,"Static pet display must be replaced with original skeleton");Assert.That(p.GetComponentsInChildren<SpriteRenderer>(true).Any(s=>s.name.Contains("Recovery static")),Is.False);}
   var pet=manager.Pets[0];var anim=pet.Skin_list[0].GetComponent<SkeletonAnimation>();yield return null;var track=anim.AnimationState.GetCurrent(0);Assert.That(track.Animation.Name,Is.EqualTo("Idle"));
   var set=typeof(Pet).GetMethod("SetAnimation");Assert.That(set,Is.Not.Null);set.Invoke(pet,new object[]{"Idle"});Assert.That(anim.AnimationState.GetCurrent(0),Is.SameAs(track));
   var facing=typeof(Pet).GetMethod("SetFacing");Assert.That(facing,Is.Not.Null);facing.Invoke(pet,new object[]{-1f});Assert.That(Mathf.DeltaAngle(pet.Skin_list[0].transform.localEulerAngles.y,180),Is.EqualTo(0).Within(.001));facing.Invoke(pet,new object[]{.01f});Assert.That(Mathf.DeltaAngle(pet.Skin_list[0].transform.localEulerAngles.y,180),Is.EqualTo(0).Within(.001));facing.Invoke(pet,new object[]{1f});Assert.That(Mathf.DeltaAngle(pet.Skin_list[0].transform.localEulerAngles.y,0),Is.EqualTo(0).Within(.001));
   var mesh=anim.GetComponent<MeshFilter>();var before=mesh.sharedMesh.vertices;yield return new WaitForSeconds(.25f);Assert.That(mesh.sharedMesh.vertices.Where((v,i)=>i<before.Length&&Vector3.Distance(v,before[i])>.0001f).Any(),Is.True,"Original animated vertices must change");
   manager.enabled=true;pet.Warp(c.Hero.transform.position+new Vector3(-20,0,-20));yield return new WaitForFixedUpdate();Assert.That(anim.AnimationName,Is.EqualTo("Walk"));manager.enabled=false;set.Invoke(pet,new object[]{"Idle"});yield return null;Assert.That(anim.AnimationName,Is.EqualTo("Idle"));
   pet.Reload(9);Assert.That(pet.Skin_list[9].activeSelf,Is.True);Assert.That(pet.Skin_list[0].activeSelf,Is.False);Assert.That(pet.Skin_list[9].GetComponent<SkeletonAnimation>().AnimationName,Is.EqualTo("Idle"));
   ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/pet-spine-world-test-gpu.png"));yield return new WaitForSeconds(.2f);
  }finally{SceneManager.sceneLoaded-=Independent;}
  yield return TestSceneLoader.LoadAsync("TargetPreview");
 }
 [UnityTest] public IEnumerator AdventurePreviewUsesSelectedThenOwnedOrderAndExcludesLockedDuplicates()
 {
  SceneManager.sceneLoaded+=Independent;
  try{
   yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;var m=c.Adventure;var p=m.adventure_panel_ui;
   c.State.Pet_Selected_items=new[]{2,2,7};c.State.Owned_Pet_list=Enumerable.Repeat(-1,16).ToArray();c.State.Owned_Pet_list[0]=1;c.State.Owned_Pet_list[3]=9;c.State.Selected_LockGroup=new[]{-1,0,-1};c.State.Owned_Pet_LockGroup=Enumerable.Repeat(-1,16).ToArray();c.State.Owned_Pet_LockGroup[3]=0;
   m.Open();yield return new WaitForSeconds(.4f);Assert.That(p.Pet_Dummy_list.Length,Is.EqualTo(19));Assert.That(p.Pet_Dummy_list.All(x=>x!=null),Is.True,"Original preview components required");Assert.That(p.RenderTexture_Map_obj.activeInHierarchy,Is.True);
   var visible=p.Pet_Dummy_list.Where(x=>x.gameObject.activeSelf).ToArray();Assert.That(visible.Length,Is.EqualTo(3));var grades=visible.Select(x=>Array.FindIndex(x.GetType().GetField("Skin_obj").GetValue(x) as GameObject[],g=>g.activeSelf)).ToArray();Assert.That(grades,Is.EqualTo(new[]{2,7,1}));
   foreach(var d in visible){var a=d.GetComponentInChildren<SkeletonAnimation>();Assert.That(a,Is.Not.Null);Assert.That(a.AnimationName,Is.EqualTo("Idle"));}
   var raw=p.GetComponentsInChildren<UnityEngine.UI.RawImage>(true).SingleOrDefault(r=>r.texture is RenderTexture);Assert.That(raw,Is.Not.Null);Assert.That(raw.texture,Is.InstanceOf<RenderTexture>());var rt=(RenderTexture)raw.texture;Assert.That(rt.IsCreated(),Is.True);Assert.That(Camera.allCameras.Any(cam=>cam.targetTexture==rt&&cam.enabled),Is.True);
   ScreenCapture.CaptureScreenshot(Path.Combine(Reports,"visual/pet-spine-adventure-test-gpu.png"));yield return new WaitForSeconds(.2f);
   c.State.Selected_LockGroup[1]=-1;p.RenderTexture_Map_Reload();Assert.That(p.Pet_Dummy_list.Count(x=>x.gameObject.activeSelf),Is.EqualTo(4));
   m.LocalTabs.Menu_Reload(1);yield return null;Assert.That(Camera.allCameras.Any(cam=>cam.targetTexture==rt&&cam.enabled&&cam.gameObject.activeInHierarchy),Is.False,"Closed preview camera should stop rendering");m.LocalTabs.Menu_Reload(0);yield return null;Assert.That(p.Pet_Dummy_list.Count(x=>x.gameObject.activeSelf),Is.EqualTo(4));m.Close();yield return null;Assert.That(Camera.allCameras.Any(cam=>cam.targetTexture==rt&&cam.enabled&&cam.gameObject.activeInHierarchy),Is.False);
  }finally{SceneManager.sceneLoaded-=Independent;}
  yield return TestSceneLoader.LoadAsync("TargetPreview");
 }
 [UnityTest] public IEnumerator AllNineteenPhysicalPetsRefreshAfterRealDispatchCancelAndCloseReopen()
 {
  SceneManager.sceneLoaded+=Independent;
  try{
   yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;var m=c.Adventure;var panel=m.adventure_panel_ui;
   c.State.Pet_Selected_items=new[]{0,1,2};c.State.Owned_Pet_list=Enumerable.Range(0,16).Select(i=>i%10).ToArray();c.State.Selected_LockGroup=Enumerable.Repeat(-1,3).ToArray();c.State.Owned_Pet_LockGroup=Enumerable.Repeat(-1,16).ToArray();m.Now=()=>new DateTime(2024,1,7,12,0,0);m.Open();yield return new WaitForSeconds(.4f);
   Assert.That(panel.Pet_Dummy_list.Count(d=>d.gameObject.activeSelf),Is.EqualTo(19));Assert.That(panel.Pet_Dummy_list.All(d=>d.Skin_obj.Count(g=>g.activeSelf)==1),Is.True);Assert.That(panel.Pet_Dummy_list.Select(d=>d.GetComponentInChildren<SkeletonAnimation>().AnimationState).Distinct().Count(),Is.EqualTo(19));
   Assert.That(m.Adventure_Start(Map_Type.Forest,0,new[]{Dispatch_Pet.Selected(1)}),Is.True);Assert.That(panel.Pet_Dummy_list.Count(d=>d.gameObject.activeSelf),Is.EqualTo(18));Assert.That(c.State.Selected_LockGroup[1],Is.EqualTo(0));
   // Native world pets still use equipped slots; dispatch only filters the preview.
   c.ApplyBalance();Assert.That(c.PetFollowers.Pets.Count(p=>p.gameObject.activeSelf),Is.EqualTo(3));
   m.Adventure_Cancel(Map_Type.Forest,0);Assert.That(panel.Pet_Dummy_list.Count(d=>d.gameObject.activeSelf),Is.EqualTo(19));Assert.That(c.State.Selected_LockGroup[1],Is.EqualTo(-1));
   var raw=panel.GetComponentsInChildren<UnityEngine.UI.RawImage>(true).Single(r=>r.texture is RenderTexture);var rt=(RenderTexture)raw.texture;yield return new WaitForEndOfFrame();var previous=RenderTexture.active;RenderTexture.active=rt;var pixels=new Texture2D(rt.width,rt.height,TextureFormat.RGBA32,false);pixels.ReadPixels(new Rect(0,0,rt.width,rt.height),0,0);pixels.Apply();RenderTexture.active=previous;Assert.That(pixels.GetPixels32().Select(c0=>c0.GetHashCode()).Distinct().Count(),Is.GreaterThan(100),"Original preview must actually render coloured pixels");UnityEngine.Object.Destroy(pixels);
   for(int i=0;i<2;i++){m.Close();yield return null;Assert.That(panel.RenderTexture_Map_obj.activeSelf,Is.False);m.Open();yield return null;Assert.That(panel.RenderTexture_Map_obj.activeSelf,Is.True);Assert.That(panel.Pet_Dummy_list.Count(d=>d.gameObject.activeSelf),Is.EqualTo(19));}m.Close();
  }finally{SceneManager.sceneLoaded-=Independent;}
  yield return TestSceneLoader.LoadAsync("TargetPreview");
 }
 [UnityTest] public IEnumerator IndependentColdReloadRetainsPetEquipmentAndInitializesSkeletons()
 {
  string folder=Path.Combine(Path.GetTempPath(),"catgunner-spine-"+Guid.NewGuid().ToString("N"));UnityEngine.Events.UnityAction<Scene,LoadSceneMode> configure=(scene,mode)=>{Independent(scene,mode);if(scene.name=="GameClient"){var client=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single();client.Persist=true;client.SaveFolderOverride=folder;}};SceneManager.sceneLoaded+=configure;
  try{
   yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();var c=GameClient.Instance;c.State.Owned_Pet_list[0]=9;c.State.Pet_Collect[9]=true;Assert.That(c.Pets.Equip(0,2),Is.True);c.SaveNow();yield return TestSceneLoader.LoadAsync("TargetPreview");yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();c=GameClient.Instance;Assert.That(c.State.Pet_Selected_items,Is.EqualTo(new[]{-1,-1,9}));Assert.That(c.State.Owned_Pet_list[0],Is.EqualTo(-1));var pet=c.PetFollowers.Pets.Single(p=>p.gameObject.activeSelf);Assert.That(pet.Skin_list[9].activeSelf,Is.True);Assert.That(pet.Skin_list[9].GetComponent<SkeletonAnimation>().Skeleton,Is.Not.Null);c.Adventure.Open();yield return new WaitForSeconds(.35f);Assert.That(c.Adventure.adventure_panel_ui.Pet_Dummy_list.Count(d=>d.gameObject.activeSelf),Is.EqualTo(1));c.Persist=false;
  }finally{SceneManager.sceneLoaded-=configure;}
  yield return TestSceneLoader.LoadAsync("TargetPreview");
 }

}
