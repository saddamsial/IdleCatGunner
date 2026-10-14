using UnityEngine;
namespace CatGunner.Runtime
{
    // Camera-facing mesh deforms paws, head and tail independently. Follow
    // displacement is projected through the same camera as the displayed actor.
    [DefaultExecutionOrder(360)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinPetMotion")] public sealed class PenguinPetMotion:MonoBehaviour
    {
        SpriteRenderer anchor;Sprite previous;Sprite[] directions;Mesh mesh;MeshRenderer renderer;Material material;Vector3[] rest,vertices;Vector2[] uv;Pet pet;Vector3 lastPosition;float phase,blend;
        public enum TravelDirection { Down, Right, Up, Left }
        public TravelDirection Direction {get;private set;}
        public Renderer Renderer=>renderer;
        const int Columns=16,Rows=20;
        public Mesh Mesh=>mesh;
        public void Configure(SpriteRenderer source,Pet owner,Sprite[] views=null)
        {
            anchor=source;pet=owner;directions=views;lastPosition=pet.transform.position;
            var go=new GameObject("Animated paws head and tail",typeof(MeshFilter),typeof(MeshRenderer));go.transform.SetParent(transform,false);mesh=new Mesh{name="Polar pet deform grid"};go.GetComponent<MeshFilter>().sharedMesh=mesh;renderer=go.GetComponent<MeshRenderer>();material=new Material(source.sharedMaterial);renderer.sharedMaterial=material;renderer.sortingLayerID=source.sortingLayerID;renderer.sortingOrder=source.sortingOrder;
        }
        public static TravelDirection DirectionFor(Vector3 movement,Camera camera)
        {
            float x=Vector3.Dot(movement,camera.transform.right),y=Vector3.Dot(movement,camera.transform.up);
            return Mathf.Abs(x)>Mathf.Abs(y)?(x>0?TravelDirection.Right:TravelDirection.Left):(y>0?TravelDirection.Up:TravelDirection.Down);
        }
        void Update()
        {
            if(pet==null||Camera.main==null||Time.deltaTime<=0||Time.timeScale<=0)return;
            var movement=pet.transform.position-lastPosition;lastPosition=pet.transform.position;
            var velocity=pet.rb.linearVelocity;velocity.y=0;
            if(velocity.sqrMagnitude>.16f)movement=velocity;
            if(movement.sqrMagnitude>.00001f)Direction=DirectionFor(movement,Camera.main);
        }
        public Sprite SpriteFor(int animal,Sprite fallback)
        {
            int column=Direction==TravelDirection.Up?2:Direction==TravelDirection.Down?0:1;
            int index=animal*3+column;
            return directions!=null&&index<directions.Length&&directions[index]!=null?directions[index]:fallback;
        }
        void LateUpdate()
        {
            if(anchor==null||anchor.sprite==null||Camera.main==null||Time.timeScale<=0)return;
            if(previous!=anchor.sprite)Build(anchor.sprite);
            anchor.enabled=false;phase+=Time.deltaTime;
            blend=Mathf.MoveTowards(blend,pet.IsMoving||pet.rb.linearVelocity.sqrMagnitude>.16f?1:0,Time.deltaTime*6);
            // Real side and rear views; only the side view is mirrored for left.
            float mirror=Direction==TravelDirection.Left?-1:1;
            float h=previous.bounds.size.y,w=previous.bounds.size.x;
            for(int i=0;i<vertices.Length;i++)
            {
                var p=rest[i];float x=(float)(i%(Columns+1))/Columns,y=(float)(i/(Columns+1))/Rows;
                float paw=1-Mathf.SmoothStep(0,.34f,y),head=Mathf.SmoothStep(.5f,.8f,y),tail=Mathf.SmoothStep(.26f,.48f,Mathf.Abs(x-.5f))*(1-head);
                p.y+=Mathf.Sin(phase*10+(x<.5f?0:Mathf.PI))*h*.035f*paw*blend;
                p.x+=Mathf.Sin(phase*3.1f)*w*.014f*tail;
                p.y+=Mathf.Sin(phase*2.5f)*h*.012f*head*(1-blend*.6f);p.x*=mirror;vertices[i]=p;
            }
            mesh.vertices=vertices;mesh.RecalculateBounds();
        }
        void Build(Sprite s)
        {
            previous=s;material.mainTexture=s.texture;rest=new Vector3[(Columns+1)*(Rows+1)];vertices=new Vector3[rest.Length];uv=new Vector2[rest.Length];var bounds=s.bounds;var r=s.rect;var texture=s.texture;
            for(int y=0;y<=Rows;y++)for(int x=0;x<=Columns;x++){int i=y*(Columns+1)+x;float u=(float)x/Columns,v=(float)y/Rows;rest[i]=new Vector3(Mathf.Lerp(bounds.min.x,bounds.max.x,u),Mathf.Lerp(bounds.min.y,bounds.max.y,v),0);uv[i]=new Vector2((r.x+r.width*u)/texture.width,(r.y+r.height*v)/texture.height);}
            var triangles=new int[Columns*Rows*6];int n=0;
            for(int y=0;y<Rows;y++)for(int x=0;x<Columns;x++){int a=y*(Columns+1)+x;triangles[n++]=a;triangles[n++]=a+Columns+1;triangles[n++]=a+1;triangles[n++]=a+1;triangles[n++]=a+Columns+1;triangles[n++]=a+Columns+2;}
            mesh.Clear();mesh.vertices=rest;mesh.uv=uv;mesh.triangles=triangles;mesh.colors=System.Array.ConvertAll(rest,_=>Color.white);mesh.RecalculateBounds();
        }
        void OnDestroy(){if(mesh!=null)Destroy(mesh);if(material!=null)Destroy(material);}
    }
}
