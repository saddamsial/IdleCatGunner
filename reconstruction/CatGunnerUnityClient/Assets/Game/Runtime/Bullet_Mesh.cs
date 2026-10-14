using UnityEngine;

public sealed class Bullet_Mesh : MonoBehaviour
{
    public ParticleSystem[] Mesh_particle;
    // Exact native overloads Play(), Stop(), Clear() (with children by default).
    public void Active() {if(Mesh_particle!=null) foreach(var p in Mesh_particle) p.Play();}
    public void Stop() {if(Mesh_particle!=null) foreach(var p in Mesh_particle) {p.Stop();p.Clear();}}
}
