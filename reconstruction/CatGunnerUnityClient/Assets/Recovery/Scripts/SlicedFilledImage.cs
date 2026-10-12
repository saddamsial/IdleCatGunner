using UnityEngine;
using UnityEngine.Sprites;
using UnityEngine.UI;

// Original MaskableGraphic base and serialized field names. Nine-slice plus
// directional cell clipping follows the matching native renderer. Atlas/material
// tracking and alpha hit testing remain a public Unity compatibility adapter.
public sealed class SlicedFilledImage : MaskableGraphic
{
    public enum FillDirection { Right=0, Left=1, Up=2, Down=3 }
    [SerializeField] private Sprite m_Sprite;
    [SerializeField] private FillDirection m_FillDirection;
    [SerializeField,Range(0,1)] private float m_FillAmount=1;
    [SerializeField] private bool m_FillCenter=true;
    [SerializeField] private float m_PixelsPerUnitMultiplier=1;
    public Sprite sprite {get=>m_Sprite;set {m_Sprite=value;SetAllDirty();}}
    public FillDirection fillDirection {get=>m_FillDirection;set {m_FillDirection=value;SetVerticesDirty();}}
    public float fillAmount {get=>m_FillAmount;set {float v=Mathf.Clamp01(value);if(v==m_FillAmount)return;m_FillAmount=v;SetVerticesDirty();}}
    public override Texture mainTexture => m_Sprite!=null?m_Sprite.texture:Texture2D.whiteTexture;
    protected override void OnPopulateMesh(VertexHelper vh)
    {
        if(m_Sprite==null){base.OnPopulateMesh(vh);return;}
        vh.Clear();
        if(m_FillAmount<.001f)return;
        Rect r=GetPixelAdjustedRect();
        Vector4 outer=DataUtility.GetOuterUV(m_Sprite),inner=DataUtility.GetInnerUV(m_Sprite),pad=DataUtility.GetPadding(m_Sprite);
        bool sliced=m_Sprite.border.sqrMagnitude>0;
        float units=m_Sprite.pixelsPerUnit/(canvas!=null?canvas.referencePixelsPerUnit:100)*m_PixelsPerUnitMultiplier;
        units=Mathf.Max(.0001f,units);
        Vector4 b=m_Sprite.border/units;
        Rect original=rectTransform.rect;
        for(int axis=0;axis<2;axis++)
        {
            if(original.size[axis]!=0){float scale=r.size[axis]/original.size[axis];b[axis]*=scale;b[axis+2]*=scale;}
            float total=b[axis]+b[axis+2];
            if(total>r.size[axis] && total!=0){float scale=r.size[axis]/total;b[axis]*=scale;b[axis+2]*=scale;}
        }
        float[] xs,ys,us,vs;
        if(sliced)
        {
            pad/=units;
            xs=new[]{r.x+pad.x,r.x+b.x,r.xMax-b.z,r.xMax-pad.z};
            ys=new[]{r.y+pad.y,r.y+b.y,r.yMax-b.w,r.yMax-pad.w};
            us=new[]{outer.x,inner.x,inner.z,outer.z};vs=new[]{outer.y,inner.y,inner.w,outer.w};
        }
        else
        {
            Vector2 size=m_Sprite.rect.size;
            xs=new[]{r.x+r.width*pad.x/size.x,r.xMax-r.width*pad.z/size.x};
            ys=new[]{r.y+r.height*pad.y/size.y,r.yMax-r.height*pad.w/size.y};
            us=new[]{outer.x,outer.z};vs=new[]{outer.y,outer.w};
        }
        bool horizontal=(int)m_FillDirection<2;
        float low=horizontal?xs[0]:ys[0],high=horizontal?xs[xs.Length-1]:ys[ys.Length-1];
        float boundary=Mathf.Lerp(low,high,m_FillDirection==FillDirection.Left || m_FillDirection==FillDirection.Down?1-m_FillAmount:m_FillAmount);
        for(int x=0;x<xs.Length-1;x++)for(int y=0;y<ys.Length-1;y++)
        {
            if(sliced && !m_FillCenter && x==1 && y==1)continue;
            float x0=xs[x],x1=xs[x+1],y0=ys[y],y1=ys[y+1],u0=us[x],u1=us[x+1],v0=vs[y],v1=vs[y+1];
            if(x1<=x0 || y1<=y0)continue;
            switch(m_FillDirection)
            {
                case FillDirection.Right:if(x0>=boundary)continue;u1=Mathf.Lerp(u0,u1,Mathf.Clamp01((boundary-x0)/(x1-x0)));x1=Mathf.Min(x1,boundary);break;
                case FillDirection.Left:if(x1<=boundary)continue;u0=Mathf.Lerp(u0,u1,Mathf.Clamp01((boundary-x0)/(x1-x0)));x0=Mathf.Max(x0,boundary);break;
                case FillDirection.Up:if(y0>=boundary)continue;v1=Mathf.Lerp(v0,v1,Mathf.Clamp01((boundary-y0)/(y1-y0)));y1=Mathf.Min(y1,boundary);break;
                case FillDirection.Down:if(y1<=boundary)continue;v0=Mathf.Lerp(v0,v1,Mathf.Clamp01((boundary-y0)/(y1-y0)));y0=Mathf.Max(y0,boundary);break;
            }
            int n=vh.currentVertCount;
            vh.AddVert(new Vector3(x0,y0),color,new Vector2(u0,v0));vh.AddVert(new Vector3(x0,y1),color,new Vector2(u0,v1));
            vh.AddVert(new Vector3(x1,y1),color,new Vector2(u1,v1));vh.AddVert(new Vector3(x1,y0),color,new Vector2(u1,v0));
            vh.AddTriangle(n,n+1,n+2);vh.AddTriangle(n+2,n+3,n);
        }
    }
}
