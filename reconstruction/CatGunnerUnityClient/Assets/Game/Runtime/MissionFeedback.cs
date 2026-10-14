using System;
using UnityEngine;

namespace CatGunner.Runtime
{
    [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalMissionFeedback")] public sealed class MissionFeedback
    {
        public string[] LocaleCodes,SequenceLocked;
        private static MissionFeedback catalogue;
        public static MissionFeedback Catalogue
        {
            get
            {
                if(catalogue!=null)return catalogue;
                var asset=Resources.Load<TextAsset>("MissionFeedback");
                if(asset==null)throw new InvalidOperationException("Original mission feedback missing");
                var value=JsonUtility.FromJson<MissionFeedback>(asset.text);
                if(value.LocaleCodes==null||value.LocaleCodes.Length!=14||value.SequenceLocked==null||value.SequenceLocked.Length!=14)
                    throw new InvalidOperationException("Original mission feedback incomplete");
                catalogue=value;return value;
            }
        }
        // Local system-language selection; original I2 lifecycle is pending.
        public string SequenceWarning()=>SequenceLocked[Mathf.Max(0,Language.Index)];
    }
}
