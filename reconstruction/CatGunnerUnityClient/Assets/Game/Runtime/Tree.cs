using UnityEngine;
using CatGunner.Runtime;

// Original component identity and serialized fields; matching native Spawn paths.
public sealed class Tree : MonoBehaviour
{
    public Enemy enemy;
    public SpriteRenderer spriteRenderer;
    public Transform MoneySpawn_trans;
    public bool is_Boss;

    public void Spawn(Vector3 position, CurrencyAmount health, CurrencyAmount money, Sprite sprite)
    {
        enemy.Spawn(health,money);
        transform.localPosition=position;
        spriteRenderer.sprite=sprite;
    }
    public void Boss_Spawn(CurrencyAmount health, CurrencyAmount money, Sprite sprite)
    {
        enemy.Spawn(health,money);
        spriteRenderer.sprite=sprite;
    }
    public void Die_Reload()
    {
        if(Particle_Polling.instance!=null)
            Particle_Polling.instance.Spawn(MoneySpawn_trans.position,is_Boss?15:5);
        Tree_manager.instance.Tree_Destroyed();
    }
}
