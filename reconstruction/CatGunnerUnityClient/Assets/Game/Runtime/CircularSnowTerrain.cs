using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;

namespace CatGunner.Runtime
{
    [RequireComponent(typeof(CircularForestMap))]
    [DefaultExecutionOrder(210)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "CircularSnowTerrain")] public sealed class CircularSnowTerrain : MonoBehaviour
    {
        public Material SnowMaterial,WallMaterial,LowerMaterial,DecorationMaterial;
        public float WallHeight=10,WallWidth=4.5f;
        private readonly List<Mesh> meshes=new List<Mesh>();
        private float radius;
        private Transform platform;
        private SpriteRenderer floor;
        private int layer;
        private const int Segments=192;
        private sealed class Geometry
        {
            public readonly List<Vector3> Vertices=new List<Vector3>();
            public readonly List<Color> Colors=new List<Color>();
            public readonly List<Vector2> UV=new List<Vector2>();
            public readonly List<int> Triangles=new List<int>();
        }
        private void Start()
        {
            var forest=GetComponent<Tree_manager>();
            floor=forest.Map_obj.transform.Find("Circular forest ground").GetComponent<SpriteRenderer>();layer=floor.sortingLayerID;
            var root=new GameObject("Raised snow platform");root.transform.SetParent(forest.Map_obj.transform,false);platform=root.transform;
            RefreshRadius();
        }
        public void RefreshRadius()
        {
            // First wave may be placed before this component's Start.
            if(platform==null)return;
            var circle=GetComponent<Tree_manager>().CircularMap;
            if(platform.childCount>0&&Mathf.Approximately(radius,circle.Radius))return;
            foreach(Transform child in platform){child.gameObject.SetActive(false);Destroy(child.gameObject);}
            foreach(var mesh in meshes)if(mesh!=null)Destroy(mesh);meshes.Clear();
            radius=circle.Radius;
            var block=new MaterialPropertyBlock();block.SetVector("_Center",circle.Center);block.SetFloat("_Radius",circle.Radius);
            floor.sharedMaterial=SnowMaterial;floor.SetPropertyBlock(block);
            // Geometry and air walls rebuild together at wave transitions.
            const float extent=300;
            var ground=new Geometry();ground.Vertices.AddRange(new[]{new Vector3(-extent,-WallHeight,-extent),new Vector3(-extent,-WallHeight,extent),new Vector3(extent,-WallHeight,extent),new Vector3(extent,-WallHeight,-extent)});ground.Triangles.AddRange(new[]{0,1,2,0,2,3});
            Surface(platform,"Grey lower floor",ground,LowerMaterial,-40);
            BuildContact(platform);BuildCliff(platform);BuildSnowCap(platform,circle.Center);BuildDebris(platform);BuildBarriers(platform,circle.Radius);
        }
        // Wind-carved bulges plus small snow scallops. The visual overhang
        // always contains the existing playable disk.
        private float Edge(float a)=>Mathf.Max(radius+.3f,radius+3.3f+1.9f*Mathf.Sin(3*a+.7f)+1.1f*Mathf.Sin(7*a-1.2f)+.65f*Mathf.Sin(13*a+.2f)+.4f*Mathf.Sin(23*a));
        private float Toe(float a)=>Edge(a)+1.4f+.45f*Mathf.Sin(5*a+1);
        private static Vector3 Polar(float a,float r,float y)=>new Vector3(Mathf.Cos(a)*r,y,Mathf.Sin(a)*r);
        private static void Quad(Geometry g,int a,int b,int c,int d)=>g.Triangles.AddRange(new[]{a,c,b,a,d,c});
        private void BuildCliff(Transform root)
        {
            var g=new Geometry();const int levels=5;
            for(int j=0;j<levels;j++)for(int i=0;i<=Segments;i++)
            {
                float a=i*Mathf.PI*2/Segments,t=(float)j/(levels-1);
                float r=Mathf.Lerp(Toe(a),Edge(a),t)+Mathf.Sin(t*Mathf.PI)*.6f*Mathf.Sin(11*a+.3f);
                g.Vertices.Add(Polar(a,r,Mathf.Lerp(-WallHeight,0,t)));g.UV.Add(new Vector2((float)i/Segments*8,t));
                if(j<levels-1&&i<Segments){int k=j*(Segments+1)+i;Quad(g,k,k+1,k+Segments+2,k+Segments+1);}
            }
            Surface(root,"Raised snow cliff",g,WallMaterial,-37);
        }
        private void BuildSnowCap(Transform root,Vector3 center)
        {
            var g=new Geometry();
            for(int j=0;j<3;j++)for(int i=0;i<=Segments;i++)
            {
                float a=i*Mathf.PI*2/Segments,r=j==0?radius-8:j==1?Edge(a)-.9f:Edge(a)+.65f,y=j==0?.025f:j==1?.10f:-.25f;
                g.Vertices.Add(Polar(a,r,y));
                if(j<2&&i<Segments){int k=j*(Segments+1)+i;Quad(g,k,k+1,k+Segments+2,k+Segments+1);}
            }
            var cap=Surface(root,"Wind-shaped snow edge",g,SnowMaterial,-32);
            var block=new MaterialPropertyBlock();block.SetVector("_Center",center);block.SetFloat("_Radius",radius+20);cap.SetPropertyBlock(block);
            g=new Geometry();
            for(int j=0;j<2;j++)for(int i=0;i<=Segments;i++)
            {
                float a=i*Mathf.PI*2/Segments;
                float hanging=1.4f+.55f*Mathf.Sin(9*a)+.35f*Mathf.Sin(17*a+.3f)+1.1f*Mathf.Pow(Mathf.Max(0,Mathf.Sin(5*a-1)),6);
                g.Vertices.Add(Polar(a,Edge(a)+(j==0?.65f:.48f),j==0?-.24f:-hanging));g.Colors.Add(j==0?new Color(.94f,.98f,1):new Color(.77f,.90f,.95f));
                if(j==0&&i<Segments){int k=i;Quad(g,k,k+1,k+Segments+2,k+Segments+1);}
            }
            Surface(root,"Soft hanging snow",g,DecorationMaterial,-31);
        }
        private void BuildContact(Transform root)
        {
            var g=new Geometry();
            for(int j=0;j<3;j++)for(int i=0;i<=Segments;i++)
            {
                float a=i*Mathf.PI*2/Segments,r=Toe(a)+(j==0?-3:j==1?1:10);
                g.Vertices.Add(Polar(a,r,-WallHeight+.012f)+new Vector3(1.7f,0,-2));g.Colors.Add(new Color(.08f,.18f,.22f,j==0?.28f:j==1?.27f:0));
                if(j<2&&i<Segments){int k=j*(Segments+1)+i;Quad(g,k,k+1,k+Segments+2,k+Segments+1);}
            }
            Surface(root,"Cliff contact shadow",g,DecorationMaterial,-39);g=new Geometry();
            for(int j=0;j<4;j++)for(int i=0;i<=Segments;i++)
            {
                float a=i*Mathf.PI*2/Segments,t=(float)j/3,width=4.4f+1.8f*Mathf.Sin(4*a+.4f)+.8f*Mathf.Sin(11*a);
                g.Vertices.Add(Polar(a,Toe(a)-.3f+t*width,-WallHeight+.04f+Mathf.Sin(t*Mathf.PI)*.55f));g.Colors.Add(new Color(.82f,.90f,.94f,j==0?.62f:j==1?.64f:j==2?.37f:0));
                if(j<3&&i<Segments){int k=j*(Segments+1)+i;Quad(g,k,k+1,k+Segments+2,k+Segments+1);}
            }
            Surface(root,"Snow drift at cliff foot",g,DecorationMaterial,-38);
        }
        private void BuildDebris(Transform root)
        {
            // A private deterministic generator does not consume gameplay RNG.
            var random=new System.Random(78127);var snow=new Geometry();var ice=new Geometry();
            for(int i=0;i<36;i++)
            {
                if(i%5==0)continue;
                float a=(i+(float)random.NextDouble()*.45f)*Mathf.PI*2/36;
                var p=Polar(a,Toe(a)+1.3f+(float)random.NextDouble()*2,-WallHeight+.04f);float size=2.3f+(float)random.NextDouble()*2.8f;
                SnowMound(snow,p,a,size*1.45f,size*.8f,.7f+size*.20f);
                if(i%3==0)SnowMound(snow,p+Polar(a+.25f,3.5f,0),a+.4f,2.6f,1.8f,.85f);
                for(int j=0;j<2;j++)
                {
                    float b=a+((float)random.NextDouble()-.5f)*.11f;var position=Polar(b,Toe(b)+4+(float)random.NextDouble()*7,-WallHeight+.06f);
                    IceChip(ice,position,.7f+(float)random.NextDouble()*1.4f,.65f+(float)random.NextDouble()*1.25f,(float)random.NextDouble()*6.28f);
                }
            }
            Surface(root,"Snow banks at cliff base",snow,DecorationMaterial,-36);Surface(root,"Scattered ice fragments",ice,DecorationMaterial,-36);
        }
        private static void SnowMound(Geometry g,Vector3 p,float angle,float length,float width,float height)
        {
            const int sides=12;int start=g.Vertices.Count;
            for(int ring=0;ring<3;ring++)for(int i=0;i<sides;i++)
            {
                float a=i*Mathf.PI*2/sides,r=ring==0?1.12f:ring==1?.86f:.42f;
                var local=new Vector3(Mathf.Cos(a)*width*r,ring==0?0:ring==1?height*.48f:height*.9f,Mathf.Sin(a)*length*r);
                g.Vertices.Add(p+Quaternion.Euler(0,-angle*Mathf.Rad2Deg,0)*local);g.Colors.Add(new Color(.88f,.95f,.98f,ring==0?0:1));
                if(ring<2)Quad(g,start+ring*sides+i,start+ring*sides+(i+1)%sides,start+(ring+1)*sides+(i+1)%sides,start+(ring+1)*sides+i);
            }
            int peak=g.Vertices.Count;g.Vertices.Add(p+Vector3.up*height);g.Colors.Add(new Color(.94f,.98f,1));
            for(int i=0;i<sides;i++)g.Triangles.AddRange(new[]{start+2*sides+i,peak,start+2*sides+(i+1)%sides});
        }
        private static void IceChip(Geometry g,Vector3 p,float size,float height,float angle)
        {
            var points=new Vector3[6];for(int i=0;i<5;i++)points[i]=p+Polar(angle+i*Mathf.PI*2/5,size*(i%2==0?1:.8f),0);
            points[5]=p+new Vector3(-size*.25f,height,size*.15f);var palette=new[]{new Color(.47f,.76f,.84f),new Color(.68f,.88f,.93f),new Color(.86f,.96f,.99f)};
            for(int i=0;i<5;i++){int start=g.Vertices.Count;g.Vertices.AddRange(new[]{points[i],points[5],points[(i+1)%5]});g.Colors.AddRange(new[]{palette[i%3],palette[(i+1)%3],palette[i%3]});g.Triangles.AddRange(new[]{start,start+1,start+2});}
        }
        private void BuildBarriers(Transform root,float r)
        {
            const int count=64;
            for(int i=0;i<count;i++)
            {
                float angle=(i+.5f)*Mathf.PI*2/count,mid=r+WallWidth*.5f;var go=new GameObject("Platform edge air wall "+i);go.transform.SetParent(root,false);
                go.transform.localPosition=new Vector3(Mathf.Cos(angle)*mid,WallHeight*.5f,Mathf.Sin(angle)*mid);go.transform.localRotation=Quaternion.Euler(0,90-angle*Mathf.Rad2Deg,0);
                go.AddComponent<BoxCollider>().size=new Vector3(2*mid*Mathf.Tan(Mathf.PI/count)*1.02f,WallHeight,WallWidth);
            }
        }
        private MeshRenderer Surface(Transform parent,string name,Geometry g,Material material,int order)
        {
            var mesh=new Mesh{name=name};mesh.vertices=g.Vertices.ToArray();mesh.triangles=g.Triangles.ToArray();if(g.UV.Count>0)mesh.uv=g.UV.ToArray();if(g.Colors.Count>0)mesh.colors=g.Colors.ToArray();mesh.RecalculateNormals();mesh.RecalculateBounds();meshes.Add(mesh);
            var go=new GameObject(name);go.transform.SetParent(parent,false);go.AddComponent<MeshFilter>().sharedMesh=mesh;var renderer=go.AddComponent<MeshRenderer>();renderer.sharedMaterial=material;renderer.sortingLayerID=layer;renderer.sortingOrder=order;renderer.shadowCastingMode=ShadowCastingMode.Off;renderer.receiveShadows=false;return renderer;
        }
        private void OnDestroy(){foreach(var mesh in meshes)if(mesh!=null)Destroy(mesh);}
    }
}
