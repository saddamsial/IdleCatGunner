using CatGunner.Runtime;
using UnityEngine;

// Original GUID, fields, flag predicates and ordinary UI/claim order.
// Purchase flags can be supplied by the separately authorized local simulator.
public sealed class DiaPig : MonoBehaviour
{
    public static DiaPig instance;
    public int Dia_Now, Dia_Max = 500;
    public DiaPig_UI diapig_ui;
    public SlicedFilledImage Fill;
    private GameClient client;
    private DiaPigCounter counter;
    public bool IsUnlocked => counter != null && counter.Unlocked;
    public int TickAmount => counter?.TickAmount ?? 0;
    public bool HasForcedAdsPack => client != null && client.OfflinePurchaseSimulation && client.State.Is_Remove_AD_forced;
    public bool HasAllAdsPack => client != null && client.OfflinePurchaseSimulation && client.State.Is_Remove_AD_All;
    private bool simulationEnabled;
    private void Awake() => instance = this;
    public void Bind(GameClient owner)
    {
        if (client == owner && counter != null) { RefreshEntitlements(); return; }
        client = owner; simulationEnabled = owner.OfflinePurchaseSimulation;
        counter = new DiaPigCounter(Dia_Max, (HasForcedAdsPack ? 1 : 0) + (HasAllAdsPack ? 1 : 0));
        Init(owner.State.diaPig);
    }
    public void Init(DiaPigSave data)
    {
        if (counter == null) return;
        counter.SetTickAmount((HasForcedAdsPack ? 1 : 0) + (HasAllAdsPack ? 1 : 0));
        counter.Init(data, System.DateTime.UtcNow, Time.realtimeSinceStartupAsDouble);
        Refresh();
    }
    public void RefreshEntitlements()
    {
        if (counter == null || client == null) return;
        int amount = (HasForcedAdsPack ? 1 : 0) + (HasAllAdsPack ? 1 : 0);
        bool variantChanged = simulationEnabled != client.OfflinePurchaseSimulation;
        if (amount == counter.TickAmount && !variantChanged) return;
        Capture();
        counter.SetTickAmount(amount);
        // Local simulator switch is not a native entitlement revocation. Exclude
        // time while this preview is disabled; never accrue it on re-enabling.
        if (variantChanged) counter.SetLastTick(System.DateTime.UtcNow, Time.realtimeSinceStartupAsDouble);
        simulationEnabled = client.OfflinePurchaseSimulation;
        Refresh();
    }
    private void Update()
    {
        RefreshEntitlements();
        if (!IsUnlocked) return;
        int old = counter.Count;
        counter.Tick(System.DateTime.UtcNow, Time.realtimeSinceStartupAsDouble);
        if (old != counter.Count) Refresh();
    }
    private void Refresh()
    {
        Dia_Now = counter.Count;
        Fill.fillAmount = (float)Dia_Now / Dia_Max;
        diapig_ui.UI_Reload();
    }
    public void Dia_Get()
    {
        RefreshEntitlements();
        if (!IsUnlocked || Dia_Now < 1 || client == null || !client.ReadyForPlay) return;
        int amount = counter.Claim(System.DateTime.UtcNow, Time.realtimeSinceStartupAsDouble);
        Dia_Now = counter.Count;
        client.AwardDiamonds(amount);
        Fill.fillAmount = 0; diapig_ui.UI_Reload();
        Sound_manager.instance?.PlaySfx(SfxType.Fusion, 1f);
        // Local persistence/event bridge; original global save throttle excluded.
        client.State.diaPig = counter.GetSaveData(); client.SaveNow();
    }
    public int GetSecondsUntilNextTick() => counter?.SecondsUntilNextTick(Time.realtimeSinceStartupAsDouble) ?? 0;
    public DiaPigSave GetSaveData() => counter?.GetSaveData();
    public void Capture()
    {
        // Preserve existing locked profiles verbatim, as in Rule 34. Only an
        // active entitlement transfers the native counter into the archive.
        if (client != null && IsUnlocked) client.State.diaPig = counter.GetSaveData();
    }
    public void Close() => diapig_ui.gameObject.SetActive(false);
    private void OnDestroy() { if (instance == this) instance = null; }
}
