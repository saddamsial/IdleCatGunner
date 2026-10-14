using TMPro;
using UnityEngine;
public sealed class StarGem_Pig_UI : MonoBehaviour
{
    public TextMeshProUGUI Lv_txt,GemCount_txt,Price_txt,Sale_Value_txt;
    public SlicedFilledImage Gem_Fill;
    public GameObject Sale_obj,Locked_obj,Purchase_Btn_obj,SoldOut_obj;
    static readonly string[] DefaultPrice={"$0.99","$2.99","$4.99"};
    static readonly int[] SalePercent={50,35,35};
    public static string Price_str_return(int level)=>DefaultPrice[Mathf.Clamp(level,1,3)-1];
    public static string Sale_str_return(int level)=>string.Format("Sale {0}%",SalePercent[Mathf.Clamp(level,1,3)-1]);
    void OnEnable(){StarGem_Pig.OnChanged+=Reload;Reload();}
    void OnDisable()=>StarGem_Pig.OnChanged-=Reload;
    public void Reload()
    {
        var pig=StarGem_Pig.instance;if(pig==null)return;
        if(Lv_txt!=null)Lv_txt.text=string.Format("Lv.{0}",pig.Lv);
        if(GemCount_txt!=null)GemCount_txt.text=string.Format("{0}/{1}",Mathf.Clamp(pig.Gem,0,pig.Capacity_Now),pig.Capacity_Now);
        if(Gem_Fill!=null)Gem_Fill.fillAmount=pig.Fill_Ratio;
        if(Price_txt!=null)Price_txt.text=Price_str_return(pig.Lv);
        if(Purchase_Btn_obj!=null)Purchase_Btn_obj.SetActive(!pig.Is_SoldOut);
        if(SoldOut_obj!=null)SoldOut_obj.SetActive(pig.Is_SoldOut);
        // Native sold-out branch leaves the previous Sale/Locked visibility intact.
        if(pig.Is_SoldOut)return;
        if(Sale_obj!=null)Sale_obj.SetActive(pig.Is_Purchasable);
        if(Locked_obj!=null)Locked_obj.SetActive(!pig.Is_Purchasable);
        if(pig.Is_Purchasable&&Sale_Value_txt!=null)Sale_Value_txt.text=Sale_str_return(pig.Lv);
    }
    public void onClick_Purchase()=>StarGem_Pig.instance?.Purchase("raid");
}
