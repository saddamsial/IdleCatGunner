using UnityEngine;
using UnityEngine.UI;
namespace CatGunner.Recovery
{
    // The original tutorial owns activation and pulse. The fingertip is the
    // visual pivot, pinned to the actual button even while its parent scales.
    [DefaultExecutionOrder(330)]
    public sealed class PenguinGuidePointer:MonoBehaviour
    {
        [SerializeField] Image source,visual;bool oldEnabled;[SerializeField] Canvas canvas;public RectTransform Target;
        public bool Authored;
        public float AimAngle;
        public Image Visual=>visual;
        [SerializeField] bool straightUp;
        public bool PointStraightUp { get=>straightUp; set=>straightUp=value; }
        public void Configure(Image original,Sprite sprite,Canvas owner,RectTransform target=null,bool pointStraightUp=false)
        {
            source=original;oldEnabled=source.enabled;source.enabled=false;canvas=owner;Target=target;straightUp=pointStraightUp;AimAngle=straightUp?0:45;
            var go=new GameObject("Penguin guide visual",typeof(RectTransform),typeof(Image));go.layer=source.gameObject.layer;
            var rt=(RectTransform)go.transform;rt.SetParent(source.transform,false);rt.anchorMin=rt.anchorMax=Vector2.one*.5f;rt.pivot=sprite.pivot/sprite.rect.size;rt.sizeDelta=new Vector2(112,132);
            visual=go.GetComponent<Image>();visual.sprite=sprite;visual.preserveAspect=false;visual.raycastTarget=false;visual.color=Color.white;LateUpdate();
        }
        void LateUpdate()
        {
            if(source==null||visual==null)return;source.enabled=false;
            // Keep the palm below the button; the right-edge challenge cue is upright.
            // Upright challenge fingertip sits at the bottom edge, below its caption.
            // Other cues keep their approved upper-quarter aim and diagonal pose.
            var point=Target!=null?Target.TransformPoint(Target.rect.center+Vector2.up*Target.rect.height*(straightUp?-.45f:.25f)):source.rectTransform.position;
            visual.rectTransform.rotation=canvas.transform.rotation*Quaternion.Euler(0,0,AimAngle);
            visual.rectTransform.position=point;
        }
        void OnDestroy(){if(Authored)return;if(source!=null)source.enabled=oldEnabled;if(visual!=null)Destroy(visual.gameObject);}
    }
}
