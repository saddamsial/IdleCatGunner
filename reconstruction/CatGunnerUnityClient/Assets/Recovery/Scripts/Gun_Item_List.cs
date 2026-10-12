using System.Collections.Generic;
using UnityEngine;
using System.Collections;
using System.Linq;

public sealed class Gun_Item_List : MonoBehaviour
{
    public static Gun_Item_List Instance;
    public Gun_Item[] Gun_Item_Pool;
    public Transform[] SlotTransforms;
    public float AutoMerge_MoveDuration,AutoMerge_MergeDistance,AutoMerge_PairDelay;
    public List<Gun_Item> ActiveItems {get;}=new List<Gun_Item>();
    private Coroutine chain;private Gun_Item mover,target;private int revision;
    public bool IsAutoMergeRunning=>chain!=null;
    public int VisibilityRevision {get;private set;}
    private void Awake()=>Instance=this;
    private void OnEnable(){if(Gun_manager.instance?.Inventory!=null)Gun_manager.instance.TryStartAutoMerge();}
    private void OnDisable(){VisibilityRevision++;StopAutoMergeChain();}
    public void StartAutoMergeChain(){if(chain==null&&gameObject.activeInHierarchy&&Gun_manager.instance.AutoMerge_Active)chain=StartCoroutine(AutoMergeRoutine());}
    public void StopAutoMergeChain(){if(chain!=null)StopCoroutine(chain);chain=null;mover?.EndAutoMerge();target?.EndAutoMerge();mover=target=null;AlignGrid();}
    public bool FindAutoMergePair(out Gun_Item a,out Gun_Item b)
    {a=b=null;for(int grade=0;grade<=Gun_manager.instance.AutoMerge_Limit_Degree;grade++){var pair=ActiveItems.Where(i=>!i.IsDragging&&!i.IsAutoMerging&&!i.IsAdReward&&!i.IsPaused&&i.GunNum/5==grade).Take(2).ToArray();if(pair.Length==2){a=pair[0];b=pair[1];return true;}}return false;}
    private bool Valid(Gun_Item item,int index,int gun,int version)=>revision==version&&item!=null&&item.gameObject.activeInHierarchy&&item.ListIndex==index&&item.GunNum==gun&&!item.IsDragging&&!item.IsPaused&&!item.IsAdReward&&Gun_manager.instance.Inventory.State.Owned_Gun_list[index]==gun&&!Gun_manager.instance.Inventory.State.Owned_Gun_Pause[index];
    private IEnumerator AutoMergeRoutine()
    {
     yield return null;while(Gun_manager.instance.AutoMerge_Active&&gameObject.activeInHierarchy)
     {
      if(ActiveItems.Any(i=>i.IsDragging)){yield return null;continue;}if(!FindAutoMergePair(out mover,out target))break;
      int version=revision,ai=mover.ListIndex,bi=target.ListIndex,ga=mover.GunNum,gb=target.GunNum;
      mover.BeginAutoMerge();target.BeginAutoMerge();Vector3 start=mover.transform.position,end=target.transform.position;float elapsed=0;
      while(elapsed<AutoMerge_MoveDuration&&Valid(mover,ai,ga,version)&&Valid(target,bi,gb,version)&&Gun_manager.instance.AutoMerge_Active&&!ActiveItems.Any(i=>i.IsDragging))
      {elapsed+=Time.unscaledDeltaTime;float t=Mathf.Clamp01(elapsed/Mathf.Max(.001f,AutoMerge_MoveDuration));mover.transform.position=Vector3.Lerp(start,end,t*t*(3-2*t));if(Vector3.Distance(mover.transform.localPosition,mover.transform.parent.InverseTransformPoint(end))<=AutoMerge_MergeDistance)break;yield return null;}
      if(Gun_manager.instance.AutoMerge_Active&&Valid(mover,ai,ga,version)&&Valid(target,bi,gb,version)&&!ActiveItems.Any(i=>i.IsDragging))
      {bool merged=Gun_manager.instance.Inventory.Merge(ai,bi,ga,gb);Gun_manager.Feedback(merged,3);if(merged)ActiveItems.FirstOrDefault(i=>i.ListIndex==bi)?.PlaySpawnBounce();}
      mover?.EndAutoMerge();target?.EndAutoMerge();mover=target=null;AlignGrid();yield return new WaitForSecondsRealtime(AutoMerge_PairDelay);
     }chain=null;
    }
    // Native compact pool retains the actual sparse inventory index.
    public void ReloadList()
    {
        revision++;foreach(var item in Gun_Item_Pool){item.EndAutoMerge();item.ResetDrag();item.gameObject.SetActive(false);}
        ActiveItems.Clear();int pool=0;
        var inventory=Gun_manager.instance.Inventory;
        for(int index=0;index<16;index++)
        {
            int gun=inventory.State.Owned_Gun_list[index];if(gun<0)continue;
            var item=Gun_Item_Pool[pool++];item.Reload(gun,index);item.gameObject.SetActive(true);
            ActiveItems.Add(item);item.transform.position=SlotTransforms[index].position;
        }
    }
    public void PlaySpawnBounceAtSlot(int index)=>ActiveItems.FirstOrDefault(item=>item.ListIndex==index)?.PlaySpawnBounce();
    public void AlignGrid(){foreach(var item in ActiveItems)item.transform.position=SlotTransforms[item.ListIndex].position;}
    private void OnDestroy(){if(Instance==this)Instance=null;}
}
