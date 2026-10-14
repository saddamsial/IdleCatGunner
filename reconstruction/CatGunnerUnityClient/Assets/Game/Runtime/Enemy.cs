using System;
using UnityEngine;
using CatGunner.Runtime;

// Tree branch of the original component. Other enemy modes are explicitly pending.
public sealed class Enemy : MonoBehaviour
{
    public int _type;
    public bool is_Die;
    public CurrencyAmount Health_Now, Health_Max, Money;
    public Enemy_Slider Slider;
    public Component _bounce;
    public bool is_MoneyDontDrop;
    [NonSerialized] public Action<Enemy> HealthChanged, SurvivedHit;
    [NonSerialized] public Action<CurrencyAmount,Vector3> MoneyDropped;

    public void Spawn(CurrencyAmount health, CurrencyAmount money)
    {
        Health_Now=CurrencyAmount.FromValue(health.Value);
        Health_Max=CurrencyAmount.FromValue(health.Value);
        Money=CurrencyAmount.FromValue(money.Value);
        if(Slider!=null) Slider.gameObject.SetActive(false);
        is_Die=false;
    }
    public void Damaged(CurrencyAmount damage)
    {
        if(is_Die || !ForestRuntimeAcceptance.IsGaming) return;
        if(_type!=0&&_type!=1&&_type!=2&&_type!=3&&_type!=4&&_type!=5) throw new NotSupportedException("This recovery integrates forest, speed-run and boss tree enemies");
        Health_Now=CurrencyAmount.FromValue(Health_Now.Value-damage.Value);
        if(_type==3)GetComponent<Monster>().Apply_Knockback(MonsterRules.Ratio(damage.Value,Health_Max.Value));
        Slider_Reload();
        HealthChanged?.Invoke(this);
        if(Health_Now.Value.CompareTo(new DecimalAmount(0))<=0) Die();
        else {if((_type==3||_type==4)&&_bounce is Bounce_Custom bounce)bounce.Bounce_Start();SurvivedHit?.Invoke(this);}
    }
    public void Slider_Reload()
    {
        if(Slider==null){if(_type==2)Boss_manager.instance.gameSlider.Value_Reload(Health_Now,Health_Max);else if(_type==5)Raid_manager.instance.ingame_ui.Health_Reload(Health_Now,Health_Max);return;}
        double ratio=System.Math.Exp(System.Numerics.BigInteger.Log(System.Numerics.BigInteger.Abs(Health_Now.Value.Coefficient))
            -System.Numerics.BigInteger.Log(System.Numerics.BigInteger.Abs(Health_Max.Value.Coefficient))
            +(Health_Now.s_exponent-Health_Max.s_exponent)*System.Math.Log(10));
        if(Health_Now.Value.Coefficient.IsZero) ratio=0;
        if(Health_Now.Value.Coefficient.Sign<0) ratio=-ratio;
        Slider.Fill.Value_Reload((float)ratio);
        Slider.gameObject.SetActive(true);
    }
    public void Die()
    {
        if(is_Die || !ForestRuntimeAcceptance.IsGaming) return;
        if(_type!=0&&_type!=1&&_type!=2&&_type!=3&&_type!=4&&_type!=5) throw new NotSupportedException("This recovery integrates forest, speed-run and boss death dispatch");
        is_Die=true;
        if(!is_MoneyDontDrop) MoneyDropped?.Invoke(Money,transform.position);
        if(_type==5){GetComponent<Raid_Boss>().Die_Reload();return;}
        if(_type==3){GetComponent<Monster>().Die_Reload();return;}
        if(_type==4){GetComponent<Ore>().Die_Reload();return;}
        if(_type==2){GetComponent<Boss>().Die_Reload();return;}
        if(_type==0)GetComponent<Tree>().Die_Reload();else GetComponent<Tree_SpeedRun>().Die_Reload();
        gameObject.SetActive(false);
    }
}
