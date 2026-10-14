using System;
using System.Globalization;
using System.Linq;
using TMPro;
using UnityEngine;

namespace CatGunner.Runtime
{
    // Rule65: original vc257 primary terms and native type0..3 task selection.
    // System-language and Chinese font selection are local I2 adapters.
    [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalMissionText")] public sealed class MissionText
    {
        [Serializable] public sealed class Row
        {public string Path,Key;public string[] Values;public int SourceComponent,SourceGameObject,SameNameOrdinal;}
        [Serializable] public sealed class TaskTerm
        {public int Type;public bool Description;public string Key,NativeKeyPointer;public string[] Values;}
        public string[] LocaleCodes;public Row[] Rows;public TaskTerm[] Tasks;
        static MissionText cached;
        public static MissionText Load()
        {
            if(cached!=null)return cached;
            var asset=Resources.Load<TextAsset>("MissionText");
            var data=asset!=null?JsonUtility.FromJson<MissionText>(asset.text):null;
            if(data?.Rows?.Length!=96||data.Tasks?.Length!=8||data.LocaleCodes?.Length!=14||
                data.Rows.Any(r=>r.Values?.Length!=14||r.Values.Any(string.IsNullOrEmpty))||
                data.Tasks.Any(t=>t.Values?.Length!=14||t.Values.Any(string.IsNullOrEmpty))||
                data.Tasks.Select(t=>(t.Type,t.Description)).Distinct().Count()!=8)
                throw new InvalidOperationException("Original mission terms incomplete");
            return cached=data;
        }
        int Locale(SystemLanguage language)
        {int locale=Array.IndexOf(LocaleCodes,WeaponText.LocaleCode(language));return locale<0?0:locale;}
        public string TaskName(int type,SystemLanguage language)=>Tasks.FirstOrDefault(t=>t.Type==type&&!t.Description)?.Values[Locale(language)];
        public string TaskExplanation(int type,int target,SystemLanguage language)
        {
            var term=Tasks.FirstOrDefault(t=>t.Type==type&&t.Description);
            return term==null?null:string.Format(CultureInfo.CurrentCulture,term.Values[Locale(language)],target);
        }
        public void Apply(Transform canvas,SystemLanguage language)
        {
            int locale=Locale(language);
            foreach(var row in Rows)
            {
                var text=Resolve(canvas,row);
                if(text==null)throw new InvalidOperationException("Original mission label missing: "+row.Path);
                WeaponText.Set(text,row.Values[locale],language);
            }
        }
        public TMP_Text Resolve(Transform canvas,Row row)
        {
            return UiAuthoring.Find(canvas,row.Path,row.SameNameOrdinal)?.GetComponent<TMP_Text>();
        }
    }
}
