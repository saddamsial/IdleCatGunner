using System.Collections;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
public sealed class Fish_Item:MonoBehaviour,IPointerDownHandler,IPointerUpHandler,IPointerClickHandler,IBeginDragHandler,IDragHandler,IEndDragHandler
{
 public Image skinImage,FusionAlert_img;public Transform FusionAlert_txt_trans;public GameObject AutoMerge_obj;
 public int grade=-1,inventoryIndex=-1;public bool isActive,isPendingDelete;
 public float ellipseHitScale=.85f,ellipseXScale=.9f,ellipseYScale=.95f,PressScale=.9f,PressAnimDuration=.08f;
 public bool IsDragging{get;private set;}public bool IsAutoMerging{get;private set;}
 private Canvas sortingCanvas;private bool autoMover;private RectTransform rect;private CanvasGroup group;private Fish_Tank tank;private Vector3 normalScale;private Vector2 direction,dragOffset;private float speed,timer;private bool dragged;private Coroutine press;private float swimTime;private Vector3 skinScale=Vector3.one;
 private void Awake()=>EnsureInit();
 private void EnsureInit(){if(rect!=null)return;rect=(RectTransform)transform;normalScale=transform.localScale;group=GetComponent<CanvasGroup>();if(group==null)group=gameObject.AddComponent<CanvasGroup>();tank=GetComponentInParent<Fish_Tank>();sortingCanvas=GetComponent<Canvas>();if(sortingCanvas==null)sortingCanvas=gameObject.AddComponent<Canvas>();sortingCanvas.overrideSorting=true;var raycaster=GetComponent<GraphicRaycaster>();if(raycaster==null)raycaster=gameObject.AddComponent<GraphicRaycaster>();
  // Native UpdateFlip mirrors the image with a180-degree Y rotation. This
  // per-fish recovery raycaster must retain hits on the reversed image too.
  raycaster.ignoreReversedGraphics=false;}
 public void Reload(int g,int index){EnsureInit();grade=g;inventoryIndex=index;isActive=true;isPendingDelete=false;gameObject.SetActive(true);sortingCanvas.overrideSorting=true;ForceEndDrag();EndAutoMerge();skinImage.sprite=Fish_manager.instance.Fish_Real_sprites[g];skinImage.SetNativeSize();rect.sizeDelta=skinImage.rectTransform.sizeDelta;FusionAlert_img.sprite=Fish_manager.instance.Fish_Outline_sprites[g];Fusion_Alert_Off();if(skinImage.GetComponent<CatGunner.Runtime.PenguinFishSwim>()==null)skinImage.gameObject.AddComponent<CatGunner.Runtime.PenguinFishSwim>();skinScale=Vector3.one;swimTime=inventoryIndex*.71f;speed=Random.Range(15f,35f);PickDirection();}
 private void PickDirection(){direction=new Vector2(Random.value>.5f?1:-1,Random.Range(-.3f,.3f)).normalized;timer=Random.Range(2f,5f);FaceTowards(direction.x);}
 private void Update(){UpdateSortOrder();if(!isActive||IsDragging||IsAutoMerging||isPendingDelete)return;Vector2 proposed=GetPosition()+direction*speed*Time.unscaledDeltaTime;Vector2 clamped=ClampToTank(proposed);if(Mathf.Abs(proposed.x-clamped.x)>.01f){direction.x=-direction.x;FaceTowards(direction.x);}if(Mathf.Abs(proposed.y-clamped.y)>.01f)direction.y=-direction.y;SetPosition(clamped);timer-=Time.unscaledDeltaTime;if(timer<=0){PickDirection();speed=Random.Range(15f,35f);}AnimateSwimming();}
 public Vector2 GetPosition()=>rect.anchoredPosition;
 public void SetPosition(Vector2 p){rect.anchoredPosition=ClampToTank(p);UpdateSortOrder();}
 // Local Canvas compatibility: native order0 ties the recovered parent Canvas
 // and hides upper-tank fish behind its background. Reserve order0 for the page.
 private void UpdateSortOrder(){if(rect==null||sortingCanvas==null)return;sortingCanvas.overrideSorting=true;int order=Mathf.Clamp(Mathf.RoundToInt(300-rect.anchoredPosition.y)+(12-Mathf.Max(0,grade))*10,1,2000);sortingCanvas.sortingOrder=IsDragging?9999:IsAutoMerging&&autoMover?9998:order;}
 public Vector2 ClampToTank(Vector2 p){var bounds=tank.TankRect.rect;var half=rect.sizeDelta*.5f;return new Vector2(Mathf.Clamp(p.x,bounds.xMin+half.x,bounds.xMax-half.x),Mathf.Clamp(p.y,bounds.yMin+half.y,bounds.yMax-half.y));}
 public void FaceTowards(float x){bool facesLeft=skinImage.sprite!=null&&skinImage.sprite.name.Contains("fish");skinImage.transform.localEulerAngles=new Vector3(0,(facesLeft?x>0:x<0)?180:0,0);if(FusionAlert_txt_trans!=null)FusionAlert_txt_trans.localEulerAngles=skinImage.transform.localEulerAngles;}
 private void AnimateSwimming(){swimTime+=Time.unscaledDeltaTime;float wag=Mathf.Sin(swimTime*7);skinImage.transform.localScale=Vector3.Scale(skinScale,new Vector3(1+wag*.035f,1-wag*.025f,1));var angles=skinImage.transform.localEulerAngles;angles.z=wag*3;skinImage.transform.localEulerAngles=angles;}
 public void Deactivate(){isActive=false;isPendingDelete=false;EndAutoMerge();ForceEndDrag();gameObject.SetActive(false);inventoryIndex=-1;}
 public void BeginAutoMerge(bool moving=false){ForceEndDrag();dragged=false;autoMover=moving;IsAutoMerging=true;Fusion_Alert_Off();if(group!=null)group.blocksRaycasts=false;UpdateSortOrder();if(AutoMerge_obj!=null)AutoMerge_obj.SetActive(true);}
 public void EndAutoMerge(){IsAutoMerging=false;autoMover=false;if(group!=null)group.blocksRaycasts=true;UpdateSortOrder();if(AutoMerge_obj!=null)AutoMerge_obj.SetActive(false);}
 public void ForceEndDrag(){EnsureInit();IsDragging=false;if(group!=null)group.blocksRaycasts=true;if(press!=null){StopCoroutine(press);press=null;}transform.localScale=normalScale;}
 public void Fusion_Alert_On(){if(FusionAlert_img!=null)FusionAlert_img.gameObject.SetActive(true);}public void Fusion_Alert_Off(){if(FusionAlert_img!=null)FusionAlert_img.gameObject.SetActive(false);}
 public bool IsOverlapping(Fish_Item other){Vector2 delta=GetPosition()-other.GetPosition(),r=(rect.sizeDelta+other.rect.sizeDelta)*.5f*ellipseHitScale;r=Vector2.Scale(r,new Vector2(ellipseXScale,ellipseYScale));return r.x>0&&r.y>0&&delta.x*delta.x/(r.x*r.x)+delta.y*delta.y/(r.y*r.y)<=1;}
 private void ScaleTo(float scale){if(press!=null)StopCoroutine(press);press=StartCoroutine(AnimateScale(normalScale*scale));}
 private IEnumerator AnimateScale(Vector3 goal){Vector3 start=transform.localScale;float t=0;while(t<PressAnimDuration){t+=Time.unscaledDeltaTime;float k=Mathf.Clamp01(t/PressAnimDuration);transform.localScale=Vector3.Lerp(start,goal,k*k*(3-2*k));yield return null;}transform.localScale=goal;press=null;}
 public void OnPointerDown(PointerEventData e){if(isActive&&!IsAutoMerging&&!isPendingDelete)ScaleTo(PressScale);}
 private IEnumerator BounceBack(){float[] sizes={1.05f,.98f,1f},durations={.08f,.06f,.05f};for(int i=0;i<3;i++){Vector3 start=transform.localScale,goal=normalScale*sizes[i];float time=0;while(time<durations[i]){time+=Time.unscaledDeltaTime;float t=Mathf.Clamp01(time/durations[i]);transform.localScale=Vector3.Lerp(start,goal,t*t*(3-2*t));yield return null;}}transform.localScale=normalScale;press=null;}
 public void OnPointerUp(PointerEventData e){if(!IsDragging&&!IsAutoMerging&&isActive){if(press!=null)StopCoroutine(press);press=StartCoroutine(BounceBack());}}
 public void OnPointerClick(PointerEventData e){if(dragged){dragged=false;return;}if(isActive&&!IsAutoMerging&&!isPendingDelete)Fish_manager.instance.fish_info_ui.Reload(grade);}
 public void OnBeginDrag(PointerEventData e){if(!isActive||IsAutoMerging||isPendingDelete)return;ForceEndDrag();IsDragging=true;dragged=true;group.blocksRaycasts=false;RectTransformUtility.ScreenPointToLocalPointInRectangle(tank.TankRect,e.position,e.pressEventCamera,out var p);dragOffset=GetPosition()-p;Fish_DeleteZone.instance.Show();}
 public void OnDrag(PointerEventData e){if(!IsDragging)return;RectTransformUtility.ScreenPointToLocalPointInRectangle(tank.TankRect,e.position,e.pressEventCamera,out var p);SetPosition(p+dragOffset);tank.UpdateFusionAlert(this);Fish_DeleteZone.instance.SetHighlight(Fish_DeleteZone.instance.ContainsScreenPoint(e.position,e.pressEventCamera));}
 public void OnEndDrag(PointerEventData e){if(!IsDragging)return;ForceEndDrag();bool deleted=Fish_DeleteZone.instance.TryDelete(this,e.position,e.pressEventCamera);if(!deleted)tank.CheckFusion(this);tank.ClearAllFusionAlerts();Fish_DeleteZone.instance.Hide();}
 private void OnDisable(){ForceEndDrag();EndAutoMerge();}
}
