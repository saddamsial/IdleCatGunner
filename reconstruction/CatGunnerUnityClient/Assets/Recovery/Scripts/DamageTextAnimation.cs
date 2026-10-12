using System;
using UnityEngine;

// Original prefab schema and 65-sample native curve interpolation.
public sealed class DamageTextAnimation : MonoBehaviour
{
    public float duration;
    public int spriteGap;
    public bool screenSpace;
    public float offsetX,offsetY;
    public Font font;
    public DamageTextAnimationCurve[] curves;
}

[Serializable]
public sealed class DamageTextAnimationCurve
{
    public AnimationCurve movementX,movementY,alpha,scale;
    [NonSerialized] private float[][] baked;
    public Vector4 Evaluate(float t)
    {
        if(baked==null)baked=new[]{Bake(movementX),Bake(movementY),Bake(alpha),Bake(scale)};
        return new Vector4(Eval(baked[0],t),Eval(baked[1],t),Eval(baked[2],t),Eval(baked[3],t));
    }
    private static float[] Bake(AnimationCurve curve)
    {
        var samples=new float[65];
        if(curve!=null&&curve.length>0)for(int i=0;i<samples.Length;i++)samples[i]=curve.Evaluate(i/64f);
        return samples;
    }
    private static float Eval(float[] samples,float t)
    {
        float f=Mathf.Clamp01(t)*64;int i=Mathf.Min((int)f,63);
        return Mathf.LerpUnclamped(samples[i],samples[i+1],f-i);
    }
}
