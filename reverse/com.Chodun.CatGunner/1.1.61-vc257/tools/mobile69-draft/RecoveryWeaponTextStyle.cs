using System;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
namespace CatGunner.Recovery
{
    // Reuse one Chinese material per original shared style, with explicit
    // ownership. Restoring/destroying the last label releases its runtime copy.
    public sealed class RecoveryWeaponTextStyle : MonoBehaviour
    {
        sealed class Shared {public Material Material;public int Users;}
        static readonly Dictionary<int,Shared> styles=new Dictionary<int,Shared>();
        static readonly string[] Colors={"_FaceColor","_OutlineColor","_UnderlayColor"};
        static readonly string[] Floats={"_OutlineWidth","_OutlineSoftness","_FaceDilate","_UnderlayOffsetX","_UnderlayOffsetY","_UnderlayDilate","_UnderlaySoftness"};
        TMP_Text text;TMP_FontAsset originalFont;Material originalMaterial;Shared shared;int key;
        public static int SharedMaterialCount=>styles.Count;
        public void Apply()
        {
            if(shared!=null)return;
            text=GetComponent<TMP_Text>();originalFont=text.font;originalMaterial=text.fontSharedMaterial;
            var font=Resources.Load<TMP_FontAsset>("StarChineseFallback");
            if(font==null||font.sourceFontFile==null)throw new InvalidOperationException("Original Chinese weapon face missing");
            key=originalMaterial!=null?originalMaterial.GetInstanceID():0;
            if(!styles.TryGetValue(key,out shared))
            {
                shared=new Shared{Material=new Material(font.material){name="Chinese shared style (runtime)"}};
                foreach(var property in Colors)if(originalMaterial!=null&&originalMaterial.HasProperty(property)&&shared.Material.HasProperty(property))shared.Material.SetColor(property,originalMaterial.GetColor(property));
                foreach(var property in Floats)if(originalMaterial!=null&&originalMaterial.HasProperty(property)&&shared.Material.HasProperty(property))shared.Material.SetFloat(property,originalMaterial.GetFloat(property));
                styles.Add(key,shared);
            }
            shared.Users++;text.font=font;text.fontSharedMaterial=shared.Material;
        }
        public void Restore()
        {
            if(shared==null)return;
            if(text!=null&&text.fontSharedMaterial==shared.Material){text.font=originalFont;text.fontSharedMaterial=originalMaterial;}
            if(--shared.Users==0){styles.Remove(key);UnityEngine.Object.Destroy(shared.Material);}
            shared=null;
        }
        void OnDestroy()=>Restore();
    }
}
