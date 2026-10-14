using System;
using System.Collections;
using System.IO;
using System.Linq;
using System.Reflection;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class TargetRotationTests
{
    string folder;GameClient client;bool background;GameObject first,second;
    string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/"+name));
    void Configure(Scene scene,LoadSceneMode mode){if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup()
    {
        background=Application.runInBackground;Application.runInBackground=true;folder=Path.Combine(Application.temporaryCachePath,"TargetRotation-"+Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded+=Configure;yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;
        client.DailyLogin.Close();client.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;client.Hero.GetComponent<ForestCombatAcceptance>().EnableTargeting=false;client.Hero.ClearNearObj();
        first=new GameObject("Target rotation fixture A");first.AddComponent<BoxCollider>();first.transform.position=client.Hero.transform.position+Vector3.forward*12;
        second=new GameObject("Target rotation fixture B");second.AddComponent<BoxCollider>();second.transform.position=first.transform.position+Vector3.right*5;
    }
    [UnityTearDown] public IEnumerator Cleanup(){Time.timeScale=1;if(first!=null)UnityEngine.Object.Destroy(first);if(second!=null)UnityEngine.Object.Destroy(second);yield return SceneManager.LoadSceneAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
    void Track(GameObject go){typeof(Cat).GetField("nearObj",BindingFlags.Instance|BindingFlags.NonPublic).SetValue(client.Hero,go!=null?go.GetComponent<Collider>():null);client.Hero.UpdateTargetIndicator();}
    IEnumerator Capture(string name){yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Report("visual/target-rotation-"+name+"-gpu.png"));yield return new WaitForSecondsRealtime(.2f);}
    [UnityTest] public IEnumerator TrackedMarkerRotatesPausesAndFollowsTargetSwitch()
    {
        Track(first);var triangle=client.Hero.Target_obj.transform.Find("Triangle");Assert.That(triangle.gameObject.activeInHierarchy,Is.True);var start=triangle.localRotation;
        yield return new WaitForSeconds(1);Assert.That(Quaternion.Angle(start,triangle.localRotation),Is.GreaterThan(35),"original 3sec linear/incremental local rotation is missing");
        yield return Capture("first");Time.timeScale=0;var paused=triangle.localRotation;yield return new WaitForSecondsRealtime(.35f);Assert.That(Quaternion.Angle(paused,triangle.localRotation),Is.LessThan(.01f),"original scaled tween pauses");
        Time.timeScale=1;Track(second);Assert.That(client.Hero.Target_obj.transform.position,Is.EqualTo(second.transform.position));yield return new WaitForSeconds(.35f);Assert.That(Quaternion.Angle(paused,triangle.localRotation),Is.GreaterThan(10));yield return Capture("second");
        Track(null);Assert.That(client.Hero.Target_obj.activeSelf,Is.False);Assert.That(triangle.localPosition,Is.EqualTo(new Vector3(0,2,0)));Assert.That(triangle.localScale,Is.EqualTo(new Vector3(3,3,3)));
    }
    [UnityTest] public IEnumerator NativeTiltDirectionLoopsAndHiddenPhaseArePreserved()
    {
        Track(first);var triangle=client.Hero.Target_obj.transform.Find("Triangle");var rotation=triangle.GetComponent<TargetRotation>();Assert.That(rotation,Is.Not.Null);Assert.That(rotation.SourceComponent,Is.EqualTo(123889));
        Assert.That(rotation.CycleChange.x,Is.EqualTo(0).Within(.001));Assert.That(rotation.CycleChange.y,Is.EqualTo(0).Within(.001));Assert.That(rotation.CycleChange.z,Is.EqualTo(-180).Within(.001));
        var original=JsonUtility.FromJson<TargetRotation.Configuration>(Resources.Load<TextAsset>("TargetRotation").text);
        Assert.That(original.SourceQuaternion.eulerAngles.y,Is.EqualTo(345).Within(.001),"actual native tilt differs from hint15");
        yield return new WaitForEndOfFrame();var before=triangle.localRotation;double at=Time.timeAsDouble;
        // Independent oracle: original fixed X/Y and -60deg/sec local Z imply
        // right multiplication by a local-forward quaternion, not a zeroed tilt.
        yield return new WaitForSeconds(.8f);yield return new WaitForEndOfFrame();
        var expected=before*Quaternion.AngleAxis(-60*(float)(Time.timeAsDouble-at),Vector3.forward);Assert.That(Quaternion.Angle(expected,triangle.localRotation),Is.LessThan(.06));
        before=triangle.localRotation;at=Time.timeAsDouble;yield return new WaitForSeconds(3.2f);yield return new WaitForEndOfFrame();
        expected=before*Quaternion.AngleAxis(-60*(float)(Time.timeAsDouble-at),Vector3.forward);Assert.That(Quaternion.Angle(expected,triangle.localRotation),Is.LessThan(.06),"incremental loop has no restart jump");
        before=triangle.localRotation;at=Time.timeAsDouble;Track(null);yield return new WaitForSeconds(.6f);Track(second);
        expected=before*Quaternion.AngleAxis(-60*(float)(Time.timeAsDouble-at),Vector3.forward);Assert.That(Quaternion.Angle(expected,triangle.localRotation),Is.LessThan(.06),"visibility does not rewind native phase");
        Assert.That(client.Hero.Target_obj.transform.position,Is.EqualTo(second.transform.position));Assert.That(triangle.GetComponent<SpriteRenderer>().sprite,Is.Not.Null);Assert.That(triangle.GetComponent<SpriteRenderer>().sharedMaterial.shader.isSupported,Is.True);
        Assert.That(client.Hero.Target_obj.GetComponent<MeshRenderer>().enabled,Is.False,"original disabled Disc stays disabled");
        Assert.That(client.State.Dia,Is.EqualTo(0),"rotation grants no resources");
        File.WriteAllText(Report("target-rotation-observation.txt"),"original component123889; actual source tilt45,-15,~0; cycle change(0,0,-180); 60deg/sec negative local Z; 3.2sec crossing and hidden0.6sec preserve phase; scaled pause; position/scale/material/original disabled Disc unchanged");
    }
    [UnityTest] public IEnumerator NaturalZeroInputBattleShowsAnimatedTargetAndHidesItWhenStopped()
    {
        client.Hero.GetComponent<ForestCombatAcceptance>().EnableTargeting=true;ForestRuntimeAcceptance.IsGaming=true;
        var target=client.Hero.Target_obj;var triangle=target.transform.Find("Triangle");float deadline=Time.realtimeSinceStartup+8;
        while(!target.activeInHierarchy&&Time.realtimeSinceStartup<deadline)yield return null;
        Assert.That(target.activeInHierarchy,Is.True,"normal zero-input battle acquires a visible marker");var start=triangle.localRotation;
        float scaledStart=Time.time;while(Time.time-scaledStart<.45f){yield return null;Assert.That(target.activeInHierarchy,Is.True,"natural targeting retains marker during this attack interval");}
        Assert.That(Quaternion.Angle(start,triangle.localRotation),Is.GreaterThan(15));Assert.That(client.Hero.AttackTarget,Is.Not.Null);Assert.That(target.transform.position,Is.EqualTo(client.Hero.AttackTarget.transform.position));
        yield return Capture("natural");ForestRuntimeAcceptance.IsGaming=false;yield return null;yield return null;Assert.That(target.activeSelf,Is.False,"original owner still clears target when gameplay stops");
    }
}
