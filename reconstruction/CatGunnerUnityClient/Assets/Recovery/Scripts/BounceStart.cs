using System.Collections;
using UnityEngine;

public sealed class BounceStart : MonoBehaviour
{
    public bool UseUnscaledTime;
    public float time,WantSize,_upSizeTime,Middle_value;
    private float First_Time,Second_Time;
    private bool is_reload;
    public void Size_reload()
    {
        if(is_reload) return;is_reload=true;
        First_Time=_upSizeTime*Middle_value;Second_Time=_upSizeTime-First_Time;
    }
    private void OnEnable() {time=0;Size_reload();StartCoroutine(Coroutine_NoRepeat());}
    private IEnumerator Coroutine_NoRepeat()
    {
        transform.localScale=Vector3.one*.001f;yield return null;
        while(time<=First_Time)
        {
            time+=UseUnscaledTime?Time.unscaledDeltaTime:Time.deltaTime;transform.localScale=Vector3.one*Mathf.Lerp(0,WantSize,time/First_Time);yield return null;
        }
        while(time<=_upSizeTime)
        {
            time+=UseUnscaledTime?Time.unscaledDeltaTime:Time.deltaTime;transform.localScale=Vector3.one*Mathf.Lerp(WantSize,1,(time-First_Time)/Second_Time);yield return null;
        }
        transform.localScale=Vector3.one;
    }
}
