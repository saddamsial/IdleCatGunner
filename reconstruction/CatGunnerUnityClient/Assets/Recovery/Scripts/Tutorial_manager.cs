using System;
using System.Collections;
using System.Linq;
using CatGunner.Recovery;
using UnityEngine;

public enum TutorialStep {Upgrade,Challenge,GunOpen,GunBuy,GunEquip,Done}

// vc257 native tutorial predicates and polling. Bind replaces original global
// bootstrap so validation and independent save loading finish before any grant.
public sealed class Tutorial_manager : MonoBehaviour
{
    public static Tutorial_manager instance;
    public GameObject[] DisableOnTutorial;
    public GameObject CatHand_Upgrade,CatHand_GunOpen,CatHand_GunBuy;
    public TutorialArrow_UI ArrowGunEquip;
    public GameObject ChallengeButton,GunButton,GunBuyButton;
    public TutorialStep CurrentStep {get;private set;}
    private RecoveryForestClient client;
    private Coroutine moneyCheck;
    private bool cleared,bound;
    private static readonly WaitForSeconds Poll=new WaitForSeconds(.2f);
    private void Awake()=>instance=this;
    public void Bind(RecoveryForestClient owner)
    {
        if(bound)return;client=owner;bound=true;
        // Original LoadData calls SetCleared before Tutorial_manager.Start.
        cleared|=owner.State.TutorialCleared;
        if(cleared||owner.State.Upgrade_Lv[0]>=1)CompleteTutorial();else BeginTutorial();
    }
    public void SetCleared(){cleared=true;StopAllCoroutines();moneyCheck=null;CompleteTutorial();}
    public void RequestIfNeeded(){} // Original method is an empty return.
    public void BeginTutorial()
    {
        foreach(var go in DisableOnTutorial??Array.Empty<GameObject>())Active(go,false);
        HideHands();Active(ChallengeButton,false);Active(GunButton,false);
        CurrentStep=TutorialStep.Upgrade;Contents_Unlock_manager.instance?.Reload();
        SetStep(TutorialStep.Upgrade);
    }
    public void CompleteTutorial()
    {
        CurrentStep=TutorialStep.Done;HideHands();
        foreach(var go in DisableOnTutorial??Array.Empty<GameObject>())Active(go,true);
        Contents_Unlock_manager.instance?.Reload();gameObject.SetActive(false);
    }
    private void HideHands(){Active(CatHand_Upgrade,false);Active(CatHand_GunOpen,false);Active(CatHand_GunBuy,false);if(ArrowGunEquip!=null)Active(ArrowGunEquip.gameObject,false);}
    private static void Active(GameObject go,bool value){if(go!=null)go.SetActive(value);}
    private void SetStep(TutorialStep step)
    {
        CurrentStep=step;
        switch(step)
        {
            case TutorialStep.Upgrade:Active(CatHand_Upgrade,false);if(moneyCheck!=null)StopCoroutine(moneyCheck);moneyCheck=StartCoroutine(MoneyCheckLoop());break;
            case TutorialStep.Challenge:Active(ChallengeButton,false);StartCoroutine(CheckSpeedRunClear());break;
            case TutorialStep.GunOpen:Active(GunButton,true);StartCoroutine(CheckGunSlotActive());break;
            case TutorialStep.GunBuy:
                if(client.State.Dia<100){int amount=100-client.State.Dia;client.AwardDiamonds(amount);}
                StartCoroutine(CheckGunPurchased());break;
            case TutorialStep.GunEquip:StartCoroutine(SetupGunEquipArrow());StartCoroutine(CheckGunEquipped());break;
            case TutorialStep.Done:CompleteTutorial();break;
        }
    }
    private IEnumerator MoneyCheckLoop()
    {
        while(CurrentStep==TutorialStep.Upgrade)
        {
            if(client.State.Upgrade_Lv[0]>=1){Active(CatHand_Upgrade,false);SetStep(TutorialStep.Challenge);yield break;}
            Active(CatHand_Upgrade,client.State.Money.Value.CompareTo(client.Balance.Price(client.State.Upgrade_Lv[0]))>=0);
            yield return Poll;
        }
    }
    private IEnumerator CheckSpeedRunClear()
    {
        while(CurrentStep==TutorialStep.Challenge&&client.State.Upgrade_Lv[0]<3)yield return Poll;
        if(CurrentStep!=TutorialStep.Challenge)yield break;
        Active(ChallengeButton,true);
        while(CurrentStep==TutorialStep.Challenge)
        {
            if(client.SpeedRun!=null&&client.SpeedRun.Stage_Now>0){SetStep(TutorialStep.GunOpen);yield break;}
            yield return Poll;
        }
    }
    private IEnumerator CheckGunSlotActive()
    {
        while(CurrentStep==TutorialStep.GunOpen)
        {
            Active(CatHand_GunOpen,GunButton!=null&&GunButton.activeInHierarchy);
            if(client.Guns.Gun_Slot_List.Any(s=>s!=null&&s.gameObject.activeInHierarchy))
            {Active(CatHand_GunOpen,false);SetStep(TutorialStep.GunBuy);yield break;}
            yield return Poll;
        }
    }
    public void OnGunButtonPressed()
    {
        if(CurrentStep==TutorialStep.GunOpen){Active(CatHand_GunOpen,false);SetStep(TutorialStep.GunBuy);}
    }
    private IEnumerator CheckGunPurchased()
    {
        while(CurrentStep==TutorialStep.GunBuy)
        {
            Active(CatHand_GunBuy,GunBuyButton!=null&&GunBuyButton.activeInHierarchy);
            if(client.State.Owned_Gun_list.Any(g=>g!=-1)){Active(CatHand_GunBuy,false);SetStep(TutorialStep.GunEquip);yield break;}
            yield return Poll;
        }
    }
    private IEnumerator CheckGunEquipped()
    {
        while(CurrentStep==TutorialStep.GunEquip)
        {
            var selected=client.State.Selected_items;
            if(selected.Skip(1).Any(g=>g!=-1)||selected[0]!=0){Active(ArrowGunEquip.gameObject,false);SetStep(TutorialStep.Done);yield break;}
            yield return Poll;
        }
    }
    private IEnumerator SetupGunEquipArrow()
    {
        yield return null;
        var item=client.Guns.gunItemList.ActiveItems.FirstOrDefault(g=>g!=null&&g.gameObject.activeSelf);
        var from=item!=null?item.transform as RectTransform:null;
        var slots=client.Guns.Gun_Slot_List;var slot=slots.Length>=2?slots[1]:null;
        if(from!=null&&slot!=null)ArrowGunEquip.SetTargets(from,slot.transform as RectTransform);
        while(CurrentStep==TutorialStep.GunEquip){Active(ArrowGunEquip.gameObject,slot!=null&&slot.gameObject.activeInHierarchy&&from!=null);yield return Poll;}
    }
    private void OnDestroy(){if(instance==this)instance=null;}
}
