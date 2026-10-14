using System.Linq;
using CatGunner.Runtime;
using UnityEngine;

public sealed class Cat_manager : MonoBehaviour
{
    public static Cat_manager instance;
    public static bool is_Shoot_Mute; // Original static field at offset 0.
    public Cat[] Cat_list;
    public Cat Helper_Cat;
    public Vector3 Helper_FormationOffset;
    public float FormationRadius,SeparationRadius,SeparationStrength;
    private readonly Vector3[] warpOffsets={new Vector3(-6,0,-6),new Vector3(6,0,-6)};
    private SpriteRenderer mineGround,bossGround,challengeGround,raidGround;
    private void Awake()=>instance=this;
    public bool Helper_Active=>Helper_Cat!=null&&Helper_Cat.gameObject.activeSelf;
    public int Cat_Count_All=>(Cat_list?.Length??0)+(Helper_Active?1:0);
    public Cat Cat_At(int index)=>index<(Cat_list?.Length??0)?Cat_list[index]:Helper_Cat;
    public void Skin_Reload(){foreach(var cat in Cat_list)if(cat!=null)cat.Skin_Reload();if(Helper_Cat!=null)Helper_Cat.Skin_Reload();}
    public void SetupFormation()
    {
        if(Helper_Cat!=null)Helper_Cat.FormationOffset=Helper_FormationOffset;
        var followers=Cat_list.Where(c=>c!=null&&c.is_AI).ToArray();
        for(int i=0;i<followers.Length;i++){float a=360f/followers.Length*i*Mathf.Deg2Rad;followers[i].FormationOffset=new Vector3(Mathf.Cos(a)*FormationRadius,0,Mathf.Sin(a)*FormationRadius);}
    }
    public void Balance_Reload(EquipmentCatalogue equipment,int power,int speed,int wave)
    {
        int count=EquipmentCatalogue.CompactSelected(equipment.Selected_items).Length;
        for(int i=0;i<Cat_list.Length;i++)
        {
            var cat=Cat_list[i];if(cat==null)continue;bool was=cat.gameObject.activeSelf;
            if(i>=count){cat.gameObject.SetActive(false);continue;}
            equipment.ApplyPackageForest(cat,i,power,speed,wave);cat.gameObject.SetActive(true);
            var combat=cat.GetComponent<ForestCombatAcceptance>();if(combat!=null)combat.RefreshWeaponFlags();
            if(!was&&cat.is_AI)cat.Warp(Cat_list[0].transform.position+cat.FormationOffset);
        }
        Helper_Reload(equipment);
    }
    public void Helper_Off(){if(Helper_Cat!=null)Helper_Cat.gameObject.SetActive(false);}
    public void Helper_Reload(EquipmentCatalogue equipment)
    {
        if(Helper_Cat==null)return;var raid=Raid_manager.instance;
        if(!equipment.RaidMode||raid==null||!raid.Is_Helper_Active){Helper_Off();return;}
        int gun=raid.Helper_GunNum_return();if(gun<0){Helper_Off();return;}
        bool was=Helper_Cat.gameObject.activeSelf;equipment.ApplyRaidHelper(Helper_Cat,gun,raid.Helper_StarLv_return());
        Helper_Cat.gameObject.SetActive(true);Helper_Cat.GetComponent<ForestCombatAcceptance>()?.RefreshWeaponFlags();
        if(!was&&Cat_list.Length>0&&Cat_list[0]!=null)Helper_Cat.Warp(Cat_list[0].transform.position+Helper_Cat.FormationOffset);
    }
    public void Warp(Vector3 position)
    {
        for(int i=0;i<Cat_list.Length;i++)if(Cat_list[i]!=null)Cat_list[i].Warp(position+(i==0?Vector3.zero:i-1<warpOffsets.Length?warpOffsets[i-1]:Cat_list[i].FormationOffset));
        if(Helper_Cat!=null)Helper_Cat.Warp(position+Helper_FormationOffset);
    }
    // All team members pass here, including AI companions whose combat Update
    // returns before the leader's movement branch. Recheck after physics contacts.
    private void FixedUpdate()=>ClampArena();
    private void LateUpdate()=>ClampArena();
    private void ClampArena()
    {
        var client=GameClient.Instance;if(client==null)return;
        Vector3 center;float radius;
        if(client.Mode==4)
        {
            if(client.MonsterMode==null||!client.MonsterMode.Map_obj.activeInHierarchy)return;
            center=MonsterRules.Center;radius=PenguinMovementBounds.HuntRadius;
        }
        else if(client.Mode==1)
        {
            if(challengeGround==null)challengeGround=FindGround(client.SpeedRun?.Map_obj);
            if(!PenguinMovementBounds.GroundCircle(challengeGround,out center,out radius))return;
        }
        else if(client.Mode==2)
        {
            if(mineGround==null)mineGround=FindGround(client.MineMode?.Map_obj);
            if(!PenguinMovementBounds.GroundCircle(mineGround,out center,out radius))return;
        }
        else if(client.Mode==3)
        {
            if(bossGround==null)bossGround=FindGround(client.BossMode?.Map_obj);
            if(!PenguinMovementBounds.GroundCircle(bossGround,out center,out radius))return;
        }
        else if(client.Mode==5)
        {
            if(raidGround==null)raidGround=FindGround(client.RaidMode?.Map_obj);
            if(!PenguinMovementBounds.GroundCircle(raidGround,out center,out radius))return;
        }
        else return;
        for(int i=0;i<Cat_Count_All;i++)
        {
            var cat=Cat_At(i);
            if(cat!=null&&cat.gameObject.activeInHierarchy)PenguinMovementBounds.Clamp(cat.rb,center,radius);
        }
    }
    private static SpriteRenderer FindGround(GameObject map)
    {
        if(map==null)return null;
        foreach(var renderer in map.GetComponentsInChildren<SpriteRenderer>(true))
            if(renderer.name=="Ground (1)")return renderer;
        return null;
    }
    private void Update()
    {
        int count=Cat_Count_All;
        for(int i=0;i<count;i++){var c=Cat_At(i);if(c!=null&&c.is_AI)c.SeparationForce=Vector3.zero;}
        for(int i=0;i<count;i++)for(int j=i+1;j<count;j++)
        {
            var a=Cat_At(i);var b=Cat_At(j);if(a==null||b==null||!a.gameObject.activeInHierarchy||!b.gameObject.activeInHierarchy)continue;
            var delta=a.transform.position-b.transform.position;delta.y=0;float d=delta.magnitude;
            if(d<.001f||d>SeparationRadius)continue;
            var force=delta/d*((1-d/SeparationRadius)*SeparationStrength);
            if(a.is_AI)a.SeparationForce+=force;if(b.is_AI)b.SeparationForce-=force;
        }
    }
    private void OnDestroy(){if(instance==this)instance=null;}
}
