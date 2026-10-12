using System;
using UnityEngine;

namespace CatGunner.Recovery
{
    [Serializable] public sealed class OriginalMissionFeedback
    {
        public string[] LocaleCodes,SequenceLocked;
        private static OriginalMissionFeedback catalogue;
        public static OriginalMissionFeedback Catalogue
        {
            get
            {
                if(catalogue!=null)return catalogue;
                var asset=Resources.Load<TextAsset>("OriginalMissionFeedback");
                if(asset==null)throw new InvalidOperationException("Original mission feedback missing");
                var value=JsonUtility.FromJson<OriginalMissionFeedback>(asset.text);
                if(value.LocaleCodes==null||value.LocaleCodes.Length!=14||value.SequenceLocked==null||value.SequenceLocked.Length!=14)
                    throw new InvalidOperationException("Original mission feedback incomplete");
                catalogue=value;return value;
            }
        }
        // Local system-language selection; original I2 lifecycle is pending.
        public string SequenceWarning()=>SequenceLocked[Mathf.Max(0,RecoveryLanguage.Index)];
    }
}
