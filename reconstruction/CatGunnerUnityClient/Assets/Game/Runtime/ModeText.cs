using System;
using System.Linq;
using TMPro;
using UnityEngine;

namespace CatGunner.Runtime
{
    // Rule67: source core mode primary terms. System-language/font/newline
    // handling is a local display adapter, not the full I2 implementation.
    [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalModeText")] public sealed class ModeText
    {
        [Serializable] public sealed class Row
        {public string Path,Key;public string[] Values;public int SourceComponent,SourceGameObject,SameNameOrdinal;}
        public string[] LocaleCodes;public Row[] Rows;
        static ModeText cached;
        public static ModeText Load()
        {
            if(cached!=null)return cached;
            var asset=Resources.Load<TextAsset>("ModeText");
            var data=asset!=null?JsonUtility.FromJson<ModeText>(asset.text):null;
            if(data?.Rows?.Length!=71||data.LocaleCodes?.Length!=14||data.Rows.Any(r=>r.Values?.Length!=14||r.Values.Any(string.IsNullOrEmpty)))
                throw new InvalidOperationException("Original core mode terms incomplete");
            return cached=data;
        }
        public string Display(Row row,SystemLanguage language)
        {
            int locale=Array.IndexOf(LocaleCodes,WeaponText.LocaleCode(language));
            // Retain raw serialized values in the resource. Convert only the
            // explicit linebreak spelling for TMP display; keep source tags.
            return row.Values[locale<0?0:locale].Replace("\\\\n","\n").Replace("\\n","\n");
        }
        public TMP_Text Resolve(Transform canvas,Row row)
        {
            return UiAuthoring.Find(canvas,row.Path,row.SameNameOrdinal)?.GetComponent<TMP_Text>();
        }
        public void Apply(Transform canvas,SystemLanguage language)
        {
            foreach(var row in Rows)
            {
                var text=Resolve(canvas,row);
                if(text==null)throw new InvalidOperationException("Original mode label missing: "+row.Path);
                WeaponText.Set(text,Display(row,language),language);
            }
        }
    }
}
