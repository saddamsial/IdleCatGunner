using CatGunner.Runtime;
using TMPro;
using UnityEngine;
public sealed class Offline_Panel_UI : MonoBehaviour
{
    public TextMeshProUGUI Time_txt,Stage_Before_txt,Money_Before_txt,PowerLv_Before_txt,SpeedLv_Before_txt,MoneyLv_Before_txt,Stage_After_txt,Money_After_txt,PowerLv_After_txt,SpeedLv_After_txt,MoneyLv_After_txt;
    public GameObject MaxStage_obj;
    public void Reload(SaveData before,OfflineResult after)
    {
        Time_txt.text=OfflineResult.FormatTime(after.IsCapped?after.ElapsedSeconds:after.AbsentSeconds);
        MaxStage_obj.SetActive(after.StageNow*10+after.LevelNow>=after.StageValueMax);
        Stage_Before_txt.text=string.Format("Stage {0}-{1}",before.Stage_Now+1,before.Level_Now+1);Stage_After_txt.text=string.Format("Stage {0}-{1}",after.StageNow+1,after.LevelNow+1);
        Money_Before_txt.text=NumberText.Format(before.Money.Value);Money_After_txt.text=NumberText.Format(after.MoneyFinal);
        PowerLv_Before_txt.text="Lv."+before.Upgrade_Lv[0];SpeedLv_Before_txt.text="Lv."+before.Upgrade_Lv[1];MoneyLv_Before_txt.text="Lv."+before.Upgrade_Lv[2];
        PowerLv_After_txt.text="Lv."+after.PowerLv;SpeedLv_After_txt.text="Lv."+after.SpeedLv;MoneyLv_After_txt.text="Lv."+after.MoneyUpgradeLv;
    }
}
