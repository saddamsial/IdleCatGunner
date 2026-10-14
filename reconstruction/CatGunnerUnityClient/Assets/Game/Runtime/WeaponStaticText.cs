using System;
using System.Linq;
using TMPro;
using UnityEngine;

namespace CatGunner.Runtime
{
    // Rule62: nine original scene primary terms. System-language/font handling
    // is a bounded local adapter; dynamic '-' labels retain their own owners.
    [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalWeaponStaticText")] public sealed class WeaponStaticText
    {
        [Serializable] public sealed class Row
        {
            public string Scope,Path,Key;
            public string[] Values;
            public int SourceComponent,SourceGameObject;
        }
        public string[] LocaleCodes;
        public Row[] Rows;
        static WeaponStaticText cached;
        public static WeaponStaticText Load()
        {
            if(cached!=null)return cached;
            var asset=Resources.Load<TextAsset>("WeaponStaticText");
            var data=asset!=null?JsonUtility.FromJson<WeaponStaticText>(asset.text):null;
            if(data?.Rows?.Length!=9||data.LocaleCodes?.Length!=14||
                data.Rows.Any(r=>r.Values?.Length!=14||r.Values.Any(string.IsNullOrEmpty)))
                throw new InvalidOperationException("Original static weapon terms incomplete");
            return cached=data;
        }
        public void Apply(Transform inventory,Transform information,SystemLanguage language,bool allowDeferredInformation=false)
        {
            int locale=Array.IndexOf(LocaleCodes,WeaponText.LocaleCode(language));
            if(locale<0)locale=0;
            foreach(var row in Rows)
            {
                var root=row.Scope=="Inventory"?inventory:row.Scope=="Information"?information:null;
                if(root==null&&row.Scope=="Information"&&allowDeferredInformation)continue;
                var target=root!=null?UiAuthoring.Find(root,row.Path)?.GetComponent<TMP_Text>():null;
                if(target==null)throw new InvalidOperationException("Original weapon label missing: "+row.Scope+"/"+row.Path);
                WeaponText.Set(target,row.Values[locale],language);
            }
        }
    }
}
