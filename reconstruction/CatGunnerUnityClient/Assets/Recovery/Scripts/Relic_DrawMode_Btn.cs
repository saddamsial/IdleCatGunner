using UnityEngine;
public sealed class Relic_DrawMode_Btn : MonoBehaviour
{
 public Core_Type _type;public Relic_DownPanel downPanel;public GameObject On_obj,Off_obj;
 public void Reload(bool on){On_obj.SetActive(on);Off_obj.SetActive(!on);}
 public void onClick()=>downPanel.DrawMode_Change(_type);
}
