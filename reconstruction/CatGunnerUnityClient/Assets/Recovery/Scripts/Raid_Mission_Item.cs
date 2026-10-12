using TMPro;
using UnityEngine;
public sealed class Raid_Mission_Item : MonoBehaviour
{
 public TextMeshProUGUI Reward_txt,Explain_txt,Value_txt;
 public GameObject Locked_obj,Claimable_obj,ReClaimable_obj,Done_obj;
 public SlicedFilledImage Value_Fill;
 public int Index=-1;
 public void Reload(int i){Index=i;Reload();}
 public void Reload(){var m=Raid_Mission_manager.instance;if(m==null||!m.Bound||Index<0||Index>=8)return;if(Reward_txt!=null)Reward_txt.text=m.Reward_return(Index).ToString();if(Explain_txt!=null)Explain_txt.text=m.Explain_return(Index);m.Progress_return(Index,out int current,out int max);if(Value_txt!=null)Value_txt.text=$"{current}/{max}";if(Value_Fill!=null)Value_Fill.fillAmount=max>0?Mathf.Clamp01((float)current/max):0;int state=m.State_return(Index);Set(Locked_obj,state==0);Set(Claimable_obj,state==1);Set(ReClaimable_obj,state==2);Set(Done_obj,state==3);}
 private static void Set(GameObject g,bool v){if(g!=null)g.SetActive(v);}
 public void onClick_Reward()=>Raid_Mission_manager.instance?.Reward_Get(Index);
 public void onClick_ReReward()=>Raid_Mission_manager.instance?.Reward_ReGet(Index);
}
