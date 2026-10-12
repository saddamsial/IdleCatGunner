using UnityEngine;
namespace CatGunner.Recovery
{
    // Local mobile presentation adapter. Retain original SafeArea hierarchy;
    // leave camera/world and Canvas-wide backgrounds at full screen size.
    public sealed class RecoveryMobileViewport : MonoBehaviour
    {
        RectTransform safe;
        Rect lastArea;
        Vector2Int lastSize;
        public int Revision { get; private set; }
        public static Rect Normalized(Rect area, int width, int height)
        {
            if(width<=0||height<=0) return new Rect(0,0,1,1);
            float x=Mathf.Clamp01(area.xMin/width),y=Mathf.Clamp01(area.yMin/height);
            float right=Mathf.Clamp01(area.xMax/width),top=Mathf.Clamp01(area.yMax/height);
            if(right<=x||top<=y)return new Rect(0,0,1,1);
            return Rect.MinMaxRect(x,y,right,top);
        }
        public void Bind(RectTransform root){safe=root;Refresh(Screen.safeArea,Screen.width,Screen.height,true);}
        public void Refresh(Rect area,int width,int height,bool force=false)
        {
            if(safe==null||!force&&area==lastArea&&lastSize==new Vector2Int(width,height))return;
            var rect=Normalized(area,width,height);safe.anchorMin=rect.min;safe.anchorMax=rect.max;
            safe.offsetMin=Vector2.zero;safe.offsetMax=Vector2.zero;
            lastArea=area;lastSize=new Vector2Int(width,height);Revision++;
        }
        void Update()=>Refresh(Screen.safeArea,Screen.width,Screen.height);
        void OnApplicationFocus(bool focused){if(focused)Refresh(Screen.safeArea,Screen.width,Screen.height,true);}
    }
}
