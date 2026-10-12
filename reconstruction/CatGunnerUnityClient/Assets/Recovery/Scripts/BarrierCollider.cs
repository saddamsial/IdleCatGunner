using UnityEngine;
public sealed class BarrierCollider : MonoBehaviour
{
    // Native 0x2b4c350 routes original EnemyColl.enemyScript to Monster.
    // Null/late collider closure is a local adapter, avoiding SDK-era null throws.
    private void OnTriggerEnter(Collider other)
    {var link=other.GetComponent<EnemyColl>();var monster=link!=null&&link.enemyScript!=null?link.enemyScript.GetComponent<Monster>():null;if(monster!=null&&Monster_manager.instance.Playing)monster.Barrier_Touched();}
}
