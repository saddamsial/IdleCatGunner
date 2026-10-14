using System.Collections;
using UnityEngine;

// Native vc257 movement/scale sequence and original serialized identity.
public sealed class TutorialArrow_UI : MonoBehaviour
{
    public RectTransform target0,target1;
    public float moveDuration=1.2f,pauseAtTarget=.15f;
    public Vector2 offset=Vector2.zero;
    public float scaleSmall=.8f,scaleDuration=.15f;
    private RectTransform _rect;
    private Coroutine _moveCoroutine;
    private void Awake()=>_rect=GetComponent<RectTransform>();
    private void OnEnable(){if(target0!=null&&target1!=null&&_moveCoroutine==null)_moveCoroutine=StartCoroutine(MoveLoop());}
    private void OnDisable(){if(_moveCoroutine!=null)StopCoroutine(_moveCoroutine);_moveCoroutine=null;}
    public void SetTargets(RectTransform first,RectTransform second)
    {
        target0=first;target1=second;
        if(_moveCoroutine!=null)StopCoroutine(_moveCoroutine);_moveCoroutine=null;
        if(gameObject.activeInHierarchy&&target0!=null&&target1!=null)_moveCoroutine=StartCoroutine(MoveLoop());
    }
    private static bool IsValid(RectTransform target)=>target!=null&&target.gameObject.activeInHierarchy;
    private Vector2 GetTargetPos(RectTransform target)
    {
        if(_rect.parent is RectTransform parent)
        {
            RectTransformUtility.ScreenPointToLocalPointInRectangle(parent,RectTransformUtility.WorldToScreenPoint(null,target.position),null,out var local);
            return local+offset;
        }
        return target.anchoredPosition+offset;
    }
    private IEnumerator MoveLoop()
    {
        while(IsValid(target0)&&IsValid(target1))
        {
            _rect.anchoredPosition=GetTargetPos(target0);_rect.localScale=Vector3.one;
            yield return ScaleTo(scaleSmall);
            if(!IsValid(target0)||!IsValid(target1))yield break;
            Vector2 start=GetTargetPos(target0);float elapsed=0;
            while(elapsed<moveDuration)
            {
                if(!IsValid(target0)||!IsValid(target1))yield break;
                elapsed+=Time.deltaTime;float t=Mathf.Clamp01(elapsed/moveDuration);
                _rect.anchoredPosition=Vector2.Lerp(start,GetTargetPos(target1),t*t*(3-2*t));yield return null;
            }
            yield return ScaleTo(1);
            if(pauseAtTarget>0)yield return new WaitForSeconds(pauseAtTarget);
        }
    }
    private IEnumerator ScaleTo(float value)
    {
        float start=_rect.localScale.x,elapsed=0;
        while(elapsed<scaleDuration)
        {
            elapsed+=Time.deltaTime;float t=Mathf.Clamp01(elapsed/scaleDuration);
            _rect.localScale=Vector3.one*Mathf.Lerp(start,value,t*t*(3-2*t));yield return null;
        }
        _rect.localScale=Vector3.one*value;
    }
}
