using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class Adventure_Enter_popup : MonoBehaviour
{
 private Map_Type _type; private int _index;
 public GameObject[] Map_img_objs;
 public TMPro.TextMeshProUGUI Stage_txt;
 public TMPro.TextMeshProUGUI Time_txt;
 public TMPro.TextMeshProUGUI Exp_txt;
 public TMPro.TextMeshProUGUI Core_txt;
 public Adventure_PetSelect_popup petSelect_popup;
 public Image RewardCore_img;
 public Image RewardCore_Panel_img;
 public TMPro.TextMeshProUGUI EnterTicket_txt;
 public Image Enter_Btn_img;
 public Color[] CorePanel_Colors;
 public Color Color_EnterAble_txt;
 public Color Color_EnterDisable_txt;
 public Color Color_EnterAble;
 public Color Color_EnterDisable;
 public Adventure_Pet_Slot[] Pet_Slot_list;

 private readonly List<Dispatch_Pet> selected=new List<Dispatch_Pet>();public IReadOnlyList<Dispatch_Pet> Selected=>selected;
 public void Open(Map_Type type,int index){petSelect_popup.enter_popup=this;_type=type;_index=index;selected.Clear();selected.AddRange(Adventure_manager.instance.Progression.Best());gameObject.SetActive(true);Reload();}
 public int GradeOf(Dispatch_Pet p)=>Adventure_manager.instance.Progression.Grade(p);
 public bool IsAlreadySelected(Dispatch_Pet p)=>selected.Contains(p);public bool HasEmptyOpenSlot()=>selected.Count<Adventure_manager.instance.Progression.OpenSlots;
 public void AddPet(Dispatch_Pet p){if(HasEmptyOpenSlot()&&!IsAlreadySelected(p)&&Adventure_manager.instance.Progression.CanDispatch(p)){selected.Add(p);Reload();}}
 public void UnSelectAt(int i){if(i>=0&&i<selected.Count){selected.RemoveAt(i);Reload();}}
 public void Reload(){var m=Adventure_manager.instance;m.Ticket_Refresh();for(int i=0;i<Map_img_objs.Length;i++)Map_img_objs[i].SetActive(i==(int)_type);Stage_txt.text=$"Stage {_index+1}";Time_txt.text=$"{m.Adventure_Duration_return(_index)}h";Exp_txt.text=(m.Adventure_Reward_Exp_return(_index)*selected.Count).ToString();Core_txt.text=m.Adventure_Reward_Core_return(selected.Select(GradeOf).ToList(),_index).ToString();EnterTicket_txt.text=string.Format("- {0}",selected.Count);RewardCore_img.sprite=Adventure_manager.Core_sprite_return((int)_type);RewardCore_Panel_img.color=CorePanel_Colors[(int)_type];bool able=selected.Count>0&&m.Ticket_Now>=selected.Count;Enter_Btn_img.color=able?Color_EnterAble:Color_EnterDisable;EnterTicket_txt.color=able?Color_EnterAble_txt:Color_EnterDisable_txt;for(int i=0;i<Pet_Slot_list.Length;i++){Pet_Slot_list[i].popup=this;Pet_Slot_list[i].Reload(i>=m.Progression.OpenSlots?Adventure_PetSlot_Status.Locked:i<selected.Count?Adventure_PetSlot_Status.Selected:Adventure_PetSlot_Status.Empty,i<selected.Count?GradeOf(selected[i]):-1);}}
 public void OnClick_AdventureStart(){if(Adventure_manager.instance.Adventure_Start(_type,_index,selected.ToArray())){Adventure_manager.instance.adventure_panel_ui.Map_Info_List_Reload(_type);gameObject.SetActive(false);}}
 public void Close()=>gameObject.SetActive(false);

}
