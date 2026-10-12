using System.Collections;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
// vc257 BounceBtn: scaled-time linear press/release with original per-button settings.
public sealed class BounceBtn:MonoBehaviour,IPointerDownHandler,IPointerUpHandler
{
 public float Down_time,Up_time,WantSize=.9f,UpTime=.1f;public bool is_Pressed;private Vector3 normal;private bool initialized;private Coroutine animation;
 private void Start()=>Size_reload();public void Size_reload(){if(initialized)return;normal=transform.localScale;initialized=true;}
 public void OnPointerDown(PointerEventData e){var b=GetComponent<Button>();if(is_Pressed||b!=null&&!b.IsInteractable())return;Size_reload();is_Pressed=true;Down_time=Up_time=0;animation=StartCoroutine(Animate());}
 public void OnPointerUp(PointerEventData e)=>is_Pressed=false;
 private IEnumerator Animate(){while(is_Pressed){Down_time+=Time.deltaTime;transform.localScale=Vector3.Lerp(normal,normal*WantSize,Mathf.Clamp01(Down_time/Mathf.Max(.001f,UpTime)));yield return null;}while(Up_time<UpTime){Up_time+=Time.deltaTime;transform.localScale=Vector3.Lerp(normal*WantSize,normal,Mathf.Clamp01(Up_time/Mathf.Max(.001f,UpTime)));yield return null;}transform.localScale=normal;animation=null;}
 private void OnDisable(){if(animation!=null)StopCoroutine(animation);animation=null;is_Pressed=false;if(initialized)transform.localScale=normal;}
}
