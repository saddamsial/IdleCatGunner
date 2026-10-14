using System;
using CatGunner.Runtime;
using UnityEngine;
public enum WeeklyShop_Menu { Gun=0,VIP=1,Pet=2 }
// vc257 original routing; first-open preference stored in this client's isolated archive.
public sealed class WeeklyShop : MonoBehaviour
{
 public static WeeklyShop instance;
 public const string Place_Hud="hud",Place_Weapon="auto_weapon",Place_Pet="auto_pet",Place_Fish="auto_fish";
 public const int Unlock_Degree=3,VIP_UNLOCK_VALUE=190,VIP_UNLOCK_STAGE_TEXT=20;
 public GameObject WeeklyShop_UI,WeeklyShop_Btn_obj,VIP_Locked_obj;
 public Menu menu_list;
 public string Open_Place {get;private set;}=Place_Hud;
 public WeeklyShop_Menu last_VisitMenu;
 private GameClient client;
 private bool firstOpened;
 private void Awake()=>instance=this;
 public void Bind(GameClient owner){client=owner;firstOpened=owner.State.WeeklyVipFirstOpened;owner.Inventory.Changed+=Btn_Reload;Btn_Reload();Menu_Btn_Reload();}
 private bool? lastVip;
 private void Update(){if(client!=null){bool unlocked=Is_VIP_Unlocked();if(lastVip!=unlocked){lastVip=unlocked;Menu_Btn_Reload();}}}
 public void Btn_Reload(){if(WeeklyShop_Btn_obj!=null)WeeklyShop_Btn_obj.SetActive(client!=null&&client.State.Gun_Collect!=null&&Array.Exists(client.State.Gun_Collect,(bool v)=>v)&&HasGunDegree());}
 private bool HasGunDegree(){for(int i=Unlock_Degree*5;i<client.State.Gun_Collect.Length;i++)if(client.State.Gun_Collect[i])return true;return false;}
 public bool Is_VIP_Unlocked()=>client!=null&&client.Forest.Stage_Value_Max>=VIP_UNLOCK_VALUE;
 public void Menu_Btn_Reload(){if(VIP_Locked_obj!=null)VIP_Locked_obj.SetActive(!Is_VIP_Unlocked());}
 public void Open_Auto(string place){if(client==null)return;Open_Place=place;WeeklyShop_UI.SetActive(true);Menu_Open(WeeklyShop_Menu.VIP);}
 public void Panel_Open(){if(client==null)return;Open_Place=Place_Hud;WeeklyShop_UI.SetActive(true);Menu_Open(Get_Default_Menu());}
 public void Panel_Close()=>WeeklyShop_UI.SetActive(false);
 public WeeklyShop_Menu Get_Default_Menu()=>!Is_VIP_Unlocked()?WeeklyShop_Menu.Gun:!firstOpened?WeeklyShop_Menu.VIP:last_VisitMenu;
 public void Menu_Open_Gun(){Menu_Open(WeeklyShop_Menu.Gun);Gun_manager.Feedback(true,1);}
 public void Menu_Open_VIP(){if(!Is_VIP_Unlocked()){UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include)?.Reload("Unlock at Stage 20");Gun_manager.Feedback(false);return;}Menu_Open(WeeklyShop_Menu.VIP);Gun_manager.Feedback(true,1);}
 public void Menu_Open(WeeklyShop_Menu menu){menu_list.Menu_Reload((int)menu);Menu_Btn_Reload();last_VisitMenu=menu;if(menu==WeeklyShop_Menu.VIP&&!firstOpened){firstOpened=true;client.State.WeeklyVipFirstOpened=true;client.SaveNow();}}
 private void OnDestroy(){if(client!=null)client.Inventory.Changed-=Btn_Reload;if(instance==this)instance=null;}
}
