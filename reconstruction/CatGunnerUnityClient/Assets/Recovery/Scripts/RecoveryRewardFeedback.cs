using System;
using UnityEngine;

namespace CatGunner.Recovery
{
    // Presentation bridge for native Money_Txt_Spawn / Dia_Devide_Txt_Spawn.
    // Callers own all wallet/score mutation before requesting these glyphs.
    public static class RecoveryRewardFeedback
    {
        public static event Action<string,string,Vector3> Requested;
        public static void Money(Vector3 point,string value)=>Requested?.Invoke("money","+"+value,point);
        public static void DiamondFraction(Vector3 point,string content)=>Requested?.Invoke("dia",content,point);
    }
}
