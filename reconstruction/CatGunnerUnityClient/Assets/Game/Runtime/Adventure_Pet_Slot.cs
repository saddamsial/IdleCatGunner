using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class Adventure_Pet_Slot : MonoBehaviour
{
 public int SlotNum;
 public Adventure_PetSlot_Status _status;
 public GameObject Selected_obj;
 public GameObject Empty_obj;
 public GameObject Locked_obj;
 public Pet_Item_Demo pet_item;
 public Adventure_Enter_popup popup;

 public void Reload(Adventure_PetSlot_Status status,int grade){_status=status;Selected_obj.SetActive(status==Adventure_PetSlot_Status.Selected);Empty_obj.SetActive(status==Adventure_PetSlot_Status.Empty);Locked_obj.SetActive(status==Adventure_PetSlot_Status.Locked);pet_item.Reload(status==Adventure_PetSlot_Status.Selected?grade:-1);if(status==Adventure_PetSlot_Status.Locked){var level=Adventure_manager.instance.Progression.Catalogue.PetSlotUnlockLevels[SlotNum]+1;foreach(var text in Locked_obj.GetComponentsInChildren<TextMeshProUGUI>(true))text.text=$"Lv.{level}";}}
 public void OnClick(){if(_status==Adventure_PetSlot_Status.Selected)popup.UnSelectAt(SlotNum);else if(_status==Adventure_PetSlot_Status.Empty)popup.petSelect_popup.Open();}

}
