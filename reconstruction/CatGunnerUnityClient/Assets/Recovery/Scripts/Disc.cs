using UnityEngine;
namespace Shapes
{
    // Narrow local rendering adapter on the original Shapes.Disc identity.
    // Retains its original transform/radius/thickness/color and radians field.
    // Commercial Shapes shader/plugin and gradient/dashes are not recovered.
    public sealed class Disc : MonoBehaviour
    {
        public Color color=Color.white;
        public int type;
        public float radius=1,thickness=.1f,angRadiansStart,angRadiansEnd;
        private Mesh mesh;
        public float AngRadiansEnd {get=>angRadiansEnd;set{angRadiansEnd=value;if(Application.isPlaying)Rebuild();}}
        private void OnEnable(){if(Application.isPlaying)Rebuild();}
        private void Rebuild()
        {
            var filter=GetComponent<MeshFilter>();if(filter==null)return;if(mesh==null){mesh=new Mesh{name="Recovered Disc compatibility geometry"};filter.sharedMesh=mesh;}
            float arc=Mathf.Clamp(angRadiansEnd-angRadiansStart,0,Mathf.PI*2);int segments=128;float inner=type==0||type==2?0:Mathf.Max(0,radius-thickness*.5f),outer=type==0||type==2?radius:radius+thickness*.5f;
            var vertices=new Vector3[(segments+1)*2];var colors=new Color[vertices.Length];var triangles=new int[segments*6];
            for(int i=0;i<=segments;i++){float a=angRadiansStart+arc*i/segments;var direction=new Vector3(Mathf.Cos(a),Mathf.Sin(a),0);vertices[i*2]=direction*inner;vertices[i*2+1]=direction*outer;colors[i*2]=colors[i*2+1]=color;if(i<segments){int n=i*6,k=i*2;triangles[n]=k;triangles[n+1]=k+1;triangles[n+2]=k+3;triangles[n+3]=k;triangles[n+4]=k+3;triangles[n+5]=k+2;}}
            mesh.Clear();mesh.vertices=vertices;mesh.colors=colors;mesh.triangles=triangles;mesh.RecalculateBounds();mesh.RecalculateNormals();
        }
        private void OnDestroy(){if(mesh!=null)Destroy(mesh);}
    }
}
