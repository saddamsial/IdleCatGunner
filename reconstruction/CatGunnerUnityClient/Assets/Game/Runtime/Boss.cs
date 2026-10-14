using System.Collections;
using UnityEngine;

// Matching vc257 native wander, skin and death branches; original scene owns assets.
public sealed class Boss : MonoBehaviour
{
    public Enemy enemy;
    public int skinNum;
    public GameObject[] Skin_obj;
    public Animator _anim;
    public Rigidbody rb;
    public SpriteRenderer[] Head_spriteRenderer;
    public Transform Skin_trans;
    public float moveSpeed=15,arrivalThreshold=.5f,minWaitTime=1,maxWaitTime=3,catAvoidRadius=4;
    public int maxPointRetries=10;
    public static readonly Vector3 MapCenter=new Vector3(-100,0,0);
    public const float MapRadius=60;
    private Coroutine wander;
    public void Spawn()
    {
        var mode=Boss_manager.instance;skinNum=mode.Stage_Now%Skin_obj.Length;
        enemy.Spawn(mode.Health_return(mode.Stage_Now),CatGunner.Runtime.CurrencyAmount.FromValue(new CatGunner.Runtime.DecimalAmount(0)));
        for(int i=0;i<Skin_obj.Length;i++)Skin_obj[i].SetActive(i==skinNum);
        _anim=Skin_obj[skinNum].GetComponent<Animator>();
        Head_spriteRenderer[skinNum].sprite=mode.Boss_Head_Idle_sprites[skinNum];
        transform.localPosition=new Vector3(-15,0,15);
        if(wander!=null)StopCoroutine(wander);wander=StartCoroutine(WanderRoutine());
    }
    public void Die_Reload()
    {
        Head_spriteRenderer[skinNum].sprite=Boss_manager.instance.Boss_Head_Die_sprites[skinNum];
        Boss_manager.instance.Boss_Destroyed();_anim.SetTrigger("Die");
        if(wander!=null)StopCoroutine(wander);wander=null;rb.linearVelocity=Vector3.zero;
    }
    public void Game_Fail(){rb.linearVelocity=Vector3.zero;_anim.SetBool("Walk",false);_anim.Play("Idle");}
    public IEnumerator WanderRoutine()
    {
        while(true)
        {
            if(!Boss_manager.instance.Playing){rb.linearVelocity=Vector3.zero;_anim.SetBool("Walk",false);yield return null;continue;}
            yield return StartCoroutine(MoveToPoint(PickWanderPoint()));
            float wait=Random.Range(minWaitTime,maxWaitTime),elapsed=0;
            while(elapsed<wait&&Boss_manager.instance.Playing){elapsed+=Time.deltaTime;yield return null;}
        }
    }
    public IEnumerator MoveToPoint(Vector3 point)
    {
        point.y=transform.position.y;_anim.SetBool("Walk",true);
        while(Boss_manager.instance.Playing)
        {
            var delta=point-transform.position;delta.y=0;
            if(delta.magnitude<=arrivalThreshold)break;
            rb.linearVelocity=delta.normalized*moveSpeed;
            if(delta.x>0)Skin_trans.localEulerAngles=new Vector3(0,180,0);
            else if(delta.x<0)Skin_trans.localEulerAngles=Vector3.zero;
            yield return null;
        }
        rb.linearVelocity=Vector3.zero;_anim.SetBool("Walk",false);
    }
    public Vector3 PickWanderPoint()
    {
        var cat=GetMainCatPosition();var from=transform.position;
        for(int i=0;i<maxPointRetries;i++){var point=RandomPointInMap();if(!PathCrossesCat(from,point,cat,catAvoidRadius))return point;}
        return RandomPointInMap();
    }
    public Vector3 GetMainCatPosition()=>Cat_manager.instance.Cat_list[0].transform.position;
    public Vector3 RandomPointInMap(){var v=Random.insideUnitCircle*MapRadius;return new Vector3(MapCenter.x+v.x,transform.position.y,MapCenter.z+v.y);}
    public static bool PathCrossesCat(Vector3 from,Vector3 to,Vector3 cat,float radius)
    {
        if(cat.sqrMagnitude<9.99999944e-11f)return false;
        var delta=to-from;float length=delta.magnitude;if(length<.001f)return false;
        var dir=delta/length;var closest=from+dir*Mathf.Clamp(Vector3.Dot(cat-from,dir),0,length);
        return Vector3.Distance(closest,cat)<radius;
    }
    private void OnDisable(){if(wander!=null)StopCoroutine(wander);wander=null;if(rb!=null)rb.linearVelocity=Vector3.zero;}
}
