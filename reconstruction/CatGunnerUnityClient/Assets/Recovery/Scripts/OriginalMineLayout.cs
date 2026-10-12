using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace CatGunner.Recovery
{
    // vc257 PlaceOres coroutine: 4-unit lattice, Perlin ranking, partial shuffle.
    public static class OriginalMineLayout
    {
        public struct Point {public Vector3 Position;public float Noise;public int Degree;}
        public static IEnumerator Generate(int seed,int capacity,Vector3 center,float inner,float outer,float scale,float threshold,int perFrame,Action<Point[]> completed)
        {
            if(capacity<0||perFrame<=0)throw new ArgumentOutOfRangeException();
            var rng=new System.Random(seed);float ox=(float)(rng.NextDouble()*9999),oz=(float)(rng.NextDouble()*9999);
            var points=new List<Point>();int half=Mathf.FloorToInt(outer*.25f),examined=0;
            for(int x=-half;x<=half;x++)for(int z=-half;z<=half;z++)
            {
                var pos=center+new Vector3(x*4,0,z*4);float d=x*x*16+z*z*16;
                if(d<inner*inner||d>outer*outer)continue;
                float noise=Mathf.PerlinNoise((pos.x+ox)*scale,(pos.z+oz)*scale);
                if(noise>=threshold)points.Add(new Point{Position=pos,Noise=noise});
                if(++examined%perFrame==0)yield return null;
            }
            points.Sort((a,b)=>b.Noise.CompareTo(a.Noise));int count=Math.Min(capacity,points.Count);
            var result=points.GetRange(0,count).ToArray();var indices=new int[count];for(int i=0;i<count;i++)indices[i]=i;
            for(int i=0;i<Math.Min(100,count);i++)
            {int j=rng.Next(i,count),t=indices[i];indices[i]=indices[j];indices[j]=t;var point=result[indices[i]];point.Degree=1;result[indices[i]]=point;}
            completed(result);
        }
    }
}
