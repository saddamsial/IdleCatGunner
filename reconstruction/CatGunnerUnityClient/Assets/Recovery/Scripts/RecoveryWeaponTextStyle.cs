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
        public bool Authored;
        [SerializeField] TMP_FontAsset westernFont,authoredFont;
        [SerializeField] Material westernMaterial,authoredMaterial;
        TMP_Text text;TMP_FontAsset originalFont;Material originalMaterial;Shared shared;int key;
#if UNITY_EDITOR
        public void BakeStyle()
        {
            text=GetComponent<TMP_Text>();westernFont=originalFont;westernMaterial=originalMaterial;
            authoredFont=text.font;authoredMaterial=text.fontSharedMaterial;
            // The scene owns the persisted clones after baking.
            shared=null;Authored=true;
        }
#endif
        public static int SharedMaterialCount=>styles.Count;
        public void Apply()
        {
            if(Authored)
            {
                text=GetComponent<TMP_Text>();
                // Preserve inspector edits to the font/material; only undo a previous locale swap.
                if(text.font==westernFont&&text.fontSharedMaterial==westernMaterial){text.font=authoredFont;text.fontSharedMaterial=authoredMaterial;}
                return;
            }
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
        public void CopyOriginalTo(TMP_Text target)
        {if(originalFont!=null){target.font=originalFont;target.fontSharedMaterial=originalMaterial;}}
        public void Restore()
        {
            if(Authored)
            {
                text=GetComponent<TMP_Text>();
                if(westernFont!=null&&text.font==authoredFont&&text.fontSharedMaterial==authoredMaterial){text.font=westernFont;text.fontSharedMaterial=westernMaterial;}
                return;
            }
            if(shared==null)return;
            if(text!=null&&text.fontSharedMaterial==shared.Material){text.font=originalFont;text.fontSharedMaterial=originalMaterial;}
            if(--shared.Users==0){styles.Remove(key);if(Application.isPlaying)UnityEngine.Object.Destroy(shared.Material);else UnityEngine.Object.DestroyImmediate(shared.Material);}
            shared=null;
        }
        void OnDestroy()=>Restore();
    }
}
