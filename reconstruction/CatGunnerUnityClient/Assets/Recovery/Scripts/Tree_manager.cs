using System;
using UnityEngine;
using CatGunner.Recovery;

// Original map/pool contracts. Startup, loading/settlement UI, missions and save
// lifecycle remain separate from this evidence-closed spawning slice.
public sealed class Tree_manager : MonoBehaviour
{
    public static Tree_manager instance;
    public Sprite[] Tree_sprites;
    public int Stage_Now, Level_Now, Stage_Value_Max;
    public GameObject GameWin_UI, GameFail_UI, GameSkip_UI;
    public OriginalAmount[] Stage_Health_Balance, Stage_Money_Balance;
    public int TreeCount_Now, TreeCount_Max;
    public float GameTime_Now;
    public Component gameSlider;
    public GameObject Loading_obj, Map_obj, SpeedBuff_obj;
    public Map_Grid[] Map_Grid_list;
    public SpriteRenderer Ground_SpriteRenderer;
    public Sprite[] Ground_sprite_list;
    public Tree_Grid[] Tree_Grid_list;
    public Tree Boss_tree;
    public Transform LastBorder_trans;
    public CircularForestMap CircularMap;
    [NonSerialized] public Action WaveCleared;
    [NonSerialized] public Action TreeDestroyed;
    // Original private transient field at native offset 0x50; never saved.
    private bool _pendingGameSkipUI;
    private void Awake() => instance=this;

    public static Sprite Sprite_return(int stage,int degree) =>
        instance.Tree_sprites[unchecked(stage*4+degree)%instance.Tree_sprites.Length];
    public void StageAdvance() => OriginalForestRules.Advance(ref Stage_Now,ref Level_Now);
    public void AdvanceAfterWin(int skipPercent,Func<float> roll) =>
        _pendingGameSkipUI=OriginalForestRules.AdvanceAfterWin(ref Stage_Now,ref Level_Now,ref Stage_Value_Max,skipPercent,roll);
    public void ShowPendingSkip()
    {
        if(GameSkip_UI!=null)GameSkip_UI.SetActive(_pendingGameSkipUI);
        _pendingGameSkipUI=false;
    }
    // Local mode/restart cancellation adapter: discarded transitions cannot replay a stale cue.
    public void CancelSkipCue()
    {
        _pendingGameSkipUI=false;
        if(GameSkip_UI!=null)GameSkip_UI.SetActive(false);
    }
    public int Tree_Batch()
    {
        if(Stage_Now<0 || Stage_Now>=Stage_Health_Balance.Length || Stage_Now>=Stage_Money_Balance.Length)
            throw new NotSupportedException("Beyond-cache stage arithmetic still requires precision compatibility validation");
        var h=Stage_Health_Balance[Stage_Now].Value;
        var m=Stage_Money_Balance[Stage_Now].Value;
        var health=new[]{h,h*new DecimalAmount(18,-1),h*new DecimalAmount(3),h*new DecimalAmount(35)};
        var money=new[]{m,m*new DecimalAmount(18,-1),m*new DecimalAmount(3),m*new DecimalAmount(100)};
        var healthData=Array.ConvertAll(health,OriginalAmount.FromValue);
        var moneyData=Array.ConvertAll(money,OriginalAmount.FromValue);
        for(int grid=0;grid<Tree_Grid_list.Length;grid++)
        {
            if(grid<Level_Now+1) Tree_Grid_list[grid].Spawn(OriginalForestRules.TreesPerGrid(Stage_Now),Level_Now,Stage_Now,healthData,moneyData);
            else Tree_Grid_list[grid].gameObject.SetActive(false);
        }
        LastBorder_trans.localPosition=new Vector3(0,0,OriginalForestRules.LastBorderLocalZ(Level_Now));
        Boss_tree.gameObject.SetActive(Level_Now==4);
        if(Level_Now==4) Boss_tree.Boss_Spawn(healthData[3],moneyData[3],Sprite_return(Stage_Now,3));
        if(CircularMap!=null&&CircularMap.isActiveAndEnabled)CircularMap.PlaceTrees();
        return OriginalForestRules.TreeCount(Stage_Now,Level_Now);
    }
    public void Map_Batch()
    {
        TreeCount_Now=TreeCount_Max=Tree_Batch();
        Map_obj.SetActive(true);
        int stage=Stage_Now%10;
        foreach(var map in Map_Grid_list) map.Reload(stage);
        Ground_SpriteRenderer.sprite=Ground_sprite_list[stage];
    }
    public void Tree_Destroyed()
    {
        if(!ForestRuntimeAcceptance.IsGaming) return;
        TreeCount_Now--;
        TreeDestroyed?.Invoke();
        if(TreeCount_Now<1) WaveCleared?.Invoke();
    }
}
