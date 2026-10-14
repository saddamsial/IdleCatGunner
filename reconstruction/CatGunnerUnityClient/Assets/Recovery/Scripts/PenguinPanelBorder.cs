using UnityEngine;
using UnityEngine.UI;
namespace CatGunner.Recovery
{
    // A hollow rounded frame: independent of panel tint, with no input surface.
    public sealed class PenguinPanelBorder : MaskableGraphic
    {
        [SerializeField] float thickness=3;
        public float Thickness { get => thickness; set { thickness=value; SetVerticesDirty(); } }
        public void Configure(float width,Color ink){thickness=width;color=ink;raycastTarget=false;SetVerticesDirty();}
        protected override void OnPopulateMesh(VertexHelper vh)
        {
            vh.Clear();var r=GetPixelAdjustedRect();
            if(r.width<=0||r.height<=0)return;
            float radius=Mathf.Min(12,Mathf.Min(r.width,r.height)*.5f);
            float stroke=Mathf.Min(thickness,radius),inner=radius-stroke;
            var centres=new[]{new Vector2(r.xMax-radius,r.yMin+radius),new Vector2(r.xMax-radius,r.yMax-radius),new Vector2(r.xMin+radius,r.yMax-radius),new Vector2(r.xMin+radius,r.yMin+radius)};
            const int steps=8,count=4*(steps+1);
            for(int corner=0;corner<4;corner++)for(int n=0;n<=steps;n++)
            {
                float angle=(-90+corner*90+n*90f/steps)*Mathf.Deg2Rad;
                var direction=new Vector2(Mathf.Cos(angle),Mathf.Sin(angle));
                vh.AddVert(centres[corner]+direction*radius,color,Vector2.zero);
                vh.AddVert(centres[corner]+direction*inner,color,Vector2.zero);
            }
            for(int n=0;n<count;n++){int a=n*2,b=((n+1)%count)*2;vh.AddTriangle(a,b,a+1);vh.AddTriangle(a+1,b,b+1);}
        }
    }
}
