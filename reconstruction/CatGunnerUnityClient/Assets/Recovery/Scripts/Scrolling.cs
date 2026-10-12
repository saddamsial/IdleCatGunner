using UnityEngine;
using UnityEngine.UI;

// Matching IL2CPP Start/Update at 0x2b27404/0x2b2745c; original serialized Speed.
public sealed class Scrolling : MonoBehaviour
{
    public Vector2 Speed;
    private RawImage img;
    private void Start() => img=GetComponent<RawImage>();
    private void Update()
    {
        var rect=img.uvRect;
        img.uvRect=new Rect(rect.x+Speed.x*Time.deltaTime,rect.y+Speed.y*Time.deltaTime,rect.width,rect.height);
    }
}
