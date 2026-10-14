using System;
using System.Collections;
using System.Globalization;
using CatGunner.Runtime;
using UnityEngine;

public enum DailyCheck_status { Normal, Getable, Geted }

// vc257 ordinary DailyCheck. Local date authority and startup scheduling are
// explicit offline adapters; no trusted Time_manager or affiliate grant exists.
public sealed class DailyCheck : MonoBehaviour
{
    public static DailyCheck instance;
    public GameObject DailyCheck_Panel_obj;
    public DateTime LastCheck_Date;
    public int CheckNum, TotalCheckNum;
    public DailyCheck_Reward[] Reward_list;
    public int[] DiaReward_list;
    public GameObject Coupang_Panel, Coupang_Active_obj, Coupang_NonActive_obj, Coupang_Loading_obj;
    public TMPro.TMP_Text Coupang_Remain_text;
    public DateTime Coupang_LastGet_Date;
    public GameObject Coupang_hud_obj;
    [NonSerialized] public Func<DateTime> LocalToday = () => DateTime.Now.Date;
    [NonSerialized] public bool AutoShow = true;
    public bool ShownThisSession { get; private set; }
    public int LastRequestedDiamondParticles { get; private set; }
    private GameClient client;
    private bool bound;
    private void OnEnable() => instance = this;
    private void OnDestroy() { if (instance == this) instance = null; }
    public static void ValidateState(SaveData s)
    {
        if (s.CheckNum < 0 || s.CheckNum > 7 || s.TotalCheckNum < 0 ||
            (!string.IsNullOrEmpty(s.LastCheck_Date) && !DateTime.TryParse(s.LastCheck_Date, CultureInfo.InvariantCulture, DateTimeStyles.RoundtripKind, out _)))
            throw new InvalidOperationException("Unsupported DailyCheck state; save preserved");
    }
    public void Bind(GameClient owner)
    {
        if (bound) return;
        ValidateState(owner.State);
        if (Reward_list == null || Reward_list.Length != 7 || DiaReward_list == null || DiaReward_list.Length != 7)
            throw new InvalidOperationException("Original DailyCheck dependencies missing");
        client = owner; bound = true;
        // Bind the original popup wallet to the existing local currency event.
        foreach (var currency in GetComponentsInChildren<Currency>(true)) currency.Bind(owner);
        // Missing legacy date means never claimed. Keep its original serialized
        // string until a real claim, rather than rewriting it during binding.
        DateTime last = string.IsNullOrEmpty(owner.State.LastCheck_Date) ? DateTime.MinValue : DateTime.Parse(owner.State.LastCheck_Date, CultureInfo.InvariantCulture, DateTimeStyles.RoundtripKind);
        First_reload(last, owner.State.CheckNum, owner.State.TotalCheckNum);
    }
    public void First_reload(DateTime lastDate, int checkNum, int totalCheckNum)
    {
        LastCheck_Date = lastDate; CheckNum = checkNum; TotalCheckNum = totalCheckNum;
        StartCoroutine(Show_WhenReady());
    }
    public void NewUser_Reload()
    {
        LastCheck_Date = LocalToday().Date.AddDays(-1); CheckNum = TotalCheckNum = 0;
        Coupang_LastGet_Date = LastCheck_Date;
        StartCoroutine(Show_WhenReady());
    }
    private IEnumerator Show_WhenReady()
    {
        yield return null;
        // Original waits for trusted date checks. Independent offline entry
        // waits for loading and tutorial so it cannot cover onboarding controls.
        while (client != null && (!client.ReadyForPlay || (client.Tutorial != null && client.Tutorial.CurrentStep != TutorialStep.Done))) yield return null;
        if (AutoShow) Try_Show();
    }
    public void Try_Show()
    {
        if (!ShownThisSession && is_DateChange()) { ShownThisSession = true; UI_reload(); }
    }
    public void Open_Btn() => UI_reload(); // ForceCheck is unavailable offline.
    public bool is_DateChange() => LastCheck_Date.Date < LocalToday().Date;
    public bool is_GetAble(int index) => index == CheckNum && is_DateChange();
    public DailyCheck_status CheckStatus_return(int index) => index < CheckNum ? DailyCheck_status.Geted : index == CheckNum && is_DateChange() ? DailyCheck_status.Getable : DailyCheck_status.Normal;
    public void UI_reload()
    {
        if (!bound || client == null || !client.ReadyForPlay) return;
        if (CheckNum == 7 && is_DateChange()) CheckNum = 0;
        for (int i = 0; i < Reward_list.Length; i++) Reward_list[i].Reload(CheckStatus_return(i));
        DailyCheck_Panel_obj.SetActive(true);
    }
    public void DailyReward_Get(int index)
    {
        if (!bound || !client.ReadyForPlay) return;
        if (index == CheckNum && index >= 0 && index < DiaReward_list.Length && is_DateChange())
        {
            Get_Reward(index);
            LastRequestedDiamondParticles = 8;
            Dia_Attraction.instance?.Dia_Spawn(Reward_list[index].transform, 8);
            CheckNum = unchecked(CheckNum + 1); TotalCheckNum = unchecked(TotalCheckNum + 1);
            LastCheck_Date = LocalToday().Date;
            client.State.LastCheck_Date = LastCheck_Date.ToString("o", CultureInfo.InvariantCulture);
            UI_reload();
            Sound_manager.instance?.PlaySfx(SfxType.Purchase, 1f);
            Capture(); client.SaveNow();
        }
        else Sound_manager.instance?.PlaySfx(SfxType.Dont, 1f);
    }
    private void Get_Reward(int index) => client.AwardDiamonds(DiaReward_list[index]);
    public void Capture()
    {
        if (!bound) return;
        client.State.CheckNum = CheckNum; client.State.TotalCheckNum = TotalCheckNum;
    }
    public void Close() => DailyCheck_Panel_obj.SetActive(false);
}
