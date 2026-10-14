using UnityEngine;

public sealed class Bullet_FX : MonoBehaviour
{
    public ParticleSystem particle;
    public ParticleSystem[] Skin_particles;
    private int _lastGunNum=-1;
    public void Spawn(int GunNum,Vector3 Pos)
    {
        transform.position=Pos;Skin_Reload(GunNum);gameObject.SetActive(true);
    }
    public void Skin_Reload(int GunNum)
    {
        if(_lastGunNum==GunNum && particle!=null) {particle.Clear(true);particle.Play(true);return;}
        if(particle!=null)
        {
            particle.Stop(true,ParticleSystemStopBehavior.StopEmitting);
            particle.gameObject.SetActive(false);
        }
        particle=Skin_particles[GunNum];particle.gameObject.SetActive(true);
        particle.Clear(true);particle.Play(true);_lastGunNum=GunNum;
    }
}
