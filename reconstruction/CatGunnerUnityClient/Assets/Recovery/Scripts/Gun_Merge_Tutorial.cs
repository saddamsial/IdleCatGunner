using System.Collections;
using System.Linq;
using UnityEngine;

public sealed class Gun_Merge_Tutorial : MonoBehaviour
{
    public TutorialArrow_UI tutorial_arrow;
    private void OnEnable()=>StartCoroutine(ReloadNextFrame());
    private IEnumerator ReloadNextFrame(){yield return null;Reload();}
    public void Reload()
    {
        if(!gameObject.activeInHierarchy)return;
        var owner=Gun_manager.instance;
        if(owner==null||owner.Has_Merged){Hide();return;}
        // Native filters only low gun IDs, paused and ad-reward items; there is
        // no additional dragging or auto-merge toggle gate in this method.
        var pair=owner.gunItemList.ActiveItems.Where(item=>item!=null&&item.gameObject.activeSelf&&item.GunNum>=-4&&item.GunNum<=4&&!item.IsAdReward&&!item.IsPaused).Take(2).ToArray();
        if(pair.Length<2){Hide();return;}
        // Excluded attribution logging does not change Merge_Tutorial_Logged.
        tutorial_arrow.gameObject.SetActive(true);
        tutorial_arrow.SetTargets((RectTransform)pair[0].transform,(RectTransform)pair[1].transform);
    }
    public void Hide(){if(tutorial_arrow==null)return;tutorial_arrow.SetTargets(null,null);tutorial_arrow.gameObject.SetActive(false);}
}
