using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class Adventure_Map_item : MonoBehaviour
{
 public Map_Type _type;
 public Adventure_Panel adventure_panel;
 public GameObject Finished_obj;
 public GameObject Locked_obj;

 public void Reload(){var m=Adventure_manager.instance;if(m?.Progression==null)return;Finished_obj.SetActive(m.Progression.HasFinish(_type));Locked_obj.SetActive(!m.is_OpenDay_return(_type));}
 public void Map_List_Open()=>adventure_panel.Map_Info_List_Reload(_type);

}
