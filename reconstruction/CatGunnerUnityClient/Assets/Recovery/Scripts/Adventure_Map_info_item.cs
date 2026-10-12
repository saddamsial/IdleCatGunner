using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Recovery;
public sealed class Adventure_Map_info_item : MonoBehaviour
{
 private Map_Type _type; private int _num;
 public GameObject Block_obj;
 public GameObject EnterAble_obj;
 public GameObject Entered_obj;
 public GameObject Finish_obj;
 public GameObject Daylock_obj;
 public Image[] Pet_imgs;
 public GameObject[] Map_img_objs;
 public Image Core_img;
 public TMPro.TextMeshProUGUI Stage_txt;
 public TMPro.TextMeshProUGUI Time_txt;
 public TMPro.TextMeshProUGUI Remaining_Duration_txt;
 public TMPro.TextMeshProUGUI LvLock_txt;
 public GameObject AD_Btn_obj;
 public TMPro.TextMeshProUGUI AD_Count_txt;

 private Coroutine timer;
 public void Reload(Map_Type type,int index)
 {
  _type=type;_num=index;var m=Adventure_manager.instance;var status=m.Map_Status_return(type,index);bool day=m.is_OpenDay_return(type);
  for(int i=0;i<Map_img_objs.Length;i++)Map_img_objs[i].SetActive(i==(int)type);Core_img.sprite=Adventure_manager.Core_sprite_return((int)type);Stage_txt.text=$"Stage {index+1}";Time_txt.text=$"{m.Adventure_Duration_return(index)}h";
  Block_obj.SetActive(status==Adventure_Map_Status.Lock);EnterAble_obj.SetActive(status==Adventure_Map_Status.EnterAble&&day);Daylock_obj.SetActive(status==Adventure_Map_Status.EnterAble&&!day);Entered_obj.SetActive(status==Adventure_Map_Status.Entered);Finish_obj.SetActive(status==Adventure_Map_Status.Finish);
  var grades=(status==Adventure_Map_Status.Entered||status==Adventure_Map_Status.Finish)?m.Dispatched_Grades_return(type,index):new List<int>();for(int i=0;i<Pet_imgs.Length;i++){Pet_imgs[i].gameObject.SetActive(i<grades.Count);if(i<grades.Count)Pet_imgs[i].sprite=Pet_manager.instance.Pet_sprites[grades[i]];}
  LvLock_txt.text=$"Unlock at Lv.{m.Progression.Catalogue.UnlockLevels[index]+1}";if(AD_Btn_obj!=null){bool eligible=m.AD_Reduce_Able_return(type,index);AD_Btn_obj.SetActive(eligible);RecoveryRewardedAds.Button(AD_Btn_obj,eligible);if(AD_Count_txt!=null)AD_Count_txt.text=(2-m.AD_Reduce_UseCount)+"/2";}StopTimer();if(status==Adventure_Map_Status.Entered&&gameObject.activeInHierarchy)timer=StartCoroutine(Timer());
 }
 private IEnumerator Timer(){while(true){var m=Adventure_manager.instance;var remain=m.Adventure_Remain_Duration_return(_type,_num);Remaining_Duration_txt.text=FormatDuration(remain);if(remain<=TimeSpan.Zero){timer=null;Reload(_type,_num);m.adventure_panel_ui.Map_List_Reload();m.Alert_Reload();yield break;}yield return new WaitForSeconds(1);}}
 public static string FormatDuration(TimeSpan d){if(d<TimeSpan.Zero)d=TimeSpan.Zero;return $"{(int)d.TotalHours}h {d.Minutes}m {d.Seconds}s";}
 private void StopTimer(){if(timer!=null)StopCoroutine(timer);timer=null;}private void OnDisable()=>StopTimer();
 public void Enter_Popup_Open()=>Adventure_manager.instance.adventure_panel_ui.Adventure_Enter_popup.Open(_type,_num);
 public void Reward_Get()=>Adventure_manager.instance.Adventure_Reward_Get(_type,_num);
 public void Adventure_Cancel_onClick()=>Adventure_manager.instance.adventure_exit_panel.Reload(_type,_num);
 public void AD_Reduce_onClick()=>Adventure_manager.instance.AD_Reduce_Request(_type,_num);

}
