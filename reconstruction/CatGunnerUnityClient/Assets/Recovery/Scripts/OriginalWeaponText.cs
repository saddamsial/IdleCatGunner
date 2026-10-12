using System;
using System.Linq;
using UnityEngine;

namespace CatGunner.Recovery
{
    // Rule59: exact vc257 I2 Gun/<type> and Gun/<type>_ex rows. This local
    // system-language selection does not reconstruct the full I2 lifecycle.
    [Serializable] public sealed class OriginalWeaponText
    {
        [Serializable] public sealed class Row{public string Type,Key;public bool Description;public string[] Values;}
        public string[] LocaleCodes;
        public Row[] Rows;
        static OriginalWeaponText cached;
        static OriginalWeaponText Data
        {
            get
            {
                if(cached!=null)return cached;
                var asset=Resources.Load<TextAsset>("OriginalWeaponText");
                if(asset==null)throw new InvalidOperationException("Original weapon text missing");
                var value=JsonUtility.FromJson<OriginalWeaponText>(asset.text);
                if(value?.Rows==null||value.Rows.Length!=14||value.LocaleCodes?.Length!=14||value.Rows.Any(r=>r.Values?.Length!=14))throw new InvalidOperationException("Original weapon text incomplete");
                return cached=value;
            }
        }
        static int Locale(SystemLanguage language)
        {
            switch(language)
            {
                case SystemLanguage.Korean:return 1;case SystemLanguage.Japanese:return 2;
                case SystemLanguage.Chinese:case SystemLanguage.ChineseSimplified:return 3;
                case SystemLanguage.ChineseTraditional:return 4;case SystemLanguage.Portuguese:return 5;
                case SystemLanguage.German:return 6;case SystemLanguage.French:return 7;
                case SystemLanguage.Spanish:return 8;case SystemLanguage.Thai:return 9;
                case SystemLanguage.Indonesian:return 10;case SystemLanguage.Unknown:return 0;
                case SystemLanguage.Vietnamese:return 12;case SystemLanguage.Russian:return 13;
                default:return 0;
            }
        }
        public static string ForLocaleCode(GunType type,bool description,string localeCode)
        {
            int locale=Array.IndexOf(Data.LocaleCodes,localeCode);
            return Lookup(type,description,locale<0?0:locale);
        }
        public static string LocaleCode(SystemLanguage language)=>Data.LocaleCodes[Locale(language)];
        public static void Set(TMPro.TMP_Text target,string value)
            =>Set(target,value,CatGunner.Recovery.RecoveryLanguage.Current);
        public static void Set(TMPro.TMP_Text target,string value,SystemLanguage language)
        {
            if(target==null)return;
            if(language==SystemLanguage.Chinese||language==SystemLanguage.ChineseSimplified||language==SystemLanguage.ChineseTraditional)
                (target.GetComponent<RecoveryWeaponTextStyle>()??target.gameObject.AddComponent<RecoveryWeaponTextStyle>()).Apply();
            else target.GetComponent<RecoveryWeaponTextStyle>()?.Restore();
            if(target.text!=value)target.text=value;
        }
        public static string Name(GunType type)=>ForLanguage(type,false,CatGunner.Recovery.RecoveryLanguage.Current);
        public static string Explain(GunType type)=>ForLanguage(type,true,CatGunner.Recovery.RecoveryLanguage.Current);
        public static string ForLanguage(GunType type,bool description,SystemLanguage language)
        {
            return Lookup(type,description,Locale(language));
        }
        static string Lookup(GunType type,bool description,int locale)
        {
            var row=Data.Rows.FirstOrDefault(r=>r.Type==type.ToString()&&r.Description==description);
            return row==null?(description?null:string.Empty):row.Values[locale];
        }
    }
}
