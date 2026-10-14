using System;
using CatGunner.Runtime;
using UnityEngine;

// Original vc257 content gates. The existing offline client owns scene lifecycle.
public sealed class Contents_Unlock_manager : MonoBehaviour
{
    public Content_Info[] Content_list;
    public static Contents_Unlock_manager instance;
    public static readonly int[] Unlock_Stage_Balance={3,4,6,10,12,12,35,40};
    public static readonly Content_Type[] All_Types=(Content_Type[])Enum.GetValues(typeof(Content_Type));
    private GameClient client;
    // Optional test predicate; production uses original Tutorial_manager step.
    [NonSerialized] public Func<int?> TutorialStep;
    private int lastStage=-1;
    private bool lastTutorial;
    private void Awake()=>instance=this;
    public void Bind(GameClient owner){client=owner;Reload();}
    public static int Unlock_Stage_return(Content_Type type)=>Unlock_Stage_Balance[(int)type];
    public static int MaxStage_Display=>instance!=null&&instance.client!=null?instance.client.Forest.Stage_Value_Max/10+1:0;
    public static bool Is_Unlocked(Content_Type type)=>MaxStage_Display>=Unlock_Stage_return(type);
    private static bool Is_Tutorial=>TutorialActive(instance?.TutorialStep!=null?instance.TutorialStep():Tutorial_manager.instance!=null?(int?)Tutorial_manager.instance.CurrentStep:null);
    public static bool TutorialActive(int? step)=>step.HasValue&&step.Value!=5;
    public static int Next_Unlock_Stage_return()
    {
        int next=int.MaxValue;
        foreach(var type in All_Types)if(!Is_Unlocked(type))next=Math.Min(next,Unlock_Stage_return(type));
        return next==int.MaxValue?-1:next;
    }
    public static bool Is_Next(Content_Type type)=>!Is_Unlocked(type)&&Unlock_Stage_return(type)==Next_Unlock_Stage_return();
    public void Reload()
    {
        if(Content_list==null)return;
        bool tutorial=Is_Tutorial;int next=Next_Unlock_Stage_return();
        foreach(var info in Content_list)
        {
            if(info==null||info.Btn_obj==null)continue;
            if(tutorial){info.Btn_obj.SetActive(false);continue;}
            bool unlocked=Is_Unlocked(info.Type),pending=!unlocked&&Unlock_Stage_return(info.Type)==next;
            info.Btn_obj.SetActive(unlocked||pending);if(info.Locked_obj!=null)info.Locked_obj.SetActive(pending);
        }
        lastStage=MaxStage_Display;lastTutorial=tutorial;
    }
    // Explicit local refresh bridge in place of the unrecovered UI_manager loop.
    private void Update(){if(client!=null&&(lastStage!=MaxStage_Display||lastTutorial!=Is_Tutorial))Reload();}
    public static bool Try_Open(Content_Type type)
    {
        bool unlocked=Is_Unlocked(type);
        if(!unlocked)
        {
            // Original Alert/Animator, local text until I2 localization is restored.
            var alert=UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include);
            if(alert!=null)alert.Reload("Unlock at Stage "+Unlock_Stage_return(type));
        }
        return unlocked;
    }
    public void Content_Btn_Rebirth(){if(Try_Open(Content_Type.Rebirth))client.RebirthUI.Panel_Open();}
    public void Content_Btn_Mine(){if(Try_Open(Content_Type.Mine))client.MineMode.StartPanel_Open();}
    public void Content_Btn_Fish(){if(Try_Open(Content_Type.Fish))client.Fish.ReloadFishUI();}
    public void Content_Btn_Boss(){if(Try_Open(Content_Type.Boss))client.BossMode.StartPanel_Open();}
    public void Content_Btn_Pet(){if(Try_Open(Content_Type.Pet))client.PetUI.Panel_Open();}
    public void Content_Btn_Monster(){if(Try_Open(Content_Type.Monster))client.MonsterMode.StartPanel_Open();}
    public void Content_Btn_Adventure(){if(Try_Open(Content_Type.Adventure))client.Adventure.Open();}
    public void Content_Btn_Raid(){if(Try_Open(Content_Type.Raid))client.RaidMode.Panel_Open();}
    private void OnDestroy(){if(instance==this)instance=null;}
}
