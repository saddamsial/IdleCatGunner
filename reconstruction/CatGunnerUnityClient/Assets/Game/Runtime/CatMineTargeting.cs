using UnityEngine;
public sealed partial class Cat
{
    private Collider[] _oreOverlapBuffer;
    public Transform FindNearestOreMine()
    {
        var manager=Mine_manager.instance;if(manager==null)return null;
        var found=OverlapSphereNearestOre(AutoOreSearchRadius);if(found!=null)return found;
        found=OverlapSphereNearestOre(AutoOreSearchRadius*AutoOreSearchRadiusFallbackMult);
        return found!=null?found:FindNearestOreFallback(manager);
    }
    public Transform OverlapSphereNearestOre(float radius)
    {
        if(_oreOverlapBuffer==null)_oreOverlapBuffer=new Collider[Mathf.Max(1,OreOverlapBufferSize)];
        int count=Physics.OverlapSphereNonAlloc(transform.position,radius,_oreOverlapBuffer,OreLayer,QueryTriggerInteraction.UseGlobal);
        Transform target=null;float best=float.MaxValue;var self=transform.position;
        for(int i=0;i<count;i++){var c=_oreOverlapBuffer[i];var delta=c.transform.position-self;float d=delta.x*delta.x+delta.z*delta.z;if(d<best){best=d;target=c.transform;}}
        return target;
    }
    public Transform FindNearestOreFallback(Mine_manager manager)
    {
        Transform target=null;float best=float.MaxValue;var self=transform.position;
        foreach(var ore in manager.Ore_list){if(ore==null||!ore.gameObject.activeInHierarchy)continue;var delta=ore.transform.position-self;float d=delta.x*delta.x+delta.z*delta.z;if(d<best){best=d;target=ore.transform;}}
        return target;
    }
}
