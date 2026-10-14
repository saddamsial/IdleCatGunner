using System;
using Cysharp.Threading.Tasks;
using CatGunner.Runtime;
using System.Linq;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.U2D.Animation;
using TMPro;

namespace CatGunner.Runtime
{
    // Narrow runtime binding of omitted original components and extracted UI.
    // Working scene stays unchanged; user's requested left menu order/diamonds-
    // only inventory wallet are presentation overrides, not progression rules.
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "RecoveryClientPresentation")] public sealed class ClientPresentation : MonoBehaviour
    {
        GameClient client;
        public bool StaticUiBaked;
        [SerializeField] Button shopButton,informationButton,collectionButton;
        [SerializeField] Currency weaponWallet;
        [SerializeField] RectTransform safeArea;
        [field:SerializeField] public GameObject DrawInformation {get;private set;}
        [field:SerializeField] public Gun_Collection_UI Collection {get;private set;}
        [SerializeField] TextMeshProUGUI drawPrice;
        [SerializeField] Transform weaponRoot;
        [SerializeField] bool lazyWeaponPanels;
        [SerializeField] string informationResource="UI/Draw_Info_UI",collectionResource="UI/GunCollection_UI";
        DeferredPrefabSlot informationSlot,collectionSlot;
        bool informationOpening,collectionOpening,informationPrepared,collectionPrepared;
        public bool LazyWeaponPanels=>lazyWeaponPanels;
        public bool IsInformationLoading=>informationOpening;
        public bool IsCollectionLoading=>collectionOpening;
        public void Bind(GameClient owner)
        {
            if(client!=null)client.MoneyChanged-=ReloadWallet;
            client=owner;
            if(lazyWeaponPanels)
            {
                informationSlot??=new DeferredPrefabSlot(informationResource,weaponRoot,destroyCancellationToken);
                collectionSlot??=new DeferredPrefabSlot(collectionResource,weaponRoot,destroyCancellationToken);
            }
            RestoreSkins();
            RestoreLaserTransparency();
            RestoreTargetRotation();
            var canvas=owner.Slider.GetComponentInParent<Canvas>();
            CompanionStaticText.Load().Apply(canvas.transform,CatGunner.Runtime.Language.Current);
            MissionText.Load().Apply(canvas.transform,CatGunner.Runtime.Language.Current);
            SeasonPreview.Bind(canvas.transform);
            ModeText.Load().Apply(canvas.transform,CatGunner.Runtime.Language.Current);
            RemainingUIExt.Apply(canvas.transform,CatGunner.Runtime.Language.Current);
            if(StaticUiBaked)
            {
                BindButton(shopButton,owner.LocalStore.OpenShop);
                BindButton(informationButton,OpenInformation);BindButton(collectionButton,OpenCollection);
                weaponWallet.Bind(owner);RefreshWeaponStaticText(Language.Current);
                owner.MoneyChanged+=ReloadWallet;ReloadWallet();
                (GetComponent<MobileViewport>()??gameObject.AddComponent<MobileViewport>()).Bind(safeArea);
                if(GetComponent<MobilePerformance>()==null)gameObject.AddComponent<MobilePerformance>();
                GetComponent<Language>().Bind(canvas.transform,this);return;
            }
            var all=canvas.GetComponentsInChildren<Transform>(true);
            Layout(all.Single(t=>t.name=="Left_Menu"),TextAnchor.LowerLeft,
                new[]{"StepUp_obj","Buff_obj","Shop_Btn","Rebirth_Btn","Pet_Btn ","Fish_Btn","Skin_Btn","Gun_Btn"});
            Layout(all.Single(t=>t.name=="Right_Menu"),TextAnchor.LowerRight,
                new[]{"DiaPig_obj","Auto_obj","Raid_Btn","Adventure_Btn","Monster_Btn","Boss_Btn","Mine_Btn","SpeedRun_Btn"});
            var shop=all.Single(t=>t.name=="Left_Menu").Find("Shop_Btn").GetComponent<Button>();
            // Early bootstrap attached a specific purchase to the Shop entry.
            for(int i=0;i<shop.onClick.GetPersistentEventCount();i++)shop.onClick.SetPersistentListenerState(i,UnityEngine.Events.UnityEventCallState.Off);
            shop.onClick.AddListener(owner.LocalStore.OpenShop);
            var root=all.Single(t=>t.name=="Gun_UI  (SafeArea)");
            weaponRoot=root;
            var page=root.Find("GunList_UI");
            DrawInformation=Instantiate(Resources.Load<GameObject>("WeaponDrawInformation"),root,false);
            DrawInformation.name="Draw_Info_UI";DrawInformation.SetActive(false);
            RefreshWeaponStaticText(CatGunner.Runtime.Language.Current);
            var collection=Instantiate(Resources.Load<GameObject>("WeaponCollection"),root,false);
            collection.name="GunCollection_UI";Collection=collection.GetComponent<Gun_Collection_UI>();collection.SetActive(false);
            var buttons=page.GetComponentsInChildren<Button>(true);
            BindButton(buttons.Single(b=>b.name=="Info_Btn"),OpenInformation);
            BindButton(buttons.Single(b=>b.name=="Collection_Btn"),Collection.UI_Reload);
            var currency=page.Find("Panel/Menu (Gun List)/Currency");
            var wallet=currency.GetComponent<Currency>()??currency.gameObject.AddComponent<Currency>();
            wallet.Money_txt=currency.Find("Money/Price_txt").GetComponent<TextMeshProUGUI>();
            wallet.Dia_txt=currency.Find("Dia/Price_txt").GetComponent<TextMeshProUGUI>();wallet.Bind(owner);
            currency.Find("Money").gameObject.SetActive(false);
            drawPrice=buttons.Single(b=>b.name=="Draw_Btn").transform.Find("Price_txt").GetComponent<TextMeshProUGUI>();
            owner.MoneyChanged+=ReloadWallet;ReloadWallet();
            var viewport=gameObject.GetComponent<MobileViewport>()??gameObject.AddComponent<MobileViewport>();viewport.Bind((RectTransform)canvas.transform.Find("SafeArea"));
            if(GetComponent<MobilePerformance>()==null)gameObject.AddComponent<MobilePerformance>();
            (GetComponent<Language>()??gameObject.AddComponent<Language>()).Bind(canvas.transform,this);
        }
#if UNITY_EDITOR
        public void BakeStaticUi(GameClient owner)
        {
            if(StaticUiBaked)throw new InvalidOperationException("Presentation already authored");
            var canvas=owner.Slider.GetComponentInParent<Canvas>();
            var left=canvas.transform.Find("SafeArea/Main_UI/Btn_list/Left_Menu");
            var right=canvas.transform.Find("SafeArea/Main_UI/Btn_list/Right_Menu");
            Layout(left,TextAnchor.LowerLeft,new[]{"StepUp_obj","Buff_obj","Shop_Btn","Rebirth_Btn","Pet_Btn ","Fish_Btn","Skin_Btn","Gun_Btn"});
            Layout(right,TextAnchor.LowerRight,new[]{"DiaPig_obj","Auto_obj","Raid_Btn","Adventure_Btn","Monster_Btn","Boss_Btn","Mine_Btn","SpeedRun_Btn"});
            shopButton=left.Find("Shop_Btn").GetComponent<Button>();
            weaponRoot=canvas.GetComponentsInChildren<Transform>(true).Single(t=>t.name=="Gun_UI  (SafeArea)");
            DrawInformation=UnityEditor.PrefabUtility.InstantiatePrefab(Resources.Load<GameObject>("WeaponDrawInformation"),weaponRoot) as GameObject;
            DrawInformation.name="Draw_Info_UI";DrawInformation.SetActive(false);
            var collection=UnityEditor.PrefabUtility.InstantiatePrefab(Resources.Load<GameObject>("WeaponCollection"),weaponRoot) as GameObject;
            collection.name="GunCollection_UI";Collection=collection.GetComponent<Gun_Collection_UI>();collection.SetActive(false);
            var page=weaponRoot.Find("GunList_UI");var buttons=page.GetComponentsInChildren<Button>(true);
            informationButton=buttons.Single(b=>b.name=="Info_Btn");collectionButton=buttons.Single(b=>b.name=="Collection_Btn");
            var currency=page.Find("Panel/Menu (Gun List)/Currency");weaponWallet=currency.GetComponent<Currency>()??currency.gameObject.AddComponent<Currency>();
            weaponWallet.Money_txt=currency.Find("Money/Price_txt").GetComponent<TextMeshProUGUI>();weaponWallet.Dia_txt=currency.Find("Dia/Price_txt").GetComponent<TextMeshProUGUI>();currency.Find("Money").gameObject.SetActive(false);
            drawPrice=buttons.Single(b=>b.name=="Draw_Btn").transform.Find("Price_txt").GetComponent<TextMeshProUGUI>();
            safeArea=(RectTransform)canvas.transform.Find("SafeArea");
            RefreshWeaponStaticText(Language.Current);StaticUiBaked=true;
        }
#endif
        public void OpenInformation()
        {
            if(!lazyWeaponPanels){DrawInformation.SetActive(true);if(!StaticUiBaked)DrawInformation.transform.SetAsLastSibling();return;}
            OpenInformationAsync().Forget(Debug.LogException);
        }
        public void OpenCollection()
        {
            if(!lazyWeaponPanels){Collection.UI_Reload();return;}
            OpenCollectionAsync().Forget(Debug.LogException);
        }
        async UniTask OpenInformationAsync()
        {
            if(informationOpening)return;
            informationOpening=true;
            try
            {
                DrawInformation=await informationSlot.LoadAsync();
                if(!informationPrepared){PrepareDeferredPanel(DrawInformation);informationPrepared=true;}
                RefreshWeaponStaticText(Language.Current);
                if(weaponRoot!=null&&weaponRoot.gameObject.activeInHierarchy)DrawInformation.SetActive(true);
            }
            catch(OperationCanceledException) { }
            finally{informationOpening=false;}
        }
        async UniTask OpenCollectionAsync()
        {
            if(collectionOpening)return;
            collectionOpening=true;
            try
            {
                var root=await collectionSlot.LoadAsync();
                Collection=root.GetComponent<Gun_Collection_UI>();
                if(!collectionPrepared){PrepareDeferredPanel(root);collectionPrepared=true;}
                if(weaponRoot!=null&&weaponRoot.gameObject.activeInHierarchy)Collection.UI_Reload();
            }
            catch(OperationCanceledException) { }
            finally{collectionOpening=false;}
        }
        static void PrepareDeferredPanel(GameObject root)
        {
            foreach(var button in root.GetComponentsInChildren<Button>(true))PenguinFeedbackBootstrap.AttachButton(button);
            var content=root.transform.Find("Panel")??root.transform.Find("FeedbackContent");
            if(content is RectTransform rect)PenguinFeedbackBootstrap.AttachPopup(root,rect);
        }
        public void RefreshWeaponStaticText(SystemLanguage language)=>WeaponStaticText.Load().Apply(weaponRoot,DrawInformation!=null?DrawInformation.transform:null,language,lazyWeaponPanels);
        void ReloadWallet(){if(drawPrice!=null)drawPrice.color=client.State.Dia>=100?Color.white:client.UpgradePanels[0].Color_Disable;}
        static void BindButton(Button button,UnityEngine.Events.UnityAction action)
        {
            if(UiAuthoring.For(button.transform)?.StaticUiBaked!=true)
            {
                for(int i=0;i<button.onClick.GetPersistentEventCount();i++)button.onClick.SetPersistentListenerState(i,UnityEngine.Events.UnityEventCallState.Off);
                button.interactable=true;
            }
            button.onClick.RemoveListener(action);
            button.onClick.AddListener(action);
        }
        static void Layout(Transform parent,TextAnchor alignment,string[] order)
        {
            foreach(string name in order)parent.Find(name)?.SetAsLastSibling();
            var layout=parent.GetComponent<VerticalLayoutGroup>()??parent.gameObject.AddComponent<VerticalLayoutGroup>();
            layout.padding=new RectOffset();layout.childAlignment=alignment;layout.spacing=5;
            layout.childControlWidth=layout.childControlHeight=false;layout.childScaleWidth=layout.childScaleHeight=false;
            layout.childForceExpandWidth=layout.childForceExpandHeight=true;layout.reverseArrangement=false;
            var fitter=parent.GetComponent<ContentSizeFitter>()??parent.gameObject.AddComponent<ContentSizeFitter>();
            fitter.horizontalFit=ContentSizeFitter.FitMode.Unconstrained;fitter.verticalFit=ContentSizeFitter.FitMode.PreferredSize;
            LayoutRebuilder.MarkLayoutForRebuild((RectTransform)parent);
        }
        void RestoreSkins()
        {
            var source=client.Hero.skin_spriteRenderer.GetComponent<SpriteSkin>();
            if(source==null)throw new InvalidOperationException("Original hero bone binding missing");
            foreach(var cat in client.Team.Cat_list.Concat(client.Team.Helper_Cat!=null?new[]{client.Team.Helper_Cat}:Array.Empty<Cat>()))
            {
                if(cat==null||cat.skin_spriteRenderer.GetComponent<SpriteSkin>()!=null)continue;
                var target=cat.skin_spriteRenderer.gameObject.AddComponent<SpriteSkin>();
                target.enabled=false;target.autoRebind=false;target.alwaysUpdate=true;
                Transform Resolve(Transform bone)
                {
                    string p=bone.name;while(bone.parent!=source.transform){bone=bone.parent;p=bone.name+"/"+p;}
                    var result=target.transform.Find(p);if(result==null)throw new InvalidOperationException("Original companion bone missing: "+p);return result;
                }
                target.SetRootBone(Resolve(source.rootBone));target.SetBoneTransforms(source.boneTransforms.Select(Resolve).ToArray());
                // Exact original serialized bounds/flags shared by all four cats.
                JsonUtility.FromJsonOverwrite("{\"m_Bounds\":{\"m_Center\":{\"x\":-2.7707233,\"y\":2.1639214,\"z\":-6.7660623},\"m_Extent\":{\"x\":10.4810295,\"y\":4.4103947,\"z\":0}}}",target);
                target.enabled=true;
            }
        }
        void OnDestroy(){if(client!=null)client.MoneyChanged-=ReloadWallet;informationSlot?.Release();collectionSlot?.Release();}
        void RestoreTargetRotation()
        {
            var asset=Resources.Load<TextAsset>("TargetRotation");
            var config=asset!=null?JsonUtility.FromJson<TargetRotation.Configuration>(asset.text):null;
            foreach(var target in new[]{client.Hero}.Concat(client.Team.Cat_list).Where(c=>c!=null&&c.Target_obj!=null).Select(c=>c.Target_obj).Distinct())
            {
                var triangle=target.transform.Find("Triangle");
                if(triangle==null)throw new InvalidOperationException("Original target Triangle missing");
                (triangle.GetComponent<TargetRotation>()??triangle.gameObject.AddComponent<TargetRotation>()).Configure(config);
            }
        }
        public void ApplyPoolMaterials()=>RestoreLaserTransparency();
        static void RestoreLaserTransparency()
        {
            // Original built-in shader fileID203 uses alpha blending. Its saved
            // Standard-shader _SrcBlend=1/_DstBlend=0 are unused stale properties.
            var material=Resources.Load<Material>("LaserAlphaMaterial");
            if(material==null)throw new InvalidOperationException("Original laser alpha material missing");
            var pools=Polling_manager.instance;
            if(pools==null||pools.Polling_List==null)return;
            foreach(var renderer in pools.Polling_List.SelectMany(p=>p.Objects).SelectMany(o=>o.GetComponentsInChildren<ParticleSystemRenderer>(true)))
            {
                var materials=renderer.sharedMaterials;bool changed=false;
                for(int i=0;i<materials.Length;i++)if(materials[i]!=null&&materials[i].name=="6204a2b210c18674ba3823880b755eec"){materials[i]=material;changed=true;}
                if(changed)renderer.sharedMaterials=materials;
            }
        }
    }
}
