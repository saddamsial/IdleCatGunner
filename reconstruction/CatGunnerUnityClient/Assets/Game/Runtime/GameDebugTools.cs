#if UNITY_EDITOR
using System;
using System.Globalization;
using System.Numerics;
using UnityEditor;
using UnityEngine;

namespace CatGunner.Runtime
{
    public enum EditorDebugResource { Money, Diamonds, Ruby, PetCoin, StarGem, ForestCore, DesertCore, TundraCore, PrismCore }
    public enum EditorDebugTickets { Mine, Raid, Adventure, FishDraws }
    // Compiled only in the Editor. The per-project switch defaults to off.
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "RecoveryEditorDebug")] public static class GameDebugTools
    {
        public const int MaxStage = 5000, MaxWave = 5, WeaponGrades = 13, PetGrades = 10, FishGrades = 13;
        static readonly string[] GradeNames = { "D", "C", "B", "A", "S", "SS", "SSS", "X", "XX", "XXX", "Z", "ZZ", "ZZZ" };
        public static string GradeName(int grade) => grade >= 1 && grade <= GradeNames.Length ? GradeNames[grade - 1] : "?";
        public static string ResourceName(EditorDebugResource resource) => resource switch
        {
            EditorDebugResource.Money => "金币", EditorDebugResource.Diamonds => "钻石",
            EditorDebugResource.Ruby => "红宝石", EditorDebugResource.PetCoin => "宠物币",
            EditorDebugResource.StarGem => "星石", EditorDebugResource.ForestCore => "森林核心",
            EditorDebugResource.DesertCore => "沙漠核心", EditorDebugResource.TundraCore => "冻原核心",
            EditorDebugResource.PrismCore => "棱镜核心", _ => "未知资源"
        };
        static string EnabledKey => "CatGunner.Recovery.EditorDebug.Enabled." + Application.dataPath;
        public static bool Enabled
        {
            get => EditorPrefs.GetBool(EnabledKey, false);
            set => EditorPrefs.SetBool(EnabledKey, value);
        }

        public static bool CanUse(GameClient client, out string message)
        {
            if (!Enabled) { message = "请先开启编辑器调试开关。"; return false; }
            if (!Application.isPlaying || client == null || !client.isActiveAndEnabled || !client.ReadyForPlay)
            { message = "请运行游戏并等待加载完成。"; return false; }
            if (client.Mode != 0 || client.IsTransitioning)
            { message = "请回到主关卡并等待关卡切换完成。"; return false; }
            message = null;
            return true;
        }

        // Inputs match GameSlider's one-based Stage x-y display.
        public static bool SetStage(GameClient client, int stage, int wave, bool raiseMaximum, out string message)
        {
            if (!CanUse(client, out message)) return false;
            if (stage < 1 || stage > MaxStage || wave < 1 || wave > MaxWave)
            { message = "Stage 范围为 1–5000，小关范围为 1–5。"; return false; }
            int index = stage - 1;
            var forest = client.Forest;
            if (forest == null || index >= (forest.Stage_Health_Balance?.Length ?? 0) || index >= (forest.Stage_Money_Balance?.Length ?? 0))
            { message = "目标 Stage 缺少关卡数值，未修改进度。"; return false; }
            forest.Stage_Now = index;
            forest.Level_Now = wave - 1;
            if (raiseMaximum) forest.Stage_Value_Max = Math.Max(forest.Stage_Value_Max, index * 10 + wave - 1);
            client.State.Stage_Now = forest.Stage_Now;
            client.State.Level_Now = forest.Level_Now;
            client.State.Stage_Value_Max = forest.Stage_Value_Max;
            client.Restart();
            client.ContentUnlock?.Reload();
            client.SaveNow();
            message = $"已切换到 Stage {stage}-{wave}。";
            return true;
        }

        public static bool GrantWeapon(GameClient client, int grade, int kind, out string message)
        {
            if (!CanUse(client, out message)) return false;
            if (grade < 1 || grade > WeaponGrades || kind < 0 || kind >= 5)
            { message = "武器等级范围为 1–13，请选择有效武器类型。"; return false; }
            if (client.Inventory == null || client.Inventory.FirstEmpty < 0)
            { message = "武器库存已满（16 格），请先合成或移入保险箱。"; return false; }
            if (!client.Inventory.AddRewardGun((grade - 1) * 5 + kind))
            { message = "领取武器失败。"; return false; }
            client.SaveNow();
            message = $"已领取 1 件 {GradeName(grade)} 武器。";
            return true;
        }

        public static bool GrantPet(GameClient client, int grade, out string message)
        {
            if (!CanUse(client, out message)) return false;
            if (grade < 1 || grade > PetGrades)
            { message = "宠物等级范围为 1–10。"; return false; }
            if (client.Pets == null || client.Pets.FirstEmpty < 0)
            { message = "宠物库存已满（16 格），请先合成或装备。"; return false; }
            if (!client.Pets.EditorGrantPet(grade - 1))
            { message = "领取宠物失败。"; return false; }
            client.SaveNow();
            message = $"已领取 1 只 {GradeName(grade)} 宠物。";
            return true;
        }

        public static bool GrantFish(GameClient client, int grade, out string message)
        {
            if (!CanUse(client, out message)) return false;
            if (grade < 1 || grade > FishGrades)
            { message = "鱼等级范围为 1–13。"; return false; }
            var fish = client.Fish;
            if (fish?.Model == null || fish.Model.Full)
            { message = "鱼缸已满（20 条），请先合成或移除鱼。"; return false; }
            if (!fish.Model.EditorGrantFish(grade - 1))
            { message = "领取鱼失败。"; return false; }
            if (fish.fishTank != null && fish.fishTank.gameObject.activeInHierarchy)
                fish.fishTank.SpawnFish(grade - 1);
            fish.ShowNewFishPopup(grade - 1);
            fish.TryStartAutoMerge();
            client.SaveNow();
            message = $"已领取 1 条 {GradeName(grade)} 鱼。";
            return true;
        }

        public static bool GrantRandomWeapon(GameClient client, int grade, out string message)
        {
            if (!CanUse(client, out message)) return false;
            if (grade < 1 || grade > WeaponGrades) { message = "请选择有效武器品阶。"; return false; }
            return GrantWeapon(client, grade, UnityEngine.Random.Range(0, 5), out message);
        }

        static bool TryAmount(string text, out DecimalAmount amount)
        {
            amount = default;
            if (string.IsNullOrWhiteSpace(text) || text.Length > 128) return false;
            var parts = text.Trim().Split('e', 'E');
            if (parts.Length > 2 || !BigInteger.TryParse(parts[0], NumberStyles.None, CultureInfo.InvariantCulture, out var coefficient) || coefficient.Sign <= 0) return false;
            int exponent = 0;
            if (parts.Length == 2 && (!int.TryParse(parts[1], NumberStyles.None, CultureInfo.InvariantCulture, out exponent) || exponent > 1000)) return false;
            amount = new DecimalAmount(coefficient, exponent);
            return true;
        }

        public static string ResourceBalance(SaveData state, EditorDebugResource resource)
        {
            if (state == null) return "—";
            return resource switch
            {
                EditorDebugResource.Money => NumberText.Format(state.Money.Value),
                EditorDebugResource.Ruby => NumberText.Format(state.Ruby.Value),
                EditorDebugResource.Diamonds => state.Dia.ToString(),
                EditorDebugResource.PetCoin => state.PetCoin.ToString(),
                EditorDebugResource.StarGem => state.StarGem.ToString(),
                _ => Enum.IsDefined(typeof(EditorDebugResource), resource) && state.Adventure_Currency_Core?.Length == 4
                    ? state.Adventure_Currency_Core[(int)resource - (int)EditorDebugResource.ForestCore].ToString() : "—"
            };
        }

        public static bool GrantResource(GameClient client, EditorDebugResource resource, string text, out string message)
        {
            if (!CanUse(client, out message)) return false;
            if (!Enum.IsDefined(typeof(EditorDebugResource), resource) || !TryAmount(text, out var amount))
            { message = "请输入正整数；金币和红宝石也支持 1e30 这样的数值。"; return false; }
            var state = client.State;
            if (resource == EditorDebugResource.Money)
            {
                state.Money = CurrencyAmount.FromValue(state.Money.Value + amount);
                state.Money_Accum = CurrencyAmount.FromValue(state.Money_Accum.Value + amount);
            }
            else if (resource == EditorDebugResource.Ruby)
            {
                state.Ruby = CurrencyAmount.FromValue(state.Ruby.Value + amount);
                client.RebirthUI?.Reload();
            }
            else
            {
                if (amount.CompareTo(new DecimalAmount(int.MaxValue)) > 0)
                { message = "本资源使用整数计数，请输入较小数量。"; return false; }
                int value = int.Parse(amount.PlainInteger(), CultureInfo.InvariantCulture);
                try
                {
                    // Validate every affected integer before publishing any mutation.
                    switch (resource)
                    {
                        case EditorDebugResource.Diamonds:
                            checked { _ = state.Dia + value; _ = state._getDia + value * 3; }
                            client.AwardDiamonds(value); break;
                        case EditorDebugResource.PetCoin:
                            checked { _ = state.PetCoin + value; }
                            client.AwardPetCoin(value); break;
                        case EditorDebugResource.StarGem:
                            state.StarGem = checked(state.StarGem + value);
                            client.StarUpgrades?.RefreshWallet(); break;
                        default:
                            if (state.Adventure_Currency_Core?.Length != 4)
                            { message = "核心钱包尚未初始化。"; return false; }
                            int index = (int)resource - (int)EditorDebugResource.ForestCore;
                            state.Adventure_Currency_Core[index] = checked(state.Adventure_Currency_Core[index] + value);
                            client.Adventure?.RefreshCoreCurrency(); break;
                    }
                }
                catch (OverflowException) { message = "资源数量达到整数上限，未修改存档。"; return false; }
            }
            client.NotifyOfflineStateChanged();
            client.SaveNow();
            message = $"已领取 {text.Trim()} {ResourceName(resource)}。";
            return true;
        }

        public static bool RefillTickets(GameClient client, EditorDebugTickets tickets, out string message)
        {
            if (!CanUse(client, out message)) return false;
            var state = client.State;
            switch (tickets)
            {
                case EditorDebugTickets.Mine:
                    if (client.MineMode == null) { message = "矿场尚未初始化。"; return false; }
                    state.TicketUse_Count = 0;
                    state.TicketCharge_Date = client.MineMode.Today().Date.ToString("O", CultureInfo.InvariantCulture);
                    client.MineMode.Ticket_Reload(); client.MineMode.mineStart_ui?.Reload();
                    message = "矿场入场券已补满。"; break;
                case EditorDebugTickets.Raid:
                    if (client.RaidMode == null) { message = "突袭尚未初始化。"; return false; }
                    state.Raid_Free_Use_Count = 0;
                    state.Raid_Entry_Charge_Date = client.RaidMode.Now().Date.ToString("O", CultureInfo.InvariantCulture);
                    client.RaidMode.Ticket_Reload(); client.RaidMode.raidStart_ui?.Reload_Entry();
                    message = "突袭免费入场券已补满。"; break;
                case EditorDebugTickets.Adventure:
                    if (client.Adventure == null) { message = "探险尚未初始化。"; return false; }
                    state.Adventure_Ticket_Now = AdventureRules.TicketMax;
                    state.Adventure_LastTicketCharge_Date = client.Adventure.Now().ToString("O", CultureInfo.InvariantCulture);
                    client.Adventure.RefreshCoreCurrency(); message = "探险券已补满（20）。"; break;
                case EditorDebugTickets.FishDraws:
                    if (client.Fish?.Model == null) { message = "鱼缸尚未初始化。"; return false; }
                    state.FreeGachaCount = 0;
                    state.Free_GachaDate = client.Fish.Model.Now().Date.ToString("O", CultureInfo.InvariantCulture);
                    client.Fish.Gacha_Btn_UI_Reload(); message = "免费抽鱼次数已补满。"; break;
                default: message = "未知入场券。"; return false;
            }
            client.SaveNow();
            return true;
        }

        public static bool GrantRelicFragments(GameClient client, int amount, out string message)
        {
            if (!CanUse(client, out message)) return false;
            if (amount <= 0 || client.State.Relics?.Length != 15 || client.Relics?.Progression == null)
            { message = "请输入有效碎片数量，并等待遗物初始化。"; return false; }
            var relics = client.State.Relics;
            foreach (var relic in relics)
                if (relic == null || (long)relic.Count + amount > int.MaxValue)
                { message = "遗物碎片达到上限，未修改存档。"; return false; }
            foreach (var relic in relics) { relic.is_Unlock = true; relic.Count += amount; }
            client.Relics.Value_Reload(); client.Relics.UI_Reload(); client.Relics.Relic_Info_UI_Reload();
            client.SaveNow();
            message = $"15 种遗物各领取 {amount} 个碎片。";
            return true;
        }
    }
}
#endif
