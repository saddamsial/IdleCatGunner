using System.Collections;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
public sealed class Rebirth_Upgrade_Item : MonoBehaviour
{
    public int _num;
    public TextMeshProUGUI Value_txt,Lv_txt,Price_txt;
    public Color Color_Disable;
    public Button Upgrade_btn;
    // Native constructor defaults; the original scene overrides interval to .04.
    public float holdDelay=.4f,holdInterval=.1f;
    private Coroutine holdCoroutine;
    public void Reload()
    {
        var m=Rebirth_manager.instance.Model;int lv=m.State.Rebirth_Upgrade_Lv[_num];bool max=lv>=20000;
        if(Value_txt!=null)Value_txt.text="+"+CatGunner.Recovery.OriginalNumberText.Format(m.Catalogue.RebirthValues[_num].Values[lv].Value)+"%";
        bool able=!max&&m.State.Ruby.Value.CompareTo(m.Catalogue.RebirthPrice[lv].Value)>=0;
        if(Lv_txt!=null)Lv_txt.text="Lv."+lv;
        if(Price_txt!=null){Price_txt.text=max?"Max":CatGunner.Recovery.OriginalNumberText.Format(m.Catalogue.RebirthPrice[lv].Value);Price_txt.color=able?Color.white:Color_Disable;}
        if(Upgrade_btn!=null)Upgrade_btn.interactable=able;
    }
    public void Upgrade()=>Rebirth_manager.instance.Rebirth_Upgrade(_num);
    public void Touch()=>Upgrade();
    public void OnHoldStart(){StopHold();holdCoroutine=StartCoroutine(HoldUpgradeRoutine());}
    public void OnHoldEnd()=>StopHold();
    private IEnumerator HoldUpgradeRoutine()
    {
        yield return new WaitForSeconds(holdDelay);
        var model=Rebirth_manager.instance.Model;
        while(model.State.Rebirth_Upgrade_Lv[_num]<20000&&model.State.Ruby.Value.CompareTo(model.Catalogue.RebirthPrice[model.State.Rebirth_Upgrade_Lv[_num]].Value)>=0)
        {
            Upgrade();
            yield return new WaitForSeconds(holdInterval);
        }
        holdCoroutine=null;
    }
    private void StopHold(){if(holdCoroutine==null)return;StopCoroutine(holdCoroutine);holdCoroutine=null;}
    private void OnDisable()=>StopHold();
}
