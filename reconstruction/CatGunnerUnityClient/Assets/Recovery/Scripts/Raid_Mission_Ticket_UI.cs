using TMPro;
using UnityEngine;
public sealed class Raid_Mission_Ticket_UI : MonoBehaviour
{
 public TextMeshProUGUI ReGet_Count_txt;
 public GameObject Ticket_Purchase_btn_obj,Ticket_Purchased_obj;
 public string place;
 private void OnEnable(){Raid_Mission_manager.OnChanged+=Reload;Reload();}
 private void OnDisable()=>Raid_Mission_manager.OnChanged-=Reload;
 public void Reload(){var m=Raid_Mission_manager.instance;if(m==null||!m.Bound)return;if(ReGet_Count_txt!=null)ReGet_Count_txt.text=m.ReClaimable_Reward.ToString();if(Ticket_Purchase_btn_obj!=null)Ticket_Purchase_btn_obj.SetActive(!m.Ticket_Purchased);if(Ticket_Purchased_obj!=null)Ticket_Purchased_obj.SetActive(m.Ticket_Purchased);}
 public void onClick_Ticket_Purchase()=>Raid_Mission_manager.instance?.Ticket_Purchase(place);
}
