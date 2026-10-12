using System;
using System.Collections;
using CatGunner.Recovery;
using UnityEngine;
public sealed class OfflineProgressManager : MonoBehaviour
{
    public float MaxOfflineSeconds=28800;
    public Offline_Panel_UI offlinePanelUI;
    public OfflineResult LastResult {get;private set;}
    public bool Evaluating {get;private set;}
    [NonSerialized] public Func<DateTime> UtcNowOverride;
    public DateTime UtcNow=>UtcNowOverride?.Invoke()??DateTime.UtcNow;
    public IEnumerator EvaluateAndApply(RecoveryForestClient c)
    {
        if(Evaluating)yield break;Evaluating=true;LastResult=null;
        try
        {
            float maximum=MaxOfflineSeconds+(c.Relics?.Progression.Special(Relic_Type.Offline)??0)*60;
            if(!OriginalOfflineSimulation.ComputeElapsed(c.State.LastSaveTime,UtcNow,maximum,out float elapsed,out float absent))yield break;
            var before=OriginalSaveArchive.Decode(OriginalSaveArchive.Encode(c.State));
            yield return OriginalOfflineSimulation.Run(before,elapsed,absent,c.Balance,OriginalEquipmentCatalogue.Load(),OfflineModifiers.Capture(c),r=>LastResult=r);
            if(LastResult==null)yield break;
            OriginalOfflineSimulation.Apply(c.State,LastResult);
            c.Forest.Stage_Now=c.State.Stage_Now;c.Forest.Level_Now=c.State.Level_Now;c.Forest.Stage_Value_Max=c.State.Stage_Value_Max;
            c.State.LastSaveTime=UtcNow.ToString("O");c.NotifyOfflineStateChanged();
            if(offlinePanelUI!=null){offlinePanelUI.Reload(before,LastResult);offlinePanelUI.gameObject.SetActive(true);}
        }
        finally{Evaluating=false;}
    }
    void OnDisable(){Evaluating=false;}
}
