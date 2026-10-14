using System;
using System.Collections.Generic;
using System.Reflection;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace CatGunner.Runtime
{
    // Visual catalogue only: IDs, prices, callbacks, equipment, colliders and saves
    // remain owned by the original controllers. Runtime changes are reversible.
    [DefaultExecutionOrder(180)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinFullReskin")] public sealed class PenguinFullReskin : MonoBehaviour
    {
        public bool StaticUiBaked;
        public bool WorldVisualsBaked;
        public Sprite[] Sources=Array.Empty<Sprite>(), Replacements=Array.Empty<Sprite>();
        public Sprite[] Skins,Weapons,Fish,Pets,Bosses,RaidBosses,Monsters,Gems,Icons,Utilities,Effects,Landscapes;
        public Vector4[] EyeA,EyeB,Mouth;
        public Sprite WeeklyShop,ApprovedPenguin;
        public Sprite[] PetDirections=Array.Empty<Sprite>();
        public Shader FaceShader,FloatingShader,RingShader,ParticleShader;
        [UnityEngine.Serialization.FormerlySerializedAs("PreserveOriginalRingStyle")]
        public bool PreserveClassicRingStyle=true;
        [UnityEngine.Serialization.FormerlySerializedAs("PreserveOriginalAttackEffects")]
        public bool PreserveClassicAttackEffects=true;
        [UnityEngine.Serialization.FormerlySerializedAs("OriginalTextures")]
        public Texture[] SourceTextures=Array.Empty<Texture>();
        public Texture[] ThemedTextures=Array.Empty<Texture>();
        [UnityEngine.Serialization.FormerlySerializedAs("OriginalGlyphs")]
        public TMP_SpriteAsset[] SourceGlyphs=Array.Empty<TMP_SpriteAsset>();
        public TMP_SpriteAsset[] ThemedGlyphs=Array.Empty<TMP_SpriteAsset>();
        public int ReplacedImageCount {get;private set;}
        public int ReplacedRendererCount {get;private set;}
        public int StyledParticleCount {get;private set;}
        public IReadOnlyList<PenguinExpression> Expressions=>expressions;
        private GameClient client;
        private bool applied,started;
        private readonly Dictionary<Sprite,Sprite> map=new Dictionary<Sprite,Sprite>();
        private readonly Dictionary<Texture,Texture> textureMap=new Dictionary<Texture,Texture>();
        private readonly List<Action> restore=new List<Action>();
        private readonly List<Material> materials=new List<Material>();
        private readonly Dictionary<string,Material> particleMaterials=new Dictionary<string,Material>();
        private readonly List<GameObject> visuals=new List<GameObject>();
        private readonly List<PenguinExpression> expressions=new List<PenguinExpression>();
        private readonly List<TeamAvatar> team=new List<TeamAvatar>();
        private Image[] images;
        private SpriteRenderer[] renderers;
        private TMP_Text[] texts;
        private RawImage[] rawImages;
        private sealed class TeamAvatar {public Cat Cat;public SpriteRenderer Anchor,Shadow;public Renderer[] Hidden;public PenguinExpression Expression;public bool Hero;}
        private System.Collections.IEnumerator Start()
        {
            while(Polling_manager.instance!=null&&!Polling_manager.instance.IsReady)yield return null;
            started=true;Apply();
        }
        private void OnEnable(){if(started&&!applied)Apply();}
        private void Apply()
        {
            if(applied||ApprovedPenguin==null)return;
            client=GetComponent<GameClient>();
            var mainCamera=Camera.main;
            if(mainCamera!=null){var old=mainCamera.backgroundColor;var next=PenguinUiTheme.Ice;next.a=old.a;mainCamera.backgroundColor=next;restore.Add(()=>{if(mainCamera!=null)mainCamera.backgroundColor=old;});}
            map.Clear();for(int i=0;i<Sources.Length;i++)if(Sources[i]!=null&&Replacements[i]!=null&&!(PreserveClassicRingStyle&&IsClassicGlow(Sources[i])))map[Sources[i]]=Replacements[i];
            textureMap.Clear();for(int i=0;i<SourceTextures.Length;i++)if(SourceTextures[i]!=null&&ThemedTextures[i]!=null)textureMap[SourceTextures[i]]=ThemedTextures[i];
            var roots=gameObject.scene.GetRootGameObjects();var behaviours=new List<MonoBehaviour>();
            if(!WorldVisualsBaked)foreach(var root in roots)behaviours.AddRange(root.GetComponentsInChildren<MonoBehaviour>(true));
            foreach(var b in behaviours)
            {
                if(WorldVisualsBaked||b==null||(StaticUiBaked&&b.GetComponentInParent<Canvas>(true)!=null)||b is PenguinFullReskin||b is PenguinUiTheme||b is PenguinExpeditionTheme||b is Graphic)continue;
                foreach(var field in b.GetType().GetFields(BindingFlags.Public|BindingFlags.Instance))
                {
                    if(b is Skin_manager&&field.Name=="Skin_Bone_sprites")continue;
                    if(field.FieldType==typeof(Sprite[]))
                    {
                        var old=(Sprite[])field.GetValue(b);if(old==null)continue;
                        var next=Array.ConvertAll(old,Replace);bool changed=false;for(int i=0;i<old.Length;i++)changed|=old[i]!=next[i];
                        if(changed){restore.Add(()=>{if(b!=null)field.SetValue(b,old);});field.SetValue(b,next);}
                    }
                    else if(b is Monster_manager&&field.Name=="Monster_Colors")
                    {var old=(Color[])field.GetValue(b);var palette=new[]{new Color(.46f,.83f,1),new Color(.68f,.48f,1),new Color(.86f,.94f,1),new Color(1,.70f,.34f)};var next=new Color[old.Length];for(int i=0;i<next.Length;i++)next[i]=palette[i%4];restore.Add(()=>{if(b!=null)field.SetValue(b,old);});field.SetValue(b,next);}
                    else if(field.FieldType==typeof(Sprite))
                    {var old=(Sprite)field.GetValue(b);var next=Replace(old);if(old!=next){restore.Add(()=>{if(b!=null)field.SetValue(b,old);});field.SetValue(b,next);}}
                }
            }
            var canvas=client.Slider.GetComponentInParent<Canvas>();images=canvas.GetComponentsInChildren<Image>(true);texts=canvas.GetComponentsInChildren<TMP_Text>(true);
            foreach(var image in images)
            {
                if(StaticUiBaked)continue;
                var old=image.sprite;var oldColor=image.color;var aspect=image.preserveAspect;
                if(map.ContainsKey(old!=null?old:ApprovedPenguin)&&old!=null)
                {restore.Add(()=>{if(image!=null){image.sprite=old;image.color=oldColor;image.preserveAspect=aspect;}});image.sprite=Replace(old);image.color=new Color(1,1,1,oldColor.a);image.preserveAspect=!IsBackdrop(image.sprite);ReplacedImageCount++;}
                string path=PathOf(image.transform);
                if(path.Contains("Weekly")&&image.sprite!=null&&(old.name=="Cat_Gun"||image.name=="Cat_img"))
                {var prev=image.sprite;restore.Add(()=>{if(image!=null)image.sprite=prev;});image.sprite=WeeklyShop;}
            }
            var sr=new List<SpriteRenderer>();foreach(var root in roots)sr.AddRange(root.GetComponentsInChildren<SpriteRenderer>(true));renderers=sr.ToArray();
            foreach(var r in renderers)
            {
                var old=r.sprite;var col=r.color;if(old==null||!map.ContainsKey(old))continue;
                restore.Add(()=>{if(r!=null){r.sprite=old;if(r.GetComponent<SpriteFill>()==null)r.color=col;}});r.sprite=Replace(old);
                // SpriteFill.color.r is the native health fraction, not a tint.
                if(r.GetComponent<SpriteFill>()==null&&!IsNeutralShape(old))r.color=new Color(1,1,1,col.a);
                ReplacedRendererCount++;
            }
            rawImages=canvas.GetComponentsInChildren<RawImage>(true);
            foreach(var raw in rawImages)
            {
                if(StaticUiBaked)continue;
                if(raw.texture==null||raw.texture is RenderTexture||!textureMap.TryGetValue(raw.texture,out var next))continue;
                var old=raw.texture;restore.Add(()=>{if(raw!=null)raw.texture=old;});raw.texture=next;
            }
            foreach(var text in texts)
            {
                if(StaticUiBaked)continue;
                var old=text.spriteAsset;int n=Array.IndexOf(SourceGlyphs,old);if(n<0)continue;
                restore.Add(()=>{if(text!=null)text.spriteAsset=old;});text.spriteAsset=ThemedGlyphs[n];
            }
            // Named <sprite asset=...> tags may already be cached by TMP. Replace only
            // atlas pixels/material texture at runtime, keeping glyph IDs and metrics.
            for(int i=0;i<SourceGlyphs.Length;i++)
            {
                var source=SourceGlyphs[i];var oldSheet=source.spriteSheet;var originalMat=source.material;var oldTexture=originalMat.mainTexture;
                source.spriteSheet=ThemedGlyphs[i].spriteSheet;originalMat.mainTexture=ThemedGlyphs[i].spriteSheet;
                restore.Add(()=>{if(source!=null)source.spriteSheet=oldSheet;if(originalMat!=null)originalMat.mainTexture=oldTexture;});
            }
            var defaultGlyph=TMP_Settings.defaultSpriteAsset;int defaultIndex=Array.IndexOf(SourceGlyphs,defaultGlyph);
            if(defaultIndex>=0){restore.Add(()=>TMP_Settings.defaultSpriteAsset=defaultGlyph);TMP_Settings.defaultSpriteAsset=ThemedGlyphs[defaultIndex];}
            var cats=new List<Cat>(client.Team.Cat_list);if(client.Team.Helper_Cat!=null&&!cats.Contains(client.Team.Helper_Cat))cats.Add(client.Team.Helper_Cat);
            foreach(var cat in cats)CreateTeam(cat);
            foreach(var root in roots)
            {
                foreach(var boss in root.GetComponentsInChildren<Boss>(true))CreateActor(boss.transform,Bosses,()=>boss.skinNum,()=>boss.enemy!=null&&boss.enemy.is_Die,1.9f);
                foreach(var boss in root.GetComponentsInChildren<Raid_Boss>(true))CreateActor(boss.transform,RaidBosses,()=>boss.skinNum,()=>boss.enemy!=null&&boss.enemy.is_Die,2.0f);
                foreach(var dummy in root.GetComponentsInChildren<Pet_Dummy>(true))CreatePreview(dummy);
                foreach(var pet in root.GetComponentsInChildren<Pet>(true))CreateActor(pet.transform,Pets,()=>ActivePet(pet),()=>false,.60f,pet);
                foreach(var p in root.GetComponentsInChildren<ParticleSystem>(true))StyleParticle(p);
                foreach(var disc in root.GetComponentsInChildren<Shapes.Disc>(true))
                {
                    var old=disc.color;restore.Add(()=>{if(disc!=null){disc.color=old;disc.AngRadiansEnd=disc.AngRadiansEnd;}});
                    var color=disc==client.MonsterMode.HP_Disc?PenguinUiTheme.Blue:PenguinUiTheme.Navy;
                    color.a=old.a;disc.color=color;disc.AngRadiansEnd=disc.AngRadiansEnd;
                }
                foreach(var presenter in root.GetComponentsInChildren<DamageTextPresenter>(true))StyleFloating(presenter);
            }
            applied=true;Maintain();Canvas.willRenderCanvases+=Maintain;
        }
        private static bool IsBackdrop(Sprite s)=>s!=null&&(s.name.Contains("landscapes-")||s.name.Contains("extras-gradient"));
        private static bool IsNeutralShape(Sprite s)=>s!=null&&(s.name=="Square"||s.name=="Circle");
        public static bool IsClassicGlow(Sprite s)=>s!=null&&(s.name=="grab2"||s.name=="grab2 1"||s.name.StartsWith("Common_Glow",StringComparison.Ordinal));
        private Sprite Replace(Sprite s)=>s!=null&&map.TryGetValue(s,out var next)?next:s;
        private static string PathOf(Transform t){string p=t.name;while(t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
        private void CreateTeam(Cat cat)
        {
            var hidden=new List<Renderer>();SpriteRenderer shadow=null;
            foreach(var r in cat.GetComponentsInChildren<SpriteRenderer>(true))
            {
                if(r.name=="Shadow")shadow=r;
                if(r==cat.skin_spriteRenderer||r==cat.hand_spriteRenderer||r.name=="hand_outlilne"||r.sprite!=null&&r.sprite.name=="face")hidden.Add(r);
            }
            var binding=cat.GetComponent<PenguinAvatarBinding>();
            if(binding!=null){hidden.Clear();hidden.AddRange(binding.HiddenRenderers);shadow=binding.Shadow;binding.HideNativeRenderers();}
            var anchor=binding!=null?binding.Visual:cat==client.Hero?GetComponent<PenguinExpeditionTheme>().Avatar:null;
            bool hero=cat==client.Hero;
            if(anchor==null)
            {
                var go=new GameObject("Penguin teammate visual");go.transform.SetParent(cat.skin_spriteRenderer.transform,false);visuals.Add(go);
                anchor=go.AddComponent<SpriteRenderer>();anchor.sprite=ApprovedPenguin;anchor.sharedMaterial=cat.skin_spriteRenderer.sharedMaterial;anchor.sortingLayerID=cat.skin_spriteRenderer.sortingLayerID;anchor.sortingOrder=cat.skin_spriteRenderer.sortingOrder;
                go.AddComponent<PenguinTeammateAnchor>().Configure(cat,anchor,shadow,ApprovedPenguin);
                go.AddComponent<PenguinBoneMotion>().Configure(cat,ApprovedPenguin,cat.skin_spriteRenderer.sprite,anchor);
            }
            if(binding!=null&&cat!=client.Hero)
            {
                (anchor.GetComponent<PenguinTeammateAnchor>()??anchor.gameObject.AddComponent<PenguinTeammateAnchor>()).Configure(cat,anchor,shadow,ApprovedPenguin);
                (anchor.GetComponent<PenguinBoneMotion>()??anchor.gameObject.AddComponent<PenguinBoneMotion>()).Configure(cat,ApprovedPenguin,cat.skin_spriteRenderer.sprite,anchor);
            }
            foreach(var r in hidden){var original=r.enabled;restore.Add(()=>{if(r!=null)r.enabled=original;});r.enabled=false;}
            var expression=anchor.GetComponent<PenguinExpression>()??anchor.gameObject.AddComponent<PenguinExpression>();expression.Configure(anchor.GetComponent<PenguinBoneMotion>(),FaceShader,team.Count*.83f);
            // Hero motion existed before this catalogue; destroy only its new face adapter.
            if(hero||binding!=null)restore.Add(()=>{if(expression!=null)Destroy(expression);});
            expressions.Add(expression);team.Add(new TeamAvatar{Cat=cat,Anchor=anchor,Shadow=shadow,Hidden=hidden.ToArray(),Expression=expression,Hero=hero});
        }
        private void CreateActor(Transform owner,Sprite[] sprites,Func<int> selection,Func<bool> dead,float heightRatio,Pet pet=null)
        {
            var hidden=new List<Renderer>();SpriteRenderer shadow=null;
            foreach(var r in owner.GetComponentsInChildren<Renderer>(true))
            {
                if(r.GetComponentInParent<PenguinCatalogActor>(true)!=null)continue;
                if(r.name.ToLowerInvariant().Contains("shadow")){if(r is SpriteRenderer s)shadow=s;continue;}
                if(r is ParticleSystemRenderer)continue;
                var original=r.enabled;restore.Add(()=>{if(r!=null)r.enabled=original;});r.enabled=false;hidden.Add(r);
            }
            var binding=owner.GetComponent<PenguinActorBinding>();
            var actor=binding!=null?binding.Actor:null;
            if(actor==null){var go=new GameObject("Polar catalogue actor");go.transform.SetParent(owner,false);visuals.Add(go);actor=go.AddComponent<PenguinCatalogActor>();}
            if(binding!=null){hidden.Clear();hidden.AddRange(binding.HiddenRenderers);shadow=binding.Shadow;}actor.Configure(sprites,selection,dead,hidden.ToArray(),shadow,heightRatio,pet,client.Hero,PetDirections);
        }
        private void CreatePreview(Pet_Dummy dummy)
        {
            var binding=dummy.GetComponent<PenguinActorBinding>();
            var renderers=binding!=null?binding.HiddenRenderers:dummy.GetComponentsInChildren<Renderer>(true);foreach(var r in renderers){bool old=r.enabled;restore.Add(()=>{if(r!=null)r.enabled=old;});r.enabled=false;}
            var preview=binding!=null?binding.Preview:null;
            if(preview==null){var go=new GameObject("Polar expedition pet preview");go.transform.SetParent(dummy.transform,false);visuals.Add(go);preview=go.AddComponent<PenguinPetPreview>();}
            var camera=client.Adventure.adventure_panel_ui.RenderTexture_Map_obj.GetComponentInChildren<Camera>(true);
            preview.Configure(dummy,Pets,camera,renderers);
        }
        private static int ActivePet(Pet p){for(int i=0;i<p.Skin_list.Length;i++)if(p.Skin_list[i].activeSelf)return i;return 0;}
        private void StyleParticle(ParticleSystem p)
        {
            var r=p.GetComponent<ParticleSystemRenderer>();if(r==null||r.sharedMaterial==null)return;
            string path=PathOf(p.transform);
            if(StyleDegreeParticle(p,r,path)){StyledParticleCount++;return;}
            // User rejected outlined still-image bolts and hit flashes. Native
            // gun/projectile/impact atlases remain a coherent animated effect.
            if(PreserveClassicAttackEffects&&(p.GetComponentInParent<Bullet>(true)!=null||p.GetComponentInParent<Bullet_FX>(true)!=null||p.GetComponentInParent<Gun>(true)!=null)){StyledParticleCount++;return;}
            // A laser's trails and sparks are not rings. Classify the actual emitter,
            // rather than every child below a laser root, before replacing its art.
            bool ring=PenguinPolarRing.IsRing(p,r),glow=p.name.Contains("Glow");
            // User prefers the original ring art: keep its atlas playback, cone
            // mesh, tint and native rotation together, instead of a static decal.
            if(PreserveClassicRingStyle&&(ring||glow)){StyledParticleCount++;return;}
            int effect=path.Contains("Smoke")||path.Contains("Dust")?3:ring||glow?1:path.Contains("Bullet")?0:2;
            var original=r.sharedMaterials;var sheet=p.textureSheetAnimation;bool sheetEnabled=sheet.enabled;
            var originalStreams=new List<ParticleSystemVertexStream>();r.GetActiveVertexStreams(originalStreams);
            var originalMode=r.renderMode;var originalAlignment=r.alignment;bool originalInstancing=r.enableGPUInstancing;
            var main=p.main;var oldColor=main.startColor;float oldSize=main.startSizeMultiplier;var over=p.colorOverLifetime;var oldGradient=over.color;bool overEnabled=over.enabled;
            var coin=GetComponent<PenguinUiTheme>().Coin;
            bool money=path.Contains("Money")||path.Contains("money")||path.Contains("Particle_Polling")&&p.name=="0";
            bool polarRing=!money&&RingShader!=null&&(ring||glow);
            string key=r.sharedMaterial.GetInstanceID()+":"+(money?4:effect)+(polarRing?ring?":ring":":glow":"");Material mat;
            if(!particleMaterials.TryGetValue(key,out mat))
            {
                mat=new Material(r.sharedMaterial){name="Polar attack effect"};mat.mainTexture=money?coin.texture:Effects[effect].texture;
                // Replacement art is a single 2D sprite, not the original cone
                // mesh/atlas. Remove incompatible mesh UVs and blend state.
                var flatShader=ParticleShader!=null?ParticleShader:Shader.Find("Game/ParticleCompatibility");if(flatShader!=null)mat.shader=flatShader;
                mat.mainTextureScale=Vector2.one;mat.mainTextureOffset=Vector2.zero;
                if(mat.HasProperty("_SrcBlend"))mat.SetFloat("_SrcBlend",5);if(mat.HasProperty("_DstBlend"))mat.SetFloat("_DstBlend",10);
                if(mat.HasProperty("_EnableExternalAlpha"))mat.SetFloat("_EnableExternalAlpha",0);
                if(polarRing){mat.shader=RingShader;mat.SetFloat("_SoftGlow",glow?1:0);}
                materials.Add(mat);particleMaterials.Add(key,mat);
            }
            if(mat.HasProperty("_Color"))mat.SetColor("_Color",Color.white);if(mat.HasProperty("_TintColor"))mat.SetColor("_TintColor",Color.white);
            r.sharedMaterial=mat;sheet.enabled=false;r.renderMode=ParticleSystemRenderMode.Billboard;r.alignment=ParticleSystemRenderSpace.View;r.enableGPUInstancing=false;r.SetActiveVertexStreams(new List<ParticleSystemVertexStream>{ParticleSystemVertexStream.Position,ParticleSystemVertexStream.Color,ParticleSystemVertexStream.UV});
            main.startColor=Color.white;if(!money&&(path.Contains("Bullet")||path.Contains("Gun_Pivot")))main.startSizeMultiplier=oldSize*.55f;
            if(over.enabled){var gradient=new Gradient();var old=over.color.gradient;gradient.SetKeys(new[]{new GradientColorKey(Color.white,0),new GradientColorKey(new Color(.76f,.87f,1),1)},old.alphaKeys);over.color=gradient;}
            restore.Add(()=>{if(p==null||r==null)return;r.sharedMaterials=original;r.SetActiveVertexStreams(originalStreams);r.renderMode=originalMode;r.alignment=originalAlignment;r.enableGPUInstancing=originalInstancing;var m=p.main;m.startColor=oldColor;m.startSizeMultiplier=oldSize;var s=p.textureSheetAnimation;s.enabled=sheetEnabled;var o=p.colorOverLifetime;o.color=oldGradient;o.enabled=overEnabled;});StyledParticleCount++;
            if(polarRing&&ring)restore.Add(PenguinPolarRing.Animate(p,r,oldSize));
        }
        private bool StyleDegreeParticle(ParticleSystem p,ParticleSystemRenderer r,string path)
        {
            // Grade auras need their native emitters, trails and projection planes.
            // The shared flat-FX fallback disables those contracts.
            if(!path.Contains("/Degree_FX/"))return false;
            string source=r.sharedMaterial.mainTexture!=null?r.sharedMaterial.mainTexture.name:string.Empty;
            if(source=="ice_spikes")return true;
            Texture texture=null;
            if(source=="glow1")texture=Resources.Load<Texture2D>("DegreeFx/halo");
            else if(source=="Circle02")texture=Resources.Load<Texture2D>("DegreeFx/shadow-rings");
            else if(source=="magic_orb2"&&Effects!=null&&Effects.Length>2)texture=Effects[2].texture;
            else if(source=="drop"&&Effects!=null&&Effects.Length>0)texture=Effects[0].texture;
            if(texture==null)return false;
            var originals=r.sharedMaterials;var replacements=new Material[originals.Length];
            for(int i=0;i<originals.Length;i++)
            {
                var original=originals[i];if(original==null)continue;
                string key="degree:"+original.GetInstanceID()+":"+texture.GetInstanceID();
                if(!particleMaterials.TryGetValue(key,out var material))
                {
                    material=new Material(original){name="Penguin degree "+texture.name};
                    var shader=ParticleShader!=null?ParticleShader:Shader.Find("Game/ParticleCompatibility");if(shader!=null)material.shader=shader;
                    // Recovered materials can retain opaque Standard defaults
                    // (One/Zero), which expose the transparent texture rectangle.
                    if(material.HasProperty("_SrcBlend"))material.SetFloat("_SrcBlend",5);
                    if(material.HasProperty("_DstBlend"))material.SetFloat("_DstBlend",10);
                    material.mainTexture=texture;materials.Add(material);particleMaterials.Add(key,material);
                }
                replacements[i]=material;
            }
            r.sharedMaterials=replacements;
            // Circle02 contains four tiles; the recovered 1x1 setting exposes all
            // four at once. Display one concentric ring per particle instead.
            var sheet=p.textureSheetAnimation;int columns=sheet.numTilesX,rows=sheet.numTilesY;
            var sheetMode=sheet.mode;
            if(source=="Circle02")
            {
                sheet.mode=ParticleSystemAnimationMode.Grid;sheet.numTilesX=2;sheet.numTilesY=2;
                restore.Add(PenguinDegreeGroundRing.Attach(p,r));
            }
            restore.Add(()=>{if(p==null||r==null)return;r.sharedMaterials=originals;var s=p.textureSheetAnimation;s.mode=sheetMode;s.numTilesX=columns;s.numTilesY=rows;});
            return true;
        }
        private void StyleFloating(DamageTextPresenter presenter)
        {
            var field=typeof(DamageTextPresenter).GetField("materials",BindingFlags.NonPublic|BindingFlags.Instance);var original=(Material[])field.GetValue(presenter);
            if(original==null||FloatingShader==null)return;var settings=presenter.GetComponent<DamageTextAnimationSetting>();var next=new Material[original.Length];
            for(int i=0;i<next.Length;i++)
            {
                var mat=new Material(FloatingShader){name="Polar floating number "+i};mat.mainTexture=original[i].mainTexture;materials.Add(mat);next[i]=mat;
                string key=settings.settings[i].key;mat.SetColor("_FaceColor",key=="critical"?new Color(1,.69f,.30f):key=="dia"?new Color(.80f,.68f,1):Color.white);
                if(key=="money"||key=="dia")
                {
                    var animation=settings.settings[i].setting.GetComponent<DamageTextAnimation>();CharacterInfo ch;
                    if(animation.font.GetCharacterInfo('+',out ch))
                    {float x=Mathf.Min(ch.uvBottomLeft.x,ch.uvTopRight.x),y=Mathf.Min(ch.uvBottomLeft.y,ch.uvTopRight.y);float w=Mathf.Abs(ch.uvTopRight.x-ch.uvBottomLeft.x),h=Mathf.Abs(ch.uvTopRight.y-ch.uvBottomLeft.y);mat.SetVector("_CurrencyRect",new Vector4(x,y,w,h));mat.SetTexture("_CurrencyTex",key=="money"?GetComponent<PenguinUiTheme>().Coin.texture:Gems[0].texture);}
                }
            }
            presenter.SetMaterials(next);restore.Add(()=>{if(presenter!=null)presenter.SetMaterials(original);});
        }
        private void Maintain()
        {
            if(!applied)return;
            if(WorldVisualsBaked)return;
            foreach(var image in images)if(!StaticUiBaked&&image!=null&&image.isActiveAndEnabled&&image.sprite!=null&&map.TryGetValue(image.sprite,out var s)){image.sprite=s;image.color=new Color(1,1,1,image.color.a);image.preserveAspect=!IsBackdrop(image.sprite);}
            foreach(var r in renderers)if(r!=null&&r.sprite!=null&&map.TryGetValue(r.sprite,out var s)){bool keep=r.GetComponent<SpriteFill>()!=null||IsNeutralShape(r.sprite);r.sprite=s;if(!keep)r.color=new Color(1,1,1,r.color.a);}
            foreach(var raw in rawImages)if(!StaticUiBaked&&raw!=null&&raw.texture!=null&&!(raw.texture is RenderTexture)&&textureMap.TryGetValue(raw.texture,out var texture))raw.texture=texture;
        }
        private void LateUpdate()
        {
            if(!applied)return;Maintain();int skin=Mathf.Clamp(Skin_manager.instance.Selected_num,0,Skins.Length-1);var cam=Camera.main;if(cam==null)return;
            foreach(var t in team)
            {
                foreach(var r in t.Hidden)if(r!=null)r.enabled=false;
                t.Expression.SetSkin(Skins[skin],EyeA[skin],EyeB[skin],Mouth[skin]);

            }
        }
        private void OnDisable()
        {
            if(!applied)return;applied=false;Canvas.willRenderCanvases-=Maintain;
            for(int i=restore.Count-1;i>=0;i--)restore[i]();restore.Clear();
            foreach(var go in visuals)if(go!=null)Destroy(go);visuals.Clear();
            foreach(var m in materials)if(m!=null)Destroy(m);materials.Clear();particleMaterials.Clear();expressions.Clear();team.Clear();
        }
    }
}
