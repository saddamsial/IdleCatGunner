using UnityEngine;
using UnityEngine.UI;
namespace CatGunner.Recovery
{
    // Original tutorial owns activation, target anchors and pulsing scale.
    // Only a child visual flips above the target when the old hand would clip.
    public sealed class PenguinGuidePointer:MonoBehaviour
    {
        private Image source,visual;private bool oldEnabled;private Canvas canvas;private readonly Vector3[] corners=new Vector3[4];
        public Image Visual=>visual;
        public void Configure(Image original,Sprite sprite,Canvas owner)
        {
            source=original;oldEnabled=source.enabled;source.enabled=false;canvas=owner;
            var go=new GameObject("Penguin guide visual",typeof(RectTransform),typeof(Image));go.layer=source.gameObject.layer;
            var rt=(RectTransform)go.transform;rt.SetParent(source.transform,false);rt.anchorMin=rt.anchorMax=rt.pivot=Vector2.one*.5f;rt.sizeDelta=source.rectTransform.rect.size;
            visual=go.GetComponent<Image>();visual.sprite=sprite;visual.preserveAspect=true;visual.raycastTarget=false;visual.color=source.color;LateUpdate();
        }
        private void LateUpdate()
        {
            if(source==null||visual==null)return;source.enabled=false;source.rectTransform.GetWorldCorners(corners);
            var camera=canvas.renderMode==RenderMode.ScreenSpaceOverlay?null:canvas.worldCamera;
            float low=float.MaxValue;foreach(var corner in corners)low=Mathf.Min(low,RectTransformUtility.WorldToScreenPoint(camera,corner).y);
            bool above=low<8;visual.rectTransform.localRotation=Quaternion.Euler(0,0,above?180:0);visual.rectTransform.anchoredPosition=above?new Vector2(0,source.rectTransform.rect.height):Vector2.zero;
        }
        private void OnDestroy(){if(source!=null)source.enabled=oldEnabled;if(visual!=null)Destroy(visual.gameObject);}
    }
}
