using CatGunner.Recovery;
using UnityEngine;
public sealed class Ore : MonoBehaviour
{
    public int _diaValue;
    public SpriteRenderer spriteRenderer;
    public Transform DustSpawn_trans;
    public Enemy enemy;
    public void Spawn(Vector3 position,int degree,Sprite sprite)
    {
        enemy.Spawn(OriginalAmount.FromValue(new DecimalAmount(degree==0?3:5)),OriginalAmount.FromValue(new DecimalAmount(0)));
        _diaValue=degree==0?1:10;spriteRenderer.sprite=sprite;transform.position=position;
    }
    public void Die_Reload()
    {
        if(Mine_manager.instance==null||!Mine_manager.instance.Playing)return;
        Particle_Polling.instance_dust?.Spawn(DustSpawn_trans.position,5);
        // Native _diaValue1 is a tenth of a diamond; other ores show+1.
        // Score and final integer reward are owned by Mine_manager.
        RecoveryRewardFeedback.DiamondFraction(DustSpawn_trans.position,_diaValue==1?"+0.1":"+1");
        Mine_manager.instance.Ore_Destroyed(this);gameObject.SetActive(false);
    }
}
