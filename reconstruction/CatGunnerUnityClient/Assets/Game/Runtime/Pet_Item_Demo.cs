using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class Pet_Item_Demo : MonoBehaviour
{
 public Image Pet_img;
 public Image Shadow_img;
 public Image Panel_img;
 public GameObject[] Degree_objs;

 public void Reload(int pet){gameObject.SetActive(pet>=0);if(pet>=0)Pet_manager.Present(pet,Pet_img,Shadow_img,Panel_img,Degree_objs);}

}
