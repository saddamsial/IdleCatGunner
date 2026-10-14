using UnityEngine;
using UnityEngine.UI;
using TMPro;
namespace CatGunner.Runtime
{
    // OnOff owns gameplay state. All visual references and state colors are authored in the scene.
    [DefaultExecutionOrder(320)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinMergeSwitch")] public sealed class PenguinMergeSwitch : MonoBehaviour
    {
        public static readonly Color OffColor=new Color32(201,56,65,255),OnColor=new Color32(30,151,82,255);
        [SerializeField] OnOff owner;
        [SerializeField] Image track;
        [SerializeField] RectTransform thumb;
        [SerializeField] TMP_Text label;
        public Color DisabledColor=OffColor,EnabledColor=OnColor;
        public float TransitionSeconds=.2f,Inset=7;
        float phase;bool initialized;
        public RectTransform Thumb=>thumb;
        void Awake(){if(owner!=null&&track!=null&&thumb!=null&&label!=null)Initialize();}
        void Initialize(){initialized=true;phase=owner.IsOn?1:0;Draw();}
        public void Configure(Sprite panel,Sprite circle)
        {
            if(initialized)return;
            owner=GetComponent<OnOff>();track=GetComponent<Image>();
            var rect=(RectTransform)transform;track.sprite=panel;track.type=Image.Type.Sliced;track.color=DisabledColor;
            var go=new GameObject("SwitchThumb",typeof(RectTransform),typeof(Image));thumb=(RectTransform)go.transform;thumb.SetParent(transform,false);thumb.sizeDelta=Vector2.one*(rect.rect.height-14);thumb.anchorMin=thumb.anchorMax=Vector2.one*.5f;
            var image=go.GetComponent<Image>();image.sprite=circle;image.color=Color.white;image.raycastTarget=false;
            var source=GetComponentInChildren<TMP_Text>(true);var textGo=new GameObject("SwitchState",typeof(RectTransform),typeof(TextMeshProUGUI));textGo.transform.SetParent(transform,false);label=textGo.GetComponent<TextMeshProUGUI>();label.font=source!=null?source.font:TMP_Settings.defaultFontAsset;label.fontSize=24;label.alignment=TextAlignmentOptions.Center;label.color=Color.white;label.raycastTarget=false;label.rectTransform.sizeDelta=new Vector2(rect.rect.width*.58f,rect.rect.height);
            foreach(var root in new[]{owner.On_obj,owner.Off_obj})if(root!=null)foreach(var g in root.GetComponentsInChildren<Graphic>(true))g.enabled=false;
            Initialize();
        }
        void LateUpdate(){if(!initialized)return;phase=Mathf.MoveTowards(phase,owner.IsOn?1:0,Time.unscaledDeltaTime/Mathf.Max(.001f,TransitionSeconds));Draw();}
        void Draw()
        {
            var rect=(RectTransform)transform;float distance=(rect.rect.width-thumb.sizeDelta.x)*.5f-Inset;
            float smooth=phase*phase*(3-2*phase);thumb.anchoredPosition=new Vector2(Mathf.Lerp(-distance,distance,smooth),thumb.anchoredPosition.y);track.color=Color.Lerp(DisabledColor,EnabledColor,smooth);
            WeaponText.Set(label,owner.IsOn?"开启":"关闭");label.rectTransform.anchoredPosition=new Vector2(owner.IsOn?-distance*.52f:distance*.52f,label.rectTransform.anchoredPosition.y);
        }
    }
}
