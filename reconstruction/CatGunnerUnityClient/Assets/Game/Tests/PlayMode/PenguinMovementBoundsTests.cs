using System.Collections;
using System.IO;
using System.Linq;
using System.Reflection;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public sealed class PenguinMovementBoundsTests
{
    GameClient client;
    static void Independent(Scene scene,LoadSceneMode mode)
    {
        if(scene.name=="GameClient")
            scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().Persist=false;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        Time.timeScale=1;
        SceneManager.sceneLoaded+=Independent;
        yield return TestSceneLoader.LoadAsync("GameClient");
        yield return ClientStartupWait.Ready();
        client=GameClient.Instance;
        StopMovement();
        // Equip the isolated profile so both companions receive their normal
        // movement stats rather than activating unequipped, zero-speed actors.
        client.State.Selected_items[1]=1;client.State.Selected_items[2]=2;
        client.ApplyBalance();
        yield return null;
        StopMovement();
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        Time.timeScale=1;
        SceneManager.sceneLoaded-=Independent;
        yield return TestSceneLoader.LoadAsync("TargetPreview");
    }
    void StopMovement()
    {
        foreach(var cat in client.Team.Cat_list.Concat(new[]{client.Team.Helper_Cat}).Where(c=>c!=null))
        {
            if(cat.TryGetComponent<ForestCombatAcceptance>(out var combat))combat.enabled=false;
            if(cat.TryGetComponent<ForestMovementAcceptance>(out var movement))movement.enabled=false;
            if(cat.rb!=null)cat.rb.linearVelocity=Vector3.zero;
        }
    }
    void ActivateTeam()
    {
        foreach(var cat in client.Team.Cat_list)cat.gameObject.SetActive(true);
        if(client.Team.Helper_Cat!=null)client.Team.Helper_Cat.gameObject.SetActive(true);
        StopMovement();
    }
    static float Distance(Vector3 point,Vector3 center)=>new Vector2(point.x-center.x,point.z-center.z).magnitude;
    IEnumerator HoldTeamAtEdge(Vector3 center,float radius)
    {
        var cats=Enumerable.Range(0,client.Team.Cat_Count_All).Select(client.Team.Cat_At).Where(c=>c!=null&&c.gameObject.activeInHierarchy).ToArray();
        Assert.That(cats.Length,Is.GreaterThanOrEqualTo(3));
        for(int i=0;i<cats.Length;i++)
        {
            float angle=i*Mathf.PI*2/cats.Length;
            cats[i].Warp(center+new Vector3(Mathf.Cos(angle),0,Mathf.Sin(angle))*(radius+20));
        }
        // Repeated fresh velocities reproduce joystick, chase, retreat and
        // separation writes; check every rendered frame, not only the final one.
        for(int step=0;step<80;step++)
        {
            foreach(var cat in cats)
            {
                var radial=cat.rb.position-center;radial.y=0;radial.Normalize();
                cat.rb.linearVelocity=radial*35+new Vector3(-radial.z,0,radial.x)*7;
            }
            yield return null;
            foreach(var cat in cats)
                Assert.That(Distance(cat.transform.position,center),Is.LessThanOrEqualTo(radius+.02f),cat.name+" left the circle");
        }
        foreach(var cat in cats)
        {
            var radial=(cat.rb.position-center).normalized;
            var tangent=new Vector3(-radial.z,0,radial.x);
            Assert.That(Vector3.Dot(cat.rb.linearVelocity,tangent),Is.GreaterThan(5),"The edge must allow movement along the circle");
        }
    }
    [UnityTest] public IEnumerator HuntConstrainsLeaderCompanionsAndHelperUnderSustainedOutwardMovement()
    {
        client.MonsterMode.Game_Enter();
        yield return new WaitForSeconds(2.1f);
        client.MonsterMode.StopAllGameCoroutines();
        ActivateTeam();
        Assert.That(client.Mode,Is.EqualTo(4));
        yield return HoldTeamAtEdge(MonsterRules.Center,14);
    }
    [UnityTest] public IEnumerator MineGroundCircleConstrainsWholeTeam()
    {
        client.MineMode.Game_Enter();
        float deadline=Time.realtimeSinceStartup+20;
        while(client.MineMode.Entering&&Time.realtimeSinceStartup<deadline)yield return null;
        Assert.That(client.Mode,Is.EqualTo(2));
        ActivateTeam();
        var ground=client.MineMode.Map_obj.GetComponentsInChildren<SpriteRenderer>().Single(r=>r.name=="Ground (1)");
        Assert.That(PenguinMovementBounds.GroundCircle(ground,out var center,out float radius),Is.True);
        Assert.That(radius,Is.EqualTo(151.6f).Within(.01f));
        yield return HoldTeamAtEdge(center,radius);
    }
    [UnityTest] public IEnumerator BossGroundCircleConstrainsWholeTeam()
    {
        client.BossMode.Game_Enter();
        yield return new WaitForSeconds(2.1f);
        ActivateTeam();
        Assert.That(client.Mode,Is.EqualTo(3));
        var ground=client.BossMode.Map_obj.GetComponentsInChildren<SpriteRenderer>().Single(r=>r.name=="Ground (1)");
        Assert.That(PenguinMovementBounds.GroundCircle(ground,out var center,out float radius),Is.True);
        Assert.That(radius,Is.EqualTo(74.8f).Within(.01f));
        yield return HoldTeamAtEdge(center,radius);
    }
    static string CaptureFolder=>System.Environment.GetEnvironmentVariable("PENGUIN_BOUNDARY_CAPTURE_DIR")??Path.GetFullPath(Application.dataPath+"/../../../art/verification/penguin-movement-bounds-20261014-v2");
    void CaptureCamera(string name)
    {
        Directory.CreateDirectory(CaptureFolder);
        var camera=Camera.main;var previous=camera.targetTexture;float aspect=camera.aspect;
        var target=new RenderTexture(750,1334,24);var texture=new Texture2D(750,1334,TextureFormat.RGB24,false);var active=RenderTexture.active;
        try
        {
            camera.targetTexture=target;camera.aspect=750f/1334;camera.Render();RenderTexture.active=target;
            texture.ReadPixels(new Rect(0,0,750,1334),0,0);texture.Apply();File.WriteAllBytes(Path.Combine(CaptureFolder,name+".png"),texture.EncodeToPNG());
        }
        finally
        {
            camera.targetTexture=previous;camera.aspect=aspect;RenderTexture.active=active;
            Object.Destroy(target);Object.Destroy(texture);
        }
    }
    IEnumerator HoldJoystickWithFollowers(Vector3 center,float radius,string name)
    {
        // Actual pointer down/drag exercises the manual movement adapter while
        // companion AI continues to run. The outward direction is screen-right.
        var direction=new Vector3(1,0,1).normalized;
        client.Hero.Warp(center+direction*(radius-.1f));
        // The leader's normal combat bridge also records breadcrumbs. Keep it
        // running so followers can navigate around challenge ice obstacles.
        var leaderCombat=client.Hero.GetComponent<ForestCombatAcceptance>();
        leaderCombat.LoadPackageEquipment=false;client.Hero.AtkCool_Max=1000;leaderCombat.enabled=true;
        foreach(var cat in client.Team.Cat_list.Where(c=>c.is_AI))
        {
            cat.Warp(center-direction*12+cat.FormationOffset);
            var combat=cat.GetComponent<ForestCombatAcceptance>();combat.LoadPackageEquipment=false;
            cat.AtkCool_Max=1000;combat.enabled=true;
        }
        var movement=client.Hero.GetComponent<ForestMovementAcceptance>();movement.enabled=true;
        var joystick=client.Hero.joystick;
        var pointer=new PointerEventData(EventSystem.current){position=new Vector2(Screen.width*.5f,Screen.height*.4f)};
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.pointerDownHandler);
        var background=(RectTransform)typeof(Joystick).GetField("background",BindingFlags.NonPublic|BindingFlags.Instance).GetValue(joystick);
        var canvas=joystick.GetComponentInParent<Canvas>();
        pointer.position=RectTransformUtility.WorldToScreenPoint(null,background.position)+Vector2.right*background.sizeDelta*.5f*canvas.scaleFactor;
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.dragHandler);
        bool moving=false;
        try
        {
            Assert.That(joystick.Direction.x,Is.GreaterThan(.9f));
            for(int frame=0;frame<100;frame++)
            {
                yield return null;
                foreach(var cat in client.Team.Cat_list.Where(c=>c.gameObject.activeInHierarchy))
                {
                    Assert.That(Distance(cat.transform.position,center),Is.LessThanOrEqualTo(radius+.02f),name+": "+cat.name);
                    if(cat.is_AI&&cat.rb.linearVelocity.sqrMagnitude>.1f)moving=true;
                }
            }
            Assert.That(moving,Is.True,"Actual companion AI must move during held joystick input");
            CaptureCamera(name+"-edge");
            File.WriteAllText(Path.Combine(CaptureFolder,name+"-edge.json"),JsonUtility.ToJson(new EdgeEvidence{mode=client.Mode,radius=radius,joystick=joystick.Direction,cats=client.Team.Cat_list.Where(c=>c.gameObject.activeInHierarchy).Select(c=>new EdgeCat{name=c.name,distance=Distance(c.transform.position,center),position=c.transform.position}).ToArray(),scope="Actual native entry button, actual joystick pointer down/drag and live companion AI; independent profile; camera GPU capture excludes overlay HUD."},true));
        }
        finally
        {
            ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.pointerUpHandler);movement.enabled=false;StopMovement();
        }
    }
    [UnityTest] public IEnumerator ChallengeNativeEntryJoystickAndTeamStayInsideGroundCircle()
    {
        var nav=Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="SpeedRun_Btn");nav.onClick.Invoke();
        yield return null;
        Assert.That(client.SpeedRun.Start_UI.gameObject.activeInHierarchy,Is.True);
        client.SpeedRun.Start_UI.NonAuto_obj.GetComponentsInChildren<Button>().Single(b=>b.name=="Enter_Btn").onClick.Invoke();
        float deadline=Time.realtimeSinceStartup+20;
        while(client.SpeedRun.Entering&&Time.realtimeSinceStartup<deadline)yield return null;
        Assert.That(client.Mode,Is.EqualTo(1),"Challenge button must enter SpeedRun, not Boss");ActivateTeam();
        var ground=client.SpeedRun.Map_obj.GetComponentsInChildren<SpriteRenderer>().Single(r=>r.name=="Ground (1)");
        Assert.That(ground.sharedMaterial.shader.name,Is.EqualTo("Game/MineGroundCompatibility"));
        Assert.That(PenguinMovementBounds.GroundCircle(ground,out var center,out float radius),Is.True);
        Assert.That(radius,Is.EqualTo(74.8f).Within(.01f));
        yield return HoldTeamAtEdge(center,radius);
        yield return HoldJoystickWithFollowers(center,radius,"challenge");
    }
    [System.Serializable] sealed class EdgeEvidence{public int mode;public float radius;public Vector2 joystick;public EdgeCat[] cats;public string scope;}
    [System.Serializable] sealed class EdgeCat{public string name;public float distance;public Vector3 position;}
    [UnityTest] public IEnumerator RaidNativeEntryJoystickAndTeamStayInsideCircularGround()
    {
        ContentNavigationFixture.Unlock(client,Content_Type.Raid);
        var nav=Object.FindObjectsByType<Button>(FindObjectsInactive.Include).Single(b=>b.name=="Raid_Btn");nav.onClick.Invoke();
        yield return null;
        Assert.That(client.RaidMode.raidStart_ui.gameObject.activeInHierarchy,Is.True);
        client.RaidMode.raidStart_ui.Enter_Normal_obj.GetComponent<Button>().onClick.Invoke();
        yield return new WaitForSeconds(2.1f);
        Assert.That(client.Mode,Is.EqualTo(5));ActivateTeam();
        var ground=client.RaidMode.Map_obj.GetComponentsInChildren<SpriteRenderer>().Single(r=>r.name=="Ground (1)");
        if(ground.sharedMaterial.shader.name!="Game/MineGroundCompatibility")CaptureCamera("raid-square-before");
        Assert.That(ground.sharedMaterial.shader.name,Is.EqualTo("Game/MineGroundCompatibility"),"Raid's displayed floor must be circular too");
        Assert.That(PenguinMovementBounds.GroundCircle(ground,out var center,out float radius),Is.True);
        Assert.That(radius,Is.EqualTo(74.8f).Within(.01f));
        yield return HoldTeamAtEdge(center,radius);
        yield return HoldJoystickWithFollowers(center,radius,"raid");
    }
    [UnityTest] public IEnumerator HuntCompanionAiRemainsInsideWhileFollowingLeaderAtEdge()
    {
        client.MonsterMode.Game_Enter();
        yield return new WaitForSeconds(2.1f);
        client.MonsterMode.StopAllGameCoroutines();ActivateTeam();
        client.Hero.Warp(MonsterRules.Center+Vector3.right*14);
        foreach(var cat in client.Team.Cat_list.Where(c=>c.is_AI))
        {
            cat.Warp(MonsterRules.Center-Vector3.right*13+cat.FormationOffset);
            var combat=cat.GetComponent<ForestCombatAcceptance>();
            combat.EnableSingleAttacks=combat.EnableShotgunAttacks=combat.EnablePenetratingAttacks=combat.EnableExplosiveAttacks=combat.EnableMissileAttacks=false;
            // TickCompanion owns its own attack cooldown independently of the
            // leader's bridge flags. Keep this test focused on live AI movement.
            combat.LoadPackageEquipment=false;
            cat.AtkCool_Max=1000;
            combat.enabled=true;
        }
        bool moving=false;
        for(int frame=0;frame<120;frame++)
        {
            yield return null;
            foreach(var cat in client.Team.Cat_list)
            {
                Assert.That(Distance(cat.transform.position,MonsterRules.Center),Is.LessThanOrEqualTo(14.02f));
                if(cat.is_AI&&cat.rb.linearVelocity.sqrMagnitude>.1f)moving=true;
            }
        }
        Assert.That(moving,Is.True,"Exercise actual companion AI, not frozen actors");
    }
}
