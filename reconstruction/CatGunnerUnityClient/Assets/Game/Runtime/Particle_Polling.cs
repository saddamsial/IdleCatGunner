using UnityEngine;
public sealed class Particle_Polling : MonoBehaviour
{
    public int Particle_index;
    public ParticleSystem[] _particleSystem;
    public static Particle_Polling instance,instance_dust,instance_slime;
    private void Awake(){if(Particle_index==0)instance=this;else if(Particle_index==1)instance_dust=this;else if(Particle_index==2)instance_slime=this;}
    public void Spawn(Vector3 position,int count)
    {
        var emit=new ParticleSystem.EmitParams{position=position,applyShapeToPosition=true};
        foreach(var system in _particleSystem)system.Emit(emit,count);
    }
    private void OnDestroy(){if(instance==this)instance=null;if(instance_dust==this)instance_dust=null;if(instance_slime==this)instance_slime=null;}
}
