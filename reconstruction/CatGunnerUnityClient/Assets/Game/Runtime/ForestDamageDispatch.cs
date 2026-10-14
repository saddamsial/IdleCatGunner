using System;
using UnityEngine;

namespace CatGunner.Runtime
{
    // Original Gamemanager.Damage_Tag routing through original EnemyColl, with
    // independent decimal arithmetic adapter and original-font text presenter.
    public static class ForestDamageDispatch
    {
        public static event Action<Vector3,string,bool> DamageTextPending;
        public static bool Damage_Collider(Collider coll,CurrencyAmount damage,Vector3 point,string text,bool critical)
        {
            if(!coll.gameObject.activeInHierarchy) return false;
            var link=coll.GetComponent<EnemyColl>();
            if(link==null) return false;
            var enemy=link.enemyScript;
            if(enemy.CompareTag("Enemy")) enemy.Damaged(damage);
            else if(enemy.CompareTag("Ore"))
                {enemy.Damaged(CurrencyAmount.FromValue(new DecimalAmount(1)));return true;}
            else return false;
            // Presentation observes the actual hit; it never applies damage again.
            // Format the applied amount at the hit boundary: pooled projectiles
            // and mode callers may still carry an old, unabridged cached string.
            DamageTextPending?.Invoke(point,NumberText.Format(damage.Value),critical);return true;
        }
    }
}
