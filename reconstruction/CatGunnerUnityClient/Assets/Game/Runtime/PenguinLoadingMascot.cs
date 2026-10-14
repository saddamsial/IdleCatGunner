using UnityEngine;
namespace CatGunner.Runtime
{
    // Shared layout, distinct unscaled-time motion for the two status screens.
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinLoadingMascot")] public sealed class PenguinLoadingMascot : MonoBehaviour
    {
        public enum Motion { Walking, Battling }
        public bool Authored;
        [SerializeField] Canvas canvas;
        RectTransform rect;[SerializeField] RectTransform background, title, shadow;
        [SerializeField] Motion motion;
        UnityEngine.UI.Image image;
        [SerializeField] Sprite artwork;
        Vector2 authoredPosition,authoredSize;Vector3 authoredScale;Quaternion authoredRotation;
        float elapsed;
        Pose originalRect, originalTitle, originalShadow;
        readonly Vector3[] corners = new Vector3[4];

        sealed class Pose
        {
            readonly RectTransform rect;
            readonly Transform parent;
            readonly int sibling;
            readonly Vector2 min, max, pivot, position, size;
            readonly Vector3 scale;
            readonly Quaternion rotation;
            public Pose(RectTransform target)
            {
                rect=target;parent=rect.parent;sibling=rect.GetSiblingIndex();
                min=rect.anchorMin;max=rect.anchorMax;pivot=rect.pivot;
                position=rect.anchoredPosition;size=rect.sizeDelta;
                scale=rect.localScale;rotation=rect.localRotation;
            }
            public void Restore()
            {
                if(rect==null||parent==null)return;
                rect.SetParent(parent,false);rect.SetSiblingIndex(sibling);
                rect.anchorMin=min;rect.anchorMax=max;rect.pivot=pivot;
                rect.anchoredPosition=position;rect.sizeDelta=size;
                rect.localScale=scale;rect.localRotation=rotation;
            }
        }

        public void Configure(Canvas owner, RectTransform backdrop, RectTransform caption,
            RectTransform ground, Motion animation, Sprite sprite)
        {
            canvas=owner;rect=(RectTransform)transform;background=backdrop;
            title=caption;shadow=ground;motion=animation;
            image=GetComponent<UnityEngine.UI.Image>();artwork=sprite;
            originalRect=new Pose(rect);
            if(title!=null)originalTitle=new Pose(title);
            if(shadow!=null)originalShadow=new Pose(shadow);
            rect.SetParent(background,false);
            rect.anchorMin=rect.anchorMax=rect.pivot=new Vector2(.5f,.5f);
            if(shadow!=null)
            {
                shadow.SetParent(background,false);
                shadow.anchorMin=shadow.anchorMax=shadow.pivot=new Vector2(.5f,.5f);
                shadow.localScale=Vector3.one;
                shadow.SetSiblingIndex(rect.GetSiblingIndex());
            }
            LateUpdate();
        }
        void Awake()
        {
            if(!Authored)return;
            rect=(RectTransform)transform;image=GetComponent<UnityEngine.UI.Image>();
            authoredPosition=rect.anchoredPosition;authoredSize=rect.sizeDelta;
            authoredScale=rect.localScale;authoredRotation=rect.localRotation;
        }
        void OnEnable(){elapsed=0;}
        void LateUpdate()
        {
            if(canvas==null||rect==null||background==null)return;
            // EcoMode selects a gameplay skin on opening; status illustrations
            // share the same artwork so transparent padding cannot change size.
            if(!Authored&&image!=null&&artwork!=null){image.sprite=artwork;image.preserveAspect=true;image.raycastTarget=false;}
            elapsed+=Time.unscaledDeltaTime;
            float height=Authored?authoredSize.y:Mathf.Min(205,((RectTransform)canvas.transform).rect.height*.11f);
            if(!Authored)rect.sizeDelta=new Vector2(height*170/205,height);
            float x=0, bob=0, angle=0, stretch=0;
            if(motion==Motion.Walking)
            {
                float step=elapsed*9;
                x=Mathf.Sin(step)*height*.018f;
                bob=Mathf.Abs(Mathf.Sin(step))*height*.018f;
                angle=Mathf.Sin(step)*4.5f;
            }
            else
            {
                // A short recoil followed by a slower return to the ready pose.
                float phase=Mathf.Repeat(elapsed,1.15f);
                float recoil=phase<.28f?Mathf.Sin(phase/.28f*Mathf.PI):0;
                x=-recoil*height*.025f;
                bob=Mathf.Sin(elapsed*3.5f)*height*.008f;
                angle=-recoil*4;
                stretch=Mathf.Sin(elapsed*3.5f)*.012f;
            }
            rect.anchoredPosition=(Authored?authoredPosition:new Vector2(0,-20))+new Vector2(x,bob);
            rect.localScale=Vector3.Scale(Authored?authoredScale:Vector3.one,new Vector3(1-stretch,1+stretch,1));
            rect.localRotation=(Authored?authoredRotation:Quaternion.identity)*Quaternion.Euler(0,0,angle);
            if(!Authored&&shadow!=null)
            {
                shadow.sizeDelta=new Vector2(height*.6f,height*.14f);
                shadow.anchoredPosition=new Vector2(0,-20-height*.44f);
            }
            if(!Authored&&title!=null)
            {
                title.GetWorldCorners(corners);
                float lo=float.MaxValue;
                foreach(var corner in corners)
                {float y=background.InverseTransformPoint(corner).y;lo=Mathf.Min(lo,y);}
                // Reserve the full motion envelope, then a 24-unit text gap.
                float desiredBottom=-20+height*.5f+16+24;
                var position=background.InverseTransformPoint(title.position);
                position.x=0;position.y+=desiredBottom-lo;
                title.position=background.TransformPoint(position);
            }
        }
        void OnDestroy(){if(Authored)return;originalShadow?.Restore();originalTitle?.Restore();originalRect?.Restore();}
    }
}
