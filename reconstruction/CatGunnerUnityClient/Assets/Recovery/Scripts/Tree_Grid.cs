using UnityEngine;
using CatGunner.Recovery;

public sealed class Tree_Grid : MonoBehaviour
{
    public Tree[] Tree_list;
    private float randomRange=1.5f;
    public void Spawn(int count, int wave, int stage, OriginalAmount[] health, OriginalAmount[] money)
    {
        var selected=OriginalForestRules.SelectSlots(Tree_list.Length,count);
        for(int slot=0;slot<Tree_list.Length;slot++)
        {
            var tree=Tree_list[slot];
            tree.gameObject.SetActive(selected[slot]);
            if(!selected[slot]) continue;
            // Native order: jitter X, jitter Z, then degree RNG.
            float x=Random.Range(-randomRange,randomRange);
            float z=Random.Range(-randomRange,randomRange);
            int degree=OriginalForestRules.DegreeAtRoll(wave,Random.Range(0f,100f));
            tree.Spawn(new Vector3((slot%10)*5+x,0,(slot/10)*5+z),health[degree],money[degree],
                Tree_manager.Sprite_return(stage,degree));
        }
        gameObject.SetActive(true);
    }
}
