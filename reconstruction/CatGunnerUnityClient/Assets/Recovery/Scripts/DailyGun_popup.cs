using System.Collections;
using TMPro;
using UnityEngine;
// Native popup refresh and unscaled one-second weekly timer.
public sealed class DailyGun_popup : MonoBehaviour
{
 public DailyGun_Item[] DailyGun_Item_List;
 public TextMeshProUGUI Time_txt;
 private Coroutine timer;
 private string openedWeekKey;
 private void OnEnable(){if(DailyGun.instance==null||!DailyGun.instance.Bound)return;DailyGun.instance.Week_Refresh();openedWeekKey=DailyGun.instance.Week_Key;foreach(var item in DailyGun_Item_List)if(item!=null)item.First_Reload();Panel_Reload();if(timer!=null)StopCoroutine(timer);timer=StartCoroutine(Timer_Routine());}
 public void Panel_Close()=>gameObject.SetActive(false);
 public void Panel_Reload(){foreach(var item in DailyGun_Item_List)if(item!=null)item.Reload();}
 public IEnumerator Timer_Routine(){var wait=new WaitForSecondsRealtime(1);while(true){var m=DailyGun.instance;if(m==null||!m.Bound)yield break;if(Time_txt!=null)Time_txt.text=m.Remain_str_return();m.Week_Refresh();if(openedWeekKey!=m.Week_Key){openedWeekKey=m.Week_Key;foreach(var item in DailyGun_Item_List)if(item!=null)item.First_Reload();Panel_Reload();}yield return wait;}}
 private void OnDisable(){if(timer!=null)StopCoroutine(timer);timer=null;}
}
