using System;using System.IO;using System.Linq;using System.Collections;
using CatGunner.Runtime;using NUnit.Framework;using UnityEngine;using UnityEngine.SceneManagement;using UnityEngine.TestTools;
using Object=UnityEngine.Object;
public sealed class PenguinPolarRingTests
{
 string folder;GameClient client;PenguinFullReskin theme;GameObject preview;
 void Isolate(Scene scene,LoadSceneMode mode){if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
 [UnitySetUp]public IEnumerator Setup(){Time.timeScale=1;Application.runInBackground=true;folder=Path.Combine(Application.temporaryCachePath,"PenguinRing-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Isolate;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;theme=client.GetComponent<PenguinFullReskin>();ForestRuntimeAcceptance.IsGaming=false;}
 [UnityTearDown]public IEnumerator Cleanup(){Time.timeScale=1;if(preview!=null)Object.Destroy(preview);yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Isolate;if(Directory.Exists(folder))Directory.Delete(folder,true);}
 ParticleSystem Source()=>Object.FindObjectsByType<Bullet>(FindObjectsInactive.Include).First().Skin_particles[19].GetComponentsInChildren<ParticleSystem>(true).First(p=>p.name=="Ring");
 static string Curve(ParticleSystem.MinMaxCurve c)=>c.mode+":"+c.constantMin+":"+c.constantMax+":"+c.curveMultiplier+":"+Keys(c.curveMin)+":"+Keys(c.curveMax);
 static string Keys(AnimationCurve curve)=>curve==null?"null":string.Join(";",curve.keys.Select(k=>k.time+","+k.value+","+k.inTangent+","+k.outTangent+","+k.inWeight+","+k.outWeight+","+k.weightedMode));
 static string Appearance(ParticleSystem p){var m=p.main;var r=p.GetComponent<ParticleSystemRenderer>();var z=p.rotationOverLifetime;var s=p.sizeOverLifetime;var c=p.colorOverLifetime;return string.Join("|",r.renderMode,r.alignment,m.startRotation3D,Curve(m.startRotationX),Curve(m.startRotationY),Curve(m.startRotationZ),m.startSizeMultiplier,z.enabled,z.separateAxes,Curve(z.x),Curve(z.y),Curve(z.z),s.enabled,s.separateAxes,Curve(s.x),Curve(s.y),Curve(s.z),c.enabled,string.Join(";",c.color.gradient.alphaKeys.Select(k=>k.time+","+k.alpha)),r.sharedMaterial.GetInstanceID(),p.textureSheetAnimation.enabled);}
 static string NativeTiming(ParticleSystem p){var m=p.main;var e=p.emission;var bursts=new ParticleSystem.Burst[e.burstCount];e.GetBursts(bursts);return string.Join("|",m.loop,m.duration,Curve(m.startLifetime),Curve(m.startSpeed),m.maxParticles,m.simulationSpace,e.enabled,Curve(e.rateOverTime),Curve(e.rateOverDistance),string.Join(";",bursts.Select(b=>b.time+","+Curve(b.count)+","+b.cycleCount+","+b.repeatInterval+","+b.probability)));}

 [UnityTest]public IEnumerator OriginalRingKeepsAtlasNativeModulesAndHonorsPause()
 {
  Assert.That(theme.PreserveClassicRingStyle,Is.True);var source=Source();string style=Appearance(source),timing=NativeTiming(source);theme.enabled=false;yield return null;Assert.That(Appearance(source),Is.EqualTo(style));Assert.That(NativeTiming(source),Is.EqualTo(timing));theme.enabled=true;yield return null;Assert.That(Appearance(source),Is.EqualTo(style));
  Assert.That(source.GetComponent<ParticleSystemRenderer>().renderMode,Is.EqualTo(ParticleSystemRenderMode.Mesh));Assert.That(source.textureSheetAnimation.enabled,Is.True);Assert.That(source.textureSheetAnimation.numTilesX,Is.EqualTo(3));Assert.That(source.textureSheetAnimation.numTilesY,Is.EqualTo(3));
  preview=Object.Instantiate(source.gameObject);preview.transform.SetParent(null);preview.SetActive(true);var p=preview.GetComponent<ParticleSystem>();p.Stop(true,ParticleSystemStopBehavior.StopEmittingAndClear);var emission=p.emission;emission.enabled=false;var main=p.main;main.loop=false;p.Play(false);p.Emit(1);yield return null;Time.timeScale=0;yield return null;
  var particles=new ParticleSystem.Particle[1];Assert.That(p.GetParticles(particles),Is.EqualTo(1));float lifetime=particles[0].remainingLifetime;var rotation=particles[0].rotation3D;
  yield return new WaitForSecondsRealtime(.2f);Assert.That(p.GetParticles(particles),Is.EqualTo(1));Assert.That(particles[0].remainingLifetime,Is.EqualTo(lifetime).Within(.0001f));Assert.That(Vector3.Distance(particles[0].rotation3D,rotation),Is.LessThan(.0001f));Time.timeScale=1;
 }
}
