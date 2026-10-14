using UnityEngine;
using UnityEngine.UI;
using TMPro;
public sealed class Boss_Start_UI : MonoBehaviour
{
    public TextMeshProUGUI Lv_txt,Health_txt,Value_txt;
    public Image Boss_Shadow_img,Boss_head_img;
    public GameObject Rank_Loading_obj,Rank_Panel_obj,Top5_Enable_obj,Top5_Disable_obj,AroundMe_Enable_obj,AroundMe_Disable_obj;
    public ScrollRect Scroll_Rect;
    public GameObject NonAuto_obj,Auto_obj,Sweep_NonActive_obj,Sweep_Active_obj,PlusPack_Banner_obj;
    public SlicedFilledImage Sweep_Fill;
    public void Reload()
    {
        var m=Boss_manager.instance;if(m==null)return;
        Lv_txt.text="Lv. "+(m.Stage_Now+1);Health_txt.text=CatGunner.Runtime.NumberText.Format(m.Health_return(m.Stage_Now).Value);
        Boss_head_img.sprite=Boss_Shadow_img.sprite=m.Boss_Head_return(m.Stage_Now);
        bool auto=m.SweepEntitled;
        if(NonAuto_obj!=null)NonAuto_obj.SetActive(!auto);if(Auto_obj!=null)Auto_obj.SetActive(auto);
        if(auto)
        {
            bool able=m.is_SweepAble();if(Sweep_NonActive_obj!=null)Sweep_NonActive_obj.SetActive(!able);if(Sweep_Active_obj!=null)Sweep_Active_obj.SetActive(able);
            if(!able){int value=m.SweepValue_return();if(Value_txt!=null)Value_txt.text=value+"%";if(Sweep_Fill!=null)Sweep_Fill.fillAmount=value/100f;}
            foreach(var b in Auto_obj.GetComponentsInChildren<Button>(true))
                if(System.Linq.Enumerable.Any(System.Linq.Enumerable.Range(0,b.onClick.GetPersistentEventCount()),i=>b.onClick.GetPersistentMethodName(i)=="Game_Sweep"))b.interactable=able;
        }
        if(Rank_Loading_obj!=null)Rank_Loading_obj.SetActive(false);
        // Offline boundary: preserve ranking layout, leave every online action disabled.
        foreach(var g in new[]{Rank_Panel_obj,Top5_Enable_obj,AroundMe_Enable_obj})if(g!=null)foreach(var b in g.GetComponentsInChildren<Button>(true))b.interactable=false;
        if(PlusPack_Banner_obj!=null)PlusPack_Banner_obj.SetActive(CatGunner.Runtime.GameClient.Instance?.PlusBanner(0)==true);
    }
    float nextRefresh;
    void Update(){if(Time.unscaledTime<nextRefresh)return;nextRefresh=Time.unscaledTime+.25f;if(Boss_manager.instance!=null&&Boss_manager.instance.Bound&&CatGunner.Runtime.GameClient.Instance?.ReadyForPlay==true)Reload();}
    private void OnEnable(){if(Boss_manager.instance!=null&&Boss_manager.instance.Bound)Reload();}
    public void Game_Sweep(){var m=Boss_manager.instance;if(m!=null&&m.is_SweepAble())m.Game_Sweep();}
    public void ShowTop5()=>Gun_manager.Feedback(false);
    public void ShowAroundMe()=>Gun_manager.Feedback(false);
}
