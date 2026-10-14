using System.Linq;
using System.Collections;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public sealed class Pet_Item : MonoBehaviour,IBeginDragHandler,IDragHandler,IEndDragHandler,IPointerClickHandler,IPointerDownHandler,IPointerUpHandler
{
    public Image Pet_img,Shadow_img,Panel_img;
    public GameObject FusionAble_obj,Lock_obj,AutoMerge_obj;
    public GameObject[] Degree_objs;
    public float OverlapShrink,PressScale,PressAnimDuration;
    public int PetNum=-1,ListIndex=-1;
    private bool dragging,suppressClick;
    public bool IsDragging=>dragging;public bool IsLocked=>Pet_manager.instance.Inventory.State.Owned_Pet_LockGroup[ListIndex]>=0;public bool IsAutoMerging{get;private set;}private Coroutine press;private Vector3 originalScale;
    private CanvasGroup group;
    private void Awake(){originalScale=transform.localScale;group=GetComponent<CanvasGroup>();if(group==null)group=gameObject.AddComponent<CanvasGroup>();}
    public void Reload(int pet,int index){PetNum=pet;ListIndex=index;Pet_manager.Present(pet,Pet_img,Shadow_img,Panel_img,Degree_objs);if(Lock_obj!=null)Lock_obj.SetActive(Pet_manager.instance.Inventory.State.Owned_Pet_LockGroup[index]>=0);if(AutoMerge_obj!=null)AutoMerge_obj.SetActive(false);if(FusionAble_obj!=null)FusionAble_obj.SetActive(false);ResetDrag();}
    public void BeginAutoMerge(){ResetDrag();IsAutoMerging=true;if(AutoMerge_obj!=null)AutoMerge_obj.SetActive(true);group.blocksRaycasts=false;}
    public void EndAutoMerge(){IsAutoMerging=false;if(AutoMerge_obj!=null)AutoMerge_obj.SetActive(false);if(group!=null)group.blocksRaycasts=true;}
    private void StopPress(){if(press!=null)StopCoroutine(press);press=null;}
    private IEnumerator ScaleTo(Vector3 goal,float duration)
    {Vector3 start=transform.localScale;float time=0;while(time<duration){time+=Time.unscaledDeltaTime;float t=Mathf.Clamp01(time/Mathf.Max(.001f,duration));transform.localScale=Vector3.Lerp(start,goal,t*t*(3-2*t));yield return null;}transform.localScale=goal;}
    private IEnumerator Bounce(bool spawn)
    {float[] sizes=spawn?new[]{1.1f,.95f,1.02f,1f}:new[]{1.05f,.98f,1f};float[] times=spawn?new[]{.15f,.08f,.06f,.05f}:new[]{.08f,.06f,.05f};if(spawn)transform.localScale=Vector3.zero;for(int i=0;i<sizes.Length;i++)yield return ScaleTo(originalScale*sizes[i],times[i]);transform.localScale=originalScale;press=null;}
    public void PlaySpawnBounce(){StopPress();if(gameObject.activeInHierarchy)press=StartCoroutine(Bounce(true));}
    public void OnPointerDown(PointerEventData data){if(!IsLocked&&!IsAutoMerging){StopPress();press=StartCoroutine(ScaleTo(originalScale*PressScale,PressAnimDuration));}}
    public void OnPointerUp(PointerEventData data){if(!dragging&&!IsAutoMerging){StopPress();press=StartCoroutine(Bounce(false));}}
    public void OnPointerClick(PointerEventData data){if(suppressClick){suppressClick=false;return;}if(!IsAutoMerging)Pet_manager.instance.pet_info_ui.Reload(PetNum);}
    public void OnBeginDrag(PointerEventData data){if(IsLocked||IsAutoMerging)return;StopPress();transform.localScale=originalScale;dragging=true;suppressClick=true;group.blocksRaycasts=false;transform.SetAsLastSibling();}
    public void OnDrag(PointerEventData data){if(dragging&&RectTransformUtility.ScreenPointToWorldPointInRectangle(transform.parent as RectTransform,data.position,data.pressEventCamera,out var point))transform.position=point;}
    public void OnEndDrag(PointerEventData data)
    {
        if(!dragging)return;ResetDrag();var o=Pet_manager.instance;var inventory=o.Inventory;int source=ListIndex,pet=PetNum;
        if(inventory.State.Owned_Pet_list[source]!=pet){o.Pet_Reload();return;}
        var slot=o.Pet_Slot_List.FirstOrDefault(s=>RectTransformUtility.RectangleContainsScreenPoint(s.transform as RectTransform,data.position,data.pressEventCamera));bool changed=false;
        if(slot!=null)changed=inventory.Equip(source,slot.SlotNum);
        else
        {
            var target=Pet_Item_List.Instance.ActiveItems.Where(i=>i!=this&&RectTransformUtility.RectangleContainsScreenPoint(i.transform as RectTransform,data.position,data.pressEventCamera))
                .OrderBy(i=>Vector2.Distance(data.position,RectTransformUtility.WorldToScreenPoint(data.pressEventCamera,i.transform.position))).FirstOrDefault();
            if(target!=null)changed=pet==target.PetNum?inventory.Merge(source,target.ListIndex,pet):inventory.SwapOwned(source,target.ListIndex);
            else{int dest=System.Array.FindIndex(Pet_Item_List.Instance.SlotTransforms,t=>RectTransformUtility.RectangleContainsScreenPoint(t as RectTransform,data.position,data.pressEventCamera));if(dest>=0)changed=inventory.SwapOwned(source,dest);}
        }
        o.Pet_Reload();Gun_manager.Feedback(changed,3);
    }
    public void ResetDrag(){StopPress();transform.localScale=originalScale==Vector3.zero?Vector3.one:originalScale;dragging=false;if(group!=null)group.blocksRaycasts=true;}
    private void OnDisable(){ResetDrag();EndAutoMerge();}
}
