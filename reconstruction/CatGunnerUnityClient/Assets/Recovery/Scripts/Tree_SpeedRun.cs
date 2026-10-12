using UnityEngine;
using CatGunner.Recovery;
public sealed class Tree_SpeedRun : MonoBehaviour
{
    public Enemy enemy;
    public SpriteRenderer spriteRenderer;
    public Transform MoneySpawn_trans;
    public void Spawn(OriginalAmount health,OriginalAmount money,Sprite sprite){enemy.Spawn(health,money);spriteRenderer.sprite=sprite;}
    public void Die_Reload()
    {
        if(Particle_Polling.instance!=null)Particle_Polling.instance.Spawn(MoneySpawn_trans.position,5);
        SpeedRun_manager.instance.Tree_Destroyed(this);
    }
}
