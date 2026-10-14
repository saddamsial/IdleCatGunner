using TMPro;
using UnityEngine;
using UnityEngine.UI;

public sealed class Gun_Info_UI : MonoBehaviour
{
    public Image Gun_img,Shadow_img,Panel_img;
    public GameObject[] Degree_objs;
    public TextMeshProUGUI Name_txt,Explain_txt,Damage_txt,Speed_txt;
    public GameObject Pause_obj,TakeOut_Btn_obj,Unpause_Btn_obj,Pause_Btn_obj,Pause_Btn_Locked_obj;
    private int gun,index,mode;
    public bool PauseContentOpen=>Safe_manager.instance!=null&&Safe_manager.instance.Is_Unlocked;
    public void Show(int number,int context,int at)
    {
        gun=number;mode=context;index=at;var owner=Gun_manager.instance;var info=owner.Gun_list[gun];
        Gun_manager.Present(gun,Gun_img,Shadow_img,Panel_img,Degree_objs);
        Name_txt.text=info.Name;CatGunner.Runtime.WeaponText.Set(Explain_txt,CatGunner.Runtime.WeaponText.Explain(info.type));Explain_txt.textWrappingMode=TMPro.TextWrappingModes.Normal;
        // Localized static description: keep original RectTransform, fit inside
        // its inner readable area rather than overflowing the original panel.
        float inset=Explain_txt.rectTransform.rect.width*.1f;Explain_txt.margin=new Vector4(inset,Explain_txt.margin.y,inset,Explain_txt.margin.w);if(!Explain_txt.enableAutoSizing)Explain_txt.fontSizeMax=Explain_txt.fontSize;Explain_txt.enableAutoSizing=true;Damage_txt.text=CatGunner.Runtime.NumberText.Format(info.Damage.Value);Speed_txt.text=info.AtkSpeed.ToString()+"s";
        gameObject.SetActive(true);transform.SetAsLastSibling();Buttons_Reload();
    }
    private bool Valid()=>mode==1?index>=0&&index<16&&Gun_manager.instance.Owned_Gun_list[index]==gun:mode==2?index>=0&&index<3&&Gun_manager.instance.Selected_items[index]==gun:mode==3&&Safe_manager.instance!=null&&index>=0&&index<16&&Safe_manager.instance.Safe_Gun_list[index]==gun;
    private bool CanToggle()=>mode==2||(mode==1&&!Gun_manager.instance.Inventory.IsAdSlot(index));
    private bool Paused()=>mode==3|| (mode==1?Gun_manager.instance.Owned_Gun_Pause[index]:mode==2&&Gun_manager.instance.Selected_Pause[index]);
    public void Buttons_Reload()
    {
        bool valid=Valid(),can=valid&&CanToggle(),paused=valid&&Paused();
        if(Pause_obj!=null)Pause_obj.SetActive(paused);if(TakeOut_Btn_obj!=null)TakeOut_Btn_obj.SetActive(mode==3);
        if(Unpause_Btn_obj!=null)Unpause_Btn_obj.SetActive(paused&&can);
        if(Pause_Btn_obj!=null)Pause_Btn_obj.SetActive(!paused&&can&&(PauseContentOpen||Pause_Btn_Locked_obj==null));
        if(Pause_Btn_Locked_obj!=null)Pause_Btn_Locked_obj.SetActive(!paused&&can&&!PauseContentOpen);
    }
    public void onClick_Pause(){if(!PauseContentOpen){onClick_PauseLock();return;}if(!Valid()||!CanToggle()){InvalidContext();return;}Gun_manager.instance.Inventory.SetPaused(index,true,mode==2);Gun_manager.Feedback(true,1);Buttons_Reload();}
    public void onClick_Unpause(){if(!Valid()||!CanToggle()){InvalidContext();return;}Gun_manager.instance.Inventory.SetPaused(index,false,mode==2);Gun_manager.Feedback(true,1);Buttons_Reload();}
    public void onClick_PauseLock(){if(Safe_manager.instance!=null)Safe_manager.instance.Alert_Locked();else Gun_manager.Feedback(false);}
    public void onClick_TakeOut(){if(mode==3&&Valid()&&Safe_manager.instance.Take_Out(index,gun)<0)return;Close();}
    private void InvalidContext(){Close();Gun_manager.instance.ReloadGunUI();}
    public void Close()=>gameObject.SetActive(false);
}
