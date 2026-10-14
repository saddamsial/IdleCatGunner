using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// Evidence-constrained local rendering of original ParticleImage preset 124527.
// Supports only its circle/local/scaled/point-attractor/white constant-size path.
// Original weighted curves and sprite are assigned through Editor APIs. Particle
// pooling, random draw order and the general ParticleImage SDK remain different.
public sealed class DiamondParticles : MaskableGraphic
{
    [UnityEngine.Serialization.FormerlySerializedAs("OriginalSprite")]
    public Sprite SourceSprite;
    public AnimationCurve SpeedCurve, AttractionMin, AttractionMax, VelocityYCurve, VortexCurve;
    public float VelocityYMultiplier=1, VortexMultiplier=8, SpriteRotation=1;
    public float Radius=50, Size=60, LifeMin=.5f, LifeMax=1, SpeedMin=1, SpeedMax=15;
    public Transform Attractor;
    public Dia_Attraction Owner;
    public int Emitted { get; private set; }
    public int Finished { get; private set; }
    public int LiveCount => particles.Count;
    sealed class Particle { public Vector2 position, rendered, velocity; public float age, lifetime, attraction; }
    readonly List<Particle> particles=new List<Particle>();
    public override Texture mainTexture => SourceSprite==null?Texture2D.whiteTexture:SourceSprite.texture;
    public void EmitAtWorldPosition(Vector3 world,int count)
    {
        Vector2 origin=transform.InverseTransformPoint(world);
        for(int i=0;i<count;i++)
        {
            Vector2 offset=UnityEngine.Random.insideUnitCircle*Radius;
            particles.Add(new Particle{position=origin+offset,rendered=origin+offset,velocity=offset.normalized*UnityEngine.Random.Range(SpeedMin,SpeedMax),lifetime=UnityEngine.Random.Range(LifeMin,LifeMax),attraction=UnityEngine.Random.value});
            Emitted++;
        }
        SetVerticesDirty();
    }
    // Native order: speed, velocity module, integration x100, vortex x100 degrees.
    public Vector2 AdvancePosition(Vector2 position,Vector2 initialVelocity,float normalized,float delta)
    {
        Vector2 velocity=initialVelocity*SpeedCurve.Evaluate(normalized);
        velocity.y+=VelocityYCurve.Evaluate(normalized)*VelocityYMultiplier;
        position+=velocity*(delta*100);
        return Quaternion.Euler(0,0,VortexCurve.Evaluate(normalized)*VortexMultiplier*delta*100)*position;
    }
    void Update()
    {
        bool hadParticles=particles.Count>0;
        for(int i=particles.Count-1;i>=0;i--)
        {
            var p=particles[i];p.age+=Time.deltaTime;float t=p.age/p.lifetime;
            p.position=AdvancePosition(p.position,p.velocity,t,Time.deltaTime);
            p.rendered=Attractor==null?p.position:Vector2.LerpUnclamped(p.position,transform.InverseTransformPoint(Attractor.position),Mathf.LerpUnclamped(AttractionMin.Evaluate(t),AttractionMax.Evaluate(t),p.attraction));
            if(p.age>p.lifetime){particles.RemoveAt(i);Finished++;Owner.Dia_FX_End();}
        }
        if(hadParticles)SetVerticesDirty();
    }
    protected override void OnDisable(){particles.Clear();base.OnDisable();}
    protected override void OnPopulateMesh(VertexHelper vh)
    {
        vh.Clear();if(SourceSprite==null)return;
        Vector4 uv=UnityEngine.Sprites.DataUtility.GetOuterUV(SourceSprite);float h=Size*.5f;
        var q=Quaternion.Euler(0,0,SpriteRotation);
        foreach(var p in particles)
        {
            int n=vh.currentVertCount;Vector2 c=p.rendered;
            vh.AddVert(c+(Vector2)(q*new Vector2(-h,-h)),color,new Vector2(uv.x,uv.y));vh.AddVert(c+(Vector2)(q*new Vector2(-h,h)),color,new Vector2(uv.x,uv.w));vh.AddVert(c+(Vector2)(q*new Vector2(h,h)),color,new Vector2(uv.z,uv.w));vh.AddVert(c+(Vector2)(q*new Vector2(h,-h)),color,new Vector2(uv.z,uv.y));vh.AddTriangle(n,n+1,n+2);vh.AddTriangle(n,n+2,n+3);
        }
    }
}
