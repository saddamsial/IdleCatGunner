using UnityEngine;
using UnityEngine.EventSystems;

// Matching native Joystick control paths and original serialized field names.
public class Joystick : MonoBehaviour, IPointerDownHandler, IDragHandler, IPointerUpHandler
{
    [SerializeField] private float handleRange=1,deadZone;
    [SerializeField] private AxisOptions axisOptions;
    [SerializeField] private bool snapX,snapY;
    [SerializeField] protected RectTransform background,handle;
    private RectTransform baseRect;
    private Canvas canvas;
    private Camera cam;
    protected Vector2 input;
    public float Horizontal => snapX ? SnapFloat(input.x,AxisOptions.Horizontal) : input.x;
    public float Vertical => snapY ? SnapFloat(input.y,AxisOptions.Vertical) : input.y;
    public Vector2 Direction => new Vector2(Horizontal,Vertical);
    public float HandleRange {get=>handleRange;set=>handleRange=Mathf.Abs(value);}
    public float DeadZone {get=>deadZone;set=>deadZone=Mathf.Abs(value);}
    public AxisOptions AxisOptions {get=>axisOptions;set=>axisOptions=value;}
    public bool SnapX {get=>snapX;set=>snapX=value;}
    public bool SnapY {get=>snapY;set=>snapY=value;}

    protected virtual void Start()
    {
        HandleRange=handleRange;DeadZone=deadZone;
        baseRect=GetComponent<RectTransform>();canvas=GetComponentInParent<Canvas>();
        if(canvas==null) Debug.LogError("Joystick requires an original Canvas parent");
        background.pivot=Vector2.one*.5f;
        handle.anchorMin=handle.anchorMax=handle.pivot=Vector2.one*.5f;
        handle.anchoredPosition=Vector2.zero;
    }
    public virtual void OnPointerDown(PointerEventData eventData) => OnDrag(eventData);
    public virtual void OnDrag(PointerEventData eventData)
    {
        cam=canvas.renderMode==RenderMode.ScreenSpaceCamera ? canvas.worldCamera : null;
        var position=RectTransformUtility.WorldToScreenPoint(cam,background.position);
        var radius=background.sizeDelta*.5f;
        input=(eventData.position-position)/(radius*canvas.scaleFactor);
        FormatInput();
        HandleInput(input.magnitude,input.normalized,radius,cam);
        handle.anchoredPosition=input*radius*handleRange;
    }
    protected virtual void HandleInput(float magnitude,Vector2 normalized,Vector2 radius,Camera eventCamera)
    {
        if(magnitude<=deadZone) input=Vector2.zero;
        else if(magnitude>1) input=normalized;
    }
    private void FormatInput()
    {
        if(axisOptions==AxisOptions.Vertical) input.x=0;
        else if(axisOptions==AxisOptions.Horizontal) input.y=0;
    }
    private float SnapFloat(float value,AxisOptions axis)
    {
        if(value==0) return 0;
        if(axisOptions==AxisOptions.Both)
        {
            float angle=Vector2.Angle(input,Vector2.up);
            if(axis==AxisOptions.Horizontal && (angle<22.5f || angle>157.5f)) return 0;
            if(axis==AxisOptions.Vertical && angle>67.5f && angle<112.5f) return 0;
        }
        return Mathf.Sign(value);
    }
    public virtual void OnPointerUp(PointerEventData eventData)
    {
        input=Vector2.zero;handle.anchoredPosition=Vector2.zero;
    }
    protected Vector2 ScreenPointToAnchoredPosition(Vector2 screen)
    {
        if(!RectTransformUtility.ScreenPointToLocalPointInRectangle(baseRect,screen,cam,out var local)) return Vector2.zero;
        return baseRect.pivot*baseRect.sizeDelta+local-background.anchorMax*baseRect.sizeDelta;
    }
}
public enum AxisOptions {Both=0,Horizontal=1,Vertical=2}
