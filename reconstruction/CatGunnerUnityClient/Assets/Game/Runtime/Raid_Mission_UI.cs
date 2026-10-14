using System.Linq;
using TMPro;
using UnityEngine;
public sealed class Raid_Mission_UI : MonoBehaviour
{
 public Raid_Mission_Item[] Mission_item_list;
 public TextMeshProUGUI Season_Remain_txt;
 private float timer;
 private bool reloading;
 private void OnEnable(){Raid_Mission_manager.OnChanged+=Reload;Reload();}
 private void OnDisable(){Raid_Mission_manager.OnChanged-=Reload;timer=0;}
 private void Update(){timer+=Time.unscaledDeltaTime;if(timer>=1){timer=0;Raid_Mission_manager.instance?.Refresh_Clear();Remain_Reload();}}
 public void Open(){gameObject.SetActive(true);Reload();}
 public void Close()=>gameObject.SetActive(false);
 public void onClick_Close()=>Close();
 public void Reload(){var manager=Raid_Mission_manager.instance;if(manager==null||!manager.Bound||reloading)return;reloading=true;try{manager.Refresh_Clear();for(int i=0;i<Mission_item_list.Length;i++)if(Mission_item_list[i]!=null)Mission_item_list[i].Reload(i);Sort_Items(manager);Remain_Reload();}finally{reloading=false;}}
 public static int Priority(int state,bool ticket)=>state==1?0:state==2?(ticket?0:1):state==0?(ticket?1:2):state==3?(ticket?2:3):99;
 public void Sort_Items(Raid_Mission_manager manager){foreach(var item in Mission_item_list.Where(x=>x!=null).OrderBy(x=>Priority(manager.State_return(x.Index),manager.Ticket_Purchased)).ThenBy(x=>manager.Info_return(x.Index)?.type??0).ThenBy(x=>x.Index))item.transform.SetAsLastSibling();}
 public void Remain_Reload(){if(Season_Remain_txt==null)return;var t=Raid_Mission_manager.instance?.Season_Remain??System.TimeSpan.Zero;Season_Remain_txt.text=$"{t.Days}d {t.Hours}h {t.Minutes}m {t.Seconds}s";}
}
