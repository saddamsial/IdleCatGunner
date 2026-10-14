using System;
using System.Collections;
using System.IO;
using System.Linq;
using UnityEngine;
using Cysharp.Threading.Tasks;

namespace CatGunner.Runtime
{
    // Native forest/economy sequencing through an independent local state adapter.
    // No cloud, paid entitlements, commercial managers or original phone save used.
    [DefaultExecutionOrder(100)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "RecoveryForestClient")] public sealed class GameClient : MonoBehaviour
    {
        public static GameClient Instance {get;private set;}
        public Tree_manager Forest;
        public Cat Hero;
        public GameSlider Slider;
        public GameObject WinUI,FailUI,LoadingUI;
        public bool StaticUiBaked;
        public Upgrade_Ingame[] UpgradePanels;
        public Currency Currency;
        public Gun_manager Guns;
        public Cat_manager Team;
        public StarUpgrade_manager StarUpgrades;
        public Skin_manager Skins;
        public Relic_manager Relics;
        public Adventure_manager Adventure;
        public Safe_manager Safe;
        public Fish_manager Fish;
        public GunInventory Inventory {get;private set;}
        public PetInventory Pets {get;private set;}
        public Missions Missions {get;private set;}
        public RebirthProgression Rebirth {get;private set;}
        public Pet_manager PetUI;
        public Mission_manager MissionUI;
        public Rebirth_manager RebirthUI;
        public Pet_Ingame_manager PetFollowers;
        public SpeedRun_manager SpeedRun;
        public Boss_manager BossMode;
        public Mine_manager MineMode;
        public Monster_manager MonsterMode;
        public Raid_manager RaidMode;
        public Raid_Mission_manager RaidMissions;
        public WeeklyShop WeeklyShop;
        public DailyGun WeeklyGuns;
        public DiaPig DiamondPig;
        public StarGem_Pig StarGemPig;
        public DailyCheck DailyLogin;
        public OfflineProgressManager Offline;
        public AutomaticUpgrade AutoUpgrades;
        public Buff_manager Buffs;
        public int BuffMultiplier(Buff_Type type)=>Buffs!=null?Buffs.GetMult(type):(State.Is_Buff_Pack?4:1);
        public int Mode {get;private set;}
        public GameObject[] UpgradeAnimations;
        // Independent offline feature preview; never grants original PlusPack ownership.
        public bool OfflineAutoMergePreview=true;
        public bool Persist=true;
        public bool OfflineRewardedAdSimulation=true;
        // User-authorized local preview, separate from the native stage-30 gate.
        public bool OfflineEarlyWeaponAdPreview=true;
        // Select the native Weapon02AdOn event branch locally; the live remote
        // configuration is unavailable. This is an explicit recovery variant.
        public bool OfflineTemporaryWeaponOffer=true;
        public bool OfflinePurchaseSimulation=true;
        public ModePresentation ModePresentation {get;private set;}
        public LocalStore LocalStore {get;private set;}
        public RewardedAds RewardedAds {get;private set;}
        [NonSerialized] public string SaveFolderOverride;
        public SaveData State {get;private set;}
        public BalanceCatalogue Balance {get;private set;}
        public event Action MoneyChanged;
        public event Action RoundStarted;
        public bool IsTransitioning {get;private set;}
        public int RoundsStarted {get;private set;}
        public int Failures {get;private set;}
        public bool IsStarting {get;private set;}
        // Editor script reload can retain flags while losing nonserializable services.
        // Resume through a normal Play start; never save a partial old session.
        public bool ReadyForPlay=>initialized&&!IsStarting&&archive!=null&&State!=null;
        public float TimeMax=180;
        public float RoundTimeMax {get;private set;}
        public bool PlusActive(int type)=>OfflinePurchaseSimulation&&LocalStore?.Model?.PlusActive(type)==true;
        public bool PlusBanner(int type)=>OfflinePurchaseSimulation&&State!=null&&State.Stage_Value_Max>=190&&!PlusActive(type);
        public float PlusTimeLimit(int mode,float baseline)=>LocalPurchases.PlusTimeLimit(mode,baseline,PlusActive(0));
        public int PlusReward(int mode,int baseline)=>LocalPurchases.PlusReward(mode,baseline,PlusActive(1));
        private EquipmentCatalogue equipment;
        private SaveArchive archive;
        private Enemy[] enemies;
        private Coroutine loading;
        private bool initialized;
        private float elapsedSinceSave;
        [SerializeField] private CanvasGroup startupUiInput;
        private bool startupInputCaptured,startupUiInteractable,startupUiRaycasts;
        private void Awake()
        {
            Instance=this;IsStarting=true;ForestRuntimeAcceptance.IsGaming=false;
            LockStartupUiInput();
            SetActive(Forest!=null?Forest.Map_obj:null,false);
            ShowLoading(true);
            if(!StaticUiBaked&&LoadingUI!=null)LoadingUI.transform.SetAsLastSibling();
        }
        private void LockStartupUiInput()
        {
            if(startupUiInput==null&&Slider!=null)
            {
                var canvas=Slider.GetComponentInParent<Canvas>().rootCanvas;
                startupUiInput=canvas.GetComponent<CanvasGroup>()??canvas.gameObject.AddComponent<CanvasGroup>();
            }
            if(startupUiInput==null)return;
            startupUiInteractable=startupUiInput.interactable;startupUiRaycasts=startupUiInput.blocksRaycasts;
            startupInputCaptured=true;startupUiInput.interactable=false;startupUiInput.blocksRaycasts=false;
        }
        private void RestoreStartupUiInput()
        {
            if(!startupInputCaptured)return;
            if(startupUiInput!=null){startupUiInput.interactable=startupUiInteractable;startupUiInput.blocksRaycasts=startupUiRaycasts;}
            startupInputCaptured=false;
        }
        private void Start() => Initialize();
        public Contents_Unlock_manager ContentUnlock;
        public Tutorial_manager Tutorial;
        public void Initialize()
        {
            if(initialized)return;
            RewardedAds=GetComponent<RewardedAds>();if(RewardedAds==null)RewardedAds=gameObject.AddComponent<RewardedAds>();RewardedAds.Enabled=OfflineRewardedAdSimulation;RewardedAds.Bind(this);
            Balance=BalanceCatalogue.Load();equipment=EquipmentCatalogue.Load();
#if UNITY_EDITOR
            // Explicit test-runner host isolation also covers the initial/restored
            // scene outside individual sceneLoaded fixtures. Cleared at handoff.
            if(SaveFolderOverride==null)
            {
                string hostFolder=UnityEditor.SessionState.GetString("CatGunner.Recovery.TestHostFolder",string.Empty);
                if(!string.IsNullOrEmpty(hostFolder))SaveFolderOverride=hostFolder;
            }
#endif
            string folder=SaveFolderOverride??Path.Combine(Application.persistentDataPath,"RecoveredClient-vc257");
            archive=new SaveArchive(folder);
            State=Persist?archive.Load():null;
            if(State==null)State=new SaveData {Upgrade_Lv=new int[3],Selected_items=(int[])equipment.Selected_items.Clone(),
                Gun_Collect=(bool[])equipment.Gun_Collect.Clone(),Star_Slot_Lv=new int[3]};
            ValidateSupportedState(State);
            Inventory=new GunInventory(State,UnityEngine.Random.Range);
            var progression=ProgressionCatalogue.Load();
            Pets=new PetInventory(State,progression);Missions=new Missions(State,progression,Inventory,()=>DateTime.Now);
            Rebirth=new RebirthProgression(State,progression,()=>RaidMode.Now());
            if(AutoUpgrades!=null)AutoUpgrades.Bind(this);
            if(Buffs!=null)Buffs.Bind(this);
            Inventory.Changed+=EquipmentChanged;
            Pets.Changed+=EquipmentChanged;Rebirth.Changed+=EquipmentChanged;Missions.Changed+=MissionChanged;
            // Keep unsupported profiles intact, rather than replacing their progress.
            equipment.Selected_items=(int[])State.Selected_items.Clone();
            Forest.Stage_Now=State.Stage_Now;Forest.Level_Now=State.Level_Now;Forest.Stage_Value_Max=State.Stage_Value_Max;
            Forest.WaveCleared+=GameWin;
            Forest.TreeDestroyed+=CountTreeMission;
            enemies=Forest.Map_obj.GetComponentsInChildren<Enemy>(true);
            if(Forest.Boss_tree!=null && !enemies.Contains(Forest.Boss_tree.enemy))enemies=enemies.Concat(new[]{Forest.Boss_tree.enemy}).ToArray();
            foreach(var enemy in enemies)enemy.MoneyDropped+=AwardTreeMoney;
            if(Relics!=null){Relics.Bind(this);Rebirth.RewardPercent=Relics.Progression.Special(Relic_Type.Rebirth);}
            if(Skins!=null)Skins.Bind(this);
            if(StarUpgrades!=null)StarUpgrades.Bind(this);
            if(Guns!=null)Guns.Bind(Inventory);
            if(Fish!=null)Fish.Bind(this);
            if(Safe!=null)Safe.Bind(this);
            if(Team!=null)Team.SetupFormation();
            Missions.ReloadSeason();Missions.ReloadDay();if(PetUI!=null)PetUI.Bind(Pets);if(Adventure!=null)Adventure.Bind(this);if(MissionUI!=null)MissionUI.Bind(Missions);if(RebirthUI!=null)RebirthUI.Bind(Rebirth);
            if(PetUI!=null)foreach(var coin in PetUI.Pet_UI_obj.GetComponentsInChildren<Currency_PetCoin>(true))coin.Bind(this);
            foreach(var panel in UpgradePanels??Array.Empty<Upgrade_Ingame>())panel.Bind(this);
            if(Currency!=null)Currency.Bind(this);
            if(SpeedRun!=null)SpeedRun.Bind(this);
            if(BossMode!=null)BossMode.Bind(this);
            if(MineMode!=null)MineMode.Bind(this);
            if(MonsterMode!=null)MonsterMode.Bind(this);
            if(RaidMode!=null)RaidMode.Bind(this);
            if(RaidMissions!=null)RaidMissions.Bind(this);
            if(WeeklyShop!=null)WeeklyShop.Bind(this);
            if(WeeklyGuns!=null)WeeklyGuns.Bind(this);
            if(ContentUnlock!=null)ContentUnlock.Bind(this);
            if(DiamondPig!=null)DiamondPig.Bind(this);
            if(StarGemPig!=null)StarGemPig.Bind(this);
            if(DailyLogin!=null)DailyLogin.Bind(this);
            LocalStore=GetComponent<LocalStore>();if(LocalStore==null)LocalStore=gameObject.AddComponent<LocalStore>();LocalStore.Bind(this);
            var presentation=GetComponent<ClientPresentation>();if(presentation==null)presentation=gameObject.AddComponent<ClientPresentation>();presentation.Bind(this);
            // Explicit local entry binding to the already recovered original BGM method.
            if(Sound_manager.instance!=null)Sound_manager.instance.BGM_Change_Main();
            ModePresentation=GetComponent<ModePresentation>()??gameObject.AddComponent<ModePresentation>();ModePresentation.Bind(this);
            initialized=true;
            if(Tutorial!=null)Tutorial.Bind(this);
            SetActive(WinUI,false);SetActive(FailUI,false);
            loading=StartCoroutine(StartupThenStart());
        }
        private IEnumerator StartupThenStart()
        {
            // Local Editor/offline entry adapter: keep the original walking-cat
            // presentation visible for 1.5 seconds. Original cold boot duration
            // depends on excluded services and is not claimed as recovered.
            if(Polling_manager.instance!=null)yield return Polling_manager.instance.PrepareAsync().ToCoroutine();
            GetComponent<ClientPresentation>()?.ApplyPoolMaterials();
            if(Offline!=null)yield return Offline.EvaluateAndApply(this);
            yield return new WaitForSecondsRealtime(1.5f);
            GameStart();
            yield return new WaitForSecondsRealtime(.2f);
            ShowLoading(false);IsStarting=false;loading=null;archive.AllowSave();
            RestoreStartupUiInput();
            if(Offline?.LastResult!=null)SaveNow();
        }
        public static void ValidateSupportedState(SaveData data)
        {
            if(new[]{data.RaidMission_Clear,data.RaidMission_Reward_Get,data.RaidMission_Reward_ReGet}.Any(a=>a!=null&&a.Length>8)||data.DailyGun_Purchase_Counts!=null&&(data.DailyGun_Purchase_Counts.Length>3||data.DailyGun_Purchase_Counts.Any(x=>x<0)))throw new InvalidOperationException("Unsupported weekly state; save preserved");
            if(data.Upgrade_Lv==null || data.Upgrade_Lv.Length!=3 || data.Upgrade_Lv.Any(v=>v<0||v>10000) ||
                data.Stage_Now<0 || data.Stage_Now>=5000 || data.Level_Now<0 || data.Level_Now>4 ||
                data.Selected_items==null || data.Selected_items.Length!=3 || data.Selected_items.All(v=>v==-1) || data.Selected_items.Any(v=>v< -1||v>=65))
                throw new NotSupportedException("Unsupported progression modifiers in this recovery client. The save was preserved.");
            if(data.Money.Value.Coefficient.Sign<0 || data.Money_Accum.Value.Coefficient.Sign<0)
                throw new InvalidDataException("Negative recovered wallet");
            FishRules.ValidateState(data);StarRules.ValidateState(data);
            SkinRules.ValidateState(data);RelicRules.ValidateState(data);AdventureRules.ValidateState(data);
            SafeInventory.ValidateState(data);
            RaidRules.ValidateState(data);
            DailyCheck.ValidateState(data);
        }
        public void GameStart()
        {
            if(!initialized)return;
            Mode=0;ModePresentation?.Select(0);if(Slider!=null)Slider.gameObject.SetActive(true);
            ForestRuntimeAcceptance.IsGaming=true;IsTransitioning=false;
            Forest.Map_obj.SetActive(true);Forest.Map_Batch();Cat.ResetLeaderTrail();if(Team!=null)Team.Warp(new Vector3(-100,0,0));else Hero.Warp(new Vector3(-100,0,0));
            ApplyBalance();RoundTimeMax=PlusTimeLimit(0,TimeMax);Forest.GameTime_Now=RoundTimeMax;
            if(PetFollowers!=null)PetFollowers.Warp(Hero.transform.position);
            if(Slider!=null){Slider.Stage_Reload(Forest.Stage_Now,Forest.Level_Now);Slider.Value_Reload(0);Slider.Time_Reload(1);}
            SetActive(Forest.SpeedBuff_obj,Forest.Stage_Now*10+Forest.Level_Now<Forest.Stage_Value_Max);
            Forest.ShowPendingSkip();
            RoundsStarted++;RoundStarted?.Invoke();
        }
        private void Update()
        {
            if(!ReadyForPlay)return;
            if(Mode==0&&ForestRuntimeAcceptance.IsGaming)
            {
                if(Forest.GameTime_Now>0)
                {
                    Forest.GameTime_Now-=Time.deltaTime;
                    if(Slider!=null)Slider.Time_Reload(Forest.GameTime_Now/RoundTimeMax);
                }
                else GameFail();
                if(Slider!=null && Forest.TreeCount_Max>0)Slider.Value_Reload((Forest.TreeCount_Max-Forest.TreeCount_Now)/(float)Forest.TreeCount_Max);
            }
            elapsedSinceSave+=Time.unscaledDeltaTime;
            // Local lifecycle adapter; interval is not claimed as the original autosave schedule.
            if(Persist && elapsedSinceSave>=5){SaveNow();elapsedSinceSave=0;}
        }
        private void AwardTreeMoney(CurrencyAmount amount,Vector3 position)
        {
            var value=amount.Value.Percent(Balance.Money(State.Upgrade_Lv[2]));
            value=value.Percent(Rebirth.Percent(2)).Percent(new DecimalAmount(100+(Skins?.Money_Accum_return()??0))).Percent(Pets.MoneyPercent).Percent(Relics?.Progression.Percent(1)??new DecimalAmount(100));
            value*=new DecimalAmount(BuffMultiplier(Buff_Type.Money));
            // Native buff multiplier follows upgrade/rebirth/skin/pet/relic.
            State.Money=CurrencyAmount.FromValue(State.Money.Value+value);
            State.Money_Accum=CurrencyAmount.FromValue(State.Money_Accum.Value+value);
            MoneyChanged?.Invoke();
            RewardFeedback.Money(position,NumberText.Format(value));
        }
        public void AwardPetCoin(int amount){State.PetCoin=checked(State.PetCoin+amount);MoneyChanged?.Invoke();}
        public void AwardDiamonds(int amount)
        {
            DiamondReward.Apply(State,amount);
            // Existing local wallet event bridges both native currency events.
            MoneyChanged?.Invoke();
        }
        public void AwardModeTreeMoney(CurrencyAmount amount,Vector3 position)=>AwardTreeMoney(amount,position);
        public void SuspendForestForSpeedRun()=>SuspendForestForMode(1);
        public void SuspendForestForMode(int mode)
        {
            if(mode!=1&&mode!=2&&mode!=3&&mode!=4&&mode!=5)throw new NotSupportedException("Unsupported mode");
            if(Adventure!=null)Adventure.Close();
            DiamondPig?.Close();StarGemPig?.Close_Popup();
            DailyLogin?.Close();
            Fish?.Close();
            if(Safe!=null){Safe.safe_ui.gameObject.SetActive(false);Guns.gun_info_ui.Close();}
            if(Relics!=null)Relics.Close();
            if(StarUpgrades!=null)StarUpgrades.popup.Close();
            if(Skins!=null){Skins.skin_info_ui.Close();Skins.Skin_List_UI.SetActive(false);}
            SaveNow();if(loading!=null)StopCoroutine(loading);loading=null;Mode=mode;ModePresentation?.Select(mode);IsTransitioning=false;
            ForestRuntimeAcceptance.IsGaming=false;Forest.Map_obj.SetActive(false);SetActive(Slider!=null?Slider.gameObject:null,false);
            SetActive(Forest.SpeedBuff_obj,false);SetActive(WinUI,false);SetActive(FailUI,false);ShowLoading(false);
            Forest.CancelSkipCue();
            // All five native mode entries call Setting.EcoMode_Off after exiting the forest.
            Setting.instance?.EcoMode_Off();
            ApplyBalance();foreach(var cat in Team.Cat_list){cat.ClearNearObj();cat.ClearAutoTarget();}
        }
        public bool Upgrade(int kind)
        {
            if(!ReadyForPlay || kind<0 || kind>2)return false;
            var wallet=State.Money.Value;
            if(!UpgradeTransaction.TryUpgrade(Balance,State.Upgrade_Lv,kind,ref wallet))return false;
            State.Money=CurrencyAmount.FromValue(wallet);ApplyBalance();MoneyChanged?.Invoke();
            if(Sound_manager.instance!=null)Sound_manager.instance.PlaySfx(SfxType.Upgrade);
            if(UpgradeAnimations!=null && kind<UpgradeAnimations.Length && UpgradeAnimations[kind]!=null)
            {var go=UpgradeAnimations[kind];if(go.activeSelf)go.SetActive(false);go.SetActive(true);}
            SaveNow();return true;
        }
        public bool AutoUpgradeAll()
        {
            if(!ReadyForPlay)return false;
            var wallet=State.Money.Value;
            if(!UpgradeTransaction.TryAutoUpgradeAll(Balance,State.Upgrade_Lv,ref wallet))return false;
            State.Money=CurrencyAmount.FromValue(wallet);ApplyBalance();MoneyChanged?.Invoke();
            foreach(var panel in UpgradePanels??Array.Empty<Upgrade_Ingame>())if(panel!=null)panel.Reload();
            if(!Cat_manager.is_Shoot_Mute&&Sound_manager.instance!=null)Sound_manager.instance.PlaySfx(SfxType.Upgrade);
            foreach(var go in UpgradeAnimations??Array.Empty<GameObject>())if(go!=null){if(go.activeSelf)go.SetActive(false);go.SetActive(true);}
            SaveNow();return true;
        }
        public void RelicsChanged(){Rebirth.RewardPercent=Relics?.Progression.Special(Relic_Type.Rebirth)??100;ApplyBalance();MoneyChanged?.Invoke();SaveNow();}
        public void SkinChanged(){ApplyBalance();MoneyChanged?.Invoke();SaveNow();}
        public void FishChanged(){ApplyBalance();MoneyChanged?.Invoke();SaveNow();}
        public void SafeChanged(){MoneyChanged?.Invoke();SaveNow();}
        private void EquipmentChanged(){ApplyBalance();MoneyChanged?.Invoke();SaveNow();}
        private void MissionChanged(){Relics?.UI_Reload();MoneyChanged?.Invoke();}
        private void CountTreeMission()=>Missions.Increase(0);
        public bool RebirthNow()
        {
            if(Mode!=0||!Rebirth.ResetForest(Forest.Stage_Now,Forest.Level_Now,RebirthUI?.EnhancedRebirthPending==true?3:1))return false;
            RebirthUI?.ConsumeEnhancedRebirth();Forest.Stage_Now=Forest.Level_Now=0;Missions.Increase(2);Restart();MoneyChanged?.Invoke();SaveNow();return true;
        }
        public void ApplyBalance()
        {
            equipment.Fish_Damage_Add=Fish?.GetTotalDamage()??0;equipment.Fish_Critical_Add=Fish?.GetTotalCriVal()??0;equipment.Fish_Critical_Chance=Fish?.GetTotalCriPer()??0;
            equipment.Selected_items=(int[])(Mode==5?RaidMode.Gun_List:State.Selected_items).Clone();
            equipment.Star_Slot_Lv=(int[])State.Star_Slot_Lv.Clone();
            equipment.RaidMode=Mode==5;
            equipment.BossMode=Mode==3;
            equipment.RaidWeakType=Mode==5?RaidMode.Buff_GunType_Now():GunType.SINGLE;
            equipment.MonsterMode=Mode==4;
            // Native effects are independent; all three active grant the shared super multiplier.
            equipment.BuffMultiplier=BuffMultiplier(Buff_Type.Power);
            equipment.SpeedBuffMultiplier=BuffMultiplier(Buff_Type.AtkSpeed);
            equipment.RebirthPower=Rebirth.Percent(0);
            equipment.Rebirth_Speed_Percent=int.Parse(Rebirth.Percent(1).PlainInteger(),System.Globalization.CultureInfo.InvariantCulture);
            equipment.Skin_Damage_Percent=100+(Skins?.Damage_Accum_return()??0);
            equipment.Skin_Speed_Percent=100+(Skins?.Speed_Accum_return()??0);
            equipment.Pet_Speed_Percent=Pets.MoveSpeedPercent;
            equipment.RelicPower=Relics?.Progression.Percent(0);equipment.RelicCritical=Relics?.Progression.Percent(2);equipment.Relic_MoveSpeed_Add=Relics?.Progression.Special(Relic_Type.MoveSpeed)??0;
            if(PetFollowers!=null)PetFollowers.Pet_Reload(Pets);
            if(Team!=null)Team.Balance_Reload(equipment,State.Upgrade_Lv[0],State.Upgrade_Lv[1],Mode==0?Forest.Level_Now:0);
            if(Mode==2&&Team!=null)foreach(var cat in Team.Cat_list){cat.Damage=CurrencyAmount.FromValue(new DecimalAmount(1));cat.Damage_str="1";cat.CriPer=0;}
            else if(Team==null) {equipment.ApplyPackageForest(Hero,0,State.Upgrade_Lv[0],State.Upgrade_Lv[1],Forest.Level_Now);Hero.GetComponent<ForestCombatAcceptance>()?.RefreshWeaponFlags();}
        }
        public void GameWin()
        {
            if(!initialized || Mode!=0 || !ForestRuntimeAcceptance.IsGaming)return;
            ForestRuntimeAcceptance.IsGaming=false;
            if(Slider!=null)Slider.Value_Reload(1);
            Forest.AdvanceAfterWin(Relics?.Progression.Special(Relic_Type.Skip)??0,()=>UnityEngine.Random.value);
            if(Sound_manager.instance!=null)Sound_manager.instance.PlaySfx(SfxType.Win);
            Missions.Increase(1);
            SetActive(WinUI,true);
            BeginTransition();
        }
        public void GameFail()
        {
            if(!initialized || Mode!=0 || !ForestRuntimeAcceptance.IsGaming)return;
            ForestRuntimeAcceptance.IsGaming=false;Failures++;
            if(Slider!=null && Forest.TreeCount_Max>0)Slider.Value_Reload((Forest.TreeCount_Max-Forest.TreeCount_Now)/(float)Forest.TreeCount_Max);
            SetActive(FailUI,true);if(Sound_manager.instance!=null)Sound_manager.instance.PlaySfx(SfxType.Fail);
            BeginTransition();
        }
        private void BeginTransition()
        {
            IsTransitioning=true;SaveNow();
            if(loading!=null)StopCoroutine(loading);
            loading=StartCoroutine(LoadingThenStart());
        }
        private IEnumerator LoadingThenStart()
        {
            bool newest=Forest.Stage_Now*10+Forest.Level_Now>=Forest.Stage_Value_Max;
            yield return new WaitForSeconds(newest?2:1);
            ShowLoading(true,false);
            yield return new WaitForSeconds(newest?1.5f:.75f);
            GameStart();
            yield return new WaitForSeconds(.2f);
            SetActive(WinUI,false);SetActive(FailUI,false);ShowLoading(false);loading=null;
        }
        Transform loadingParent;int loadingSibling;
        public void ShowLoading(bool show,bool coverMenus=true)
        {
            if(LoadingUI==null)return;
            if(StaticUiBaked)
            {
                bool initializing=show&&coverMenus&&IsStarting;
                // Keep the authored backdrop below the HUD, including startup.
                // Visibility and input state do not change its render order.
                LoadingUI.GetComponent<CanvasGroup>().blocksRaycasts=initializing;
                if(show)WeaponText.Set(UiAuthoring.Find(LoadingUI.transform,"Background/Cat/Loading_Txt").GetComponent<TMPro.TMP_Text>(),Language.TermText("고양이 이동중.."),Language.Current);
                LoadingUI.SetActive(show);return;
            }
            if(loadingParent==null){loadingParent=LoadingUI.transform.parent;loadingSibling=LoadingUI.transform.GetSiblingIndex();}
            if(show)
            {
                // Shared original loading screen must remain visible when Main_UI
                // is hidden for a mode. Restore its authored parent after closing.
                var loadingText=UiAuthoring.Find(LoadingUI.transform,"Background/Cat/Loading_Txt").GetComponent<TMPro.TMP_Text>();
                WeaponText.Set(loadingText,Language.TermText("고양이 이동중.."),Language.Current);
                var canvas=Slider.GetComponentInParent<Canvas>().rootCanvas.transform;
                bool initializing=coverMenus&&IsStarting;
                bool originalMainLayer=!initializing&&loadingParent.gameObject.activeInHierarchy;
                LoadingUI.transform.SetParent(originalMainLayer?loadingParent:canvas,false);
                // During play, all authored HUD/menu branches stay above the
                // walking-cat backdrop. Only uninitialized startup blocks input.
                if(originalMainLayer)LoadingUI.transform.SetSiblingIndex(loadingSibling);
                else LoadingUI.transform.SetAsFirstSibling();LoadingUI.SetActive(true);
                var overlay=LoadingUI.GetComponent<Canvas>();if(overlay==null)overlay=LoadingUI.AddComponent<Canvas>();overlay.overrideSorting=false;overlay.sortingOrder=0;
                var rect=(RectTransform)LoadingUI.transform;rect.anchorMin=Vector2.zero;rect.anchorMax=Vector2.one;rect.offsetMin=rect.offsetMax=Vector2.zero;
                if(originalMainLayer)
                {
                    // The source sibling follows EcoMode_Panel_UI and precedes
                    // every HUD control. Extend through the safe-area parent.
                    Canvas.ForceUpdateCanvases();var parent=(RectTransform)loadingParent;var corners=new Vector3[4];((RectTransform)canvas).GetWorldCorners(corners);
                    var lo=(Vector2)parent.InverseTransformPoint(corners[0])-parent.rect.min;var hi=(Vector2)parent.InverseTransformPoint(corners[2])-parent.rect.min;var size=parent.rect.size;
                    rect.anchorMin=new Vector2(lo.x/size.x,lo.y/size.y);rect.anchorMax=new Vector2(hi.x/size.x,hi.y/size.y);rect.offsetMin=rect.offsetMax=Vector2.zero;
                }
                if(LoadingUI.GetComponent<UnityEngine.UI.GraphicRaycaster>()==null)LoadingUI.AddComponent<UnityEngine.UI.GraphicRaycaster>();
                var input=LoadingUI.GetComponent<CanvasGroup>();if(input==null)input=LoadingUI.AddComponent<CanvasGroup>();input.blocksRaycasts=initializing;
            }
            else
            {
                LoadingUI.SetActive(false);LoadingUI.transform.SetParent(loadingParent,false);LoadingUI.transform.SetSiblingIndex(loadingSibling);
                var rect=(RectTransform)LoadingUI.transform;rect.anchorMin=Vector2.zero;rect.anchorMax=Vector2.one;rect.offsetMin=rect.offsetMax=Vector2.zero;
            }
        }
        public void Restart()
        {
            if(loading!=null){StopCoroutine(loading);loading=null;}
            Forest.CancelSkipCue();
            SetActive(WinUI,false);SetActive(FailUI,false);ShowLoading(false);GameStart();
        }
        // Explicit local event bridge for native ordinary tutorial diamond top-up.
        public void NotifyTutorialCurrencyChanged()=>MoneyChanged?.Invoke();
        public void NotifyOfflineStateChanged(){ApplyBalance();MoneyChanged?.Invoke();foreach(var p in UpgradePanels??Array.Empty<Upgrade_Ingame>())p?.Reload();}
        public void SaveNow()
        {
            if(!ReadyForPlay || !Persist)return;
            State.Stage_Now=Forest.Stage_Now;State.Level_Now=Forest.Level_Now;State.Stage_Value_Max=Forest.Stage_Value_Max;
            if(Tutorial!=null)State.TutorialCleared=Tutorial.CurrentStep==TutorialStep.Done;
            if(Buffs!=null)Buffs.Capture();
            if(RaidMissions!=null)RaidMissions.Capture();
            if(WeeklyGuns!=null)WeeklyGuns.Capture();
            if(DailyLogin!=null)DailyLogin.Capture();
            if(DiamondPig!=null){DiamondPig.RefreshEntitlements();DiamondPig.Capture();}
            State.LastSaveTime=(Offline?.UtcNow??DateTime.UtcNow).ToString("O");archive.Save(State);
        }
        private void OnApplicationPause(bool paused){if(paused)SaveNow();}
        private void OnApplicationQuit()=>SaveNow();
        private void OnDisable()
        {
            RestoreStartupUiInput();
            if(!initialized)return;
            LocalStore?.Cancel();RewardedAds?.Cancel();SaveNow();ForestRuntimeAcceptance.IsGaming=false;
            if(loading!=null)StopCoroutine(loading);loading=null;IsTransitioning=false;
            Forest.WaveCleared-=GameWin;
            if(Inventory!=null)Inventory.Changed-=EquipmentChanged;
            if(Pets!=null)Pets.Changed-=EquipmentChanged;
            if(Rebirth!=null)Rebirth.Changed-=EquipmentChanged;
            if(Missions!=null)Missions.Changed-=MissionChanged;Forest.TreeDestroyed-=CountTreeMission;
            foreach(var enemy in enemies??Array.Empty<Enemy>())if(enemy!=null)enemy.MoneyDropped-=AwardTreeMoney;
            if(Instance==this)Instance=null;
        }
        private static void SetActive(GameObject go,bool active){if(go!=null)go.SetActive(active);}
    }
}
