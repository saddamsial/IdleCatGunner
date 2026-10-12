using System.Collections;
using System.Reflection;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class OriginalMovementTests
{
    private const BindingFlags PrivateInstance=BindingFlags.NonPublic|BindingFlags.Instance;
    private static RectTransform Background(Joystick joystick) =>
        (RectTransform)typeof(Joystick).GetField("background",PrivateInstance).GetValue(joystick);
    private static PointerEventData Begin(Cat cat)
    {
        var pointer=new PointerEventData(EventSystem.current) {position=new Vector2(Screen.width*.5f,Screen.height*.4f)};
        ExecuteEvents.Execute(cat.joystick.gameObject,pointer,ExecuteEvents.pointerDownHandler);
        return pointer;
    }
    private static void Drag(Cat cat,PointerEventData pointer,Vector2 direction)
    {
        var background=Background(cat.joystick);
        var canvas=cat.joystick.GetComponentInParent<Canvas>();
        pointer.position=RectTransformUtility.WorldToScreenPoint(null,background.position)
            +direction*background.sizeDelta*.5f*canvas.scaleFactor;
        ExecuteEvents.Execute(cat.joystick.gameObject,pointer,ExecuteEvents.dragHandler);
    }
    private static void Release(Cat cat,PointerEventData pointer) =>
        ExecuteEvents.Execute(cat.joystick.gameObject,pointer,ExecuteEvents.pointerUpHandler);

    [UnityTest]
    public IEnumerator OriginalPointerMovesOriginalBodyAndWalkAnimationThenStops()
    {
        yield return SceneManager.LoadSceneAsync("RecoveredForest");yield return null;
        var cat=Cat.instance;
        cat.GetComponent<CatGunner.Recovery.ForestCombatAcceptance>().enabled=false;
        Assert.That(cat,Is.Not.Null);
        Assert.That(cat.moveSpeed,Is.EqualTo(15),"Balance reload replaces original serialized speed 13 with forest base speed 15");
        Assert.That(cat.AutoMove,Is.True,"The original default automatic-movement flag is preserved");
        Assert.That(cat.rb.isKinematic,Is.False);
        Assert.That(cat.anim.runtimeAnimatorController.name,Is.EqualTo("Cat"));
        Assert.That(cat.joystick,Is.Not.Null);
        Assert.That(cat.GetComponent<CatGunner.Recovery.ForestMovementAcceptance>(),Is.Not.Null);
        cat.Warp(new Vector3(20,0,-15));
        var pointer=Begin(cat);
        var originalConstraints=cat.rb.constraints;
        try
        {
            // Independent native anchors after balance load: right=(15/1.2)/sqrt(2),
            // up=15*1.2/sqrt(2). Diagonal pointer input is unit-clamped.
            // The original scene freezes Y. Release only that constraint in this
            // isolated test to exercise the method's preserved-Y branch.
            cat.rb.constraints=originalConstraints & ~RigidbodyConstraints.FreezePositionY;
            var directions=new[]{Vector2.right,Vector2.left,Vector2.up,Vector2.down,new Vector2(1,1)};
            var expected=new[]{new Vector3(8.838835f,0,8.838835f),new Vector3(-8.838835f,0,-8.838835f),
                new Vector3(-12.727922f,0,12.727922f),new Vector3(12.727922f,0,-12.727922f),
                new Vector3(-2.75f,0,15.25f)};
            for(int i=0;i<directions.Length;i++)
            {
                Drag(cat,pointer,directions[i]);
                cat.rb.linearVelocity=new Vector3(0,2.75f,0);
                cat.HandleMovement();
                var velocity=cat.rb.linearVelocity;
                Assert.That(velocity.x,Is.EqualTo(expected[i].x).Within(.002f));
                Assert.That(velocity.z,Is.EqualTo(expected[i].z).Within(.002f));
                Assert.That(velocity.y,Is.EqualTo(2.75f).Within(.0001f),"Both branches preserve original Y velocity");
                Assert.That(cat.anim.GetBool("Walk"),Is.True);
            }
            cat.rb.constraints=originalConstraints;
            Drag(cat,pointer,Vector2.right);
            cat.HandleMovement();var start=cat.transform.position;
            for(int i=0;i<6;i++) yield return new WaitForFixedUpdate();
            var delta=cat.transform.position-start;
            Assert.That(delta.x,Is.GreaterThan(.2f),"Original Rigidbody must actually move in physics");
            Assert.That(delta.z,Is.GreaterThan(.2f));
            Release(cat,pointer);
            cat.rb.constraints=originalConstraints & ~RigidbodyConstraints.FreezePositionY;
            cat.rb.linearVelocity=new Vector3(3,2.75f,4);cat.HandleMovement();
            Assert.That(cat.rb.linearVelocity,Is.EqualTo(new Vector3(0,2.75f,0)));
            Assert.That(cat.anim.GetBool("Walk"),Is.False);
            Assert.That(Background(cat.joystick).gameObject.activeSelf,Is.False);
        }
        finally {cat.rb.constraints=originalConstraints;Release(cat,pointer);}
    }

    [UnityTest]
    public IEnumerator NativeTargetFacingIdleThresholdAndWarpPreserveOriginalPoseContract()
    {
        yield return SceneManager.LoadSceneAsync("RecoveredForest");yield return null;
        var cat=Cat.instance;cat.GetComponent<CatGunner.Recovery.ForestCombatAcceptance>().enabled=false;cat.Warp(new Vector3(20,0,-15));
        var target=new GameObject("Isolated movement target acceptance");
        var collider=target.AddComponent<BoxCollider>();
        var near=typeof(Cat).GetField("nearObj",PrivateInstance);
        var pointer=Begin(cat);
        try
        {
            target.transform.position=cat.transform.position+Vector3.left*10;near.SetValue(cat,collider);
            Drag(cat,pointer,Vector2.right);cat.HandleMovement();
            Assert.That(Quaternion.Angle(cat.Pivot_trans.localRotation,Quaternion.Euler(40,-45,0)),Is.LessThan(.001f));
            Assert.That(cat.rb.linearVelocity.x,Is.GreaterThan(0),"Facing a target must not reverse joystick velocity");
            Release(cat,pointer);
            target.transform.position=cat.transform.position+Vector3.right*10;cat.HandleMovement();
            Assert.That(Quaternion.Angle(cat.Pivot_trans.localRotation,Quaternion.Euler(-40,135,0)),Is.LessThan(.001f));
            near.SetValue(cat,null);pointer=Begin(cat);
            Drag(cat,pointer,new Vector2(.005f,0));cat.HandleMovement();
            Assert.That(cat.anim.GetBool("Walk"),Is.False,"Native squared threshold .0001");
            Drag(cat,pointer,new Vector2(.02f,0));cat.HandleMovement();
            Assert.That(cat.anim.GetBool("Walk"),Is.True);
            cat.LeftHand.localEulerAngles=new Vector3(12,34,56);Cat.ApplyHandZ(cat.LeftHand,130);
            var hand=cat.LeftHand.localEulerAngles;
            Assert.That(Mathf.DeltaAngle(12,hand.x),Is.Zero.Within(.001f));
            Assert.That(Mathf.DeltaAngle(34,hand.y),Is.Zero.Within(.001f));
            Assert.That(Mathf.DeltaAngle(130,hand.z),Is.Zero.Within(.001f));
            var end=new Vector3(22,0,-18);cat.Warp(end);
            Assert.That(cat.rb.position,Is.EqualTo(end));Assert.That(cat.transform.position,Is.EqualTo(end));
            Assert.That(cat.rb.linearVelocity,Is.EqualTo(Vector3.zero));
            Assert.That(Quaternion.Angle(cat.Pivot_trans.localRotation,Quaternion.Euler(-40,135,0)),Is.LessThan(.001f));
        }
        finally {near.SetValue(cat,null);Release(cat,pointer);Object.Destroy(target);}
    }
}
