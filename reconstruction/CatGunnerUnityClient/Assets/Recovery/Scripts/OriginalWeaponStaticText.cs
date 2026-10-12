using System;
using System.Linq;
using TMPro;
using UnityEngine;

namespace CatGunner.Recovery
{
    // Rule62: nine original scene primary terms. System-language/font handling
    // is a bounded local adapter; dynamic '-' labels retain their own owners.
    [Serializable] public sealed class OriginalWeaponStaticText
    {
        [Serializable] public sealed class Row
        {
            public string Scope,Path,Key;
            public string[] Values;
            public int SourceComponent,SourceGameObject;
        }
        public string[] LocaleCodes;
        public Row[] Rows;
        static OriginalWeaponStaticText cached;
        public static OriginalWeaponStaticText Load()
        {
            if(cached!=null)return cached;
            var asset=Resources.Load<TextAsset>("OriginalWeaponStaticText");
            var data=asset!=null?JsonUtility.FromJson<OriginalWeaponStaticText>(asset.text):null;
            if(data?.Rows?.Length!=9||data.LocaleCodes?.Length!=14||
                data.Rows.Any(r=>r.Values?.Length!=14||r.Values.Any(string.IsNullOrEmpty)))
                throw new InvalidOperationException("Original static weapon terms incomplete");
            return cached=data;
        }
        public void Apply(Transform inventory,Transform information,SystemLanguage language)
        {
            int locale=Array.IndexOf(LocaleCodes,OriginalWeaponText.LocaleCode(language));
            if(locale<0)locale=0;
            foreach(var row in Rows)
            {
                var root=row.Scope=="Inventory"?inventory:row.Scope=="Information"?information:null;
                var target=root!=null?root.Find(row.Path)?.GetComponent<TMP_Text>():null;
                if(target==null)throw new InvalidOperationException("Original weapon label missing: "+row.Scope+"/"+row.Path);
                OriginalWeaponText.Set(target,row.Values[locale],language);
            }
        }
    }
}
