using System.Collections;
using UnityEngine;
using UnityEngine.UI;
// Explicit local feedback adapter. Commercial ParticleImage emitters remain
// frozen source evidence; this pulse does not claim their rendering or timing.
public sealed class RecoveryStarSuccessFeedback : MonoBehaviour
{
    public Image Button;
    public int PlayCount {get;private set;}
    private Coroutine pulse;
    private Vector3 baseScale;
    public bool Playing=>pulse!=null;
    public void Clear(){if(pulse!=null){StopCoroutine(pulse);pulse=null;Button.transform.localScale=baseScale;}}
    public void Play(){Clear();PlayCount++;baseScale=Button.transform.localScale;pulse=StartCoroutine(Pulse());}
    private IEnumerator Pulse()
    {for(float t=0;t<.3f;t+=Time.unscaledDeltaTime){Button.transform.localScale=baseScale*(1+.12f*Mathf.Sin(t/.3f*Mathf.PI));yield return null;}Button.transform.localScale=baseScale;pulse=null;}
    private void OnDisable()=>Clear();
}
