using CatGunner.Runtime;
using TMPro;
using UnityEngine;

// Original currency fields and enable/disable subscription lifecycle.
// Local wallet event combines the original money and diamond events;
// complete native InfVal formatting remains a separate numeric adapter.
public sealed class Currency : MonoBehaviour
{
    public TextMeshProUGUI Money_txt,Dia_txt;
    private GameClient client;
    private bool subscribed;
    public void Bind(GameClient owner)
    {
        Unsubscribe();client=owner;Subscribe();Reload();
    }
    private void Subscribe(){if(!subscribed&&client!=null&&isActiveAndEnabled){client.MoneyChanged+=Reload;subscribed=true;}}
    private void Unsubscribe(){if(subscribed&&client!=null)client.MoneyChanged-=Reload;subscribed=false;}
    private void OnEnable(){Subscribe();Reload();}
    private void OnDisable()=>Unsubscribe();
    public void Reload()
    {
        if(client==null || client.State==null)return;
        Money_txt.text=NumberText.Format(client.State.Money.Value);Dia_txt.text=client.State.Dia.ToString();
    }
    private void OnDestroy()=>Unsubscribe();
}
