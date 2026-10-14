using System.Collections;
using CatGunner.Runtime;
using UnityEngine;
public sealed class Monster : MonoBehaviour
{
    public Enemy enemy;
    public Rigidbody rb;
    public SpriteRenderer _spriteRenderer;
    public Transform FX_Spawn_trans;
    private Vector3 _moveVelocity;
    private Coroutine _knockbackCoroutine;
    public Vector3 MoveVelocity=>_moveVelocity;
    public bool KnockingBack=>_knockbackCoroutine!=null;
    public bool IsBig {get;private set;}
    public void Spawn(CurrencyAmount health,Vector3 pos,Sprite skinSprite,bool is_Big)
    {
        Freeze();gameObject.SetActive(true);enemy.Spawn(health,CurrencyAmount.FromValue(new DecimalAmount(0)));
        _spriteRenderer.sprite=skinSprite;_spriteRenderer.transform.localScale=is_Big?Vector3.one*1.5f:Vector3.one;IsBig=is_Big;
        transform.position=pos;var delta=MonsterRules.Center-pos;
        _moveVelocity=delta.normalized*(Mathf.Max(.1f,delta.magnitude-20)/(is_Big?50:37.5f));_moveVelocity.y=0;rb.linearVelocity=_moveVelocity;
    }
    public void Apply_Knockback(float damageRatio)
    {if(_knockbackCoroutine!=null)StopCoroutine(_knockbackCoroutine);_knockbackCoroutine=StartCoroutine(Knockback_Coroutine(Mathf.Clamp01(damageRatio)));}
    private IEnumerator Knockback_Coroutine(float ratio)
    {
        var outward=(transform.position-MonsterRules.Center).normalized;float duration=.05f+.29999998211860657f*ratio,time=0;
        while(time<duration){time+=Time.deltaTime;rb.linearVelocity=Vector3.Lerp(outward*(20*ratio),_moveVelocity,time/duration);yield return null;}
        rb.linearVelocity=_moveVelocity;_knockbackCoroutine=null;
    }
    public void Barrier_Touched(){Freeze();Monster_manager.instance.Monster_Invade(this);gameObject.SetActive(false);}
    public void Die_Reload(){Freeze();Monster_manager.instance.Monster_Destroyed(this);Particle_Polling.instance_slime.Spawn(FX_Spawn_trans.position,5);gameObject.SetActive(false);}
    public void Freeze(){if(_knockbackCoroutine!=null)StopCoroutine(_knockbackCoroutine);_knockbackCoroutine=null;if(rb!=null)rb.linearVelocity=Vector3.zero;}
}
