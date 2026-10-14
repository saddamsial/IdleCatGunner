using UnityEngine;
public sealed class OnOff:MonoBehaviour {public GameObject On_obj,Off_obj;public bool IsOn {get;private set;}public void On(){IsOn=true;On_obj.SetActive(true);Off_obj.SetActive(false);}public void Off(){IsOn=false;On_obj.SetActive(false);Off_obj.SetActive(true);}}
