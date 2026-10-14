using CatGunner.Runtime;
using UnityEngine;
public sealed class Safe_UI : MonoBehaviour
{
    public Safe_Slot[] Slot_list;
    private GameClient subscribed;
    private void OnEnable(){subscribed=GameClient.Instance;if(subscribed!=null)subscribed.MoneyChanged+=Reload;Reload();}
    private void OnDisable(){if(subscribed!=null)subscribed.MoneyChanged-=Reload;subscribed=null;}
    public void Open(){gameObject.SetActive(true);transform.SetAsLastSibling();Reload();}
    public void Close(){Gun_manager.Feedback(true,1);gameObject.SetActive(false);}
    public void Reload(){if(Safe_manager.instance==null||Safe_manager.instance.Inventory==null)return;for(int i=0;i<Slot_list.Length;i++)if(Slot_list[i]!=null)Slot_list[i].Reload(i);}
}
