using TMPro;
using UnityEngine;
public sealed class DailyGun_Item : MonoBehaviour
{
 public int Item_Idx;
 public Gun_Item_Demo gun_item;
 public TextMeshProUGUI PetCoin_txt,Count_txt;
 public GameObject Disable_Panel_obj,Disable_Step_obj,PurchaseAble_obj;
 private float timer;
 private void OnEnable(){First_Reload();Reload();}
 private void Update(){timer+=Time.unscaledDeltaTime;if(timer>=1){timer=0;First_Reload();Reload();}}
 public void First_Reload(){var m=DailyGun.instance;if(m==null||!m.Bound)return;gun_item.Reload(m.GunNum_return(Item_Idx));if(PetCoin_txt!=null)PetCoin_txt.text=DailyGun.PetCoin_Values[Item_Idx].ToString();}
 public void Reload(){var m=DailyGun.instance;if(m==null||!m.Bound)return;int remain=m.Remain_Count_return(Item_Idx);Count_txt.text=$"{remain}/{DailyGun.Max_Counts[Item_Idx]}";Disable_Panel_obj.SetActive(remain<1);Disable_Step_obj.SetActive(remain<1);PurchaseAble_obj.SetActive(remain>0);}
 public void OnClick_Purchase(){UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include)?.Reload("Store connection unavailable");Gun_manager.Feedback(false);}
 public void Preview(){var m=DailyGun.instance;if(m==null||!m.Bound)return;Gun_manager.instance.gun_info_ui.Show(m.GunNum_return(Item_Idx),0,-1);Gun_manager.Feedback(true,1);}
}
