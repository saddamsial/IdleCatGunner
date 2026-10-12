using System;
using CatGunner.Recovery;
using UnityEngine;
public sealed class Buff_manager : MonoBehaviour
{
    public static Buff_manager instance;
    public Buff_Menu_Btn Buff_Menu_Btn;
    public GameObject SuperBuff_Active_obj,SuperBuff_NonActive_obj;
    public const float BUFF_DURATION=300,BUFF_MAX=900;
    public const int BUFF_MULT=3,SUPER_BUFF_MULT=4;
    public static readonly int BuffCount=3;
    readonly float[] buffTime=new float[3];
    RecoveryForestClient client; int previousMask=-1;
    public bool IsPermanentBuff=>client!=null&&client.State.Is_Buff_Pack;
    public GameObject Popup=>transform.Find("Buff_UI")?.gameObject;
    void Awake()=>instance=this;
    public void Bind(RecoveryForestClient owner)
    {client=owner;LoadBuffTimes(owner.State.MoneyBuffTime,owner.State.PowerBuffTime,owner.State.AtkSpeedBuffTime);}
    public float GetBuffTime(Buff_Type type)=>buffTime[(int)type];
    public bool IsBuffActive(Buff_Type type)=>IsPermanentBuff||GetBuffTime(type)>0;
    public bool IsSuperBuff()=>OriginalShortBuffRules.Super(buffTime,IsPermanentBuff);
    public int GetMult(Buff_Type type)=>OriginalShortBuffRules.Mult(buffTime,type,IsPermanentBuff);
    public float GetBuffRemainingTime(Buff_Type type)=>IsPermanentBuff?-1:GetBuffTime(type);
    public static string FormatRemaining(float remaining)=>OriginalShortBuffRules.Format(remaining);
    public static int ToAdType(Buff_Type type)=>type==Buff_Type.Money?0:type==Buff_Type.Power?1:type==Buff_Type.AtkSpeed?14:throw new ArgumentOutOfRangeException(nameof(type));
    public void AddBuff(Buff_Type type)
    {buffTime[(int)type]=Mathf.Min(BUFF_MAX,GetBuffTime(type)+BUFF_DURATION);Capture();OnBuffChanged(type);Btn_UI_Reload();}
    public void LoadBuffTimes(float money,float power,float speed)
    {buffTime[0]=OriginalShortBuffRules.Clamp(money);buffTime[1]=OriginalShortBuffRules.Clamp(power);buffTime[2]=OriginalShortBuffRules.Clamp(speed);Capture();previousMask=Mask;RefreshEffects();Btn_UI_Reload();}
    int Mask=>(IsPermanentBuff?8:0)|(buffTime[0]>0?1:0)|(buffTime[1]>0?2:0)|(buffTime[2]>0?4:0);
    public bool AnyBuffRunning()=>buffTime[0]>0||buffTime[1]>0||buffTime[2]>0;
    void Update()
    {
        if(client==null)return;
        if(!IsPermanentBuff)for(int i=0;i<3;i++)if(buffTime[i]>0)buffTime[i]=Mathf.Max(0,buffTime[i]-Time.deltaTime);
        Capture();if(previousMask!=Mask){previousMask=Mask;RefreshEffects();}Btn_UI_Reload();
    }
    // Same deltaTime semantics as the native coroutine. The existing local host uses Update.
    void RefreshEffects(){if(client!=null&&client.ReadyForPlay)client.NotifyOfflineStateChanged();}
    public void OnBuffChanged(Buff_Type type){previousMask=Mask;RefreshEffects();}
    public void Capture()
    {if(client==null)return;client.State.MoneyBuffTime=buffTime[0];client.State.PowerBuffTime=buffTime[1];client.State.AtkSpeedBuffTime=buffTime[2];}
    public void Btn_UI_Reload()
    {Buff_Menu_Btn?.Reload();if(SuperBuff_Active_obj!=null)SuperBuff_Active_obj.SetActive(IsSuperBuff());if(SuperBuff_NonActive_obj!=null)SuperBuff_NonActive_obj.SetActive(!IsSuperBuff());}
    public void Open(){if(client==null||!client.ReadyForPlay)return;Popup.SetActive(true);Btn_UI_Reload();}
    public void Close()=>Popup?.SetActive(false);
    public bool RequestBuff(Buff_Type type,Func<bool> pageValid,Action completed=null)
    {
        if(client==null)return false;int mode=client.Mode;
        return client.RewardedAds.Request(()=>client.ReadyForPlay&&client.Mode==mode&&!IsPermanentBuff&&pageValid(),()=>{AddBuff(type);completed?.Invoke();});
    }
    void OnDestroy(){if(instance==this)instance=null;}
}
