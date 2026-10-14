using UnityEngine;
using TMPro;
using CatGunner.Runtime;
public sealed class Currency_PetCoin : MonoBehaviour
{
    public Component bounce;
    public TextMeshProUGUI PetCoin_txt;
    private GameClient client;
    public void Bind(GameClient owner){client=owner;owner.Pets.Changed+=OnValueChanged;owner.MoneyChanged+=OnValueChanged;OnValueChanged();}
    private void OnEnable()=>OnValueChanged();
    public void OnValueChanged(){if(client!=null&&PetCoin_txt!=null)PetCoin_txt.text=client.State.PetCoin.ToString();}
    private void OnDestroy(){if(client!=null){client.Pets.Changed-=OnValueChanged;client.MoneyChanged-=OnValueChanged;}}
}
