using System.Collections.Generic;
using UnityEngine;

// Original game control flow. _diaFx is explicitly a local preset renderer;
// ParticleImage SDK identity and the unreviewed presets are not substituted.
[DefaultExecutionOrder(-1000)]
public sealed class Dia_Attraction : MonoBehaviour
{
    public static Dia_Attraction instance;
    public DiamondParticles _diaFx;
    public List<Dia_Attraction_Target> Target_list = new List<Dia_Attraction_Target>();
    void Awake() => instance=this;
    void OnDestroy(){if(instance==this)instance=null;}
    public void Dia_Spawn(Transform source,int count){if(Target_list.Count==0)return;_diaFx.EmitAtWorldPosition(source.position,count);}
    public void Dia_FX_End(){Sound_manager.instance?.PlaySfx((SfxType)14,1f);if(Target_list.Count>0)Target_list[Target_list.Count-1].Bounce_Start();}
    public void Target_Enable(Dia_Attraction_Target target){Target_list.Add(target);_diaFx.Attractor=target.transform;}
    public void Target_Disable(Dia_Attraction_Target target){Target_list.Remove(target);_diaFx.Attractor=Target_list.Count==0?null:Target_list[Target_list.Count-1].transform;}
}
