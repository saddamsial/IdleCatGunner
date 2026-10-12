using TMPro;
using UnityEngine;
public sealed class Mission_Reward_Slot : MonoBehaviour
{
    public int _Lv;
    public Mission_Reward_Item Normal_Reward_item,Epic_Reward_item;
    public SlicedFilledImage Fill;
    public TextMeshProUGUI Lv_txt;
    public GameObject Locked_obj;
    public void Bind(int index){_Lv=index;Normal_Reward_item.Bind(index,false);Epic_Reward_item.Bind(index,true);}
    public void Reload(){Normal_Reward_item.Reload();Epic_Reward_item.Reload();float value=Mission_manager.instance.Model.RewardSlotFill(_Lv);if(Lv_txt!=null)Lv_txt.text=(_Lv+1).ToString();if(Fill!=null)Fill.fillAmount=value;if(Locked_obj!=null)Locked_obj.SetActive(value<1);}
    public void Reward_Get(int degree){if(degree==0)Normal_Reward_item.Claim();else Epic_Reward_item.Claim();}
    public void Dia_Spawn_Play(int degree){var item=degree==0?Normal_Reward_item:Epic_Reward_item;if(item!=null)item.Dia_Spawn_Play();}
    public void Normal_Reward_Click()=>Normal_Reward_item.Claim();
    public void Epic_Reward_Click()=>Epic_Reward_item.Claim();
}
