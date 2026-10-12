using System.Linq;
using UnityEditor;
using UnityEditor.Events;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Recovery;
public static class ProgressionDependencyEditor
{
    public static void Repair()
    {
        var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);var client=Object.FindFirstObjectByType<RecoveryForestClient>();
        int count=0;
        foreach(var tree in client.SpeedRun.Tree_list)foreach(var collider in tree.GetComponentsInChildren<Collider>(true))
        {var link=collider.GetComponent<EnemyColl>();if(link==null)link=collider.gameObject.AddComponent<EnemyColl>();link.enemyScript=tree.enemy;count++;}
        if(count!=190)throw new System.InvalidOperationException("Original speed-run collider cardinality changed: "+count);
        var fxGo=client.RebirthUI.GetComponentsInChildren<Animator>(true).Single(a=>a.name=="Rebirth_FX").gameObject;
        var fx=fxGo.GetComponent<Rebirth_FX>();if(fx==null)fx=fxGo.AddComponent<Rebirth_FX>();client.RebirthUI.rebirth_fx=fx;fxGo.SetActive(false);
        var panel=client.RebirthUI.rebirth_panel_ui;fx.Rebirth_Panel_obj=panel.Rebirth_Popup_obj;fx.UpgradeRebirth_Panel_obj=panel.UpgradeRebirth_Popup_obj;fx.UpgradeRebirth_IAP_Panel_obj=panel.UpgradeRebirth_IAP_Popup_obj;
        int confirms=0;
        foreach(var button in fx.Rebirth_Panel_obj.GetComponentsInChildren<Button>(true))
        {bool normal=Enumerable.Range(0,button.onClick.GetPersistentEventCount()).Any(i=>button.onClick.GetPersistentMethodName(i)=="Rebirth_Start");if(!normal)continue;while(button.onClick.GetPersistentEventCount()>0)UnityEventTools.RemovePersistentListener(button.onClick,0);UnityEventTools.AddPersistentListener(button.onClick,fx.Rebirth_Start);button.interactable=true;confirms++;}
        if(confirms!=1)throw new System.InvalidOperationException("Original ordinary rebirth confirmation missing: "+confirms);
        var coinGo=client.PetUI.Pet_UI_obj.transform.Find("Panel/Currency/Petcoin").gameObject;var coin=coinGo.GetComponent<Currency_PetCoin>();if(coin==null)coin=coinGo.AddComponent<Currency_PetCoin>();coin.PetCoin_txt=coinGo.GetComponentInChildren<TMPro.TextMeshProUGUI>(true);
        EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);AssetDatabase.SaveAssets();
    }
}
