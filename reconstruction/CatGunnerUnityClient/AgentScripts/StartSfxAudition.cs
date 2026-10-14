if (!EditorApplication.isPlaying) throw new Exception("Running game required");
var client=CatGunner.Runtime.GameClient.Instance;
var sound=Sound_manager.instance;
var owner=Dia_Attraction.instance;
if(client==null || !client.ReadyForPlay || sound==null || owner==null)throw new Exception("Game still starting");
if(GameObject.Find("RuntimeSfxAudition")!=null)return "Audition panel already open";
var gameCanvas=client.Slider.GetComponentInParent<Canvas>();
var font=gameCanvas.GetComponentsInChildren<TMPro.TMP_Text>(true).Select(t=>t.font).First(f=>f!=null && f.name=="StarChineseFallback");
var settings=Setting.instance;bool oldMute=settings.is_SFX_Mute;settings.is_SFX_Mute=false;
var root=new GameObject("RuntimeSfxAudition",typeof(RectTransform),typeof(Canvas),typeof(UnityEngine.UI.CanvasScaler),typeof(UnityEngine.UI.GraphicRaycaster));
root.hideFlags=HideFlags.DontSave;
var canvas=root.GetComponent<Canvas>();canvas.renderMode=RenderMode.ScreenSpaceOverlay;canvas.sortingOrder=10000;
var particleLayer=owner._diaFx.GetComponent<Canvas>();bool addedParticleLayer=particleLayer==null;
bool oldParticleOverride=particleLayer!=null && particleLayer.overrideSorting;int oldParticleOrder=particleLayer!=null?particleLayer.sortingOrder:0;
if(addedParticleLayer)particleLayer=owner._diaFx.gameObject.AddComponent<Canvas>();
particleLayer.overrideSorting=true;particleLayer.sortingOrder=10001;
var scaler=root.GetComponent<UnityEngine.UI.CanvasScaler>();scaler.uiScaleMode=UnityEngine.UI.CanvasScaler.ScaleMode.ScaleWithScreenSize;
var originalScaler=gameCanvas.GetComponent<UnityEngine.UI.CanvasScaler>();scaler.referenceResolution=originalScaler.referenceResolution;scaler.matchWidthOrHeight=originalScaler.matchWidthOrHeight;
RectTransform Rect(string name,Transform parent,Vector2 anchor,Vector2 size,Vector2 position)
{
    var go=new GameObject(name,typeof(RectTransform));go.transform.SetParent(parent,false);
    var rt=(RectTransform)go.transform;rt.anchorMin=rt.anchorMax=anchor;rt.pivot=new Vector2(.5f,.5f);rt.sizeDelta=size;rt.anchoredPosition=position;return rt;
}
TMPro.TextMeshProUGUI Label(string name,Transform parent,string text,Vector2 position,Vector2 size,int points)
{
    var rt=Rect(name,parent,new Vector2(.5f,.5f),size,position);
    var t=rt.gameObject.AddComponent<TMPro.TextMeshProUGUI>();t.font=font;t.text=text;t.fontSize=points;
    t.color=Color.white;t.alignment=TMPro.TextAlignmentOptions.Center;t.raycastTarget=false;t.enableWordWrapping=false;return t;
}
var panel=Rect("AuditionPanel",root.transform,new Vector2(1,1),new Vector2(560,290),new Vector2(-300,-260));
var background=panel.gameObject.AddComponent<UnityEngine.UI.Image>();background.color=new Color(.06f,.14f,.22f,.96f);
Label("Title",panel,"音效试听",new Vector2(-110,108),new Vector2(290,46),34);
Label("Hint",panel,"钻石仅试听粒子与声音",new Vector2(0,-112),new Vector2(530,38),24);
var counter=Label("DiamondCounter",panel,"钻石到达：0",new Vector2(30,57),new Vector2(340,38),27);
var icon=Rect("DiamondTarget",panel,new Vector2(.5f,.5f),new Vector2(42,42),new Vector2(-184,57));
var iconImage=icon.gameObject.AddComponent<UnityEngine.UI.Image>();iconImage.sprite=owner._diaFx.SourceSprite;iconImage.raycastTarget=false;
var bounce=icon.gameObject.AddComponent<Bounce>();
var target=icon.gameObject.AddComponent<Dia_Attraction_Target>();target._bounce=bounce;
UnityEngine.UI.Button Button(string name,string text,Vector2 position,Vector2 size,Color color)
{
    var rt=Rect(name,panel,new Vector2(.5f,.5f),size,position);
    var image=rt.gameObject.AddComponent<UnityEngine.UI.Image>();image.color=color;
    var button=rt.gameObject.AddComponent<UnityEngine.UI.Button>();button.targetGraphic=image;
    Label(name+"Label",rt,text,Vector2.zero,size,29);
    PenguinFeedbackBootstrap.AttachButton(button);return button;
}
var click=Button("AuditionClick","按钮点击",new Vector2(-132,-24),new Vector2(238,72),new Color(.16f,.38f,.52f));
var diamonds=Button("AuditionDiamonds","连续钻石",new Vector2(132,-24),new Vector2(238,72),new Color(.12f,.48f,.36f));
var close=Button("AuditionClose","关闭",new Vector2(220,108),new Vector2(80,42),new Color(.31f,.23f,.28f));
close.GetComponentInChildren<TMPro.TMP_Text>().fontSize=23;
var diamondLabel=diamonds.GetComponentInChildren<TMPro.TMP_Text>();
bool looping=false;float nextSpawn=0;int startFinished=owner._diaFx.Finished;int startDia=client.State.Dia;
click.onClick.AddListener(()=>{}); // The existing PenguinButtonFeedback owns the click cue.
diamonds.onClick.AddListener(()=>{looping=!looping;diamondLabel.text=looping?"停止钻石":"连续钻石";nextSpawn=Time.unscaledTime;});
close.onClick.AddListener(()=>{looping=false;UnityEngine.Object.Destroy(root);});
float lastLabel=-1;
UnityEditor.EditorApplication.CallbackFunction tick=null;
tick=()=>
{
    if(!EditorApplication.isPlaying || root==null || owner==null)
    {
        System.IO.File.WriteAllText(System.IO.Path.GetFullPath(System.IO.Path.Combine(Application.dataPath,"../../../art/audio/basic-sfx-original-v6/playtest/panel-cleanup.json")),Newtonsoft.Json.JsonConvert.SerializeObject(new{playing=EditorApplication.isPlaying,rootMissing=root==null,ownerMissing=owner==null}));
        EditorApplication.update-=tick;
        if(settings!=null)settings.is_SFX_Mute=oldMute;
        if(particleLayer!=null){if(addedParticleLayer)UnityEngine.Object.Destroy(particleLayer);else{particleLayer.overrideSorting=oldParticleOverride;particleLayer.sortingOrder=oldParticleOrder;}}
        if(root!=null){if(EditorApplication.isPlaying)UnityEngine.Object.Destroy(root);else UnityEngine.Object.DestroyImmediate(root);}
        return;
    }
    if(looping && Time.timeScale>0 && Time.unscaledTime>=nextSpawn)
    {
        nextSpawn=Time.unscaledTime+.125f;
        // Emit through the native recovered diamond flow; no wallet credit.
        owner.Dia_Spawn(diamonds.transform,1);
    }
    if(Time.unscaledTime-lastLabel>.1f)
    {
        lastLabel=Time.unscaledTime;
        counter.text="钻石到达："+(owner._diaFx.Finished-startFinished);
    }
};
EditorApplication.update+=tick;
Canvas.ForceUpdateCanvases();
string dir=System.IO.Path.GetFullPath(System.IO.Path.Combine(Application.dataPath,"../../../art/audio/basic-sfx-original-v6/playtest"));
System.IO.File.WriteAllText(System.IO.Path.Combine(dir,"panel-installation.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new {
    playing=true,temporaryPanel=root.name,buttons=new[]{click.name,diamonds.name,close.name},
    diamondRate=8,diamondTrigger="Dia_Spawn -> DiamondParticles.Update -> Dia_FX_End -> PlaySfx(Tick,1)",
    diamondWallet=startDia,bgm=sound.bgmSource.clip.name,bgmPlaying=sound.bgmSource.isPlaying,
    profile=client.SaveFolderOverride,scene=UnityEditor.SceneManagement.EditorSceneManager.GetActiveScene().path
},Newtonsoft.Json.Formatting.Indented));
return "Temporary audition panel installed: click and continuous diamond arrivals, existing BGM preserved";
