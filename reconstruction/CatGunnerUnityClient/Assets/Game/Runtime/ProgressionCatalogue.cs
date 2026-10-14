using System;
using UnityEngine;

namespace CatGunner.Runtime
{
    [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalMissionInfo")] public sealed class MissionInfo
    {public string Name;public int type,MissionValue,ExpValue;public bool is_VIP_Mission;}
    [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalPetInfo")] public sealed class PetInfo
    {public string Name;public CurrencyAmount Money;public int MoveSpeed;}
    [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalRebirthValues")] public sealed class RebirthValues {public CurrencyAmount[] Values;}
    [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalProgressionCatalogue")] public sealed class ProgressionCatalogue
    {
        public MissionInfo[] Missions;
        public PetInfo[] Pets;
        public CurrencyAmount[] RebirthPrice;
        public RebirthValues[] RebirthValues;
        public int[] HighTierGuns;
        public static ProgressionCatalogue Load()
        {
            var asset=Resources.Load<TextAsset>("ProgressionCatalogue");if(asset==null)throw new InvalidOperationException("Original progression catalogue missing");
            var d=JsonUtility.FromJson<ProgressionCatalogue>(asset.text);
            if(d.Missions.Length!=23||d.Pets.Length!=10||d.RebirthPrice.Length!=20001||d.RebirthValues.Length!=3||d.HighTierGuns.Length!=8)throw new InvalidOperationException("Incomplete vc257 progression data");
            return d;
        }
    }
}
