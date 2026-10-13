using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;

namespace CatGunner.Recovery
{
    [RequireComponent(typeof(Tree_manager))]
    [DefaultExecutionOrder(220)]
    public sealed class SnowFootprintTrail : MonoBehaviour
    {
        public Material FootprintMaterial;
        public float StepDistance=1.6f,FootSeparation=.55f,Lifetime=4,HoldTime=1;
        private const int Capacity=192;
        private sealed class Track {public Vector3 Previous;public float Distance;public bool Left;}
        private struct Step {public MeshRenderer Renderer;public float Born;}
        private readonly Dictionary<Cat,Track> tracks=new Dictionary<Cat,Track>();
        private readonly Step[] steps=new Step[Capacity];
        private MaterialPropertyBlock block;
        private RecoveryForestClient client;
        private Mesh mesh;
        private int cursor;
        private void Start()
        {
            block=new MaterialPropertyBlock();
            client=RecoveryForestClient.Instance;
            var forest=GetComponent<Tree_manager>();
            var root=new GameObject("Snow footprints");root.transform.SetParent(forest.Map_obj.transform,false);
            mesh=CreateFoot();
            for(int i=0;i<Capacity;i++)
            {
                var go=new GameObject("Snow step "+i);go.transform.SetParent(root.transform,false);go.AddComponent<MeshFilter>().sharedMesh=mesh;
                var renderer=go.AddComponent<MeshRenderer>();renderer.sharedMaterial=FootprintMaterial;
                renderer.sortingLayerID=forest.Ground_SpriteRenderer.sortingLayerID;renderer.sortingOrder=-30;
                renderer.shadowCastingMode=ShadowCastingMode.Off;renderer.receiveShadows=false;go.SetActive(false);steps[i].Renderer=renderer;
            }
            if(client!=null)client.RoundStarted+=Clear;
        }
        private void Update()
        {
            if(client==null||Time.deltaTime<=0)return;
            if(client.Mode!=0){Clear();return;}
            for(int i=0;i<Capacity;i++)
            {
                var renderer=steps[i].Renderer;if(renderer==null||!renderer.gameObject.activeSelf)continue;
                float age=Time.time-steps[i].Born;
                if(age>=Lifetime){renderer.gameObject.SetActive(false);continue;}
                float opacity=1-Mathf.SmoothStep(0,1,Mathf.InverseLerp(HoldTime,Lifetime,age));
                block.SetColor("_Color",new Color(.38f,.60f,.73f,.45f*opacity));renderer.SetPropertyBlock(block);
            }
            if(!client.ReadyForPlay||!ForestRuntimeAcceptance.IsGaming)return;
            for(int i=0;i<client.Team.Cat_Count_All;i++)
            {
                var cat=client.Team.Cat_At(i);if(cat==null)continue;
                if(!cat.gameObject.activeInHierarchy){tracks.Remove(cat);continue;}
                if(!tracks.TryGetValue(cat,out var track))
                {tracks[cat]=new Track{Previous=cat.rb.position};continue;}
                var position=cat.rb.position;var delta=position-track.Previous;delta.y=0;float distance=delta.magnitude;
                if(distance>12){track.Previous=position;track.Distance=0;continue;}
                if(distance>.001f)
                {
                    var direction=delta/distance;float along=StepDistance-track.Distance;
                    while(along<=distance)
                    {
                        track.Left=!track.Left;
                        var sideways=Vector3.Cross(Vector3.up,direction)*(track.Left?FootSeparation:-FootSeparation);
                        Add(track.Previous+direction*along+sideways,direction);along+=StepDistance;
                    }
                    track.Distance=(track.Distance+distance)%StepDistance;
                }
                track.Previous=position;
            }
        }
        private void Add(Vector3 position,Vector3 direction)
        {
            var renderer=steps[cursor].Renderer;position.y=GetComponent<Tree_manager>().Map_obj.transform.position.y+.035f;
            renderer.transform.SetPositionAndRotation(position,Quaternion.LookRotation(direction,Vector3.up));renderer.gameObject.SetActive(true);
            block.SetColor("_Color",new Color(.38f,.60f,.73f,.45f));renderer.SetPropertyBlock(block);
            steps[cursor].Born=Time.time;cursor=(cursor+1)%Capacity;
        }
        private void Clear()
        {
            tracks.Clear();cursor=0;
            foreach(var step in steps)if(step.Renderer!=null)step.Renderer.gameObject.SetActive(false);
        }
        static Mesh CreateFoot()
        {
            // A small webbed, three-toed impression, built as ground geometry.
            var outline=new[]{new Vector2(0,-.35f),new Vector2(-.32f,-.05f),new Vector2(-.45f,.32f),new Vector2(-.16f,.16f),new Vector2(0,.50f),new Vector2(.16f,.16f),new Vector2(.45f,.32f),new Vector2(.32f,-.05f)};
            var vertices=new List<Vector3>();var colors=new List<Color>();var triangles=new List<int>();
            for(int layer=0;layer<2;layer++)
            {
                int start=vertices.Count;float scale=layer==0?1:.72f;float y=layer*.001f;
                vertices.Add(new Vector3(0,y,0));colors.Add(layer==0?Color.white:new Color(.75f,.84f,.9f,.6f));
                foreach(var point in outline){vertices.Add(new Vector3(point.x*scale,y,point.y*scale));colors.Add(colors[start]);}
                for(int i=0;i<outline.Length;i++)triangles.AddRange(new[]{start,start+1+i,start+1+(i+1)%outline.Length});
            }
            var mesh=new Mesh{name="Penguin snow impression"};mesh.SetVertices(vertices);mesh.SetColors(colors);mesh.SetTriangles(triangles,0);mesh.RecalculateBounds();return mesh;
        }
        private void OnDisable()=>Clear();
        private void OnDestroy(){if(client!=null)client.RoundStarted-=Clear;if(mesh!=null)Destroy(mesh);}
    }
}
