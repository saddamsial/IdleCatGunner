using UnityEngine;
using UnityEngine.UI;
using TMPro;
public sealed class SpeedRun_Start_UI : MonoBehaviour
{
    public Image Tree_img;
    public TextMeshProUGUI Stage_txt,Value_txt;
    public Color Disable_Color;
    public GameObject NonAuto_obj,Auto_obj,Sweep_NonActive_obj,Sweep_Active_obj,PlusPack_Banner_obj;
    public SlicedFilledImage Sweep_Fill;
    public void Reload()
    {
        var m=SpeedRun_manager.instance;if(m==null)return;
        Stage_txt.text="Stage "+(m.Stage_Now+1);Tree_img.sprite=Tree_manager.Sprite_return(m.Stage_Now,0);
        bool auto=m.SweepEntitled;
        if(NonAuto_obj!=null)NonAuto_obj.SetActive(!auto);if(Auto_obj!=null)Auto_obj.SetActive(auto);
        if(auto)
        {
            bool able=m.is_SweepAble();Sweep_NonActive_obj.SetActive(!able);Sweep_Active_obj.SetActive(able);
            if(!able){int value=m.SweepValue_return();Value_txt.text=value+"%";Sweep_Fill.fillAmount=value/100f;}
            foreach(var b in Auto_obj.GetComponentsInChildren<Button>(true))
                if(System.Linq.Enumerable.Any(System.Linq.Enumerable.Range(0,b.onClick.GetPersistentEventCount()),i=>b.onClick.GetPersistentMethodName(i)=="Game_Sweep"))b.interactable=able;
        }
        if(PlusPack_Banner_obj!=null)PlusPack_Banner_obj.SetActive(CatGunner.Recovery.RecoveryForestClient.Instance?.PlusBanner(2)==true);
    }
    float nextRefresh;
    private void Update(){if(Time.unscaledTime<nextRefresh)return;nextRefresh=Time.unscaledTime+.25f;if(SpeedRun_manager.instance?.Bound==true&&CatGunner.Recovery.RecoveryForestClient.Instance?.ReadyForPlay==true)Reload();}
    private void OnEnable()=>Reload();
    public void Game_Sweep(){var m=SpeedRun_manager.instance;if(m!=null&&m.SweepEntitled&&m.is_SweepAble())m.Game_Sweep();}
}
