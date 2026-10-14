using System.Collections;
using System.Linq;
using TMPro;
using UnityEngine;
public sealed class Fish_Tank:MonoBehaviour
{
 public Fish_Item[] fishPool;public float spawnMinDistance=100;public int spawnMaxAttempts=30;public float AutoMerge_MoveDuration=.4f,AutoMerge_MergeDistance=20,AutoMerge_PairDelay=.15f;public TextMeshProUGUI Count_txt;
 public RectTransform TankRect=>(RectTransform)transform;public bool IsAutoMergeRunning=>chain!=null;
 private Coroutine chain;private Fish_Item mover,target;
 private void OnEnable(){if(Fish_manager.instance?.Model!=null){ReloadAll();Fish_manager.instance.TryStartAutoMerge();}}
 private void OnDisable(){StopAutoMergeChain();Fish_DeleteZone.instance?.deletePopup.Close();ClearAllFusionAlerts();}
 public void ReloadAll(){StopAutoMergeChain();foreach(var item in fishPool)item.Deactivate();var list=Fish_manager.instance.Inventory;for(int i=0;i<list.Count;i++){var item=fishPool[i];item.Reload(list[i],i);item.SetPosition(FindEmptyPosition(item));}CountReload();SortHierarchyByGrade();Fish_manager.instance.TryStartAutoMerge();}
 public void SpawnFish(int grade){var item=fishPool.FirstOrDefault(f=>!f.isActive);if(item==null)return;item.Reload(grade,Fish_manager.instance.Inventory.Count-1);item.SetPosition(FindEmptyPosition(item));CountReload();SortHierarchyByGrade();}
 private Vector2 FindEmptyPosition(Fish_Item item){Vector2 best=Vector2.zero;float max=-1;for(int i=0;i<spawnMaxAttempts;i++){var rect=TankRect.rect;Vector2 p=item.ClampToTank(new Vector2(Random.Range(rect.xMin,rect.xMax),Random.Range(rect.yMin,rect.yMax)));float distance=fishPool.Where(f=>f!=item&&f.isActive).Select(f=>Vector2.Distance(p,f.GetPosition())).DefaultIfEmpty(float.MaxValue).Min();if(distance>max){max=distance;best=p;}if(distance>=spawnMinDistance)return p;}return best;}
 private void CountReload()=>Count_txt.text=Fish_manager.instance.Inventory.Count+"/20";
 public void SortHierarchyByGrade(){foreach(var f in fishPool.Where(f=>f.isActive).OrderBy(f=>f.grade))f.transform.SetAsLastSibling();}
 private Fish_Item FindFusionTarget(Fish_Item source)=>source.grade<12?fishPool.Where(f=>f!=source&&Valid(f)&&f.grade==source.grade&&source.IsOverlapping(f)).OrderBy(f=>Vector2.Distance(f.GetPosition(),source.GetPosition())).FirstOrDefault():null;
 public void UpdateFusionAlert(Fish_Item source){ClearAllFusionAlerts();FindFusionTarget(source)?.Fusion_Alert_On();}
 public void ClearAllFusionAlerts(){foreach(var f in fishPool)f.Fusion_Alert_Off();}
 public bool CheckFusion(Fish_Item source){var dest=FindFusionTarget(source);return dest!=null&&FuseItems(source,dest);}
 public bool FuseItems(Fish_Item a,Fish_Item b)
 {
  if(a==null||b==null||a==b||!Matches(a)||!Matches(b)||a.isPendingDelete||b.isPendingDelete)return false;
  int ai=a.inventoryIndex,bi=b.inventoryIndex;Vector2 pos=b.GetPosition();int grade=Fish_manager.instance.TryFusion(ai,bi,a.grade,b.grade);if(grade<0)return false;
  a.Deactivate();b.Deactivate();foreach(var f in fishPool.Where(f=>f.isActive))f.inventoryIndex-=(f.inventoryIndex>ai?1:0)+(f.inventoryIndex>bi?1:0);
  a.Reload(grade,Fish_manager.instance.Inventory.Count-1);a.SetPosition(pos);CountReload();SortHierarchyByGrade();Fish_manager.instance.TryStartAutoMerge();return true;
 }
 private bool Matches(Fish_Item f)=>f.isActive&&f.inventoryIndex>=0&&f.inventoryIndex<Fish_manager.instance.Inventory.Count&&Fish_manager.instance.Inventory[f.inventoryIndex]==f.grade;
 private bool Valid(Fish_Item f)=>Matches(f)&&!f.IsDragging&&!f.IsAutoMerging&&!f.isPendingDelete;
 public void Delete(Fish_Item f){if(!Matches(f))return;int index=f.inventoryIndex;if(!Fish_manager.instance.RemoveFish(index,f.grade))return;f.Deactivate();foreach(var item in fishPool.Where(i=>i.isActive&&i.inventoryIndex>index))item.inventoryIndex--;CountReload();}
 public void ClearPendingDelete(){foreach(var f in fishPool)f.isPendingDelete=false;}
 public void StartAutoMergeChain(){if(chain==null&&gameObject.activeInHierarchy&&Fish_manager.instance.AutoMerge_Active)chain=StartCoroutine(AutoMergeRoutine());}
 public void StopAutoMergeChain(){if(chain!=null)StopCoroutine(chain);chain=null;mover?.EndAutoMerge();target?.EndAutoMerge();mover=target=null;}
 private IEnumerator AutoMergeRoutine()
 {
  yield return null;while(Fish_manager.instance.AutoMerge_Active&&gameObject.activeInHierarchy)
  {
   if(fishPool.Any(f=>f.IsDragging||f.isPendingDelete)){yield return null;continue;}
   mover=target=null;for(int grade=0;grade<12;grade++){var pair=fishPool.Where(f=>Valid(f)&&f.grade==grade).Take(2).ToArray();if(pair.Length==2){target=pair[0];mover=pair[1];break;}}
   if(mover==null)break;mover.BeginAutoMerge(true);target.BeginAutoMerge();Vector2 start=mover.GetPosition(),end=target.GetPosition();float elapsed=0;
   while(elapsed<AutoMerge_MoveDuration&&Matches(mover)&&Matches(target)&&Fish_manager.instance.AutoMerge_Active&&!fishPool.Any(f=>f.IsDragging||f.isPendingDelete)){elapsed+=Time.unscaledDeltaTime;float t=Mathf.Clamp01(elapsed/Mathf.Max(.001f,AutoMerge_MoveDuration));mover.SetPosition(Vector2.Lerp(start,end,t*t*(3-2*t)));if(Vector2.Distance(mover.GetPosition(),end)<=AutoMerge_MergeDistance)break;yield return null;}
   if(Fish_manager.instance.AutoMerge_Active&&Matches(mover)&&Matches(target)&&!fishPool.Any(f=>f.IsDragging||f.isPendingDelete))FuseItems(mover,target);
   mover?.EndAutoMerge();target?.EndAutoMerge();mover=target=null;yield return new WaitForSecondsRealtime(AutoMerge_PairDelay);
  }chain=null;
 }
}
