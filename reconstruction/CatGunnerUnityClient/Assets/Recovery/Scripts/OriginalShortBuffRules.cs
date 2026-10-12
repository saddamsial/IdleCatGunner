using System;
using System.Globalization;
using UnityEngine;
namespace CatGunner.Recovery
{
    // vc257 Rule 55: native scaled timers, three independent effects, shared super state.
    public static class OriginalShortBuffRules
    {
        public const float Duration=300, Maximum=900;
        public static float Clamp(float value)=>Mathf.Clamp(value,0,Maximum);
        public static bool Super(float[] times,bool permanent)=>permanent||(times[0]>0&&times[1]>0&&times[2]>0);
        public static int Mult(float[] times,Buff_Type type,bool permanent)=>permanent?4:times[(int)type]<=0?1:Super(times,false)?4:3;
        public static string Format(float seconds)=>seconds<0?string.Empty:string.Format(CultureInfo.InvariantCulture,"{0}:{1:D2}",(int)(seconds/60f),(int)(seconds%60f));
    }
    [Serializable] public sealed class OriginalShortBuffText
    {
        public string[] Money, Power, Speed;
        static OriginalShortBuffText cache;
        static OriginalShortBuffText Data=>cache??=JsonUtility.FromJson<OriginalShortBuffText>(Resources.Load<TextAsset>("OriginalShortBuffText").text);
        static int Locale=>Mathf.Max(0,RecoveryLanguage.Index);
        public static string Explain(Buff_Type type,int multiplier)=>string.Format((type==Buff_Type.Money?Data.Money:type==Buff_Type.Power?Data.Power:Data.Speed)[Locale],multiplier);
    }
}
