using System;
using System.Linq;
using TMPro;
using UnityEngine;

namespace CatGunner.Recovery
{
    // Rule67: source core mode primary terms. System-language/font/newline
    // handling is a local display adapter, not the full I2 implementation.
    [Serializable] public sealed class OriginalModeText
    {
        [Serializable] public sealed class Row
        {public string Path,Key;public string[] Values;public int SourceComponent,SourceGameObject,SameNameOrdinal;}
        public string[] LocaleCodes;public Row[] Rows;
        static OriginalModeText cached;
        public static OriginalModeText Load()
        {
            if(cached!=null)return cached;
            var asset=Resources.Load<TextAsset>("OriginalModeText");
            var data=asset!=null?JsonUtility.FromJson<OriginalModeText>(asset.text):null;
            if(data?.Rows?.Length!=71||data.LocaleCodes?.Length!=14||data.Rows.Any(r=>r.Values?.Length!=14||r.Values.Any(string.IsNullOrEmpty)))
                throw new InvalidOperationException("Original core mode terms incomplete");
            return cached=data;
        }
        public string Display(Row row,SystemLanguage language)
        {
            int locale=Array.IndexOf(LocaleCodes,OriginalWeaponText.LocaleCode(language));
            // Retain raw serialized values in the resource. Convert only the
            // explicit linebreak spelling for TMP display; keep source tags.
            return row.Values[locale<0?0:locale].Replace("\\\\n","\n").Replace("\\n","\n");
        }
        public TMP_Text Resolve(Transform canvas,Row row)
        {
            int slash=row.Path.LastIndexOf('/');var parent=canvas.Find(row.Path.Substring(0,slash));
            if(parent==null)return null;string name=row.Path.Substring(slash+1);int ordinal=0;
            for(int i=0;i<parent.childCount;i++)
            {var child=parent.GetChild(i);if(child.name==name&&ordinal++==row.SameNameOrdinal)return child.GetComponent<TMP_Text>();}
            return null;
        }
        public void Apply(Transform canvas,SystemLanguage language)
        {
            foreach(var row in Rows)
            {
                var text=Resolve(canvas,row);
                if(text==null)throw new InvalidOperationException("Original mode label missing: "+row.Path);
                OriginalWeaponText.Set(text,Display(row,language),language);
            }
        }
    }
}
