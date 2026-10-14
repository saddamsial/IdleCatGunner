using System;
using System.Linq;
using CatGunner.Runtime;
using UnityEditor;
using UnityEngine;

public sealed class GameDebugWindow : EditorWindow
{
    const string PendingKey = "CatGunner.Runtime.EditorDebug.PendingStage";
    [SerializeField] int stage = 1, wave = 1;
    [SerializeField] string resourceAmount = "1000";
    [SerializeField] bool raiseMaximum = true;
    [SerializeField] string message;
    [SerializeField] bool failed;
    Vector2 scroll;

    [MenuItem("Game/游戏调试面板 (Game Debug)")]
    public static void Open()
    {
        var window = GetWindow<GameDebugWindow>("游戏调试");
        window.minSize = new Vector2(350, 600);
        window.Show();
    }

    [InitializeOnLoadMethod]
    static void RegisterPendingStage()
    {
        EditorApplication.update -= ApplyPendingStage;
        EditorApplication.update += ApplyPendingStage;
    }

    static void ApplyPendingStage()
    {
        if (!SessionState.GetBool(PendingKey, false)) return;
        if (!GameDebugTools.Enabled) { SessionState.EraseBool(PendingKey); return; }
        var client = GameClient.Instance;
        if (!GameDebugTools.CanUse(client, out _)) return;
        int stage = SessionState.GetInt(PendingKey + ".Stage", 1);
        int wave = SessionState.GetInt(PendingKey + ".Wave", 1);
        bool raise = SessionState.GetBool(PendingKey + ".Raise", true);
        SessionState.EraseBool(PendingKey); // One-shot: never reset the stage every frame.
        bool success = GameDebugTools.SetStage(client, stage, wave, raise, out string result);
        foreach (var window in Resources.FindObjectsOfTypeAll<GameDebugWindow>())
            window.Report(success, result);
    }

    void OnInspectorUpdate() => Repaint();
    void Report(bool success, string result) { failed = !success; message = result; Repaint(); }

    void OnGUI()
    {
        EditorGUILayout.LabelField("游戏调试", EditorStyles.boldLabel);
        bool enabled = EditorGUILayout.ToggleLeft("开启编辑器调试", GameDebugTools.Enabled);
        if (enabled != GameDebugTools.Enabled)
        {
            GameDebugTools.Enabled = enabled;
            if (!enabled) SessionState.EraseBool(PendingKey);
            message = null;
        }
        EditorGUILayout.HelpBox("仅供 Unity 编辑器使用。领取不消耗货币；启用 Persist 时，调试结果会写入当前游戏存档。", MessageType.Info);
        var client = GameClient.Instance;
        bool ready = GameDebugTools.CanUse(client, out string unavailable);
        if (client != null && client.ReadyForPlay)
            EditorGUILayout.LabelField($"当前 Stage {client.Forest.Stage_Now + 1}-{client.Forest.Level_Now + 1}");
        scroll = EditorGUILayout.BeginScrollView(scroll);
        using (new EditorGUI.DisabledScope(!enabled))
        {
            EditorGUILayout.Space();
            EditorGUILayout.LabelField("关卡", EditorStyles.boldLabel);
            stage = EditorGUILayout.IntField("Stage (1–5000)", stage);
            wave = EditorGUILayout.IntSlider("小关", wave, 1, 5);
            raiseMaximum = EditorGUILayout.ToggleLeft("同步提升最高 Stage，刷新玩法解锁", raiseMaximum);
            using (new EditorGUI.DisabledScope(EditorApplication.isPlaying && !ready))
            {
                if (GUILayout.Button(EditorApplication.isPlaying ? "应用 Stage" : "设置 Stage（下次运行时应用一次）"))
                {
                    if (EditorApplication.isPlaying)
                        Report(GameDebugTools.SetStage(client, stage, wave, raiseMaximum, out string result), result);
                    else if (stage < 1 || stage > GameDebugTools.MaxStage)
                        Report(false, "Stage 范围为 1–5000。");
                    else
                    {
                        SessionState.SetInt(PendingKey + ".Stage", stage);
                        SessionState.SetInt(PendingKey + ".Wave", wave);
                        SessionState.SetBool(PendingKey + ".Raise", raiseMaximum);
                        SessionState.SetBool(PendingKey, true);
                        Report(true, $"已设置 Stage {stage}-{wave}，点击 Play 后应用一次。");
                    }
                }
            }
            if (SessionState.GetBool(PendingKey, false) && GUILayout.Button("取消待应用 Stage"))
            { SessionState.EraseBool(PendingKey); message = null; }

            using (new EditorGUI.DisabledScope(!ready))
            {
                DrawGrades(client, "武器 · 类型随机", GameDebugTools.WeaponGrades, 0);
                DrawGrades(client, "宠物", GameDebugTools.PetGrades, 1);
                DrawGrades(client, "鱼", GameDebugTools.FishGrades, 2);
                DrawResources(client);
            }
        }
        EditorGUILayout.EndScrollView();
        if (!ready) EditorGUILayout.HelpBox(unavailable, MessageType.Info);
        if (!string.IsNullOrEmpty(message)) EditorGUILayout.HelpBox(message, failed ? MessageType.Warning : MessageType.Info);
    }

    void DrawGrades(GameClient client, string title, int count, int kind)
    {
        EditorGUILayout.Space();
        string inventory = client?.ReadyForPlay == true ? kind switch
        {
            0 => client.State.Owned_Gun_list.Count(i => i >= 0) + "/16",
            1 => client.State.Owned_Pet_list.Count(i => i >= 0) + "/16",
            _ => client.State.FishInventory.Count + "/20"
        } : "";
        EditorGUILayout.LabelField(title + "   " + inventory, EditorStyles.boldLabel);
        for (int first = 1; first <= count; first += 7)
        {
            using (new EditorGUILayout.HorizontalScope())
            {
                for (int grade = first; grade < first + 7; grade++)
                {
                    if (grade > count) { GUILayout.Label("", GUILayout.MinWidth(30)); continue; }
                    if (!GUILayout.Button(new GUIContent(GameDebugTools.GradeName(grade), "点击直接领取该品阶"), GUILayout.Height(28))) continue;
                    string result;
                    bool success = kind switch
                    {
                        0 => GameDebugTools.GrantRandomWeapon(client, grade, out result),
                        1 => GameDebugTools.GrantPet(client, grade, out result),
                        _ => GameDebugTools.GrantFish(client, grade, out result)
                    };
                    Report(success, result);
                }
            }
        }
    }

    void DrawResources(GameClient client)
    {
        EditorGUILayout.Space();
        EditorGUILayout.LabelField("资源 · 点击直接领取", EditorStyles.boldLabel);
        resourceAmount = EditorGUILayout.TextField("自定义领取数量", resourceAmount);
        foreach (EditorDebugResource resource in Enum.GetValues(typeof(EditorDebugResource)))
        {
            EditorGUILayout.LabelField(GameDebugTools.ResourceName(resource), GameDebugTools.ResourceBalance(client?.State, resource));
            using (new EditorGUILayout.HorizontalScope())
            {
                ResourceButton(client, resource, "+1千", "1000");
                ResourceButton(client, resource, "+1万", "10000");
                ResourceButton(client, resource, "+100万", "1000000");
                ResourceButton(client, resource, "+自定义", resourceAmount);
            }
        }
        using (new EditorGUILayout.HorizontalScope())
        {
            ResourceButton(client, EditorDebugResource.Money, "金币 +1e30", "1e30");
            ResourceButton(client, EditorDebugResource.Ruby, "红宝石 +1e30", "1e30");
        }
        EditorGUILayout.Space();
        EditorGUILayout.LabelField("入场券与免费次数", EditorStyles.boldLabel);
        using (new EditorGUILayout.HorizontalScope())
        {
            TicketButton(client, EditorDebugTickets.Mine, "补满矿场入场券");
            TicketButton(client, EditorDebugTickets.Raid, "补满突袭免费入场券");
        }
        using (new EditorGUILayout.HorizontalScope())
        {
            TicketButton(client, EditorDebugTickets.Adventure, "补满探险券（20）");
            TicketButton(client, EditorDebugTickets.FishDraws, "补满免费抽鱼次数");
        }
        EditorGUILayout.Space();
        EditorGUILayout.LabelField("遗物碎片 · 15 种分别到账", EditorStyles.boldLabel);
        using (new EditorGUILayout.HorizontalScope())
        {
            foreach (int amount in new[] { 1, 100, 1000 })
                if (GUILayout.Button("全部碎片 +" + amount))
                { Report(GameDebugTools.GrantRelicFragments(client, amount, out string result), result); }
        }
    }

    void ResourceButton(GameClient client, EditorDebugResource resource, string label, string amount)
    {
        if (GUILayout.Button(label))
            Report(GameDebugTools.GrantResource(client, resource, amount, out string result), result);
    }

    void TicketButton(GameClient client, EditorDebugTickets tickets, string label)
    {
        if (GUILayout.Button(label))
            Report(GameDebugTools.RefillTickets(client, tickets, out string result), result);
    }
}
