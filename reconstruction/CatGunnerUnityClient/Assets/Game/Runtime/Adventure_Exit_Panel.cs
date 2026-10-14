using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class Adventure_Exit_Panel : MonoBehaviour
{
 public Map_Type _type;
 public int _index;
 public TMPro.TextMeshProUGUI Reward_Exp_txt;
 public TMPro.TextMeshProUGUI Reward_Core_txt;
 public Image Reward_Core_img;
 public Image RewardCore_Panel_img;
 public Color[] CorePanel_Colors;

 public void Reload(Map_Type type,int index){_type=type;_index=index;var m=Adventure_manager.instance;var grades=m.Dispatched_Grades_return(type,index);Reward_Core_txt.text=m.Adventure_Reward_Core_return(grades,index).ToString();Reward_Exp_txt.text=(m.Adventure_Reward_Exp_return(index)*grades.Count).ToString();Reward_Core_img.sprite=Adventure_manager.Core_sprite_return((int)type);RewardCore_Panel_img.color=CorePanel_Colors[(int)type];gameObject.SetActive(true);}
 public void Cancel(){Adventure_manager.instance.Adventure_Cancel(_type,_index);gameObject.SetActive(false);}
 // Native Clear force-finishes. This excluded cheat/time-reduction action gives no reward.
 public void Clear()=>Gun_manager.Feedback(false);public void Close()=>gameObject.SetActive(false);

}
