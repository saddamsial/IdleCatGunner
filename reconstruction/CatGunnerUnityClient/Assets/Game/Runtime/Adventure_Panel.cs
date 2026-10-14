using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class Adventure_Panel : MonoBehaviour
{
 public TMPro.TextMeshProUGUI Lv_txt;
 public TMPro.TextMeshProUGUI Exp_txt;
 public SlicedFilledImage Exp_Fill;
 public GameObject RenderTexture_Map_obj;
 public Pet_Dummy[] Pet_Dummy_list;
 public GameObject Adventure_Maplist_popup;
 public Adventure_Map_item[] Adventure_Map_list;
 public Adventure_Map_info_item[] Adventure_Map_Info_list;
 public Adventure_Enter_popup Adventure_Enter_popup;
 public Adventure_Reward_popup Adventure_Reward_popup;
 public Image MapInfo_Panel_img;
 public Color[] MapInfo_Panel_Colors;
 public GameObject Map_Alert_obj;
 public GameObject Core_Alert_obj;

 public Map_Type CurrentType{get;private set;}
 private void OnEnable(){Adventure_manager.OnCoreChanged+=Alert_Reload;Refresh();}
 private void OnDisable()=>Adventure_manager.OnCoreChanged-=Alert_Reload;
 public void Refresh(){if(Adventure_manager.instance?.Progression==null)return;Exp_Reload();Map_List_Reload();Alert_Reload();RenderTexture_Map_Reload();if(Adventure_Maplist_popup.activeSelf)Map_Info_List_Reload(CurrentType);}
 public void Exp_Reload(){var s=Adventure_manager.instance.Progression.State;Lv_txt.text=$"Lv.{s.Adventure_Lv+1}";Exp_txt.text=s.Adventure_Lv==15?"Max":$"{s.Adventure_Exp}/{Adventure_manager.instance.Exp_balance[s.Adventure_Lv]}";Exp_Fill.fillAmount=s.Adventure_Lv==15?1:(float)s.Adventure_Exp/Adventure_manager.instance.Exp_balance[s.Adventure_Lv];}
 public void Map_List_Reload(){foreach(var item in Adventure_Map_list)item.Reload();}
 public void Map_Info_List_Reload(Map_Type type){CurrentType=type;Adventure_Maplist_popup.SetActive(true);MapInfo_Panel_img.color=MapInfo_Panel_Colors[(int)type];for(int i=0;i<Adventure_Map_Info_list.Length;i++)Adventure_Map_Info_list[i].Reload(type,i);}
 public void Alert_Reload(){var m=Adventure_manager.instance;if(m?.Progression==null)return;Map_Alert_obj.SetActive(Enumerable.Range(0,3).Any(i=>m.Progression.HasFinish((Map_Type)i)));Core_Alert_obj.SetActive(m.Progression.State.Adventure_Currency_Core.Any(x=>x>=20));}
 public void Reward_Popup_Open(Map_Type t,int core,int exp,int lv,int before)=>Adventure_Reward_popup.Reload(t,core,exp,lv,before);
 // Native ordering retains duplicates: unlocked selected slots, then inventory slots.
 public void RenderTexture_Map_Reload()
 {
  var inventory=Pet_manager.instance?.Inventory;if(inventory==null)return;
  var state=inventory.State;var grades=new List<int>();
  for(int i=0;i<state.Pet_Selected_items.Length;i++)if(state.Pet_Selected_items[i]>=0&&state.Selected_LockGroup[i]<0)grades.Add(state.Pet_Selected_items[i]);
  for(int i=0;i<state.Owned_Pet_list.Length;i++)if(state.Owned_Pet_list[i]>=0&&state.Owned_Pet_LockGroup[i]<0)grades.Add(state.Owned_Pet_list[i]);
  for(int i=0;i<Pet_Dummy_list.Length;i++){if(i<grades.Count)Pet_Dummy_list[i].Reload(grades[i]);else Pet_Dummy_list[i].Hide();}
 }
 public void CloseMaps()=>Adventure_Maplist_popup.SetActive(false);

}
