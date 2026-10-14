using System;
using System.Linq;
using TMPro;
using UnityEngine;

namespace CatGunner.Runtime
{
    // Rule64: selected original vc257 fish/pet primary I2 terms, including
    // details and delete/new-item popups. Dynamic labels keep their owners.
    // Language selection and Chinese font handling remain local adapters.
    [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalCompanionStaticText")] public sealed class CompanionStaticText
    {
        [Serializable] public sealed class Row
        {
            public string Path,Key;
            public string[] Values;
            public int SourceComponent,SourceGameObject;
        }
        public string[] LocaleCodes;
        public Row[] Rows;
        static CompanionStaticText cached;
        public static CompanionStaticText Load()
        {
            if(cached!=null)return cached;
            var asset=Resources.Load<TextAsset>("CompanionStaticText");
            var data=asset!=null?JsonUtility.FromJson<CompanionStaticText>(asset.text):null;
            if(data?.Rows?.Length!=27||data.LocaleCodes?.Length!=14||
                data.Rows.Any(r=>r.Values?.Length!=14||r.Values.Any(string.IsNullOrEmpty)))
                throw new InvalidOperationException("Original fish/pet primary terms incomplete");
            return cached=data;
        }
        public void Apply(Transform canvas,SystemLanguage language)
        {
            int locale=Array.IndexOf(LocaleCodes,WeaponText.LocaleCode(language));
            if(locale<0)locale=0;
            foreach(var row in Rows)
            {
                var target=UiAuthoring.Find(canvas,row.Path)?.GetComponent<TMP_Text>();
                if(target==null)throw new InvalidOperationException("Original companion label missing: "+row.Path);
                WeaponText.Set(target,row.Values[locale],language);
            }
        }
    }
}
