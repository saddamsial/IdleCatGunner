using UnityEngine;
using TMPro;
public sealed class Buff_Btn : MonoBehaviour
{
    public Buff_Type type;public GameObject On_obj,Off_obj;public TextMeshProUGUI BuffTime_txt;
    int lastSecond=int.MinValue;bool lastActive;
    public void Reload(){var m=Buff_manager.instance;if(m==null)return;bool active=m.IsBuffActive(type);On_obj?.SetActive(active);Off_obj?.SetActive(!active);int second=(int)m.GetBuffRemainingTime(type);if(second!=lastSecond||active!=lastActive){lastSecond=second;lastActive=active;BuffTime_txt.text=active?Buff_manager.FormatRemaining(m.GetBuffRemainingTime(type)):string.Empty;}}
    void Update()=>Reload();void OnEnable()=>Reload();
}
