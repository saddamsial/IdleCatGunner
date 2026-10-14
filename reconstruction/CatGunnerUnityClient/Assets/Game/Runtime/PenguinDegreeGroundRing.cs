using System;
using UnityEngine;

namespace CatGunner.Runtime
{
    // A ground projection has a fixed world-up normal. Camera-facing billboards
    // and particle-age rotation cannot keep overlapping rings in the same phase.
    [DefaultExecutionOrder(220)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinDegreeGroundRing")] public sealed class PenguinDegreeGroundRing : MonoBehaviour
    {
        private ParticleSystem particles;
        private ParticleSystemRenderer renderer;
        private Transform anchor;
        private Vector3 fallbackPosition, originalPosition;
        private Quaternion originalRotation;
        private ParticleSystemRenderMode originalMode;
        private ParticleSystemRenderSpace originalAlignment;
        private Mesh originalMesh;
        private bool originalInstancing, originalSize3D, originalRotation3D, originalRotating;
        private ParticleSystem.MinMaxCurve sizeX,sizeY,sizeZ,rotationX,rotationY,rotationZ;
        private bool configured;

        public static Action Attach(ParticleSystem p, ParticleSystemRenderer r)
        {
            var ring=p.gameObject.AddComponent<PenguinDegreeGroundRing>();
            ring.Configure(p,r);
            return ()=>{if(ring!=null){ring.Restore();UnityEngine.Object.Destroy(ring);}};
        }

        private void Configure(ParticleSystem p, ParticleSystemRenderer r)
        {
            particles=p;renderer=r;
            var cat=p.GetComponentInParent<Cat>(true);anchor=cat!=null?cat.transform:null;
            fallbackPosition=anchor!=null?anchor.position:p.transform.position;
            originalPosition=transform.localPosition;originalRotation=transform.localRotation;
            originalMode=r.renderMode;originalAlignment=r.alignment;originalMesh=r.mesh;originalInstancing=r.enableGPUInstancing;
            var main=p.main;originalSize3D=main.startSize3D;sizeX=main.startSizeX;sizeY=main.startSizeY;sizeZ=main.startSizeZ;
            originalRotation3D=main.startRotation3D;rotationX=main.startRotationX;rotationY=main.startRotationY;rotationZ=main.startRotationZ;
            originalRotating=p.rotationOverLifetime.enabled;
            var quad=Resources.GetBuiltinResource<Mesh>("Quad.fbx");
            if(quad==null)throw new InvalidOperationException("Ground ring quad unavailable");
            r.renderMode=ParticleSystemRenderMode.Mesh;r.mesh=quad;r.alignment=ParticleSystemRenderSpace.Local;r.enableGPUInstancing=false;
            main.startSize3D=true;main.startSizeX=sizeX;main.startSizeY=sizeX;main.startSizeZ=1;
            main.startRotation3D=false;main.startRotation=0;
            var rotation=p.rotationOverLifetime;rotation.enabled=false;
            configured=true;UpdateProjection();
        }

        private void LateUpdate(){if(configured)UpdateProjection();}
        private void OnEnable(){if(configured)UpdateProjection();}
        private void UpdateProjection()
        {
            transform.position=(anchor!=null?anchor.position:fallbackPosition)+Vector3.up*.08f;
            // One turn in five seconds; all particles share phase, so their
            // overlapping four-gap sprites cannot visually cancel the motion.
            transform.rotation=Quaternion.Euler(90,Mathf.Repeat(Time.time*72,360),0);
        }

        private void Restore()
        {
            if(!configured)return;configured=false;
            transform.localPosition=originalPosition;transform.localRotation=originalRotation;
            if(particles==null||renderer==null)return;
            renderer.renderMode=originalMode;renderer.mesh=originalMesh;renderer.alignment=originalAlignment;renderer.enableGPUInstancing=originalInstancing;
            var main=particles.main;main.startSize3D=originalSize3D;main.startSizeX=sizeX;main.startSizeY=sizeY;main.startSizeZ=sizeZ;
            main.startRotation3D=originalRotation3D;main.startRotationX=rotationX;main.startRotationY=rotationY;main.startRotationZ=rotationZ;
            var rotation=particles.rotationOverLifetime;rotation.enabled=originalRotating;
        }
        private void OnDestroy(){Restore();}
    }
}
