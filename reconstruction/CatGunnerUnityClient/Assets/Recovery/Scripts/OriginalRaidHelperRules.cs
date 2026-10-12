using System;
using System.Linq;
using UnityEngine;
namespace CatGunner.Recovery
{
    // Reviewed vc257 native get_Is_Helper_Active / Helper_GunNum_return / Helper_StarLv_return.
    public static class OriginalRaidHelperRules
    {
        public static bool IsActive(int season,DateTime now)=>season!=-1&&season==OriginalRaidRules.SeasonIndex(now);
        public static int MinimumStars(int[] levels)=>levels==null||levels.Length==0?0:levels.Min();
        public static int GunNumber(Gun_Info[] guns,GunType weakType)
        {
            if(guns==null)return -1;
            for(int i=50;i<Math.Min(55,guns.Length);i++)if(guns[i].type==weakType)return i;
            // GunTypeCode.From fallback order is initialized by the original .cctor.
            int code=Array.IndexOf(TypeCodes,weakType);int fallback=50+Mathf.Clamp(code,0,4);
            return fallback<guns.Length?fallback:-1;
        }
        static readonly GunType[] TypeCodes={(GunType)2,(GunType)4,(GunType)1,(GunType)5,(GunType)6,(GunType)0,(GunType)3};
    }
}
