using System;
using UnityEngine;

namespace CatGunner.Runtime
{
    // Presentation bridge for native Money_Txt_Spawn / Dia_Devide_Txt_Spawn.
    // Callers own all wallet/score mutation before requesting these glyphs.
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "RecoveryRewardFeedback")] public static class RewardFeedback
    {
        public static event Action<string,string,Vector3> Requested;
        public static void Money(Vector3 point,string value)=>Requested?.Invoke("money","+"+value,point);
        public static void DiamondFraction(Vector3 point,string content)=>Requested?.Invoke("dia",content,point);
    }
}
