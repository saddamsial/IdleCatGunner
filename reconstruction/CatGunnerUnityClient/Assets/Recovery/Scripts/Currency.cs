using CatGunner.Recovery;
using TMPro;
using UnityEngine;

// Original currency fields and enable/disable subscription lifecycle.
// Local wallet event combines the original money and diamond events;
// complete native InfVal formatting remains a separate numeric adapter.
public sealed class Currency : MonoBehaviour
{
    public TextMeshProUGUI Money_txt,Dia_txt;
    private RecoveryForestClient client;
    private bool subscribed;
    public void Bind(RecoveryForestClient owner)
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
        Money_txt.text=OriginalNumberText.Format(client.State.Money.Value);Dia_txt.text=client.State.Dia.ToString();
    }
    private void OnDestroy()=>Unsubscribe();
}
