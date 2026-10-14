using System;
using BigInteger=System.Numerics.BigInteger;
using UnityEngine;
namespace CatGunner.Runtime
{
    // Exact vc257 static initializer blobs: metadata offsets 9608824/9595064.
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalMonsterRules")] public static class MonsterRules
    {
        public static readonly int[] Counts={90,120,160,200,240};
        public static readonly float[] Intervals={.35f,.2f,.17f,.12f,.08f};
        public static readonly Vector3 Center=new Vector3(-100,0,0);
        // Independent decimal adapter for native InfVal.ToPrecision/ToExponent,
        // truncating the coefficient to two significant digits (not rounding).
        public static CurrencyAmount Precision2(DecimalAmount value)
        {
            int digits=BigInteger.Abs(value.Coefficient).ToString().Length,shift=digits-2;
            var coefficient=shift>0?value.Coefficient/BigInteger.Pow(10,shift):value.Coefficient*BigInteger.Pow(10,-shift);
            return CurrencyAmount.FromValue(new DecimalAmount(coefficient,checked(value.Exponent+shift)));
        }
        public static float Ratio(DecimalAmount value,DecimalAmount max)
        {
            if(value.Coefficient.IsZero)return 0;
            return (float)(Math.Sign(value.Coefficient.Sign)*Math.Exp(BigInteger.Log(BigInteger.Abs(value.Coefficient))-BigInteger.Log(BigInteger.Abs(max.Coefficient))+(value.Exponent-max.Exponent)*Math.Log(10)));
        }
        public static Vector3 SpawnPoint(float aspect,float angle,float jitter)
        {
            float width=Mathf.Clamp(aspect*60,30,60),s=Mathf.Sin(angle),c=Mathf.Cos(angle);
            float radius=width*60/Mathf.Sqrt(c*c*60*60+s*s*width*width)+jitter;
            // Native sincos and +/-45 degree isometric rotation, preferred VA 0x2b4fe54.
            return Center+new Vector3((c-s)*radius*.7071067690849304f,0,(s+c)*radius*.7071067690849304f);
        }
    }
}
