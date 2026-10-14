using System.Collections;
using CatGunner.Runtime;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

// Original panel references and hold timing, with a local ordinary-upgrade backend.
public sealed class Upgrade_Ingame : MonoBehaviour,IPointerDownHandler,IPointerUpHandler
{
    public int type;
    public SlicedFilledImage Fill;
    public GameObject UpgradeAble_obj;
    public TextMeshProUGUI Lv_txt,Price_txt,Value_txt;
    public Color Color_Disable;
    public Image Panel_img;
    public Color[] Fill_Colors,Panel_Colors;
    public GameObject Buff_On_obj,Buff_Icon_obj;
    public TextMeshProUGUI BuffValue_txt;
    [SerializeField] private float holdDelay=.4f,holdInterval=.1f;
    private GameClient client;
    private Coroutine hold;
    private int level=-1;
    private bool dirty;
    public void Bind(GameClient owner)
    {
        if(client!=null)client.MoneyChanged-=SetDirty;
        client=owner;client.MoneyChanged+=SetDirty;Reload();
    }
    private void SetDirty()=>dirty=true;
    private void Update(){if(dirty){dirty=false;Reload();}}
    public void Reload()
    {
        if(client==null || client.State==null)return;
        int next=client.State.Upgrade_Lv[type];
        if(next!=level)
        {
            level=next;Lv_txt.text=string.Format("Lv.{0}",level);
            Value_txt.text=type==1?client.Balance.Speed(level).ToString():NumberText.Format(type==0?client.Balance.Power(level):client.Balance.Money(level));
        }
        bool max=level>=10000,able=!max && client.State.Money.Value.CompareTo(client.Balance.Price(level))>=0;
        Price_txt.text=max?"Max":NumberText.Format(client.Balance.Price(level));
        Price_txt.color=able||max?Color.white:Color_Disable;UpgradeAble_obj.SetActive(able);
        Fill.fillAmount=max||able?0:Ratio(client.State.Money.Value,client.Balance.Price(level));
        Reload_Buff();
    }
    private int lastBuff=-1;
    public static Buff_Type ToBuffType(int upgradeType)=>upgradeType==0?Buff_Type.Power:upgradeType==1?Buff_Type.AtkSpeed:upgradeType==2?Buff_Type.Money:throw new System.ArgumentOutOfRangeException(nameof(upgradeType));
    public void Reload_Buff()
    {
        int mult=client!=null?client.BuffMultiplier(ToBuffType(type)):1;if(mult==lastBuff)return;lastBuff=mult;bool active=mult>1;
        Buff_On_obj?.SetActive(active);Buff_Icon_obj?.SetActive(active);
        Fill.color=Fill_Colors[active?1:0];Panel_img.color=Panel_Colors[active?1:0];
        if(active&&BuffValue_txt!=null)BuffValue_txt.text=string.Format("x{0}",mult);
    }
    public static float Ratio(DecimalAmount value,DecimalAmount price)
    {
        if(value.Coefficient.IsZero)return 0;
        double log=System.Numerics.BigInteger.Log(System.Numerics.BigInteger.Abs(value.Coefficient))-System.Numerics.BigInteger.Log(System.Numerics.BigInteger.Abs(price.Coefficient))+
            (value.Exponent-price.Exponent)*System.Math.Log(10);
        return Mathf.Clamp01((float)System.Math.Exp(log));
    }
    public void Touch(){if(client!=null)client.Upgrade(type);}
    public void OnPointerDown(PointerEventData data)
    {
        StopHold();if(client!=null)hold=StartCoroutine(HoldUpgradeRoutine());
    }
    public void OnPointerUp(PointerEventData data)=>StopHold();
    private IEnumerator HoldUpgradeRoutine()
    {
        yield return new WaitForSeconds(holdDelay);
        while(client!=null && client.Upgrade(type))yield return new WaitForSeconds(holdInterval);
        hold=null;
    }
    private void StopHold(){if(hold!=null)StopCoroutine(hold);hold=null;}
    private void OnDisable()=>StopHold();
    private void OnDestroy(){if(client!=null)client.MoneyChanged-=SetDirty;}
}
