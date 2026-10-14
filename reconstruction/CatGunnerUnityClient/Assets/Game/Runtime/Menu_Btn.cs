using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class Menu_Btn : MonoBehaviour
{
 public int _num;
 public Menu _menu;
 public GameObject On_obj;
 public GameObject Off_obj;

 public void Reload(bool active){On_obj.SetActive(active);Off_obj.SetActive(!active);}
 public void onClick()=>_menu.Menu_Reload(_num);

}
