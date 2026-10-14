using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
namespace CatGunner.Runtime
{
    // UI tail flex: does not move the fish's hit target or affect drag/fusion.
    public sealed class PenguinFishSwim : BaseMeshEffect
    {
        float age;readonly List<UIVertex> source=new List<UIVertex>();
        protected override void Awake(){base.Awake();age=transform.GetSiblingIndex()*.73f;}
        void Update(){age+=Time.unscaledDeltaTime;graphic.SetVerticesDirty();}
        public override void ModifyMesh(VertexHelper vh)
        {
            if(!IsActive()||vh.currentVertCount==0)return;source.Clear();vh.GetUIVertexStream(source);
            float minX=float.MaxValue,minY=float.MaxValue,maxX=float.MinValue,maxY=float.MinValue;
            Vector2 uvMin=Vector2.one*float.MaxValue,uvMax=Vector2.one*float.MinValue;
            foreach(var v in source){minX=Mathf.Min(minX,v.position.x);maxX=Mathf.Max(maxX,v.position.x);minY=Mathf.Min(minY,v.position.y);maxY=Mathf.Max(maxY,v.position.y);uvMin=Vector2.Min(uvMin,v.uv0);uvMax=Vector2.Max(uvMax,v.uv0);}
            const int cols=16,rows=4;vh.Clear();float height=maxY-minY;
            for(int y=0;y<=rows;y++)for(int x=0;x<=cols;x++)
            {
                float u=(float)x/cols,v=(float)y/rows,tail=Mathf.SmoothStep(.52f,1,u);
                var vertex=UIVertex.simpleVert;vertex.color=graphic.color;vertex.uv0=new Vector2(Mathf.Lerp(uvMin.x,uvMax.x,u),Mathf.Lerp(uvMin.y,uvMax.y,v));
                vertex.position=new Vector3(Mathf.Lerp(minX,maxX,u),Mathf.Lerp(minY,maxY,v)+Mathf.Sin(age*9-u*3)*height*.065f*tail,0);vh.AddVert(vertex);
            }
            for(int y=0;y<rows;y++)for(int x=0;x<cols;x++){int a=y*(cols+1)+x;vh.AddTriangle(a,a+cols+1,a+1);vh.AddTriangle(a+1,a+cols+1,a+cols+2);}
        }
    }
}
