using TMPro;
using UnityEngine;
using UnityEngine.UI;

// vc257 GameSlider, original component GUID and serialized references retained.
public sealed class GameSlider : MonoBehaviour
{
    public SlicedFilledImage Stage_Fill, Value_Fill, Time_Fill;
    public TextMeshProUGUI Stage_txt, Value_txt;
    public Transform Player_Icon_trans;
    public Image[] Hole_imgs;
    public Color[] Hole_Color;
    public void Stage_Reload(int stage,int wave)
    {
        Stage_txt.text=string.Format("Stage {0}-{1}",stage+1,wave+1);
        for(int i=0;i<Hole_imgs.Length;i++) Hole_imgs[i].color=Hole_Color[wave>i?2:wave==i?1:0];
        Stage_Fill.fillAmount=wave/4f;
        Player_Icon_trans.position=Hole_imgs[wave].transform.position;
    }
    private int lastPercent=-1;
    public void Value_Reload(float value)
    {
        Value_Fill.fillAmount=value;
        int percent=(int)(value*100);if(percent!=lastPercent){lastPercent=percent;Value_txt.text=percent+"%";}
    }
    public void Time_Reload(float value) => Time_Fill.fillAmount=value;
}
