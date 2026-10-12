using System.Collections.Generic;
using UnityEngine;
using System.Collections;
using System.Linq;

public sealed class Pet_Item_List : MonoBehaviour
{
    public static Pet_Item_List Instance;
    public Pet_Item[] Pet_Item_Pool;
    public Transform[] SlotTransforms;
    public float AutoMerge_MoveDuration,AutoMerge_MergeDistance,AutoMerge_PairDelay;
    public List<Pet_Item> ActiveItems {get;}=new List<Pet_Item>();
    private Coroutine chain;private Pet_Item mover,target;private int revision;
    public bool IsAutoMergeRunning=>chain!=null;
    private void Awake()=>Instance=this;
    private void OnEnable(){if(Pet_manager.instance?.Inventory!=null)Pet_manager.instance.TryStartAutoMerge();}
    private void OnDisable()=>StopAutoMergeChain();
    public void StartAutoMergeChain(){if(chain==null&&gameObject.activeInHierarchy&&Pet_manager.instance.AutoMerge_Active)chain=StartCoroutine(AutoMergeRoutine());}
    public void StopAutoMergeChain(){if(chain!=null)StopCoroutine(chain);chain=null;mover?.EndAutoMerge();target?.EndAutoMerge();mover=target=null;AlignGrid();}
    public bool FindAutoMergePair(out Pet_Item a,out Pet_Item b)
    {a=b=null;for(int grade=0;grade<=Pet_manager.instance.AutoMerge_Limit_Degree;grade++){var pair=ActiveItems.Where(i=>!i.IsDragging&&!i.IsAutoMerging&&!i.IsLocked&&i.PetNum==grade).Take(2).ToArray();if(pair.Length==2){a=pair[0];b=pair[1];return true;}}return false;}
    private bool Valid(Pet_Item item,int index,int gun,int version)=>revision==version&&item!=null&&item.gameObject.activeInHierarchy&&item.ListIndex==index&&item.PetNum==gun&&!item.IsDragging&&!item.IsLocked&&Pet_manager.instance.Inventory.State.Owned_Pet_list[index]==gun&&Pet_manager.instance.Inventory.State.Owned_Pet_LockGroup[index]<0;
    private IEnumerator AutoMergeRoutine()
    {
     yield return null;while(Pet_manager.instance.AutoMerge_Active&&gameObject.activeInHierarchy)
     {
      if(ActiveItems.Any(i=>i.IsDragging)){yield return null;continue;}if(!FindAutoMergePair(out mover,out target))break;
      int version=revision,ai=mover.ListIndex,bi=target.ListIndex,ga=mover.PetNum,gb=target.PetNum;
      mover.BeginAutoMerge();target.BeginAutoMerge();Vector3 start=mover.transform.position,end=target.transform.position;float elapsed=0;
      while(elapsed<AutoMerge_MoveDuration&&Valid(mover,ai,ga,version)&&Valid(target,bi,gb,version)&&Pet_manager.instance.AutoMerge_Active&&!ActiveItems.Any(i=>i.IsDragging))
      {elapsed+=Time.unscaledDeltaTime;float t=Mathf.Clamp01(elapsed/Mathf.Max(.001f,AutoMerge_MoveDuration));mover.transform.position=Vector3.Lerp(start,end,t*t*(3-2*t));if(Vector3.Distance(mover.transform.localPosition,mover.transform.parent.InverseTransformPoint(end))<=AutoMerge_MergeDistance)break;yield return null;}
      if(Pet_manager.instance.AutoMerge_Active&&Valid(mover,ai,ga,version)&&Valid(target,bi,gb,version)&&!ActiveItems.Any(i=>i.IsDragging))
      {bool merged=Pet_manager.instance.Inventory.Merge(ai,bi,ga);Gun_manager.Feedback(merged,3);if(merged)ActiveItems.FirstOrDefault(i=>i.ListIndex==bi)?.PlaySpawnBounce();}
      mover?.EndAutoMerge();target?.EndAutoMerge();mover=target=null;AlignGrid();yield return new WaitForSecondsRealtime(AutoMerge_PairDelay);
     }chain=null;
    }

    public void ReloadList()
    {
        revision++;foreach(var item in Pet_Item_Pool){item.EndAutoMerge();item.ResetDrag();item.gameObject.SetActive(false);}ActiveItems.Clear();int pool=0;
        var s=Pet_manager.instance.Inventory.State;
        for(int i=0;i<16;i++){int pet=s.Owned_Pet_list[i];if(pet<0)continue;var item=Pet_Item_Pool[pool++];item.Reload(pet,i);item.gameObject.SetActive(true);ActiveItems.Add(item);item.transform.position=SlotTransforms[i].position;}
    }
    public void PlaySpawnBounceAtSlot(int index)=>ActiveItems.FirstOrDefault(item=>item.ListIndex==index)?.PlaySpawnBounce();
    public void AlignGrid(){foreach(var item in ActiveItems)item.transform.position=SlotTransforms[item.ListIndex].position;}
    private void OnDestroy(){if(Instance==this)Instance=null;}
}
