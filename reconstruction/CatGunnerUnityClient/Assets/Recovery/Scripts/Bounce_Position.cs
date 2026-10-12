using System.Collections;
using UnityEngine;

// Matching native one-frame recursive coroutine and restart-without-duplication.
public sealed class Bounce_Position : MonoBehaviour
{
    public float time;
    public Vector3 WantPos;
    public float _upPosTime;
    public bool Bouncing;
    private float HalfTime;
    private bool is_posReloaded;
    private Vector3 originalPose=Vector3.zero;
    private void Awake() => Pos_reload();
    public void Pos_reload() {if(is_posReloaded) return;is_posReloaded=true;HalfTime=_upPosTime*.5f;}
    private void OnEnable() {Bouncing=false;transform.localPosition=originalPose;}
    public void Bounce_Start()
    {
        time=0;if(Bouncing) return;
        Bouncing=true;if(gameObject.activeInHierarchy) StartCoroutine(Coroutine_NoRepeat());
    }
    public IEnumerator Coroutine_NoRepeat()
    {
        yield return null;time+=Time.deltaTime;
        if(!Bouncing) yield break;
        if(time<=_upPosTime*.5f) transform.localPosition=Vector3.Lerp(originalPose,WantPos,time/HalfTime);
        else if(time<=_upPosTime) transform.localPosition=Vector3.Lerp(WantPos,originalPose,(time-HalfTime)/HalfTime);
        else {time=0;Bouncing=false;transform.localPosition=originalPose;yield break;}
        StartCoroutine(Coroutine_NoRepeat());
    }
    public void resetAnim() {time=0;Bouncing=false;}
}
