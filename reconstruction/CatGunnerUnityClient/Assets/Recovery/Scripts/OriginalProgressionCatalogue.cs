using System;
using UnityEngine;

namespace CatGunner.Recovery
{
    [Serializable] public sealed class OriginalMissionInfo
    {public string Name;public int type,MissionValue,ExpValue;public bool is_VIP_Mission;}
    [Serializable] public sealed class OriginalPetInfo
    {public string Name;public OriginalAmount Money;public int MoveSpeed;}
    [Serializable] public sealed class OriginalRebirthValues {public OriginalAmount[] Values;}
    [Serializable] public sealed class OriginalProgressionCatalogue
    {
        public OriginalMissionInfo[] Missions;
        public OriginalPetInfo[] Pets;
        public OriginalAmount[] RebirthPrice;
        public OriginalRebirthValues[] RebirthValues;
        public int[] HighTierGuns;
        public static OriginalProgressionCatalogue Load()
        {
            var asset=Resources.Load<TextAsset>("OriginalProgressionCatalogue");if(asset==null)throw new InvalidOperationException("Original progression catalogue missing");
            var d=JsonUtility.FromJson<OriginalProgressionCatalogue>(asset.text);
            if(d.Missions.Length!=23||d.Pets.Length!=10||d.RebirthPrice.Length!=20001||d.RebirthValues.Length!=3||d.HighTierGuns.Length!=8)throw new InvalidOperationException("Incomplete vc257 progression data");
            return d;
        }
    }
}
