using System;
using System.Linq;
using CatGunner.Recovery;
using UnityEngine;
public sealed class Relic_manager : MonoBehaviour
{
 public static Relic_manager instance;
 public Relic_Info[] Relic_list;public Relic_Item[] Relic_Item_List;
 public Relic_DownPanel relic_DownPanel;public Relic_Info_UI relic_info_ui;public Relic_Draw_Panel relic_draw_panel;
 public OriginalAmount[] Damage_Balance,Money_Balance,CriDmg_Balance;
 // Local bridge to original Adventure tabs and shipped core sprites; no purchase emulation.
 public GameObject LocalRelicMenu;public Sprite[] LocalCoreSprites;
 public OriginalRelicProgression Progression {get;private set;}private RecoveryForestClient client;
 public static DecimalAmount Dmg_Value=>instance?.Progression?.Percent(0)??new DecimalAmount(100);
 public static DecimalAmount Money_Value=>instance?.Progression?.Percent(1)??new DecimalAmount(100);
 public static DecimalAmount CriDmg_Value=>instance?.Progression?.Percent(2)??new DecimalAmount(100);
 public static int MoveSpeed_Value=>instance?.Progression?.Special(Relic_Type.MoveSpeed)??0;
 public static int Offline_Value=>instance?.Progression?.Special(Relic_Type.Offline)??0;
 public static int Rebirth_Value=>instance?.Progression?.Special(Relic_Type.Rebirth)??100;
 public static int Skip_Value=>instance?.Progression?.Special(Relic_Type.Skip)??0;
 private void Awake()=>instance=this;
 public void Bind(RecoveryForestClient owner){client=owner;Progression=new OriginalRelicProgression(owner.State);SyncRows();UI_Reload();}
 private void SyncRows(){for(int i=0;i<15;i++){var row=Progression.Row(i);Relic_list[i].Lv=row.Lv;Relic_list[i].Count=row.Count;Relic_list[i].is_Unlock=row.is_Unlock;}}
 public void Value_Reload(){if(Progression==null)return;SyncRows();client.RelicsChanged();}
 public void UI_Reload(){if(Progression==null)return;SyncRows();for(int i=0;i<15;i++)Relic_Item_List[i].Reload(Relic_list[i]);relic_DownPanel.UI_Reload();}
 public void Relic_Info_UI_Reload(){if(relic_info_ui.gameObject.activeSelf&&relic_info_ui.Info!=null)relic_info_ui.Reload(relic_info_ui.Info);}
 public bool Upgrade(int i){bool ok=Progression!=null&&Progression.Upgrade(i);Gun_manager.Feedback(ok,4);if(ok)Value_Reload();UI_Reload();return ok;}
 public void Relic_Upgrade(Relic_Info info)=>Upgrade(Array.IndexOf(Relic_list,info));
 public int[] Draw(Core_Type type,int count)
 {
  if(Progression==null)return Array.Empty<int>();var ids=Progression.Draw(type,count);
  if(ids.Length>0){SyncRows();relic_draw_panel.Reload(ids.Select(i=>Relic_list[i]).ToArray());Value_Reload();}UI_Reload();return ids;
 }
 public void Relic_Draw(Core_Type type,int count)=>Draw(type,count);
 public void Relic_Draw_Max(Core_Type type){int count=Progression.MaxDrawCount(type);if(count>0)Draw(type,count);else Gun_manager.Feedback(false);}
 public static int MaxLv_return(Relic_Type t)=>OriginalRelicRules.MaxLevel(t);
 public static int Relic_UpgradePrice_return(int lv)=>OriginalRelicRules.UpgradePrice(lv);
 public static DecimalAmount Relic_Value_return(Relic_Info info)=>OriginalRelicRules.Value(info,instance.Progression.Catalogue);
 public int CoreCount(Core_Type t)=>Progression.CoreCount(t);
 public Sprite CoreSprite(Core_Type t)=>LocalCoreSprites[(int)t];
 public void Open(){UI_Reload();Adventure_manager.instance?.LocalTabs.Menu_Reload(1);LocalRelicMenu.SetActive(true);}
 public void Close(){LocalRelicMenu.SetActive(false);relic_info_ui.Close();relic_draw_panel.Close();}
 private void OnDestroy(){if(instance==this)instance=null;}
}
