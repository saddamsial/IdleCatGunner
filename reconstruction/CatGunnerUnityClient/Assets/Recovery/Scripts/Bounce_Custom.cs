using System.Collections;
using UnityEngine;

// Matching native one-frame recursive coroutine and restart-without-duplication.
public sealed class Bounce_Custom : MonoBehaviour
{
    public float time;
    public Vector3 WantSize;
    public float _upSizeTime;
    public bool Bouncing;
    private float HalfTime;
    private bool is_sizeReloaded;
    private Vector3 originalPose=Vector3.one;
    private void Awake() => Size_reload();
    public void Size_reload() {if(is_sizeReloaded) return;is_sizeReloaded=true;HalfTime=_upSizeTime*.5f;}
    private void OnEnable() {Bouncing=false;transform.localScale=originalPose;}
    public void Bounce_Start()
    {
        time=0;if(Bouncing) return;
        Bouncing=true;if(gameObject.activeInHierarchy) StartCoroutine(Coroutine_NoRepeat());
    }
    public IEnumerator Coroutine_NoRepeat()
    {
        yield return null;time+=Time.deltaTime;
        if(!Bouncing) yield break;
        if(time<=_upSizeTime*.5f) transform.localScale=Vector3.Lerp(originalPose,WantSize,time/HalfTime);
        else if(time<=_upSizeTime) transform.localScale=Vector3.Lerp(WantSize,originalPose,(time-HalfTime)/HalfTime);
        else {time=0;Bouncing=false;transform.localScale=originalPose;yield break;}
        StartCoroutine(Coroutine_NoRepeat());
    }
    public void resetAnim() {time=0;Bouncing=false;}
}
