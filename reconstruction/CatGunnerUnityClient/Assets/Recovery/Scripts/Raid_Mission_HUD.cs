using UnityEngine;
public sealed class Raid_Mission_HUD : MonoBehaviour
{
 public GameObject Alert_obj;
 private void OnEnable(){Raid_Mission_manager.OnChanged+=Reload;Reload();}
 private void OnDisable()=>Raid_Mission_manager.OnChanged-=Reload;
 public void Reload(){if(Alert_obj!=null)Alert_obj.SetActive(Raid_Mission_manager.instance!=null&&Raid_Mission_manager.instance.Bound&&Raid_Mission_manager.instance.Has_Claimable);}
 public void onClick_Open()=>Raid_Mission_manager.instance?.Open_Popup();
}
