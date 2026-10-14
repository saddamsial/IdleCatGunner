using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
namespace CatGunner.Runtime
{
    // Scoped presentation fixes from the October playtest. Original controllers
    // retain currency, entitlement, purchase order, input and combat ownership.
    [DefaultExecutionOrder(300)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinPlaytestPolish")] public sealed class PenguinPlaytestPolish : MonoBehaviour
    {
        public bool StaticUiBaked;
        [SerializeField] Button[] freeCashButtons=Array.Empty<Button>();
        public Sprite BlueDiamond,PetCoin,ChallengeIcon;
        public Sprite[] TargetVariety,OreGrades,Environment;
        GameClient client;PenguinUiTheme theme;Canvas canvas;
        readonly List<Sprite> stageSprites=new List<Sprite>();[SerializeField] TMP_Text blueDiamondTitle,huntRewardExplanation;[SerializeField] GameObject serviceToast;Coroutine toastLifetime;
        public bool Ready {get;private set;}
        public int FreeCashResponses {get;private set;}
        readonly List<Transform> backplates=new List<Transform>();
        IEnumerator Start()
        {
            client=GetComponent<GameClient>();theme=GetComponent<PenguinUiTheme>();
            while(!client.ReadyForPlay)yield return null;
            canvas=client.Slider.GetComponentInParent<Canvas>();
            if(StaticUiBaked)
            {
                foreach(var button in freeCashButtons)if(button!=null)button.onClick.AddListener(ShowFreeCash);
                StyleScene();Ready=true;yield break;
            }
            foreach(var toggle in new[]{client.Guns.OnOff_UI,client.PetUI.OnOff_UI,client.Fish.OnOff_UI})
                (toggle.GetComponent<PenguinMergeSwitch>()??toggle.gameObject.AddComponent<PenguinMergeSwitch>()).Configure(theme.Panel,theme.Circle);
            foreach(var f in canvas.GetComponentsInChildren<SlicedFilledImage>(true))
                if(f==client.BossMode.gameSlider.Value_Fill||f==client.MineMode.gameSlider.Value_Fill||f==client.MonsterMode.monster_game_slider.Value_Fill||f.GetComponentInParent<Mission_Reward_Slot>(true)!=null)f.pixelsPerUnitMultiplier=10;
            foreach(var t in canvas.GetComponentsInChildren<Transform>(true))
                if(t.name=="BackPanel"&&t.parent.name=="Win_img"){t.gameObject.SetActive(false);backplates.Add(t);}
            StyleResultMotion();StyleActions();StyleMission();StyleRebirth();StyleShop();StyleCompanions();StyleOffers();StyleScene();
            SortModal(client.Fish.fish_info_ui.gameObject);SortModal(client.Fish.new_fish_ui.gameObject);
            var delete=canvas.GetComponentInChildren<Fish_DeletePopup>(true);if(delete!=null)SortModal(delete.gameObject);
            var challenge=UiAuthoring.Find(canvas.transform,"SafeArea/Main_UI/Btn_list/Right_Menu/SpeedRun_Btn/Image")?.GetComponent<Image>();
            if(challenge!=null){challenge.sprite=ChallengeIcon;challenge.preserveAspect=true;}
            foreach(var im in client.SpeedRun.Start_UI.GetComponentsInChildren<Image>(true))
                if(im.name=="Icon"||im.sprite!=null&&im.sprite.name.Contains("weapons")){im.sprite=ChallengeIcon;im.preserveAspect=true;}
            Ready=true;
        }
#if UNITY_EDITOR
        public void BakeStaticUi()
        {
            if(StaticUiBaked)throw new InvalidOperationException("UI already authored; rebaking would overwrite manual edits");
            client=GetComponent<GameClient>();theme=GetComponent<PenguinUiTheme>();canvas=client.Slider.GetComponentInParent<Canvas>();
            foreach(var toggle in new[]{client.Guns.OnOff_UI,client.PetUI.OnOff_UI,client.Fish.OnOff_UI})
                (toggle.GetComponent<PenguinMergeSwitch>()??toggle.gameObject.AddComponent<PenguinMergeSwitch>()).Configure(theme.Panel,theme.Circle);
            foreach(var f in canvas.GetComponentsInChildren<SlicedFilledImage>(true))
                if(f==client.BossMode.gameSlider.Value_Fill||f==client.MineMode.gameSlider.Value_Fill||f==client.MonsterMode.monster_game_slider.Value_Fill||f.GetComponentInParent<Mission_Reward_Slot>(true)!=null)f.pixelsPerUnitMultiplier=10;
            foreach(var t in canvas.GetComponentsInChildren<Transform>(true))if(t.name=="BackPanel"&&t.parent.name=="Win_img")t.gameObject.SetActive(false);
            StyleResultMotion();StyleActions();StyleMission();StyleRebirth();StyleShop();StyleCompanions();StyleOffers();
            SortModal(client.Fish.fish_info_ui.gameObject);SortModal(client.Fish.new_fish_ui.gameObject);
            var delete=canvas.GetComponentInChildren<Fish_DeletePopup>(true);if(delete!=null)SortModal(delete.gameObject);
            var challenge=UiAuthoring.Find(canvas.transform,"SafeArea/Main_UI/Btn_list/Right_Menu/SpeedRun_Btn/Image")?.GetComponent<Image>();
            if(challenge!=null){challenge.sprite=ChallengeIcon;challenge.preserveAspect=true;}
            foreach(var im in client.SpeedRun.Start_UI.GetComponentsInChildren<Image>(true))if(im.name=="Icon"||im.sprite!=null&&im.sprite.name.Contains("weapons")){im.sprite=ChallengeIcon;im.preserveAspect=true;}
            freeCashButtons=canvas.GetComponentsInChildren<Button>(true).Where(b=>PathOf(b.transform).Contains("FreeCash")).ToArray();
            EnsureServiceToast();serviceToast.SetActive(false);
            foreach(var icon in canvas.GetComponentsInChildren<PenguinIconSize>(true))icon.Authored=true;
            foreach(var modal in canvas.GetComponentsInChildren<PenguinModalLayer>(true))modal.Authored=true;
            StaticUiBaked=true;
        }
#endif
        static string PathOf(Transform t){string p=t.name;while(t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
        void StyleResultMotion()
        {
            foreach(var root in new[]{client.SpeedRun.GameWin_UI,client.SpeedRun.GameFail_UI,client.SpeedRun.GameSweep_UI,client.BossMode.GameWin_UI,client.BossMode.GameSweep_UI,client.MineMode.GameEnd_UI,client.MineMode.GameSweep_UI,client.MonsterMode.GameEnd_UI,client.MonsterMode.GameSweep_UI})
            {
                foreach(var animator in root.GetComponentsInChildren<Animator>(true))animator.updateMode=AnimatorUpdateMode.UnscaledTime;
                foreach(var bounce in root.GetComponentsInChildren<BounceStart>(true))bounce.UseUnscaledTime=true;
            }
        }
        void StyleActions()
        {
            foreach(var b in canvas.GetComponentsInChildren<Button>(true))
            {
                string p=PathOf(b.transform);bool mission=p.Contains("Mission_Item")&&b.name=="Reward_Get_Btn"&&!p.Contains("NonClear_obj");
                bool result=p.Contains("Contents_UI/")&&(p.Contains("GameEnd")||p.Contains("GameWin")||p.Contains("GameSweep"))&&(b.name=="Bonus_Btn"||b.name=="NoAds_Btn"||b.name=="Exit_Btn");
                bool exit=p.StartsWith("Canvas/SafeArea/")&&(p.Contains("Mine_UI/")||p.Contains("Monster_UI/"))&&b.name.Contains("Exit");
                if(mission||result||exit)AccentButton(b,exit?new Color32(204,74,70,255):new Color32(245,172,47,255));
                if(p.Contains("FreeCash")||p.Contains("FreeCash_Banner"))
                {
                    // Imported callback's excluded SDK target cannot respond.
                    for(int i=0;i<b.onClick.GetPersistentEventCount();i++)b.onClick.SetPersistentListenerState(i,UnityEngine.Events.UnityEventCallState.Off);
                    b.onClick.AddListener(ShowFreeCash);b.interactable=true;AccentButton(b,new Color32(39,139,166,255));
                }
                if(p.Contains("GunList_UI")&&(b.name=="Draw_Btn"||b.name=="AD_Draw_Btn"))
                {
                    // Centre the two-line draw caption as a group inside the button.
                    // Native anchors were at the top, so changing Y alone was insufficient.
                    foreach(var label in b.GetComponentsInChildren<TMP_Text>(true).Where(t=>t.name.StartsWith("I2_txt")||t.name=="Price_txt"))
                    {
                        label.alignment=TextAlignmentOptions.Center;label.margin=Vector4.zero;
                        label.rectTransform.anchorMin=label.rectTransform.anchorMax=Vector2.one*.5f;
                        label.rectTransform.anchoredPosition=new Vector2(0,label.name=="Price_txt"?-28:28);
                        label.rectTransform.sizeDelta=new Vector2(280,48);
                    }
                }
            }
            var rank=client.MonsterMode.monster_start_ui.Rank_Panel_obj;
            foreach(var b in rank.GetComponentsInChildren<Button>(true))
                if(b.name.Contains("Top")||b.name.Contains("Near"))
                {
                    b.interactable=false;AccentButton(b,new Color32(113,132,147,255));
                    foreach(var im in b.GetComponentsInChildren<Image>(true)){im.sprite=theme.Panel;im.type=Image.Type.Sliced;im.color=new Color32(129,145,156,255);}
                    foreach(var label in b.GetComponentsInChildren<TMP_Text>(true))label.color=new Color32(210,218,224,255);
                }
        }
        void ShowFreeCash()
        {
            FreeCashResponses++;Gun_manager.Feedback(false);
            EnsureServiceToast();
            serviceToast.SetActive(true);if(toastLifetime!=null)StopCoroutine(toastLifetime);toastLifetime=StartCoroutine(HideServiceToast());
        }
        void EnsureServiceToast()
        {
            if(serviceToast==null)
            {
                serviceToast=new GameObject("FREECASH service status",typeof(RectTransform),typeof(Canvas),typeof(Image));
                var rt=(RectTransform)serviceToast.transform;rt.SetParent(canvas.transform,false);rt.anchorMin=rt.anchorMax=new Vector2(.5f,1);rt.sizeDelta=new Vector2(820,180);rt.anchoredPosition=new Vector2(0,-340);
                var layer=serviceToast.GetComponent<Canvas>();layer.overrideSorting=true;layer.sortingOrder=10050;
                var image=serviceToast.GetComponent<Image>();image.sprite=theme.Panel;image.type=Image.Type.Sliced;image.color=PenguinUiTheme.Navy;image.raycastTarget=false;
                var go=new GameObject("Message",typeof(RectTransform),typeof(TextMeshProUGUI));go.transform.SetParent(rt,false);var text=go.GetComponent<TextMeshProUGUI>();text.rectTransform.anchorMin=Vector2.zero;text.rectTransform.anchorMax=Vector2.one;text.rectTransform.sizeDelta=new Vector2(-40,-24);text.alignment=TextAlignmentOptions.Center;text.fontSize=34;text.color=Color.white;text.raycastTarget=false;
                WeaponText.Set(text,"FREECASH 服务暂未接入\n当前无法获取外部任务奖励");
            }
        }
        IEnumerator HideServiceToast(){yield return new WaitForSecondsRealtime(4);if(serviceToast!=null)serviceToast.SetActive(false);toastLifetime=null;}
        void AccentButton(Button b,Color color)
        {
            var image=b.targetGraphic as Image??b.GetComponent<Image>();if(image==null)return;
            image.sprite=theme.Panel;image.type=Image.Type.Sliced;image.color=color;
            var inset=UiAuthoring.Find(b.transform,"Panel")?.GetComponent<Image>();if(inset!=null){inset.sprite=theme.Panel;inset.type=Image.Type.Sliced;inset.color=color;}
            var colors=b.colors;colors.normalColor=Color.white;colors.highlightedColor=new Color(.95f,.98f,1);colors.pressedColor=new Color(.78f,.84f,.88f);colors.disabledColor=new Color(.57f,.64f,.68f);b.colors=colors;
            foreach(var text in b.GetComponentsInChildren<TMP_Text>(true))text.color=Color.white;
        }
        void StyleMission()
        {
            foreach(var slot in client.MissionUI.Mission_Reward_Slot_List)
            {
                var image=UiAuthoring.Find(slot.transform,"Slot")?.GetComponent<Image>();if(image!=null){image.sprite=theme.Panel;image.color=new Color32(102,139,179,255);}
            }
            foreach(var item in client.MissionUI.Mission_Item_UI_List)
                if(item.VIP_Panel_obj!=null)foreach(var im in item.VIP_Panel_obj.GetComponentsInChildren<Image>(true))
                    if(im.name=="Image"){im.sprite=theme.Panel;im.color=new Color32(121,87,170,255);}
        }
        void StyleRebirth()
        {
            var panel=canvas.GetComponentInChildren<Rebirth_Panel_UI>(true);
            foreach(var item in panel.Upgrade_item_list)
            {
                var image=item.GetComponent<Image>();image.sprite=theme.Panel;image.color=new Color32(173,155,215,255);
                foreach(var t in item.GetComponentsInChildren<TMP_Text>(true))if(t!=item.Price_txt)t.color=PenguinUiTheme.TextInk;
            }
            var ruby=UiAuthoring.Find(panel.transform,"Panel/Panel/Ruby")?.GetComponent<Image>();
            if(ruby!=null){ruby.sprite=theme.Panel;ruby.color=new Color32(145,111,196,255);ruby.type=Image.Type.Sliced;}
            foreach(var go in new[]{panel.UpgradeRebirth_Able_obj,panel.UpgradeRebirth_IAP_obj,panel.UpgradeRebirth_Disable_obj})
                if(go!=null){var b=go.GetComponent<Button>();if(b!=null)AccentButton(b,new Color32(179,87,199,255));}
            var row=UiAuthoring.Find(panel.transform,"Panel/Panel/Rebirth_Reward_Panel  (AD)")?.GetComponent<Image>();
            if(row!=null){row.color=new Color32(203,179,235,255);var button=UiAuthoring.Find(row.transform,"Rebirth_Btn")?.GetComponent<Button>();if(button!=null)AccentButton(button,new Color32(184,77,170,255));}
        }
        void StyleShop()
        {
            huntRewardExplanation=UiAuthoring.Find(client.MonsterMode.monster_start_ui.transform,"Panel/Explain/I2_txt")?.GetComponent<TMP_Text>();
            var list=UiAuthoring.Find(canvas.transform,"SafeArea/Shop_UI/Panel/Scroll View/Viewport/Content/Dia (List)");
            if(list==null)return;
            foreach(Transform pack in list)
            {
                if(!pack.name.StartsWith("Dia_Pack"))continue;
                var icon=UiAuthoring.Find(pack,"image")?.GetComponent<Image>();if(icon!=null){icon.sprite=BlueDiamond;icon.preserveAspect=true;icon.color=Color.white;}
            }
            blueDiamondTitle=UiAuthoring.Find(list,"Dia")?.GetComponentInChildren<TMP_Text>(true);if(blueDiamondTitle!=null)WeaponText.Set(blueDiamondTitle,"蓝钻石");
            // Use the same paw coin at wallet, hunt drop and hunt settlement.
            foreach(var im in canvas.GetComponentsInChildren<Image>(true))
            {
                string p=PathOf(im.transform);bool hunt=p.Contains("Monster_UI/")||p.Contains("Right_Menu/Monster_Btn/");
                if(hunt&&im.sprite!=null&&(im.sprite.name.Contains("gems-14")||im.sprite.name.Contains("Currency 3"))){im.sprite=PetCoin;im.color=Color.white;im.preserveAspect=true;}
                if(p.Contains("Pet_UI")&&p.Contains("Currency/Petcoin/Image")){im.sprite=PetCoin;im.color=Color.white;im.preserveAspect=true;}
            }
        }
        void StyleCompanions()
        {
            var full=GetComponent<PenguinFullReskin>();
            // The native silhouette-sized canvases otherwise give the new art
            // different visible extents. Use clean catalogue sprites in UI only.
            client.Guns.Gun_sprites=(Sprite[])full.Weapons.Clone();if(Application.isPlaying)client.Guns.ReloadGunUI();
            foreach(var item in canvas.GetComponentsInChildren<Gun_Item>(true)){Fit(item.Gun_img,(RectTransform)item.transform,158,96);Fit(item.Shadow_img,(RectTransform)item.transform,158,96);}
            foreach(var item in canvas.GetComponentsInChildren<Gun_Item_Demo>(true)){Fit(item.Gun_img,(RectTransform)item.transform,158,96);Fit(item.Shadow_img,(RectTransform)item.transform,158,96);}
            foreach(var item in canvas.GetComponentsInChildren<Gun_Slot>(true)){Fit(item.Gun_img,(RectTransform)item.transform,158,96);Fit(item.Shadow_img,(RectTransform)item.transform,158,96);}
            for(int i=0;i<client.Skins.Skin_item_list.Length;i++)
            {
                var item=client.Skins.Skin_item_list[i];item.Cat_img.sprite=item.Shadow_img.sprite=full.Skins[i];
                Fit(item.Cat_img,(RectTransform)item.transform,155,i==0?156:180);Fit(item.Shadow_img,(RectTransform)item.transform,155,i==0?156:180);
            }
        }
        static void Fit(Image image,RectTransform space,float width,float height)
        {
            if(image==null)return;(image.GetComponent<PenguinIconSize>()??image.gameObject.AddComponent<PenguinIconSize>()).Configure(space,new Vector2(width,height));
        }
        public static void SortModal(GameObject go)
        {
            var c=go.GetComponent<Canvas>();if(c==null)c=go.AddComponent<Canvas>();c.overrideSorting=true;c.sortingOrder=10020;
            if(go.GetComponent<GraphicRaycaster>()==null)go.AddComponent<GraphicRaycaster>();if(go.GetComponent<PenguinModalLayer>()==null)go.AddComponent<PenguinModalLayer>();
        }
        void StyleOffers()
        {
            var step=(client.LocalStore!=null?client.LocalStore.StepUpOffer:canvas.GetComponentInChildren<StepUp>(true)).popup;var panel=UiAuthoring.Find(step.transform,"Panel");
            var icon=UiAuthoring.Find(panel,"Icon") as RectTransform;if(icon!=null){icon.anchorMin=icon.anchorMax=Vector2.one*.5f;icon.sizeDelta=new Vector2(170,170);icon.anchoredPosition=new Vector2(0,680);icon.SetAsLastSibling();}
            var title=UiAuthoring.Find(panel,"StepUP_txt")?.GetComponent<TMP_Text>();if(title!=null){title.rectTransform.anchorMin=title.rectTransform.anchorMax=Vector2.one*.5f;title.fontSize=62;title.rectTransform.anchoredPosition=new Vector2(0,545);}
            var explanation=UiAuthoring.Find(panel,"Explain_txt") as RectTransform;if(explanation!=null){explanation.anchorMin=explanation.anchorMax=Vector2.one*.5f;explanation.anchoredPosition=new Vector2(0,475);}
            var time=UiAuthoring.Find(panel,"Time") as RectTransform;if(time!=null)time.anchoredPosition=new Vector2(0,410);
            var list=UiAuthoring.Find(panel,"Pack_list") as RectTransform;CreateScroll(panel,list,new Vector2(970,1110),new Vector2(0,-200));
            foreach(var item in step.StepUp_Item_list)Offer(item.transform);
            var weekly=UiAuthoring.Find(client.WeeklyShop.WeeklyShop_UI.transform,"Panel/Menu_DailyGun");
            var items=weekly.GetComponentsInChildren<DailyGun_Item>(true);
            var content=new GameObject("WeeklyOfferContent",typeof(RectTransform)).GetComponent<RectTransform>();content.SetParent(weekly,false);
            foreach(var item in items){item.transform.SetParent(content,false);Offer(item.transform);}
            CreateScroll(weekly,content,new Vector2(970,810),new Vector2(0,-40));
            foreach(var scroll in client.WeeklyShop.WeeklyShop_UI.GetComponentsInChildren<ScrollRect>(true)){scroll.movementType=ScrollRect.MovementType.Elastic;scroll.inertia=true;scroll.scrollSensitivity=45;}
            foreach(var item in client.WeeklyShop.WeeklyShop_UI.GetComponentsInChildren<PlusPackItem>(true))if(!item.IsBanner)Offer(item.transform);
        }
        void Offer(Transform t){(t.GetComponent<PenguinOfferCard>()??t.gameObject.AddComponent<PenguinOfferCard>()).Configure(theme.Panel);}
        static void CreateScroll(Transform parent,RectTransform content,Vector2 size,Vector2 position)
        {
            var root=new GameObject("OfferScrollView",typeof(RectTransform),typeof(Image),typeof(ScrollRect));root.transform.SetParent(parent,false);var rt=(RectTransform)root.transform;rt.sizeDelta=size;rt.anchoredPosition=position;var surface=root.GetComponent<Image>();surface.color=Color.clear;surface.raycastTarget=true;
            var viewport=new GameObject("Viewport",typeof(RectTransform),typeof(Image),typeof(Mask)).GetComponent<RectTransform>();viewport.SetParent(rt,false);viewport.anchorMin=Vector2.zero;viewport.anchorMax=Vector2.one;viewport.sizeDelta=Vector2.zero;viewport.GetComponent<Image>().color=Color.white;viewport.GetComponent<Mask>().showMaskGraphic=false;
            content.SetParent(viewport,false);content.anchorMin=new Vector2(0,1);content.anchorMax=Vector2.one;content.pivot=new Vector2(.5f,1);content.sizeDelta=new Vector2(0,0);content.anchoredPosition=Vector2.zero;content.localScale=Vector3.one;
            var layout=content.GetComponent<VerticalLayoutGroup>()??content.gameObject.AddComponent<VerticalLayoutGroup>();layout.padding=new RectOffset(12,12,20,20);layout.spacing=38;layout.childAlignment=TextAnchor.UpperCenter;layout.childControlWidth=layout.childControlHeight=false;layout.childForceExpandWidth=layout.childForceExpandHeight=false;
            var fitter=content.GetComponent<ContentSizeFitter>()??content.gameObject.AddComponent<ContentSizeFitter>();fitter.horizontalFit=ContentSizeFitter.FitMode.Unconstrained;fitter.verticalFit=ContentSizeFitter.FitMode.PreferredSize;
            var scroll=root.GetComponent<ScrollRect>();scroll.viewport=viewport;scroll.content=content;scroll.horizontal=false;scroll.vertical=true;scroll.movementType=ScrollRect.MovementType.Elastic;scroll.scrollSensitivity=45;scroll.inertia=true;
            Canvas.ForceUpdateCanvases();LayoutRebuilder.ForceRebuildLayoutImmediate(content);scroll.verticalNormalizedPosition=1;
        }
        void StyleScene()
        {
            client.MineMode.Ore_sprites=OreGrades;
            // Shipped catalogue: 40 entries = 10 Stage families x 4 degrees.
            // Keep the native stage*4+degree lookup and all health/drop rules.
            var previous=client.Forest.Tree_sprites;
            if(TargetVariety.Length!=10)throw new InvalidOperationException("Ten Stage target families required");
            var catalogue=new Sprite[previous.Length];
            for(int i=0;i<catalogue.Length;i++)
            {
                int family=i/4,degree=i%4;
                var source=TargetVariety[family];
                var reference=previous[i];
                float ppu=Mathf.Max(source.rect.height/reference.bounds.size.y,source.rect.width/reference.bounds.size.x);
                var sprite=Sprite.Create(source.texture,source.rect,reference.pivot/reference.rect.size,ppu,0,SpriteMeshType.FullRect);
                sprite.name="Stage-"+(family+1).ToString("D2")+"-degree-"+degree;
                catalogue[i]=sprite;stageSprites.Add(sprite);
            }
            // Already-spawned opening wave must also receive this Stage's family.
            foreach(var tree in client.Forest.Map_obj.GetComponentsInChildren<Tree>(true))
            {
                int degree=0;for(int d=0;d<4;d++)if(tree.spriteRenderer.sprite==previous[(client.Forest.Stage_Now*4+d)%previous.Length]){degree=d;break;}
                tree.spriteRenderer.sprite=catalogue[(client.Forest.Stage_Now*4+degree)%catalogue.Length];
            }
            client.Forest.Tree_sprites=catalogue;
            // Keep map edges clear; perimeter Polar scenery is no longer spawned.
        }
        void OnDestroy(){foreach(var button in freeCashButtons)if(button!=null)button.onClick.RemoveListener(ShowFreeCash);if(!StaticUiBaked&&serviceToast!=null)Destroy(serviceToast);foreach(var sprite in stageSprites)if(sprite!=null)Destroy(sprite);}
        static string PetBaitLabel()
        {
            switch(Language.Current)
            {
                case SystemLanguage.Chinese: case SystemLanguage.ChineseSimplified: return "宠物诱饵（用于宠物抽取）";
                case SystemLanguage.ChineseTraditional: return "寵物誘餌（用於寵物抽取）";
                case SystemLanguage.Korean: return "펫 먹이";
                default: return "pet bait";
            }
        }
        void LateUpdate(){if(huntRewardExplanation!=null&&huntRewardExplanation.text.Contains("<sprite"))WeaponText.Set(huntRewardExplanation,System.Text.RegularExpressions.Regex.Replace(huntRewardExplanation.text,"<sprite[^>]*>",PetBaitLabel()));if(blueDiamondTitle!=null&&blueDiamondTitle.text!="蓝钻石")WeaponText.Set(blueDiamondTitle,"蓝钻石");foreach(var t in backplates)if(!StaticUiBaked&&t!=null&&t.gameObject.activeSelf)t.gameObject.SetActive(false);}
    }
}
