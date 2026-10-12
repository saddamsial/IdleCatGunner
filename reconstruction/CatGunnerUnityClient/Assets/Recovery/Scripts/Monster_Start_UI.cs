using UnityEngine;
using UnityEngine.UI;
using TMPro;
public sealed class Monster_Start_UI : MonoBehaviour
{
    public Image Monster_img;
    public TextMeshProUGUI Wave_txt,Stage_txt,Value_txt;
    public GameObject Rank_Loading_obj,Rank_Panel_obj,Top5_Enable_obj,Top5_Disable_obj,AroundMe_Enable_obj,AroundMe_Disable_obj;
    public ScrollRect Scroll_Rect;
    public GameObject NonAuto_obj,Auto_obj,Sweep_NonActive_obj,Sweep_Active_obj,PlusPack_Banner_obj;
    public SlicedFilledImage Sweep_Fill;
    public void Reload()
    {
        var m=Monster_manager.instance;if(m==null||!m.Bound)return;
        Wave_txt.text=string.Format("Wave {0}-{1}",m.Wave_Now+1,m.Lv_Now+1);Monster_img.sprite=m.SkinSprite_return(true);
        bool active=CatGunner.Recovery.RecoveryForestClient.Instance?.PlusActive(2)==true,able=m.is_SweepAble();
        NonAuto_obj.SetActive(!active);Auto_obj.SetActive(active);Sweep_NonActive_obj.SetActive(active&&!able);Sweep_Active_obj.SetActive(active&&able);
        int wave=m.Wave_Now,level=m.Lv_Now;if(able)m.SweepTarget_return(out wave,out level,out int count);
        Stage_txt.text=string.Format("{0}-{1}",wave+1,level+1);Stage_txt.color=able?Color.white:Color.red;
        int percent=m.SweepValue_return();Value_txt.text=percent+"%";Sweep_Fill.fillAmount=percent/100f;
        foreach(var b in Auto_obj.GetComponentsInChildren<Button>(true))
            for(int i=0;i<b.onClick.GetPersistentEventCount();i++)
                if(b.onClick.GetPersistentMethodName(i)=="Game_Sweep")b.interactable=able&&!m.SweepPending;
        foreach(var g in new[]{Rank_Loading_obj})if(g!=null)g.SetActive(false);
        foreach(var g in new[]{Rank_Panel_obj,Top5_Enable_obj,AroundMe_Enable_obj})if(g!=null)foreach(var b in g.GetComponentsInChildren<Button>(true))b.interactable=false;
        Banner_Reload();
    }
    public void Game_Sweep()=>Monster_manager.instance?.Game_Sweep();
    public void Banner_Reload(){if(PlusPack_Banner_obj!=null)PlusPack_Banner_obj.SetActive(CatGunner.Recovery.RecoveryForestClient.Instance?.PlusBanner(2)==true);}
    private float nextReload;
    private void Update(){if(Time.unscaledTime<nextReload)return;nextReload=Time.unscaledTime+.25f;Reload();}
    private void OnEnable(){if(Monster_manager.instance!=null&&Monster_manager.instance.Bound)Reload();}
    public void ShowTop5()=>Gun_manager.Feedback(false);
    public void ShowAroundMe()=>Gun_manager.Feedback(false);
}
