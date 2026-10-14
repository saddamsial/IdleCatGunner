using System.Collections;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class JoystickTests
{
    [UnityTest]
    public IEnumerator OriginalFloatingPointerEventsCloseDragDeadZoneSnapAndRelease()
    {
        yield return TestSceneLoader.LoadAsync("Joystick");
        yield return null;
        var joystick=Object.FindAnyObjectByType<FloatingJoystick>();
        var flags=System.Reflection.BindingFlags.NonPublic|System.Reflection.BindingFlags.Instance;
        var background=(RectTransform)typeof(Joystick).GetField("background",flags).GetValue(joystick);
        var handle=(RectTransform)typeof(Joystick).GetField("handle",flags).GetValue(joystick);
        Assert.That(background.gameObject.activeSelf,Is.False);
        Assert.That(joystick.Direction,Is.EqualTo(Vector2.zero));
        var pointer=new PointerEventData(EventSystem.current) {position=new Vector2(Screen.width*.5f,Screen.height*.5f)};
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.pointerDownHandler);
        Assert.That(background.gameObject.activeSelf,Is.True);
        Assert.That(joystick.Direction.magnitude,Is.LessThan(.0001f));
        var canvas=joystick.GetComponentInParent<Canvas>();
        var center=RectTransformUtility.WorldToScreenPoint(null,background.position);
        pointer.position=center+Vector2.right*background.sizeDelta.x*canvas.scaleFactor;
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.dragHandler);
        Assert.That(joystick.Horizontal,Is.EqualTo(1).Within(.0001f));
        Assert.That(joystick.Vertical,Is.Zero.Within(.0001f));
        Assert.That(handle.anchoredPosition.x,Is.EqualTo(background.sizeDelta.x*.5f).Within(.0001f));
        joystick.DeadZone=.4f;
        pointer.position=center+Vector2.right*background.sizeDelta.x*canvas.scaleFactor*.1f;
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.dragHandler);
        Assert.That(joystick.Direction,Is.EqualTo(Vector2.zero));
        joystick.DeadZone=0;joystick.SnapX=joystick.SnapY=true;
        pointer.position=center+new Vector2(1,1)*background.sizeDelta*canvas.scaleFactor;
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.dragHandler);
        Assert.That(joystick.Direction,Is.EqualTo(Vector2.one));
        joystick.AxisOptions=AxisOptions.Vertical;
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.dragHandler);
        Assert.That(joystick.Direction,Is.EqualTo(Vector2.up));
        ExecuteEvents.Execute(joystick.gameObject,pointer,ExecuteEvents.pointerUpHandler);
        Assert.That(background.gameObject.activeSelf,Is.False);
        Assert.That(joystick.Direction,Is.EqualTo(Vector2.zero));
        Assert.That(handle.anchoredPosition,Is.EqualTo(Vector2.zero));
    }
}
