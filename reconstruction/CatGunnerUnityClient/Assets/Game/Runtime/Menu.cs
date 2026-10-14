using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class Menu : MonoBehaviour
{
 public int currentNum;
 public GameObject[] Menu_objs;
 public Menu_Btn[] Btn_list;

 private void Start()=>Menu_Reload(currentNum);
 public void Menu_Reload(int num){if(num<0||num>=Menu_objs.Length)return;currentNum=num;for(int i=0;i<Menu_objs.Length;i++)Menu_objs[i].SetActive(i==num);for(int i=0;i<Btn_list.Length;i++)Btn_list[i].Reload(i==num);}

}
