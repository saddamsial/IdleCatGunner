using System.Linq;
using UnityEngine;
using UnityEngine.UI;
namespace CatGunner.Recovery
{
    // Keep controls in SafeArea; extend the original sliced progress backgrounds
    // upward into the cutout. Their fill/text retain the original visible row.
    public sealed class RecoveryMobileViewport : MonoBehaviour
    {
        sealed class Bar
        {
            public Image Image;public float Height;public Vector2 Position,Size;
            public Bar(Image image)
            {
                Image=image;var root=image.rectTransform;Height=root.rect.height;Position=root.anchoredPosition;Size=root.sizeDelta;
                foreach(var child in root.Cast<Transform>().OfType<RectTransform>())
                {
                    float y=child.localPosition.y+Height,height=child.rect.height;
                    child.anchorMin=new Vector2(child.anchorMin.x,0);child.anchorMax=new Vector2(child.anchorMax.x,0);
                    child.sizeDelta=new Vector2(child.sizeDelta.x,height);child.anchoredPosition=new Vector2(child.anchoredPosition.x,y);
                }
            }
            public void Extend(float inset)
            {
                Image.rectTransform.sizeDelta=new Vector2(Size.x,Height+inset);
                Image.rectTransform.anchoredPosition=Position+new Vector2(0,inset);
            }
        }
        RectTransform safe,canvas;Bar[] bars;
        public Image ProgressBackdrop {get;private set;}
        Rect lastArea;Vector2Int lastSize;
        public int Revision {get;private set;}
        public static Rect Normalized(Rect area,int width,int height)
        {
            if(width<=0||height<=0)return new Rect(0,0,1,1);
            float x=Mathf.Clamp01(area.xMin/width),y=Mathf.Clamp01(area.yMin/height),right=Mathf.Clamp01(area.xMax/width),top=Mathf.Clamp01(area.yMax/height);
            if(right<=x||top<=y)return new Rect(0,0,1,1);return Rect.MinMaxRect(x,y,right,top);
        }
        public void Bind(RectTransform root)
        {
            safe=root;canvas=(RectTransform)safe.GetComponentInParent<Canvas>().rootCanvas.transform;
            if(bars==null)
            {
                bars=safe.GetComponentsInChildren<Image>(true).Where(i=>
                    (i.name=="Value_Slider"||i.name=="Time_Slider"||i.name=="Mine_Slider"||i.name=="Monster_Slider")&&
                    Mathf.Abs(i.rectTransform.rect.height-37)<.1f&&i.rectTransform.rect.width>900&&
                    i.rectTransform.anchorMin.y==1&&i.rectTransform.anchorMax.y==1&&i.rectTransform.pivot.y==1&&Mathf.Abs(i.rectTransform.anchoredPosition.y)<.1f)
                    .Select(i=>new Bar(i)).ToArray();
                ProgressBackdrop=safe.Find("Main_UI/Value_Slider").GetComponent<Image>();
            }
            Refresh(Screen.safeArea,Screen.width,Screen.height,true);
        }
        public void Refresh(Rect area,int width,int height,bool force=false)
        {
            if(safe==null||!force&&area==lastArea&&lastSize==new Vector2Int(width,height))return;
            var rect=Normalized(area,width,height);safe.anchorMin=rect.min;safe.anchorMax=rect.max;safe.offsetMin=safe.offsetMax=Vector2.zero;
            float inset=canvas.rect.height*(1-rect.yMax);foreach(var bar in bars)bar.Extend(inset);
            lastArea=area;lastSize=new Vector2Int(width,height);Revision++;
        }
        void Update()=>Refresh(Screen.safeArea,Screen.width,Screen.height);
        void OnApplicationFocus(bool focused){if(focused)Refresh(Screen.safeArea,Screen.width,Screen.height,true);}
    }
}
