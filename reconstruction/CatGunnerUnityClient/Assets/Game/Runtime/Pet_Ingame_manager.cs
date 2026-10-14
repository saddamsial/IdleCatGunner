using System.Linq;
using UnityEngine;
using CatGunner.Runtime;
public sealed class Pet_Ingame_manager : MonoBehaviour
{
    public static Pet_Ingame_manager instance;
    public Pet[] Pets;
    public float FormationRadius,FormationSpreadDeg,StartMoveDistance,StopMoveDistance,MinSpeed,MaxSpeed,FullSpeedDistance,CatSpeedMultiplier,PetSeparationRadius,PetSeparationStrength,CatAvoidRadius,CatAvoidStrength;
    private Vector3 lastCatPosition;
    private float measuredCatSpeed;
    private void Awake()=>instance=this;
    public void Pet_Reload(PetInventory inventory)
    {
        var selected=inventory.State.Pet_Selected_items.Where(p=>p>=0).ToArray();
        for(int i=0;i<Pets.Length;i++){bool was=Pets[i].gameObject.activeSelf;if(i>=selected.Length){Pets[i].gameObject.SetActive(false);continue;}Pets[i].Reload(selected[i]);Pets[i].gameObject.SetActive(true);if(!was)Pets[i].Warp(Cat.instance.transform.position+new Vector3(0,0,-4));}
        var active=Pets.Where(p=>p.gameObject.activeSelf).ToArray();
        for(int i=0;i<active.Length;i++){float angle=active.Length==1?0:Mathf.Lerp(-FormationSpreadDeg*.5f,FormationSpreadDeg*.5f,i/(float)(active.Length-1));angle*=Mathf.Deg2Rad;active[i].FormationOffset=new Vector3(Mathf.Sin(angle)*FormationRadius,0,-Mathf.Cos(angle)*FormationRadius);}
    }
    public void Warp(Vector3 position){foreach(var p in Pets)p.Warp(position+p.FormationOffset);lastCatPosition=position;measuredCatSpeed=0;}
    private void FixedUpdate()
    {
        if(Cat.instance==null)return;
        var catPosition=Cat.instance.transform.position;
        measuredCatSpeed+=(Vector3.Distance(catPosition,lastCatPosition)/Time.fixedDeltaTime-measuredCatSpeed)*.12f;
        lastCatPosition=catPosition;
        var active=Pets.Where(p=>p.gameObject.activeSelf).ToArray();
        foreach(var pet in active){pet.SeparationForce=pet.CatAvoidanceForce=Vector3.zero;}
        for(int i=0;i<active.Length;i++)for(int j=i+1;j<active.Length;j++)
        {var delta=active[i].transform.position-active[j].transform.position;delta.y=0;float distance=delta.magnitude;if(distance<.001f||distance>PetSeparationRadius)continue;var force=delta/distance*((1-distance/PetSeparationRadius)*PetSeparationStrength);active[i].SeparationForce+=force;active[j].SeparationForce-=force;}
        var cats=Cat_manager.instance!=null?Cat_manager.instance.Cat_list.Where(c=>c!=null&&c.gameObject.activeSelf).ToArray():new[]{Cat.instance};
        foreach(var pet in active)
        {
            foreach(var cat in cats){var delta=pet.transform.position-cat.transform.position;delta.y=0;float d=delta.magnitude;if(d>=.001f&&d<CatAvoidRadius)pet.CatAvoidanceForce+=delta/d*((1-d/CatAvoidRadius)*CatAvoidStrength);}
            var direction=Cat.instance.transform.position+pet.FormationOffset-pet.transform.position;direction.y=0;float distance=direction.magnitude;
            if(!pet.IsMoving&&distance>StartMoveDistance)pet.IsMoving=true;else if(pet.IsMoving&&distance<StopMoveDistance)pet.IsMoving=false;
            float ratio=Mathf.Clamp01((distance-StopMoveDistance)/Mathf.Max(.01f,FullSpeedDistance-StopMoveDistance));float speed=Mathf.Lerp(MinSpeed,Mathf.Max(MaxSpeed,measuredCatSpeed*CatSpeedMultiplier),Mathf.SmoothStep(0,1,ratio));
            var velocity=(pet.IsMoving?direction.normalized*speed:Vector3.zero)+pet.SeparationForce+pet.CatAvoidanceForce;
            pet.rb.linearVelocity=new Vector3(velocity.x,pet.rb.linearVelocity.y,velocity.z);
            float planarSpeed=new Vector2(velocity.x,velocity.z).magnitude;
            pet.SetAnimation(planarSpeed>.4f?"Walk":"Idle");
            if(planarSpeed>.4f)pet.SetFacing(velocity.x);
        }
    }
    private void OnDestroy(){if(instance==this)instance=null;}
}
