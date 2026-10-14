using System.Linq;
using System.Collections;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

// Matching native inventory outcomes and press/spawn motion; grid snapping remains
// a local presentation adapter for ordinary inventory rearrangement.
public sealed class Gun_Item : MonoBehaviour,IBeginDragHandler,IDragHandler,IEndDragHandler,IPointerClickHandler,IPointerDownHandler,IPointerUpHandler
{
    public Image Gun_img,Shadow_img,Panel_img;
    public GameObject FusionAble_obj,Pause_obj,AD_Reward_obj,AutoMerge_obj;
    public GameObject[] Degree_objs;
    public TextMeshProUGUI Type_txt,AD_Time_txt;
    public float OverlapShrink,PressScale,PressAnimDuration,PressBounceBackDuration;
    public int GunNum=-1,ListIndex=-1;
    public bool IsAdReward {get;private set;}
    public bool IsPaused {get;private set;}
    private bool dragging,suppressClick;
    public bool IsDragging=>dragging;public bool IsAutoMerging{get;private set;}private Coroutine press;
    private Vector3 originalScale;
    private CanvasGroup group;
    float adTextTimer;
    private void Awake(){originalScale=transform.localScale;group=GetComponent<CanvasGroup>();if(group==null)group=gameObject.AddComponent<CanvasGroup>();}
    public void Reload(int gun,int index)
    {
        GunNum=gun;ListIndex=index;Gun_manager.Present(gun,Gun_img,Shadow_img,Panel_img,Degree_objs);
        if(Type_txt!=null)CatGunner.Runtime.WeaponText.Set(Type_txt,Gun_manager.TypeText(gun));
        IsAdReward=Gun_manager.instance.Inventory.IsAdSlot(index);IsPaused=Gun_manager.instance.Owned_Gun_Pause[index];
        if(Pause_obj!=null)Pause_obj.SetActive(IsPaused);if(AD_Reward_obj!=null)AD_Reward_obj.SetActive(IsAdReward);
        adTextTimer=0;if(IsAdReward)UpdateAdTimeText();else if(AD_Time_txt!=null)AD_Time_txt.text=string.Empty;
        if(AutoMerge_obj!=null)AutoMerge_obj.SetActive(false);if(FusionAble_obj!=null)FusionAble_obj.SetActive(false);
        ResetDrag();
    }
    void Update(){if(IsAdReward){adTextTimer+=Time.unscaledDeltaTime;if(adTextTimer>=.2f){adTextTimer=0;UpdateAdTimeText();}}}
    public void UpdateAdTimeText(){if(AD_Time_txt!=null&&Gun_manager.instance?.TemporaryGun!=null)AD_Time_txt.text=Gun_manager.instance.TemporaryGun.TimeText;}
    public void BeginAutoMerge(){ResetDrag();IsAutoMerging=true;if(AutoMerge_obj!=null)AutoMerge_obj.SetActive(true);group.blocksRaycasts=false;}
    public void EndAutoMerge(){IsAutoMerging=false;if(AutoMerge_obj!=null)AutoMerge_obj.SetActive(false);if(group!=null)group.blocksRaycasts=true;}
    private void StopPress(){if(press!=null)StopCoroutine(press);press=null;}
    private IEnumerator ScaleTo(Vector3 goal,float duration)
    {Vector3 start=transform.localScale;float time=0;while(time<duration){time+=Time.unscaledDeltaTime;float t=Mathf.Clamp01(time/Mathf.Max(.001f,duration));transform.localScale=Vector3.Lerp(start,goal,t*t*(3-2*t));yield return null;}transform.localScale=goal;}
    private IEnumerator Bounce(bool spawn)
    {float[] sizes=spawn?new[]{1.1f,.95f,1.02f,1f}:new[]{1.05f,.98f,1f};float[] times=spawn?new[]{.15f,.08f,.06f,.05f}:new[]{.08f,.06f,.05f};if(spawn)transform.localScale=Vector3.zero;for(int i=0;i<sizes.Length;i++)yield return ScaleTo(originalScale*sizes[i],times[i]);transform.localScale=originalScale;press=null;}
    public void PlaySpawnBounce(){StopPress();if(gameObject.activeInHierarchy)press=StartCoroutine(Bounce(true));}
    public void OnPointerDown(PointerEventData data){if(!IsAutoMerging){StopPress();press=StartCoroutine(ScaleTo(originalScale*PressScale,PressAnimDuration));}}
    public void OnPointerUp(PointerEventData data){if(!dragging&&!IsAutoMerging){StopPress();press=StartCoroutine(Bounce(false));}}
    public void OnPointerClick(PointerEventData data)
    {
        if(suppressClick){suppressClick=false;return;}
        if(IsAutoMerging)return;
        if(IsAdReward)Gun_manager.instance.AdRewardGun_TryWatch();else Gun_manager.instance.gun_info_ui.Show(GunNum,1,ListIndex);
        // vc257 OnPointerUp 0x2b71778: both paths use original Button(1), entry volume, pitch1.
        // Existing click/drag dispatch remains a local pointer routing adapter.
        Sound_manager.instance?.PlaySfx(SfxType.Button);
    }
    public void OnBeginDrag(PointerEventData data)
    {
        if(IsAdReward||IsAutoMerging)return;StopPress();dragging=true;suppressClick=true;group.blocksRaycasts=false;transform.SetAsLastSibling();transform.localScale=originalScale;
        Safe_manager.instance?.safe_hud.SetDragging(true);
    }
    public void OnDrag(PointerEventData data)
    {
        if(!dragging)return;
        var parent=transform.parent as RectTransform;
        if(RectTransformUtility.ScreenPointToWorldPointInRectangle(parent,data.position,data.pressEventCamera,out var point))transform.position=point;
        Safe_manager.instance?.safe_hud.SetHover(HitsSafe(data));
    }
    public void OnEndDrag(PointerEventData data)
    {
        if(!dragging)return;ResetDrag();
        var owner=Gun_manager.instance;var inventory=owner.Inventory;int source=ListIndex,expected=GunNum;
        if(inventory.State.Owned_Gun_list[source]!=expected){owner.ReloadGunUI();return;}
        var slot=owner.Gun_Slot_List.FirstOrDefault(s=>RectTransformUtility.RectangleContainsScreenPoint(s.transform as RectTransform,data.position,data.pressEventCamera));
        bool changed=false;
        if(slot!=null)changed=inventory.Equip(source,slot.SlotNum);
        else if(HitsSafe(data))
        {
            Safe_manager.instance.Put_From_Inventory(source,expected);owner.ReloadGunUI();return;
        }
        else
        {
            var target=Gun_Item_List.Instance.ActiveItems.Where(i=>i!=this && RectTransformUtility.RectangleContainsScreenPoint(i.transform as RectTransform,data.position,data.pressEventCamera))
                .OrderBy(i=>Vector2.Distance(data.position,RectTransformUtility.WorldToScreenPoint(data.pressEventCamera,i.transform.position))).FirstOrDefault();
            if(target!=null)
                changed=expected/5==target.GunNum/5?inventory.Merge(source,target.ListIndex,expected,target.GunNum):inventory.SwapOwned(source,target.ListIndex);
            else
            {
                int destination=System.Array.FindIndex(Gun_Item_List.Instance.SlotTransforms,t=>RectTransformUtility.RectangleContainsScreenPoint(t as RectTransform,data.position,data.pressEventCamera));
                if(destination>=0)changed=inventory.SwapOwned(source,destination);
            }
        }
        owner.ReloadGunUI();Gun_manager.Feedback(changed,3);
    }
    private bool HitsSafe(PointerEventData data)
    {
        var hud=Safe_manager.instance!=null?Safe_manager.instance.safe_hud:null;if(hud==null||!hud.gameObject.activeInHierarchy||EventSystem.current==null)return false;
        var hits=new System.Collections.Generic.List<RaycastResult>();EventSystem.current.RaycastAll(data,hits);
        return hits.Any(h=>h.gameObject!=gameObject&&h.gameObject.transform.IsChildOf(hud.transform));
    }
    public void ResetDrag(){StopPress();bool wasDragging=dragging;dragging=false;transform.localScale=originalScale==Vector3.zero?Vector3.one:originalScale;if(group!=null)group.blocksRaycasts=true;if(wasDragging&&Safe_manager.instance!=null)Safe_manager.instance.safe_hud.SetDragging(false);}
    private void OnDisable(){ResetDrag();EndAutoMerge();}
}
