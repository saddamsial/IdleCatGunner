using CatGunner.Runtime;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
public sealed class StarUpgrade_popup : MonoBehaviour
{
    public TextMeshProUGUI SlotNum_txt,StarGem_txt,StarLv_txt_Now,StarValue_txt_Now,DamageValue_txt_Now,
        StarLv_txt_After,StarValue_txt_After,DamageValue_txt_After,Percent_txt,UpgradePrice_txt;
    public GameObject Damage_Value_obj;
    public Image Upgrade_Btn_img;
    public Color[] UpgradeBtn_Colors,UpgradePrice_Colors;
    public StarSuccessFeedback success_particle;
    [UnityEngine.Serialization.FormerlySerializedAs("RecoveryAlert")]
    public Alert FeedbackAlert;
    private int _slotNum=-1;
    private bool _isRaid;
    public int SlotNum=>_slotNum;
    public bool IsRaid=>_isRaid;
    public StarUpgrade_manager.UpgradeResult? LastResult {get;private set;}
    private void OnEnable(){success_particle?.Clear();}
    private void OnDisable(){success_particle?.Clear();}
    public void Open(int slot,bool isRaid){_slotNum=slot;_isRaid=isRaid;LastResult=null;gameObject.SetActive(true);Reload();}
    public void Close()=>gameObject.SetActive(false); // Missing UI_manager close bridge.
    private bool TryGetSlotGun(out CurrencyAmount damage)
    {
        damage=CurrencyAmount.FromValue(new DecimalAmount(0));var c=GameClient.Instance;
        if(c==null||_slotNum<0||_slotNum>=3)return false;
        int gun=_isRaid?c.RaidMode.Gun_List[_slotNum]:c.State.Selected_items[_slotNum];
        if(gun<0)return false;damage=_isRaid?c.RaidMode.Raid_Damage_return(gun):c.Guns.Gun_list[gun].Damage;return true;
    }
    public void Reload()
    {
        var manager=StarUpgrade_manager.instance;if(manager==null||manager.Progression==null||_slotNum<0)return;
        int level=manager.Lv_return(_slotNum);var catalogue=StarRules.Catalogue;
        SlotNum_txt.text=string.Format(catalogue.Text(catalogue.SlotUpgrade),_slotNum+1);
        StarGem_txt.text=manager.Progression.State.StarGem.ToString();StarLv_txt_Now.text=level.ToString();
        StarValue_txt_Now.text="+"+NumberText.Format(StarRules.BonusPct(level))+"%";
        bool hasGun=TryGetSlotGun(out var raw);Damage_Value_obj.SetActive(hasGun);
        if(hasGun)DamageValue_txt_Now.text=NumberText.Format(StarUpgrade_manager.Damage_Apply(raw,level).Value);
        if(level>=20)
        {
            StarLv_txt_After.text=StarValue_txt_After.text=DamageValue_txt_After.text=Percent_txt.text=UpgradePrice_txt.text="-";
            UpgradePrice_txt.color=UpgradePrice_Colors[0];Upgrade_Btn_img.color=UpgradeBtn_Colors[0];return;
        }
        StarLv_txt_After.text=(level+1).ToString();StarValue_txt_After.text="+"+NumberText.Format(StarRules.BonusPct(level+1))+"%";
        if(hasGun)DamageValue_txt_After.text=NumberText.Format(StarUpgrade_manager.Damage_Apply(raw,level+1).Value);
        Percent_txt.text=manager.SuccessRate_return(_slotNum)+"%";
        int cost=manager.Cost_return(_slotNum);UpgradePrice_txt.text=string.Format("<sprite=0>{0}",cost);
        int index=manager.Progression.State.StarGem>=cost?1:0;
        UpgradePrice_txt.color=UpgradePrice_Colors[index];Upgrade_Btn_img.color=UpgradeBtn_Colors[index];
    }
    public void onClick_Upgrade()
    {
        var m=StarUpgrade_manager.instance;if(m==null||_slotNum<0)return;
        var result=m.Upgrade(_slotNum);LastResult=result;var text=StarRules.Catalogue;
        Sound_manager.instance?.PlaySfx((SfxType)(result==StarUpgrade_manager.UpgradeResult.Success?15:result==StarUpgrade_manager.UpgradeResult.Fail?16:5));
        if(result==StarUpgrade_manager.UpgradeResult.Success||result==StarUpgrade_manager.UpgradeResult.Fail)
        {Reload();FeedbackAlert.Reload(text.Text(result==StarUpgrade_manager.UpgradeResult.Success?text.Success:text.Fail));if(result==StarUpgrade_manager.UpgradeResult.Success)success_particle.Play();}
        else if(result==StarUpgrade_manager.UpgradeResult.NotEnoughGem)FeedbackAlert.Reload(text.Text(text.NotEnoughGem));
    }
}
