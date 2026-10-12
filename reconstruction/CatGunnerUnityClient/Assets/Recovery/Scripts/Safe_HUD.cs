using System.Collections;
using UnityEngine;
public sealed class Safe_HUD : MonoBehaviour
{
    public GameObject Glow_obj,Locked_obj;
    public float HoverScale=1.12f,ScaleDuration=.12f;
    private Vector3 originalScale;
    private bool hover;
    private Coroutine scale;
    private void Awake()=>originalScale=transform.localScale;
    private void OnEnable()=>Reload();
    private void OnDisable(){if(scale!=null)StopCoroutine(scale);scale=null;hover=false;transform.localScale=originalScale;}
    public void Reload(){bool unlocked=Safe_manager.instance!=null&&Safe_manager.instance.Is_Unlocked;if(Locked_obj!=null)Locked_obj.SetActive(!unlocked);if(Glow_obj!=null)Glow_obj.SetActive(false);SetHover(false);}
    public void SetDragging(bool dragging){if(Glow_obj!=null)Glow_obj.SetActive(dragging&&Safe_manager.instance!=null&&Safe_manager.instance.Is_Unlocked);if(!dragging)SetHover(false);}
    public void SetHover(bool value)
    {
        value=value&&Safe_manager.instance!=null&&Safe_manager.instance.Is_Unlocked;if(hover==value)return;hover=value;
        if(scale!=null)StopCoroutine(scale);var target=originalScale*(value?HoverScale:1);
        if(gameObject.activeInHierarchy)scale=StartCoroutine(ScaleTo(target));else {transform.localScale=target;scale=null;}
        // Original short vibration is not connected to the local desktop adapter.
    }
    private IEnumerator ScaleTo(Vector3 target)
    {
        Vector3 from=transform.localScale;float time=0;
        while(time<ScaleDuration){time+=Time.unscaledDeltaTime;transform.localScale=Vector3.Lerp(from,target,Mathf.SmoothStep(0,1,time/ScaleDuration));yield return null;}
        transform.localScale=target;scale=null;
    }
    public void onClick()=>Safe_manager.instance.Open_UI();
}
