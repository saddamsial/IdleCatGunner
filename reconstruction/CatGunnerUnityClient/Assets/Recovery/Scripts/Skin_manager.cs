using System;
using CatGunner.Recovery;
using TMPro;
using UnityEngine;
public sealed class Skin_manager : MonoBehaviour
{
    public static Skin_manager instance;
    public Skin_info[] Skin_list;public bool[] Skin_Unlock;public int Selected_num;public int[] Price_Balance;
    public Color[] Skin_Colors;public Sprite[] Skin_sprites,Skin_Bone_sprites;
    public static int Damage_Accum=100,Speed_Accum=100,Money_Accum=100;
    public bool is_skinValueZero;
    public Skin_Item_UI[] Skin_item_list;public GameObject Skin_List_UI;public Skin_Info_UI skin_info_ui;
    public TMP_Text Damage_Accum_txt,Speed_Accum_txt,Money_Accum_txt;
    public OriginalSkinProgression Progression {get;private set;}
    public int Diamonds=>client.State.Dia;
    private RecoveryForestClient client;
    private void Awake()=>instance=this;
    public void Bind(RecoveryForestClient owner)
    {
        if(is_skinValueZero)throw new NotSupportedException("Developer skin-value override excluded");
        client=owner;Progression=new OriginalSkinProgression(owner.State);Skin_Unlock=owner.State.Skin_Unlock;Selected_num=owner.State.Skin_Selected_num;
        Balance_Reload();UI_First_Reload();Skin_Value_Reload();owner.Team.Skin_Reload();owner.MoneyChanged+=RefreshWallet;
    }
    public void Balance_Reload()
    {
        var original=OriginalSkinCatalogue.Load();if(Skin_list.Length!=25||Price_Balance.Length!=25)throw new InvalidOperationException("Incomplete original skin arrays");
        for(int i=0;i<25;i++){Skin_list[i].Damage=original.Rows[i].Damage;Skin_list[i].Speed=original.Rows[i].Speed;Skin_list[i].Money=original.Rows[i].Money;Price_Balance[i]=original.Prices[i];}
    }
    public void UI_First_Reload(){for(int i=0;i<Skin_item_list.Length;i++)Skin_item_list[i].First_Reload(i);}
    public void UI_Reload(){if(Progression==null)return;foreach(var item in Skin_item_list)item.Reload();Skin_List_UI.SetActive(true);}
    public void Skin_Info_Reload(int index)=>skin_info_ui.Reload(index);
    public void Skin_Purchse(int index)=>Purchase(index);
    public bool Purchase(int index)
    {
        if(Progression==null||!Progression.Purchase(index))return false;
        skin_info_ui.Reload();UI_Reload();Skin_Value_Reload();
        if(Sound_manager.instance!=null)Sound_manager.instance.PlaySfx(SfxType.Purchase);
        client.SkinChanged();return true;
    }
    public void Skin_Select(int index)=>Select(index);
    public bool Select(int index)
    {
        if(Progression==null||!Progression.Select(index))return false;
        Selected_num=index;skin_info_ui.Reload();client.Team.Skin_Reload();
        if(Sound_manager.instance!=null)Sound_manager.instance.PlaySfx(SfxType.Select);
        UI_Reload();client.SaveNow();return true;
    }
    public void Skin_Value_Reload()
    {
        Damage_Accum=100+Damage_Accum_return();Speed_Accum=100+Speed_Accum_return();Money_Accum=100+Money_Accum_return();
        Damage_Accum_txt.text=string.Format(Progression.Catalogue.PercentFormat,Damage_Accum-100);
        Speed_Accum_txt.text=string.Format(Progression.Catalogue.PercentFormat,Speed_Accum-100);
        Money_Accum_txt.text=string.Format(Progression.Catalogue.PercentFormat,Money_Accum-100);client.ApplyBalance();
    }
    public int Damage_Accum_return()=>Progression?.Bonus(0)??0;
    public int Speed_Accum_return()=>Progression?.Bonus(1)??0;
    public int Money_Accum_return()=>Progression?.Bonus(2)??0;
    public bool is_Unlock(int index)=>Progression!=null&&Progression.Unlocked(index);
    public int Price_return(int index)=>OriginalSkinRules.Valid(index)?Price_Balance[index]:0;
    public Sprite Skin_Bone_return()=>Skin_Bone_sprites[Selected_num];
    public Color Skin_Color_return()=>Skin_Colors[Selected_num];
    private void RefreshWallet(){if(skin_info_ui.gameObject.activeInHierarchy)skin_info_ui.Reload();}
    private void OnDestroy(){if(client!=null)client.MoneyChanged-=RefreshWallet;if(instance==this)instance=null;}
}
