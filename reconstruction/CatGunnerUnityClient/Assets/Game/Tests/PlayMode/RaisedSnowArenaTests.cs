using System;
using System.Collections;
using System.IO;
using System.Linq;
using System.Reflection;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using Object=UnityEngine.Object;

public sealed class RaisedSnowArenaTests
{
    string folder;GameClient client;Camera camera;Follow follow;
    void Isolate(Scene scene,LoadSceneMode mode)
    {
        if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        Time.timeScale=1;Application.runInBackground=true;
        folder=Path.Combine(Application.temporaryCachePath,"RaisedSnow-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Isolate;
        yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();
        client=GameClient.Instance;camera=Camera.main;follow=camera.GetComponentInParent<Follow>();
        foreach(var cat in client.Team.Cat_list)
        {
            if(cat.TryGetComponent<ForestCombatAcceptance>(out var combat))combat.enabled=false;
            if(cat.TryGetComponent<ForestMovementAcceptance>(out var movement))movement.enabled=false;
            if(cat.rb!=null)cat.rb.linearVelocity=Vector3.zero;
        }
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        Time.timeScale=1;yield return SceneManager.LoadSceneAsync("TargetPreview");SceneManager.sceneLoaded-=Isolate;
        if(Directory.Exists(folder))Directory.Delete(folder,true);
    }
    static float Planar(Vector3 a,Vector3 b)=>new Vector2(a.x-b.x,a.z-b.z).magnitude;
    static Vector3 Right(Camera cam){var direction=cam.transform.right;direction.y=0;return direction.normalized;}
    void CheckPenguinVisible()
    {
        var body=client.GetComponent<PenguinExpeditionTheme>().Avatar.GetComponent<PenguinBoneMotion>().Renderer;
        var bounds=body.bounds;
        for(int x=-1;x<=1;x+=2)for(int y=-1;y<=1;y+=2)for(int z=-1;z<=1;z+=2)
        {
            var view=camera.WorldToViewportPoint(bounds.center+Vector3.Scale(bounds.extents,new Vector3(x,y,z)));
            Assert.That(view.z,Is.GreaterThan(0));Assert.That(view.x,Is.InRange(.08f,.92f));Assert.That(view.y,Is.InRange(.17f,.83f));
        }
    }
    [UnityTest] public IEnumerator SnowTextureFormsUpperPlatformAboveGreyLowerFloor()
    {
        var f=client.Forest;var root=f.Map_obj.transform.Find("Raised snow platform");Assert.That(root,Is.Not.Null);
        var lower=root.Find("Grey lower floor").GetComponent<MeshRenderer>();
        var top=f.Map_obj.transform.Find("Circular forest ground").GetComponent<SpriteRenderer>();
        Assert.That(lower.sharedMaterial.GetTexture("_SnowTex"),Is.SameAs(top.sharedMaterial.GetTexture("_SnowTex")));
        Assert.That(lower.sharedMaterial.GetTexture("_SnowTex"),Is.Not.Null);
        Assert.That(lower.bounds.center.y,Is.LessThan(top.bounds.center.y-7));
        Assert.That(root.Find("Raised snow cliff").GetComponent<MeshRenderer>().bounds.max.y,Is.EqualTo(f.Map_obj.transform.position.y).Within(.05f));
        Assert.That(lower.sharedMaterial.GetColor("_Tint").grayscale,Is.LessThan(.7f));
        Assert.That(root.GetComponentsInChildren<BoxCollider>().Length,Is.EqualTo(64));
        Assert.That(client.Hero.transform.position.y,Is.EqualTo(top.transform.position.y).Within(.05f));
        yield return null;
    }
    [UnityTest] public IEnumerator CameraStopsBeforePenguinReachesAirWallAndBodyStaysVisible()
    {
        Assert.That(follow.GetComponent("CircularArenaCamera"),Is.Not.Null);
        var circle=client.Forest.CircularMap;var center=circle.Center;var direction=Right(camera);
        client.Hero.Warp(center+direction*(circle.Radius-4));yield return new WaitForSeconds(.8f);
        Assert.That(follow.enabled,Is.False);var cameraStart=follow.transform.position;var start=client.Hero.rb.position;
        Assert.That(Planar(cameraStart,center),Is.LessThan(circle.Radius-6));CheckPenguinVisible();
        client.Hero.rb.linearVelocity=direction*12;yield return new WaitForSeconds(.8f);
        Assert.That(Planar(client.Hero.rb.position,start),Is.GreaterThan(1));
        Assert.That(Planar(client.Hero.rb.position,center),Is.InRange(circle.Radius-circle.MovementPadding-.5f,circle.Radius-circle.MovementPadding+.05f));
        Assert.That(Planar(follow.transform.position,cameraStart),Is.LessThan(.15f));CheckPenguinVisible();
    }
    [UnityTest] public IEnumerator FollowingHasGentleLagAndSettlesAfterMovementStops()
    {
        var center=client.Forest.CircularMap.Center;client.Hero.Warp(center);yield return new WaitForSeconds(.2f);
        client.Hero.rb.linearVelocity=Right(camera)*12;yield return new WaitForSeconds(.5f);
        Assert.That(Planar(client.Hero.rb.position,follow.transform.position),Is.InRange(.3f,4f));CheckPenguinVisible();
        client.Hero.rb.linearVelocity=Vector3.zero;yield return new WaitForSeconds(1);
        Assert.That(Planar(client.Hero.rb.position,follow.transform.position),Is.LessThan(.08f));CheckPenguinVisible();
    }
    [UnityTest] public IEnumerator HoldingJoystickAgainstEdgeDoesNotStepOutsidePlatform()
    {
        var circle=client.Forest.CircularMap;var center=circle.Center;client.Hero.Warp(center+Right(camera)*(circle.Radius-circle.MovementPadding-.1f));
        client.Hero.GetComponent<ForestMovementAcceptance>().enabled=true;
        var joystick=client.Hero.joystick;
        var pointer=new PointerEventData(EventSystem.current){position=new Vector2(Screen.width*.5f,Screen.height*.5f)};
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.pointerDownHandler);
        var background=(RectTransform)typeof(Joystick).GetField("background",BindingFlags.Instance|BindingFlags.NonPublic).GetValue(joystick);
        var canvas=joystick.GetComponentInParent<Canvas>();
        pointer.position=RectTransformUtility.WorldToScreenPoint(null,background.position)+Vector2.right*background.sizeDelta.x*canvas.scaleFactor*.6f;
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.dragHandler);
        try
        {
            for(int i=0;i<30;i++)
            {
                yield return new WaitForFixedUpdate();yield return null;
                Assert.That(Planar(client.Hero.transform.position,center),Is.LessThanOrEqualTo(circle.Radius-circle.MovementPadding+.05f));CheckPenguinVisible();
            }
        }
        finally{ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.pointerUpHandler);}
    }
    [UnityTest] public IEnumerator WholePenguinRemainsVisibleAtEveryEdgeAcrossScreenShapes()
    {
        var circle=client.Forest.CircularMap;var center=circle.Center;float old=camera.aspect;
        foreach(float aspect in new[]{.45f,.5625f,.75f,1.333333f})
        {
            camera.aspect=aspect;
            for(int i=0;i<8;i++)
            {
                float angle=i*Mathf.PI/4;client.Hero.Warp(center+new Vector3(Mathf.Cos(angle),0,Mathf.Sin(angle))*(circle.Radius-3));
                yield return null;yield return null;CheckPenguinVisible();
            }
        }
        camera.aspect=old;
    }
    [UnityTest] public IEnumerator MineUsesOriginalFollowAndReturningClearsCameraOffset()
    {
        client.Hero.Warp(client.Forest.CircularMap.Center+Right(camera)*(client.Forest.CircularMap.Radius-4));yield return new WaitForSeconds(.2f);
        client.MineMode.Game_Enter();float deadline=Time.realtimeSinceStartup+20;
        while(client.MineMode.Entering&&Time.realtimeSinceStartup<deadline)yield return null;
        Assert.That(client.Mode,Is.EqualTo(2));Assert.That(follow.enabled,Is.True);
        client.Hero.Warp(client.MineMode.center+Vector3.right*135);yield return null;yield return null;
        Assert.That(Vector3.Distance(follow.transform.position,client.Hero.transform.position),Is.LessThan(.05f));
        client.MineMode.Game_Exit();deadline=Time.realtimeSinceStartup+10;
        while(client.Mode!=0&&Time.realtimeSinceStartup<deadline)yield return null;
        yield return null;Assert.That(follow.enabled,Is.False);
        Assert.That(Planar(follow.transform.position,client.Forest.CircularMap.Center),Is.LessThan(.2f));CheckPenguinVisible();
    }
}
