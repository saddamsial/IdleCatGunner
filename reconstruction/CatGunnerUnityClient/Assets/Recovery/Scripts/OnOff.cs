using UnityEngine;
public sealed class OnOff:MonoBehaviour {public GameObject On_obj,Off_obj;public void On(){On_obj.SetActive(true);Off_obj.SetActive(false);}public void Off(){On_obj.SetActive(false);Off_obj.SetActive(true);}}
