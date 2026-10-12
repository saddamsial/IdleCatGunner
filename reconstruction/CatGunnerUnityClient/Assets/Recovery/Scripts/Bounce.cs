using System.Collections;
using UnityEngine;

// vc257 Bounce fields, two linear legs and restart-time behavior, iterator d__13.
public sealed class Bounce : MonoBehaviour
{
    public float time, WantSize = .9f, _upSizeTime = .2f;
    public bool Bouncing;
    Vector3 mysize = Vector3.one, wantSize_vec;
    float HalfTime;
    bool is_sizeReloaded;
    // Independent bootstrap initialization replaces the absent original global
    // initialization caller; native Awake itself is empty.
    void Awake() => Size_reload();
    public void Size_reload(){if(is_sizeReloaded)return;HalfTime=_upSizeTime*.5f;is_sizeReloaded=true;wantSize_vec=Vector3.one*WantSize;}
    public void Size_reload_Fit(Vector3 size){mysize=size;wantSize_vec=size*WantSize;HalfTime=_upSizeTime*.5f;}
    void OnEnable(){Bouncing=false;transform.localScale=mysize;}
    public void Bounce_Start(){time=0;if(!Bouncing){Bouncing=true;if(gameObject.activeInHierarchy)StartCoroutine(Coroutine_NoRepeat());}}
    public IEnumerator Coroutine_NoRepeat()
    {
        yield return null; time+=Time.deltaTime;
        if(!Bouncing)yield break;
        if(time<=_upSizeTime*.5f)transform.localScale=Vector3.Lerp(mysize,wantSize_vec,time/HalfTime);
        else if(time<=_upSizeTime)transform.localScale=Vector3.Lerp(wantSize_vec,mysize,(time-HalfTime)/HalfTime);
        else {time=0;Bouncing=false;transform.localScale=mysize;yield break;}
        StartCoroutine(Coroutine_NoRepeat());
    }
    public void resetAnim(){time=0;Bouncing=false;}
}
