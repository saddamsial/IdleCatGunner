using System;
using UnityEngine;

namespace CatGunner.Recovery
{
    // Penguin-specific waddle and recoil. Existing movement/Walk intent and
    // successful gun rebound trigger visuals; no combat or save state changes.
    [DefaultExecutionOrder(170)]
    public sealed class PenguinBoneMotion : MonoBehaviour
    {
        public Mesh VisualMesh {get;private set;}
        public MeshRenderer Renderer {get;private set;}
        private const int Columns=24,Rows=28;
        private Vector3[] rest,vertices;
        private Vector2[] uv;
        private float[] footLeft,footRight,flipperLeft,flipperRight,head;
        private Cat hero;
        private float walkPhase,idlePhase,walkBlend,recoilAge=1,lastBounceTime,faceBase;
        private bool lastBouncing;
        public float RecoilStrength {get;private set;}
        public int Shots {get;private set;}
        public Vector3 ShoulderLocal {get;private set;}
        public Vector3 HoldingPointLocal {get;private set;}
        public float BodyHeight=>height;
        public float VictoryStrength {get;private set;}
        public float JumpAmount {get;private set;}
        public int VictoryCount {get;private set;}
        private float victoryAge=2;
        private bool winningBefore;
        private int victoryRound;
        private RecoveryForestClient client;
        private SpriteRenderer anchor;
        private float height;
        private Material material;
        public void Configure(Cat cat,Sprite sprite,Sprite source,SpriteRenderer target)
        {
            anchor=target;hero=cat;faceBase=cat.Face_Pivot_trans.localEulerAngles.z;
            height=sprite.bounds.size.y;
            int count=(Columns+1)*(Rows+1);rest=new Vector3[count];vertices=new Vector3[count];uv=new Vector2[count];
            footLeft=new float[count];footRight=new float[count];flipperLeft=new float[count];flipperRight=new float[count];head=new float[count];
            var colors=new Color[count];var bounds=sprite.bounds;var rect=sprite.rect;
            for(int y=0;y<=Rows;y++)for(int x=0;x<=Columns;x++)
            {
                int i=y*(Columns+1)+x;float u=(float)x/Columns,v=(float)y/Rows;
                rest[i]=new Vector3(Mathf.Lerp(bounds.min.x,bounds.max.x,u),Mathf.Lerp(bounds.min.y,bounds.max.y,v),0);vertices[i]=rest[i];
                uv[i]=new Vector2((rect.x+u*rect.width)/sprite.texture.width,(rect.y+v*rect.height)/sprite.texture.height);colors[i]=Color.white;
                float feet=1-Mathf.SmoothStep(0,1,Mathf.InverseLerp(.1f,.24f,v));
                footLeft[i]=feet*(1-Mathf.SmoothStep(0,1,Mathf.InverseLerp(.43f,.55f,u)));footRight[i]=feet*(1-footLeft[i]/Mathf.Max(feet,.0001f));
                float wingBand=Mathf.SmoothStep(0,1,Mathf.InverseLerp(.12f,.25f,v))*(1-Mathf.SmoothStep(0,1,Mathf.InverseLerp(.51f,.61f,v)));
                flipperLeft[i]=wingBand*(1-Mathf.SmoothStep(0,1,Mathf.InverseLerp(.17f,.35f,u)));
                flipperRight[i]=wingBand*Mathf.SmoothStep(0,1,Mathf.InverseLerp(.73f,.88f,u));
                head[i]=Mathf.SmoothStep(0,1,Mathf.InverseLerp(.52f,.73f,v));
            }
            var indices=new int[Columns*Rows*6];int n=0;
            for(int y=0;y<Rows;y++)for(int x=0;x<Columns;x++)
            {int i=y*(Columns+1)+x;indices[n++]=i;indices[n++]=i+Columns+1;indices[n++]=i+1;indices[n++]=i+1;indices[n++]=i+Columns+1;indices[n++]=i+Columns+2;}
            VisualMesh=new Mesh{name="Penguin animated surface"};VisualMesh.MarkDynamic();VisualMesh.vertices=vertices;VisualMesh.uv=uv;VisualMesh.colors=colors;VisualMesh.triangles=indices;VisualMesh.RecalculateBounds();
            var surface=new GameObject("Penguin animated surface");surface.transform.SetParent(transform,false);
            surface.AddComponent<MeshFilter>().sharedMesh=VisualMesh;
            Renderer=surface.AddComponent<MeshRenderer>();Renderer.sortingLayerID=target.sortingLayerID;Renderer.sortingOrder=target.sortingOrder;
            material=new Material(target.sharedMaterial){name="Penguin animation material"};material.mainTexture=sprite.texture;Renderer.sharedMaterial=material;
            target.enabled=false;BuildGrip(target);
        }
        private void BuildGrip(SpriteRenderer target)
        {
            client=RecoveryForestClient.Instance;
            var config=client!=null?client.GetComponent<PenguinActionAssets>():null;
            if(config!=null&&config.HoldingFlipper!=null)gameObject.AddComponent<PenguinHoldingWing>().Configure(hero,this,target,config.HoldingFlipper);
        }
        public void Celebrate(){victoryAge=0;victoryRound=client!=null?client.RoundsStarted:0;VictoryCount++;}
        private void LateUpdate()
        {
            if(VisualMesh==null)return;
            float dt=Time.deltaTime;
            bool winning=client!=null&&client.Mode==0&&client.WinUI!=null&&client.WinUI.activeInHierarchy;
            if(winning&&!winningBefore)Celebrate();winningBefore=winning;
            if(client!=null&&client.RoundsStarted!=victoryRound)victoryAge=2;
            victoryAge+=dt;
            const float hopDuration=.5f,celebrationDuration=hopDuration*3;
            VictoryStrength=victoryAge<celebrationDuration?Mathf.SmoothStep(0,1,victoryAge/.10f)*(1-Mathf.SmoothStep(0,1,(victoryAge-(celebrationDuration-.10f))/.10f)):0;
            float jumpWave=Mathf.Sin(Mathf.Repeat(victoryAge,hopDuration)/hopDuration*Mathf.PI);
            JumpAmount=VictoryStrength*jumpWave*jumpWave;
            bool walking=hero.anim.GetBool("Walk");
            walkBlend=Mathf.MoveTowards(walkBlend,walking?1:0,dt*7);
            float speed=Mathf.Clamp01(new Vector2(hero.rb.linearVelocity.x,hero.rb.linearVelocity.z).magnitude/Mathf.Max(hero.moveSpeed,.01f));
            walkPhase=Mathf.Repeat(walkPhase+dt*Mathf.Lerp(8,11,speed)*walkBlend,Mathf.PI*2);idlePhase=Mathf.Repeat(idlePhase+dt*3.2f,Mathf.PI*2);
            var bounce=hero.Rebound_bounce;
            if(dt>0 && bounce!=null && bounce.Bouncing && (!lastBouncing||bounce.time+.0001f<lastBounceTime)){recoilAge=0;Shots++;}
            if(bounce!=null){lastBouncing=bounce.Bouncing;lastBounceTime=bounce.time;}
            recoilAge+=dt;
            RecoilStrength=recoilAge<.045f?Mathf.Sin(recoilAge/.045f*Mathf.PI*.5f):recoilAge<.24f?1-Mathf.SmoothStep(0,1,(recoilAge-.045f)/.195f):0;
            float step=Mathf.Sin(walkPhase),stride=walkBlend;
            float sway=step*7.5f*stride;
            float breath=Mathf.Sin(idlePhase)*.012f*(1-stride);
            float landing=VictoryStrength*Mathf.Pow(1-JumpAmount,6)*.045f;
            float sx=1+breath+RecoilStrength*.025f+landing,sy=1-breath-RecoilStrength*.035f-landing;
            float liftL=Mathf.Max(0,step)*height*.09f*stride,liftR=Mathf.Max(0,-step)*height*.09f*stride;
            var leftOffset=new Vector3(step*height*.013f*stride,liftL,0);var rightOffset=new Vector3(-step*height*.013f*stride,liftR,0);
            var rootOffset=new Vector3(-step*height*.018f*stride-RecoilStrength*height*.025f,Mathf.Abs(step)*height*.016f*stride+JumpAmount*height*.18f,0);
            float bodyAngle=sway+RecoilStrength*8+VictoryStrength*Mathf.Sin(victoryAge/hopDuration*Mathf.PI*2)*3;
            float faceAngle=Mathf.Clamp(Mathf.DeltaAngle(faceBase,hero.Face_Pivot_trans.localEulerAngles.z),-20,20)*.25f;
            var bodyRotation=Quaternion.Euler(0,0,bodyAngle);var b=anchor.sprite.bounds;
            Vector3 Point(float u,float v)=>new Vector3(Mathf.Lerp(b.min.x,b.max.x,u),Mathf.Lerp(b.min.y,b.max.y,v),0);
            var lp=Point(.28f,.13f);var rp=Point(.75f,.13f);var lw=Point(.22f,.46f);var rw=Point(.85f,.5f);var neck=Point(.53f,.57f);
            var lrot=Quaternion.Euler(0,0,-step*12*stride);var rrot=Quaternion.Euler(0,0,step*12*stride);
            var lwrot=Quaternion.Euler(0,0,-step*9*stride);var rwrot=Quaternion.Euler(0,0,-step*9*stride);var hrot=Quaternion.Euler(0,0,faceAngle);
            for(int i=0;i<vertices.Length;i++)
            {
                var p=rest[i];var delta=Vector3.zero;
                delta+=(lrot*(p-lp)-(p-lp)+leftOffset)*footLeft[i];delta+=(rrot*(p-rp)-(p-rp)+rightOffset)*footRight[i];
                delta+=(rwrot*(p-rw)-(p-rw))*flipperRight[i];
                delta+=(hrot*(p-neck)-(p-neck))*head[i];
                p+=delta;p=new Vector3(p.x*sx,p.y*sy,p.z);p=bodyRotation*p+rootOffset;
                if(anchor.flipX)p.x=-p.x;vertices[i]=p;
            }
            VisualMesh.vertices=vertices;VisualMesh.RecalculateBounds();
            Vector3 Pose(Vector3 p){p=bodyRotation*new Vector3(p.x*sx,p.y*sy,0)+rootOffset;if(anchor.flipX)p.x=-p.x;return p;}
            ShoulderLocal=Pose(Point(.22f,.44f));
            var holding=Point(.41f,.35f);// Keep the same short shoulder-to-grip vector through the hops.
            HoldingPointLocal=Pose(holding);
        }
        private void OnDestroy(){if(VisualMesh!=null)Destroy(VisualMesh);if(material!=null)Destroy(material);}
    }
}
