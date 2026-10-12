using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Recovery;
public sealed class Adventure_PetSelect_Slot : MonoBehaviour
{
 public GameObject SelectAble_obj;
 public GameObject Disable_obj;
 public Pet_Item_Demo pet_item_demo;
 public Adventure_PetSelect_popup popup;

 private Dispatch_Pet pet;private bool selectable;
 public void Reload(Dispatch_Pet p){pet=p;int grade=Adventure_manager.instance.Progression.Grade(p);pet_item_demo.Reload(grade);selectable=grade>=0&&Adventure_manager.instance.Progression.CanDispatch(p)&&!popup.enter_popup.IsAlreadySelected(p)&&popup.enter_popup.HasEmptyOpenSlot();SelectAble_obj.SetActive(selectable);Disable_obj.SetActive(!selectable);}
 public void OnClick(){if(selectable)popup.Pet_Select(pet);}

}
