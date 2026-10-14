using UnityEngine;
using TMPro;
using CatGunner.Runtime;
public sealed class Buff_Panel : MonoBehaviour
{
    public Buff_Type type;public TextMeshProUGUI BuffTime_txt,Explain_txt;public SlicedFilledImage Fill;
    public GameObject AD_Btn_obj,NonActive_obj,Active_obj,NormalBuff_obj,SuperBuff_obj;
    int revision,lastSecond=int.MinValue,lastMultiplier=-1,lastLocale=-1;
    public void Reload()
    {
        var m=Buff_manager.instance;if(m==null)return;float remaining=m.GetBuffRemainingTime(type);bool active=m.IsBuffActive(type),super=m.IsSuperBuff();
        int second=remaining<0?-1:(int)remaining;if(second!=lastSecond){lastSecond=second;BuffTime_txt.text=Buff_manager.FormatRemaining(remaining);}Fill.fillAmount=remaining<0?1:remaining/900f;
        AD_Btn_obj.SetActive(remaining>=0);RewardedAds.Button(AD_Btn_obj,remaining>=0&&RewardedAds.Current?.Busy!=true);
        Active_obj.SetActive(active);NonActive_obj.SetActive(!active);NormalBuff_obj.SetActive(!super);SuperBuff_obj.SetActive(super);
        int multiplier=super?4:3,locale=Language.Index;if(multiplier!=lastMultiplier||locale!=lastLocale){lastMultiplier=multiplier;lastLocale=locale;WeaponText.Set(Explain_txt,ShortBuffText.Explain(type,multiplier));}
    }
    public void AD_Watch()
    {int stamp=revision;var m=Buff_manager.instance;if(m==null||!m.RequestBuff(type,()=>this!=null&&isActiveAndEnabled&&revision==stamp))Gun_manager.Feedback(false);}
    void Update()=>Reload();void OnEnable(){revision++;Reload();}void OnDisable()=>revision++;
}
