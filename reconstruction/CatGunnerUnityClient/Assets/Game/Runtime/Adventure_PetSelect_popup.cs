using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class Adventure_PetSelect_popup : MonoBehaviour
{
 public Adventure_PetSelect_Slot[] Pet_Slot_list;
 public Adventure_Enter_popup enter_popup;

 public void Open(){gameObject.SetActive(true);Reload();}
 public void Reload(){for(int i=0;i<Pet_Slot_list.Length;i++){Pet_Slot_list[i].popup=this;Pet_Slot_list[i].Reload(i<3?Dispatch_Pet.Selected(i):Dispatch_Pet.Owned(i-3));}}
 public void Pet_Select(Dispatch_Pet p){enter_popup.AddPet(p);gameObject.SetActive(false);}public void Close()=>gameObject.SetActive(false);

}
