using System;
using UnityEngine;

namespace CatGunner.Recovery
{
    // Use particle age for all motion: native pooling, pause and replay still own time.
    // Only the ring's presentation modules change; emission, lifetime and hits stay native.
    public static class PenguinPolarRing
    {
        public static bool IsRing(ParticleSystem p,ParticleSystemRenderer renderer)
        {
            var texture=renderer.sharedMaterial.mainTexture;
            return p.name.Contains("Ring")||p.name=="SemiCircles"||
                texture!=null&&(texture.name=="ToonCircle02_3x3"||texture.name.IndexOf("ring",StringComparison.OrdinalIgnoreCase)>=0||texture.name.IndexOf("glow",StringComparison.OrdinalIgnoreCase)>=0);
        }

        public static Action Animate(ParticleSystem p,ParticleSystemRenderer renderer,float originalSize)
        {
            var main=p.main;bool rotation3D=main.startRotation3D;
            var startX=main.startRotationX;var startY=main.startRotationY;var startZ=main.startRotationZ;
            var rotation=p.rotationOverLifetime;bool rotating=rotation.enabled,separateRotation=rotation.separateAxes;
            var rotateX=rotation.x;var rotateY=rotation.y;var rotateZ=rotation.z;
            var size=p.sizeOverLifetime;bool sizing=size.enabled,separateSize=size.separateAxes;
            var sizeX=size.x;var sizeY=size.y;var sizeZ=size.z;
            var color=p.colorOverLifetime;bool coloring=color.enabled;var gradient=color.color;
            var mode=renderer.renderMode;var alignment=renderer.alignment;

            // Original cone meshes have atlas UVs, unsuitable for a single ring.
            // A camera-facing quad gives the new thin arc a clean silhouette.
            renderer.renderMode=ParticleSystemRenderMode.Billboard;
            renderer.alignment=ParticleSystemRenderSpace.View;
            main.startRotation3D=false;
            main.startRotation=new ParticleSystem.MinMaxCurve(0,Mathf.PI*2);
            main.startSizeMultiplier=originalSize*(mode==ParticleSystemRenderMode.Mesh?1f:.45f);
            rotation.enabled=true;rotation.separateAxes=false;
            rotation.z=new ParticleSystem.MinMaxCurve(Mathf.PI*2);
            size.enabled=true;size.separateAxes=false;
            size.size=new ParticleSystem.MinMaxCurve(1,AnimationCurve.EaseInOut(0,.28f,1,1.15f));
            color.enabled=true;
            var fade=new Gradient();
            fade.SetKeys(new[]{new GradientColorKey(Color.white,0),new GradientColorKey(new Color(.68f,.89f,1),1)},
                new[]{new GradientAlphaKey(0,0),new GradientAlphaKey(.85f,.10f),new GradientAlphaKey(.72f,.40f),new GradientAlphaKey(0,1)});
            color.color=fade;

            return ()=>
            {
                if(p==null||renderer==null)return;
                renderer.renderMode=mode;renderer.alignment=alignment;
                var m=p.main;m.startRotation3D=rotation3D;m.startRotationX=startX;m.startRotationY=startY;m.startRotationZ=startZ;
                var r=p.rotationOverLifetime;r.enabled=rotating;r.separateAxes=separateRotation;r.x=rotateX;r.y=rotateY;r.z=rotateZ;
                var s=p.sizeOverLifetime;s.enabled=sizing;s.separateAxes=separateSize;s.x=sizeX;s.y=sizeY;s.z=sizeZ;
                var c=p.colorOverLifetime;c.enabled=coloring;c.color=gradient;
            };
        }
    }
}
