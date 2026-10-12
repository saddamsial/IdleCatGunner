using System;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
namespace CatGunner.Recovery
{
    // Local persisted selector over recovered vc257 translations, not the
    // original I2 lifecycle. Original scenes/resources stay immutable.
    public sealed class RecoveryLanguage : MonoBehaviour
    {
        public const string PreferenceKey="reconstruction.com.Chodun.CatGunner.language.v1";
        static SystemLanguage? current;
        public static SystemLanguage Current=>current??(current=Parse(PlayerPrefs.GetString(PreferenceKey,"system"),Application.systemLanguage)).Value;
        public static void ReloadPreference()=>current=null;
        public static SystemLanguage Parse(string code,SystemLanguage system)
        {
            switch(code){case "zh-CN":return SystemLanguage.ChineseSimplified;case "zh-TW":return SystemLanguage.ChineseTraditional;case "en":return SystemLanguage.English;case "ko":return SystemLanguage.Korean;default:return system;}
        }
        public static int Index=>Array.IndexOf(Codes,OriginalWeaponText.LocaleCode(Current));
        static readonly string[] Codes={"en","ko","ja","zh-CN","zh-TW","pt-BR","de","fr-FR","es-ES","th","id","ms","vi","ru"};
        static readonly string[] Options={"zh-CN","zh-TW","en","ko","system"};
        static readonly string[] Names={"简体中文","繁體中文","English","한국어","System"};
        [Serializable]public sealed class Term {public string Key;public string[] Values;}
        [Serializable]public sealed class Terms {public Term[] Rows;}
        static Terms terms;
        Transform canvas;RecoveryClientPresentation presentation;GameObject chooser;TMP_Text caption;
        public bool PersistSelection=true;
        public static string TermText(string key)
        {
            if(terms==null)terms=JsonUtility.FromJson<Terms>(Resources.Load<TextAsset>("OriginalLanguageTerms").text);
            var row=terms.Rows.FirstOrDefault(r=>r.Key==key);if(row==null)return key;
            return row.Values[Mathf.Max(0,Index)].Replace("\\\\n","\n").Replace("\\n","\n");
        }
        public void Bind(Transform root,RecoveryClientPresentation owner)
        {
            canvas=root;presentation=owner;
            var panel=canvas.Find("Setting/Setting_UI/Panel");
            if(panel!=null)
            {
                var source=panel.Find("WriteUs_Btn").GetComponent<Button>();
                var button=CloneButton(source,panel,"Language_Btn",OpenChooser);
                var rect=(RectTransform)button.transform;rect.anchoredPosition=new Vector2(143,-335);
                panel.Find("RedeemOpen_Btn").GetComponent<RectTransform>().anchoredPosition=new Vector2(-138,-335);
                caption=button.GetComponentInChildren<TMP_Text>(true);
                chooser=new GameObject("LanguageSelection_UI",typeof(RectTransform),typeof(Image));
                chooser.transform.SetParent(canvas,false);var area=(RectTransform)chooser.transform;area.anchorMin=Vector2.zero;area.anchorMax=Vector2.one;area.offsetMin=area.offsetMax=Vector2.zero;
                chooser.GetComponent<Image>().color=new Color(0,0,0,.85f);
                for(int i=0;i<Options.Length;i++)
                {
                    string code=Options[i];var option=CloneButton(source,chooser.transform,"Language_"+code,()=>Select(code));
                    var r=(RectTransform)option.transform;r.anchorMin=r.anchorMax=r.pivot=new Vector2(.5f,.5f);r.anchoredPosition=new Vector2(0,250-i*125);r.sizeDelta=new Vector2(470,105);
                    OriginalWeaponText.Set(option.GetComponentInChildren<TMP_Text>(true),Names[i],i<2?SystemLanguage.ChineseSimplified:i==3?SystemLanguage.Korean:SystemLanguage.English);
                }
                chooser.SetActive(false);
            }
            Refresh();
        }
        static Button CloneButton(Button source,Transform parent,string name,UnityEngine.Events.UnityAction action)
        {
            var button=Instantiate(source,parent,false);button.name=name;
            source.GetComponentInChildren<TMP_Text>(true)?.GetComponent<RecoveryWeaponTextStyle>()?.CopyOriginalTo(button.GetComponentInChildren<TMP_Text>(true));
            // Disable imported listeners rather than invoking service callbacks.
            for(int i=0;i<button.onClick.GetPersistentEventCount();i++)button.onClick.SetPersistentListenerState(i,UnityEngine.Events.UnityEventCallState.Off);
            button.onClick.AddListener(action);button.interactable=true;return button;
        }
        public void OpenChooser(){chooser.SetActive(true);chooser.transform.SetAsLastSibling();}
        public void Select(string code)
        {
            if(!Options.Contains(code))throw new ArgumentException("Unsupported recovery locale");
            current=Parse(code,Application.systemLanguage);PlayerPrefs.SetString(PreferenceKey,code);if(PersistSelection)PlayerPrefs.Save();Refresh();chooser?.SetActive(false);
        }
        public void Refresh()
        {
            var language=Current;
            OriginalCompanionStaticText.Load().Apply(canvas,language);OriginalMissionText.Load().Apply(canvas,language);
            OriginalModeText.Load().Apply(canvas,language);OriginalRemainingUIExt.Apply(canvas,language);
            presentation.RefreshWeaponStaticText(language);
            void Set(string path,string value){OriginalWeaponText.Set(canvas.Find(path)?.GetComponent<TMP_Text>(),value,language);}
            Set("Setting/Setting_UI/Panel/RedeemOpen_Btn/I2_txt(Outline)",TermText("Redeem/Redeem"));
            Set("Setting/Setting_UI/Panel/Restore_Btn/I2_txt(Outline)",TermText("Setting/Restore"));
            bool chinese=language==SystemLanguage.Chinese||language==SystemLanguage.ChineseSimplified||language==SystemLanguage.ChineseTraditional;
            bool korean=language==SystemLanguage.Korean,traditional=language==SystemLanguage.ChineseTraditional;
            // These audio captions have no primary terms in vc257; local labels.
            Set("Setting/Setting_UI/Panel/BGM_Btn/I2_txt",chinese?traditional?"音樂":"音乐":korean?"음악":"Music");
            Set("Setting/Setting_UI/Panel/SFX_Btn/I2_txt",chinese?"音效":korean?"효과음":"Sound");
            Set("Setting/Setting_UI/Panel/Vibration_Btn/I2_txt",chinese?traditional?"震動":"振动":korean?"진동":"Vibration");
            Set("Setting/Setting_UI/Panel/Login_Btn/I2_txt",chinese?traditional?"Google 登入":"Google 登录":korean?"Google 로그인":"Google Login");
            if(chooser!=null)OriginalWeaponText.Set(chooser.transform.Find("Language_system").GetComponentInChildren<TMP_Text>(true),chinese?traditional?"跟隨系統":"跟随系统":korean?"시스템 언어":"System language",language);
            if(caption!=null)OriginalWeaponText.Set(caption,chinese?traditional?"語言":"语言":korean?"언어":"Language",language);
            foreach(var item in canvas.GetComponentsInChildren<Mission_Item_UI>(true))item.ReloadText(language);
        }
    }
}
