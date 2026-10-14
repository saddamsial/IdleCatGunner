using System;
using UnityEngine;
using System.Linq;
using UnityEngine.U2D;
using UnityEngine.U2D.Animation;

namespace CatGunner.Runtime
{
    // Penguin-specific waddle and recoil. Existing movement/Walk intent and
    // successful gun rebound trigger visuals; no combat or save state changes.
    // Pose bones before 2D Animation SpriteSkin deformation (execution order 10).
    [DefaultExecutionOrder(5)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinBoneMotion")] public sealed class PenguinBoneMotion : MonoBehaviour
    {
        // Compatibility diagnostic snapshot only; Unity SpriteSkin owns rendering/deformation.
        private Mesh snapshot;
        public Mesh VisualMesh
        {
            get
            {
                if(snapshot!=null && Skin!=null && Skin.HasCurrentDeformedVertices())
                {snapshot.vertices=Skin.GetDeformedVertexPositionData().ToArray();snapshot.RecalculateBounds();}
                return snapshot;
            }
        }
        public SpriteRenderer Renderer {get;private set;}
        public SpriteSkin Skin {get;private set;}
        private Transform[] bones;
        private Vector3[] bindPositions;
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
        private GameClient client;
        private SpriteRenderer anchor;
        private float height;
        private Material material;
        public void Configure(Cat cat,Sprite sprite,Sprite source,SpriteRenderer target)
        {
            if(Renderer==target && hero==cat && Skin!=null)return;
            anchor=target;hero=cat;faceBase=cat.Face_Pivot_trans.localEulerAngles.z;
            height=sprite.bounds.size.y;
            target.sprite=sprite;target.enabled=true;
            material=new Material(target.sharedMaterial){name="Penguin animation material"};
            material.mainTexture=sprite.texture;target.sharedMaterial=material;Renderer=target;
            Skin=target.GetComponent<SpriteSkin>()??CreateSkeleton(target);bones=Skin.boneTransforms;
            if(bones.Length!=7)throw new InvalidOperationException("Authored penguin skeleton must retain seven bones");
            bindPositions=bones.Select(b=>b.localPosition).ToArray();
            snapshot=new Mesh{name="Penguin SpriteSkin diagnostic snapshot"};
            snapshot.vertices=sprite.vertices.Select(p=>(Vector3)p).ToArray();
            snapshot.triangles=sprite.triangles.Select(i=>(int)i).ToArray();
            BuildGrip(target);
        }
        public static SpriteSkin CreateSkeleton(SpriteRenderer target)
        {
            var definitions=target.sprite.GetBones();
            if(definitions.Length!=7 || target.sprite.GetBindPoses().Length!=definitions.Length)
                throw new InvalidOperationException("Penguin sprite needs the authored seven-bone SpriteSkin binding.");
            var transforms=new Transform[definitions.Length];
            for(int i=0;i<definitions.Length;i++)
            {
                var definition=definitions[i];
                var bone=new GameObject(definition.name).transform;
                bone.SetParent(definition.parentId<0?target.transform:transforms[definition.parentId],false);
                bone.localPosition=definition.position;bone.localRotation=definition.rotation;
                transforms[i]=bone;
            }
            var skin=target.gameObject.AddComponent<SpriteSkin>();
            skin.alwaysUpdate=true;
            skin.SetRootBone(transforms[0]);
            var state=skin.SetBoneTransforms(transforms);
            // Inactive equipment slots cache their Sprite when OnEnable runs.
            if(skin.isActiveAndEnabled && state!=SpriteSkinState.Ready)
                throw new InvalidOperationException("Penguin SpriteSkin binding is invalid: "+state);
            return skin;
        }
        private void BuildGrip(SpriteRenderer target)
        {
            client=GameClient.Instance;
            var config=client!=null?client.GetComponent<PenguinActionAssets>():null;
            if(config!=null&&config.HoldingFlipper!=null)gameObject.AddComponent<PenguinHoldingWing>().Configure(hero,this,target,config.HoldingFlipper);
        }
        public void Celebrate(){victoryAge=0;victoryRound=client!=null?client.RoundsStarted:0;VictoryCount++;}
        private void LateUpdate()
        {
            if(Skin==null)return;
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
            var bodyRotation=Quaternion.Euler(0,0,bodyAngle);
            var lrot=Quaternion.Euler(0,0,-step*12*stride);var rrot=Quaternion.Euler(0,0,step*12*stride);
            var rwrot=Quaternion.Euler(0,0,-step*9*stride);var hrot=Quaternion.Euler(0,0,faceAngle);
            // The same regional transforms now drive real weighted bones.
            // The renderer mirrors SpriteSkin output via flipX; grip coordinates mirror below.
            bones[0].localPosition=rootOffset;
            bones[0].localRotation=bodyRotation;
            bones[0].localScale=new Vector3(sx,sy,1);
            bones[1].localPosition=bindPositions[1]+leftOffset;bones[1].localRotation=lrot;
            bones[2].localPosition=bindPositions[2]+rightOffset;bones[2].localRotation=rrot;
            bones[3].localRotation=rwrot;
            bones[4].localRotation=hrot;
            Vector3 Attachment(Transform bone)
            {var p=transform.InverseTransformPoint(bone.position);if(anchor.flipX)p.x=-p.x;return p;}
            // Authored attachment bones keep the original short shoulder-to-grip vector.
            ShoulderLocal=Attachment(bones[5]);
            HoldingPointLocal=Attachment(bones[6]);
        }
        private void OnDestroy(){if(snapshot!=null)Destroy(snapshot);if(material!=null)Destroy(material);}
    }
}
