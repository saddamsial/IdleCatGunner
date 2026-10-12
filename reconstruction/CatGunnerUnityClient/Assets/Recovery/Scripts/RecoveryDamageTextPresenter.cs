using System;
using System.Collections.Generic;
using UnityEngine;

namespace CatGunner.Recovery
{
    // Local reusable meshes, using original bitmap-font quads, -18 gap, native
    // random curves / 0.02 world scale / camera basis and 0.12s cell throttle.
    // No Canvas Graphics, raycaster, Collider, economy or save ownership.
    public sealed class RecoveryDamageTextPresenter : MonoBehaviour
    {
        private sealed class Entry
        {
            public GameObject Object;
            public Mesh Mesh;
            public MeshRenderer Renderer;
            public Vector3[] Vertices;
            public Color32[] Colors;
            public Vector3 Position;
            public DamageTextAnimationCurve Curve;
            public float Start,Duration;
            public bool Active;
        }
        private DamageTextAnimationSetting settings;
        private readonly List<Entry> entries=new List<Entry>();
        private readonly Dictionary<Vector2Int,float> cells=new Dictionary<Vector2Int,float>();
        [SerializeField] private Material[] materials;
        public int EmittedCount {get;private set;}
        public int ActiveCount {get;private set;}
        public string LastContent {get;private set;}
        public string LastKey {get;private set;}
        public bool LastCritical {get;private set;}
        public void SetMaterials(Material[] values)=>materials=values;
        public void Initialize(DamageTextAnimationSetting owner)=>settings=owner;
        private void OnEnable()
        {
            ForestDamageDispatch.DamageTextPending+=ShowHit;
            RecoveryRewardFeedback.Requested+=ShowReward;
        }
        private void OnDisable()
        {
            ForestDamageDispatch.DamageTextPending-=ShowHit;
            RecoveryRewardFeedback.Requested-=ShowReward;
            foreach(var e in entries){e.Active=false;if(e.Object!=null)e.Object.SetActive(false);}
            ActiveCount=0;cells.Clear();
        }
        private void ShowHit(Vector3 point,string content,bool critical)
        {
            if(!CanSpawnText(point,.12f))return;
            Show(critical?"critical":"damage",critical?"+"+content:content,point);
            LastCritical=critical;
        }
        private void ShowReward(string key,string content,Vector3 point)
        {
            // Native money shares the damage-cell history with a0.2s delay;
            // diamond fractions bypass this throttle entirely.
            if(key=="money"&&!CanSpawnText(point,.2f))return;
            if(Camera.main!=null)Show(key,content,point);
        }
        private bool CanSpawnText(Vector3 point,float interval)
        {
            if(Camera.main==null)return false;
            var cell=new Vector2Int(Mathf.RoundToInt(point.x/1.5f),Mathf.RoundToInt(point.y/1.5f));
            if(cells.TryGetValue(cell,out float last)&&Time.time-last<interval)return false;
            cells[cell]=Time.time;return true;
        }
        public void Show(string key,string content,Vector3 point)
        {
            if(settings==null||string.IsNullOrEmpty(content))return;
            int index=Array.FindIndex(settings.settings,item=>item.key==key);
            if(index<0)return;
            var animation=settings.settings[index].setting.GetComponent<DamageTextAnimation>();
            if(animation==null||animation.font==null||animation.curves==null||animation.curves.Length==0||materials==null||index>=materials.Length)return;
            var camera=settings.renderCamera!=null?settings.renderCamera:Camera.main;
            if(camera==null)return;
            Entry e=entries.Find(item=>!item.Active);
            if(e==null)
            {
                e=new Entry{Object=new GameObject("Recovered damage number",typeof(MeshFilter),typeof(MeshRenderer)),Mesh=new Mesh{name="Recovered bitmap number"}};
                e.Object.transform.SetParent(transform,false);
                e.Object.GetComponent<MeshFilter>().sharedMesh=e.Mesh;e.Renderer=e.Object.GetComponent<MeshRenderer>();
                e.Renderer.shadowCastingMode=UnityEngine.Rendering.ShadowCastingMode.Off;e.Renderer.receiveShadows=false;
                entries.Add(e);
            }
            var glyphs=new List<CharacterInfo>();
            foreach(char c in content)if(animation.font.GetCharacterInfo(c,out var glyph))glyphs.Add(glyph);
            if(glyphs.Count==0)return;
            int n=glyphs.Count;e.Vertices=new Vector3[n*4];e.Colors=new Color32[n*4];
            var uv=new Vector2[n*4];var triangles=new int[n*6];
            // Native width includes the final spriteGap, then subtracts width/2.
            float width=0;foreach(var g in glyphs)width+=g.glyphWidth+animation.spriteGap;
            float x=-width*.5f;
            for(int i=0;i<n;i++)
            {
                var g=glyphs[i];int v=i*4,t=i*6;
                e.Vertices[v]=new Vector3(x+g.glyphWidth,g.glyphHeight,0);e.Vertices[v+1]=new Vector3(x+g.glyphWidth,0,0);
                e.Vertices[v+2]=new Vector3(x,0,0);e.Vertices[v+3]=new Vector3(x,g.glyphHeight,0);
                uv[v]=g.uvTopRight;uv[v+1]=g.uvBottomRight;uv[v+2]=g.uvBottomLeft;uv[v+3]=g.uvTopLeft;
                triangles[t]=v;triangles[t+1]=v+1;triangles[t+2]=v+2;triangles[t+3]=v;triangles[t+4]=v+2;triangles[t+5]=v+3;
                x+=g.glyphWidth+animation.spriteGap;
            }
            e.Mesh.Clear();e.Mesh.vertices=e.Vertices;e.Mesh.uv=uv;e.Mesh.triangles=triangles;
            e.Renderer.sharedMaterial=materials[index];e.Renderer.sortingOrder=settings.minSortingOrder+index;
            e.Position=animation.screenSpace?camera.ScreenToWorldPoint(new Vector3(animation.offsetX*Screen.width,animation.offsetY*Screen.height,100)):point;
            e.Curve=animation.curves[UnityEngine.Random.Range(0,animation.curves.Length)];e.Duration=animation.duration;e.Start=Time.time;e.Active=true;e.Object.SetActive(true);
            EmittedCount++;ActiveCount++;LastContent=content;LastKey=key;Apply(e,camera,0);
        }
        private static void Apply(Entry e,Camera camera,float t)
        {
            Vector4 value=e.Curve.Evaluate(t);
            e.Object.transform.SetPositionAndRotation(e.Position+(camera.transform.right*value.x+camera.transform.up*value.y)*.02f,camera.transform.rotation);
            e.Object.transform.localScale=Vector3.one*(value.w*.02f);
            byte alpha=(byte)Mathf.RoundToInt(Mathf.Clamp01(value.z)*255);
            for(int i=0;i<e.Colors.Length;i++)e.Colors[i]=new Color32(255,255,255,alpha);
            e.Mesh.colors32=e.Colors;
        }
        private void LateUpdate()
        {
            var camera=settings!=null&&settings.renderCamera!=null?settings.renderCamera:Camera.main;
            foreach(var e in entries)
            {
                if(!e.Active)continue;
                float elapsed=Time.time-e.Start;
                if(elapsed>=e.Duration||camera==null){e.Active=false;e.Object.SetActive(false);ActiveCount--;continue;}
                Apply(e,camera,elapsed/e.Duration);
            }
            // Bound position throttle history across long runs and map changes.
            if(cells.Count>1024)cells.Clear();
        }
        private void OnDestroy(){foreach(var e in entries)if(e.Mesh!=null)UnityEngine.Object.Destroy(e.Mesh);}
    }
}
