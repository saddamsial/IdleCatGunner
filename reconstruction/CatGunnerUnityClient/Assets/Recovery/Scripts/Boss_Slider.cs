using UnityEngine;
using TMPro;
using CatGunner.Recovery;
public sealed class Boss_Slider : MonoBehaviour
{
    public SlicedFilledImage Value_Fill,Time_Fill;
    public TextMeshProUGUI Value_txt,Time_txt;
    public void Value_Reload(OriginalAmount value,OriginalAmount max)
    {
        double ratio=0;
        if(!value.Value.Coefficient.IsZero)ratio=System.Math.Exp(System.Numerics.BigInteger.Log(System.Numerics.BigInteger.Abs(value.Value.Coefficient))-System.Numerics.BigInteger.Log(System.Numerics.BigInteger.Abs(max.Value.Coefficient))+(value.s_exponent-max.s_exponent)*System.Math.Log(10))*value.Value.Coefficient.Sign;
        Value_Fill.fillAmount=(float)ratio;Value_txt.text=CatGunner.Recovery.OriginalNumberText.Format(value.Value);
    }
    public void Time_Reload(float time,float max){Time_Fill.fillAmount=time/max;Time_txt.text=((int)(time+1))+"s";}
}
