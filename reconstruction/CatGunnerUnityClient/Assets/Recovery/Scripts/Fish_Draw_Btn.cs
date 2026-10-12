using TMPro;
using UnityEngine;
using UnityEngine.UI;
public sealed class Fish_Draw_Btn:MonoBehaviour
{
 public int Price;public SlicedFilledImage Fill;public TextMeshProUGUI Price_txt;public Color Disable_Color;
 private void OnEnable(){if(Fish_manager.instance?.Model!=null){CatGunner.Recovery.RecoveryForestClient.Instance.MoneyChanged+=Price_Reload;Price_Reload();}}
 private void OnDisable(){if(Fish_manager.instance!=null)if(CatGunner.Recovery.RecoveryForestClient.Instance!=null)CatGunner.Recovery.RecoveryForestClient.Instance.MoneyChanged-=Price_Reload;}
 public void Price_Reload(){int diamonds=CatGunner.Recovery.RecoveryForestClient.Instance.State.Dia;Price_txt.text="<sprite=1>"+Price;Price_txt.color=diamonds>=Price?Color.white:Disable_Color;if(Fill!=null)Fill.fillAmount=diamonds/(float)Price;var b=GetComponent<Button>();if(b!=null)b.interactable=CatGunner.Recovery.RecoveryForestClient.Instance.State.Dia>=Price&&!Fish_manager.instance.Model.Full;}
}
