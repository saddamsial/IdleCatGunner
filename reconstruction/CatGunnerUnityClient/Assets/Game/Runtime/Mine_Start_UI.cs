using UnityEngine;
using TMPro;
public sealed class Mine_Start_UI : MonoBehaviour
{
    public TextMeshProUGUI TicketCount_txt,Value_txt;
    public Color Color_Disable;
    public GameObject NonAuto_obj,Auto_obj,AD_SpeedBuff_obj,AD_SpeedBuff_obj_Auto,PlusPack_Banner_obj;
    public void Reload()
    {
        var mode=Mine_manager.instance;if(mode==null||!mode.Bound)return;mode.Ticket_Reload();
        TicketCount_txt.text=(mode.Ticket_MaxCount_return()-mode.TicketUse_Count)+"/"+mode.Ticket_MaxCount_return();
        TicketCount_txt.color=mode.TicketUse_Count>=mode.Ticket_MaxCount_return()?Color_Disable:Color.white;
        bool able=mode.is_SweepAble();NonAuto_obj.SetActive(!able);Auto_obj.SetActive(able);
        if(able)Value_txt.text="<sprite=1>"+mode.SweepReward_return();
        foreach(var b in Auto_obj.GetComponentsInChildren<UnityEngine.UI.Button>(true))
            for(int i=0;i<b.onClick.GetPersistentEventCount();i++)
                if(b.onClick.GetPersistentMethodName(i)=="Game_Sweep")b.interactable=able&&!mode.SweepPending;
        SpeedBuff_Reload();Banner_Reload();
    }
    public void SpeedBuff_Reload()
    {
        var mode=Mine_manager.instance;var m=Buff_manager.instance;
        bool available=mode!=null&&mode.Bound&&mode.TicketUse_Count<mode.Ticket_MaxCount_return()&&m!=null&&!m.IsBuffActive(Buff_Type.AtkSpeed);
        AD_SpeedBuff_obj.SetActive(available);AD_SpeedBuff_obj_Auto.SetActive(available);
        CatGunner.Runtime.RewardedAds.Button(AD_SpeedBuff_obj,available&&CatGunner.Runtime.RewardedAds.Current?.Busy!=true);
        CatGunner.Runtime.RewardedAds.Button(AD_SpeedBuff_obj_Auto,available&&CatGunner.Runtime.RewardedAds.Current?.Busy!=true);
    }
    int buffRevision;
    public void AD_SpeedBuff_Watch()
    {
        int stamp=buffRevision;var c=CatGunner.Runtime.GameClient.Instance;var mode=Mine_manager.instance;
        Buff_manager.instance?.RequestBuff(Buff_Type.AtkSpeed,()=>this!=null&&isActiveAndEnabled&&buffRevision==stamp&&c.Mode==0&&mode.StartPanel.activeInHierarchy&&mode.TicketUse_Count<mode.Ticket_MaxCount_return()&&!Buff_manager.instance.IsBuffActive(Buff_Type.AtkSpeed),()=>{SpeedBuff_Reload();mode.Game_Start();});
    }
    void OnDisable()=>buffRevision++;
    public void Game_Sweep()=>Mine_manager.instance?.Game_Sweep();
    public void Banner_Reload()
    {
        var c=CatGunner.Runtime.GameClient.Instance;var m=Mine_manager.instance;
        var minePack=transform.Find("MinePack");
        bool popup=m!=null&&m.MineTicket_Inapp_UI_obj!=null&&m.MineTicket_Inapp_UI_obj.activeSelf;
        if(minePack!=null)minePack.gameObject.SetActive(c!=null&&!c.State.Is_Mine_Pack&&!popup);
        if(PlusPack_Banner_obj!=null)PlusPack_Banner_obj.SetActive(c!=null&&c.OfflinePurchaseSimulation&&c.State.Is_Mine_Pack&&
            (m==null||m.MineTicket_Inapp_UI_obj==null||!m.MineTicket_Inapp_UI_obj.activeSelf)&&c.PlusBanner(1));
    }
    private float nextReload;
    private void Update(){if(Time.unscaledTime<nextReload)return;nextReload=Time.unscaledTime+.25f;Reload();}
    private void OnEnable(){if(Mine_manager.instance!=null&&Mine_manager.instance.Bound)Reload();}
}
