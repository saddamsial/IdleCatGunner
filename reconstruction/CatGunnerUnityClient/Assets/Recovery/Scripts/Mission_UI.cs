using System.Collections;
using TMPro;
using UnityEngine;
public sealed class Mission_UI : MonoBehaviour
{
    public TextMeshProUGUI SeasonEnd_Date_txt,Mission_Cool_txt;
    private Coroutine timer;
    private void OnEnable(){if(Mission_manager.instance?.Model==null)return;Mission_manager.instance.Season_Reload();Mission_manager.instance.Mission_Reload();timer=StartCoroutine(Tick());}
    private void OnDisable(){if(timer!=null)StopCoroutine(timer);timer=null;}
    private IEnumerator Tick()
    {
        while(true)
        {
            // Model.Changed already refreshes progress, claims and daily resets.
            // The clock must not rewrite every localized row once per second.
            Mission_manager.instance?.Model?.ReloadDay();Reload();
            yield return new WaitForSecondsRealtime(1);
        }
    }
    public void Season_Changed(){var m=Mission_manager.instance?.Model;if(m==null)return;if(SeasonEnd_Date_txt!=null)SeasonEnd_Date_txt.text=string.Format("Next Season : {0}",System.DateTime.Parse(m.State.Mission_SeasonEnd_Date,System.Globalization.CultureInfo.InvariantCulture).ToString("d"));}
    public void Reload()
    {
        var m=Mission_manager.instance?.Model;if(m==null)return;Season_Changed();
        var remaining=m.Now.Date.AddDays(1)-m.Now;
        if(Mission_Cool_txt!=null)Mission_Cool_txt.text=string.Format("{0:00}:{1:00}:{2:00}",(int)remaining.TotalHours,remaining.Minutes,remaining.Seconds);
    }
}
