using System.Collections.Generic;
using UnityEngine;

namespace CatGunner.Runtime
{
    // Ordinary-stage layout override. Existing pools, degree rolls, health,
    // money, wave counts and settlement still belong to Tree_manager.
    [RequireComponent(typeof(Tree_manager))]
    [DefaultExecutionOrder(200)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "CircularForestMap")] public sealed class CircularForestMap : MonoBehaviour
    {
        // Serialized value is the full-wave maximum; during play this is the
        // current wave's radius, shared by terrain, camera and movement limits.
        [Min(40)] public float Radius=100;
        [Min(1)] public float EdgePadding=24;
        [Min(1)] public float SpawnClearance=16;
        [Min(1)] public float MovementPadding=2;
        private Tree_manager forest;
        private float maximumRadius;
        public Vector3 Center=>forest.Map_obj.transform.position;
        private void Awake(){forest=GetComponent<Tree_manager>();maximumRadius=Radius;}

        public void PlaceTrees()
        {
            var trees=new List<Tree>();
            foreach(var grid in forest.Tree_Grid_list)
            {
                if(!grid.gameObject.activeSelf)continue;
                foreach(var tree in grid.Tree_list)
                    if(tree.gameObject.activeSelf)trees.Add(tree);
            }
            if(forest.Boss_tree.gameObject.activeSelf)trees.Add(forest.Boss_tree);
            // Keep equal target density in the usable annulus. Native spawning
            // still determines counts (30/60/90/120/151 in the opening Stage).
            // Only a new batch resizes the map; destroyed trees do not shrink it.
            float maximumOuter=Mathf.Max(SpawnClearance,maximumRadius-EdgePadding);
            float fraction=Mathf.Clamp01((float)trees.Count/ForestRules.TreeCount(7,4));
            Radius=EdgePadding+Mathf.Sqrt(Mathf.Lerp(SpawnClearance*SpawnClearance,maximumOuter*maximumOuter,fraction));
            GetComponent<CircularSnowTerrain>()?.RefreshRadius();
            // Equal-area spiral avoids overlapping clumps even at the full
            // 501-object wave. Rotate each round while keeping a clear spawn.
            float angle=Random.Range(0f,Mathf.PI*2);
            float outer=Mathf.Max(SpawnClearance,Radius-EdgePadding);
            float innerSquared=SpawnClearance*SpawnClearance;
            const float goldenAngle=2.39996323f;
            for(int i=0;i<trees.Count;i++)
            {
                float r=Mathf.Sqrt(Mathf.Lerp(innerSquared,outer*outer,(i+.5f)/trees.Count));
                float a=angle+i*goldenAngle;
                trees[i].transform.position=Center+new Vector3(Mathf.Cos(a)*r,0,Mathf.Sin(a)*r);
            }
        }

        private void FixedUpdate()
        {
            var client=GameClient.Instance;
            if(client==null||client.Mode!=0||!forest.Map_obj.activeInHierarchy)return;
            if(client.Team!=null)
            {
                for(int i=0;i<client.Team.Cat_Count_All;i++)
                {
                    var cat=client.Team.Cat_At(i);
                    if(cat!=null&&cat.gameObject.activeInHierarchy)Clamp(cat.rb);
                }
            }
            else if(client.Hero!=null)Clamp(client.Hero.rb);
            if(client.PetFollowers!=null)
                foreach(var pet in client.PetFollowers.Pets)
                    if(pet!=null&&pet.gameObject.activeInHierarchy)Clamp(pet.rb);
        }

        private void Clamp(Rigidbody body)
        {
            if(body==null)return;
            var offset=body.position-Center;offset.y=0;
            float limit=Mathf.Max(1,Radius-MovementPadding);
            if(offset.sqrMagnitude>limit*limit)
            {
                offset=offset.normalized*limit;
                var position=Center+offset;position.y=body.position.y;
                body.position=position;
            }
            // Limit the next physics step as well: a held joystick writes a
            // fresh outward velocity every frame. Clamping only the current
            // position lets physics step past the edge and bounce back.
            var velocity=body.linearVelocity;
            var next=offset+new Vector3(velocity.x,0,velocity.z)*Time.fixedDeltaTime;
            if(next.sqrMagnitude<=limit*limit)return;
            var allowed=(next.normalized*limit-offset)/Time.fixedDeltaTime;
            body.linearVelocity=new Vector3(allowed.x,velocity.y,allowed.z);
        }
    }
}
