using TMPro;
using UnityEngine;
public sealed class StarGem_Pig_HUD : MonoBehaviour
{
    public SlicedFilledImage Gem_Fill;
    public TextMeshProUGUI Percent_txt;
    public GameObject Alert_obj,Glow_obj;
    void OnEnable(){StarGem_Pig.OnChanged+=Reload;Reload();}
    void OnDisable()=>StarGem_Pig.OnChanged-=Reload;
    public void Reload()
    {
        var pig=StarGem_Pig.instance;if(pig==null)return;
        if(Gem_Fill!=null)Gem_Fill.fillAmount=pig.Fill_Ratio;
        if(Percent_txt!=null)Percent_txt.text=string.Format("{0}%",(int)(pig.Fill_Ratio*100f));
        if(Alert_obj!=null)Alert_obj.SetActive(pig.Is_Purchasable);
        if(Glow_obj!=null)Glow_obj.SetActive(pig.Is_Purchasable);
    }
    public void onClick_Open()=>StarGem_Pig.instance?.Open_Popup();
}
