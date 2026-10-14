using UnityEngine;
using UnityEngine.UI;
public sealed class Fish_DeleteZone:MonoBehaviour
{
 public static Fish_DeleteZone instance;public Fish_DeletePopup deletePopup;public Image zoneImage;public Color normalColor,highlightColor;
 private CanvasGroup group;
 private void Awake(){instance=this;group=GetComponent<CanvasGroup>();if(group==null)group=gameObject.AddComponent<CanvasGroup>();Hide();}
 public void Show(){group.alpha=1;group.blocksRaycasts=false;SetHighlight(false);}public void Hide(){if(group!=null){group.alpha=0;group.blocksRaycasts=false;}SetHighlight(false);}
 public void SetHighlight(bool value)=>zoneImage.color=value?highlightColor:normalColor;
 public bool ContainsScreenPoint(Vector2 p,Camera camera=null)=>RectTransformUtility.RectangleContainsScreenPoint((RectTransform)transform,p,camera);
 public bool TryDelete(Fish_Item f,Vector2 p,Camera camera=null){if(!ContainsScreenPoint(p,camera))return false;deletePopup.Show(f);return true;}
 private void OnDestroy(){if(instance==this)instance=null;}
}
