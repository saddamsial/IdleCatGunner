using System;
using System.Collections.Generic;
using UnityEngine;
namespace CatGunner.Runtime
{
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalSpeedRunLayout")] public static class SpeedRunLayout
    {
        // vc257 Tree_Batch: ring area spacing, ties-to-even rounding, last
        // ring correction, alternating half-cell angle, radial/tangent jitter.
        public static Vector3[] Place(int count,float inner,float outer,float radial,float angular,Func<float,float,float> range)
        {
            if(count<1)return Array.Empty<Vector3>();
            float area=(outer*outer-inner*inner)*Mathf.PI;
            int rings=Math.Max(1,(int)Math.Round((outer-inner)/Mathf.Sqrt(area/count),MidpointRounding.ToEven));
            var radii=new float[rings];var sizes=new int[rings];float sum=0;int assigned=0;
            for(int i=0;i<rings;i++){radii[i]=(outer-inner)/rings*(i+.5f)+inner;sum+=radii[i]*2*Mathf.PI;}
            for(int i=0;i<rings;i++){sizes[i]=Math.Max(1,(int)Math.Round(radii[i]*2*Mathf.PI/sum*count,MidpointRounding.ToEven));assigned+=sizes[i];}
            sizes[rings-1]=Math.Max(1,sizes[rings-1]+count-assigned);var points=new List<Vector3>(count);
            for(int ring=0;ring<rings;ring++)for(int j=0;j<sizes[ring]&&points.Count<count;j++)
            {float angle=(360f/sizes[ring]*j+(ring%2==0?0:180f/sizes[ring]))*Mathf.Deg2Rad;float sin=Mathf.Sin(angle),cos=Mathf.Cos(angle);float r=range(-radial,radial),t=range(-angular,angular);points.Add(new Vector3((radii[ring]+r)*cos-sin*t,0,(radii[ring]+r)*sin+cos*t));}
            return points.ToArray();
        }
    }
}
