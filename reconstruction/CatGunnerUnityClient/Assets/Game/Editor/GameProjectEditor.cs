using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text.RegularExpressions;
using TMPro;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.UI;

public static class GameProjectEditor
{
    private static string Reports => Path.GetFullPath(Path.Combine(Application.dataPath,
        "../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));

    [MenuItem("Game/Open original Settings slice")]
    public static void OpenSettings()
    {
        EditorSceneManager.OpenScene("Assets/Game/Scenes/Settings.unity");
        EditorUserBuildSettings.activeBuildTarget.ToString();
    }

    [MenuItem("Game/Open original forest pool slice")]
    public static void OpenForest()
    {
        if(EditorApplication.isPlaying) throw new InvalidOperationException("Open the forest slice in EditMode");
        EditorSceneManager.OpenScene("Assets/Game/Scenes/Forest.unity");
        SetPortraitGameView();
    }

    public static void PrepareForestSlice()
    {
        OpenForest();
        RepairOriginalTextureReferences();
        var report=new List<string>();
        var spriteMaterial=AssetDatabase.GetBuiltinExtraResource<Material>("Sprites-Default.mat");
        if(spriteMaterial==null) throw new InvalidOperationException("Public built-in sprite material not available");
        foreach(var renderer in UnityEngine.Object.FindObjectsByType<SpriteRenderer>(FindObjectsInactive.Include))
        {
            var material=renderer.sharedMaterial;
            if(material==null || material.shader==null || material.shader.name=="Hidden/InternalErrorShader" ||
                material.shader.name.Contains("ShaderDummy") || material.shader.name.Contains("Universal Render Pipeline"))
            {
                report.Add(renderer.name+" | original material="+(material!=null?AssetDatabase.GetAssetPath(material):"unresolved")+
                    " | compatibility material=public Sprites/Default");
                renderer.sharedMaterial=spriteMaterial;
            }
            if(renderer.sprite!=null && renderer.sprite.texture==null)
                throw new InvalidOperationException("Forest sprite texture unresolved: "+renderer.sprite.name);
        }
        var trees=UnityEngine.Object.FindObjectsByType<Tree>(FindObjectsInactive.Include);
        if(trees.Length!=501 || trees.Any(t=>t.enemy==null || t.spriteRenderer==null))
            throw new InvalidOperationException("Original 501-tree pool references incomplete");
        var manager=UnityEngine.Object.FindAnyObjectByType<Tree_manager>(FindObjectsInactive.Include);
        if(manager.GetComponent<CatGunner.Runtime.ForestRuntimeAcceptance>()==null)
            manager.gameObject.AddComponent<CatGunner.Runtime.ForestRuntimeAcceptance>();
        report.Add("Acceptance harness supplies pool startup and a separate gaming gate; full original startup is pending.");
        File.WriteAllLines(Path.Combine(Reports,"forest-renderer-compatibility.txt"),report);
        EditorSceneManager.MarkSceneDirty(EditorSceneManager.GetActiveScene());
        EditorSceneManager.SaveScene(EditorSceneManager.GetActiveScene());
    }

    [Serializable] private sealed class Pointer {public long m_PathID;}
    [Serializable] private sealed class SpriteBoundsRecord {public Vector3 m_Center,m_Extent;}
    [Serializable] private sealed class SpriteSkinData
    {
        public Pointer m_GameObject,m_RootBone;
        public Pointer[] m_BoneTransforms;
        public SpriteBoundsRecord m_Bounds;
        public bool m_AlwaysUpdate,m_AutoRebind;
    }
    [Serializable] private sealed class SpriteSkinRecord {public SpriteSkinData data;}

    public static void RestoreOriginalSpriteSkin()
    {
        if(EditorApplication.isPlaying) throw new InvalidOperationException("Restore original bones in EditMode");
        var record=JsonUtility.FromJson<SpriteSkinRecord>(File.ReadAllText(Path.Combine(Reports,
            "../serialized-components/level0-149334.json"))).data;
        var transforms=UnityEngine.Object.FindObjectsByType<Transform>(FindObjectsInactive.Include)
            .ToDictionary(t=>(long)GlobalObjectId.GetGlobalObjectIdSlow(t).targetObjectId,t=>t);
        var objects=UnityEngine.Object.FindObjectsByType<GameObject>(FindObjectsInactive.Include)
            .ToDictionary(t=>(long)GlobalObjectId.GetGlobalObjectIdSlow(t).targetObjectId,t=>t);
        var type=AppDomain.CurrentDomain.GetAssemblies().Select(a=>a.GetType("UnityEngine.U2D.Animation.SpriteSkin"))
            .FirstOrDefault(t=>t!=null);
        if(type==null) throw new InvalidOperationException("Public Unity 2D Animation is not registered");
        var go=objects[record.m_GameObject.m_PathID];
        var component=go.GetComponent(type) ?? go.AddComponent(type);
        var serialized=new SerializedObject(component);
        serialized.FindProperty("m_RootBone").objectReferenceValue=transforms[record.m_RootBone.m_PathID];
        var bones=serialized.FindProperty("m_BoneTransforms");bones.arraySize=record.m_BoneTransforms.Length;
        for(int i=0;i<bones.arraySize;i++) bones.GetArrayElementAtIndex(i).objectReferenceValue=transforms[record.m_BoneTransforms[i].m_PathID];
        serialized.FindProperty("m_Bounds").boundsValue=new Bounds(record.m_Bounds.m_Center,record.m_Bounds.m_Extent*2);
        serialized.FindProperty("m_AlwaysUpdate").boolValue=record.m_AlwaysUpdate;
        serialized.FindProperty("m_AutoRebind").boolValue=record.m_AutoRebind;
        serialized.ApplyModifiedPropertiesWithoutUndo();
        EditorUtility.SetDirty(component);
        EditorSceneManager.MarkSceneDirty(EditorSceneManager.GetActiveScene());
        EditorSceneManager.SaveScene(EditorSceneManager.GetActiveScene());
        File.WriteAllText(Path.Combine(Reports,"forest-sprite-skin-compatibility.txt"),
            "Original Cat_Bone document 149334: all 9 original bone transforms, root, bounds and flags restored through public SpriteSkin.\n"+
            "Runtime package 14.0.4 for user Editor 6000.4; package GUID alias replaces original exported script identity. Original baseline unchanged.\n");
    }

    [Serializable] private sealed class ComponentIndexEntry {public string type,output;public long path_id;}
    [Serializable] private sealed class ComponentIndex {public ComponentIndexEntry[] items;}
    [Serializable] private sealed class PoolData
    {
        public Pointer m_GameObject,_sprite,Fill,Slider,enemyScript,Target_trans;
    }
    [Serializable] private sealed class PoolRecord {public PoolData data;}

    public static void RestoreOriginalForestLeafReferences()
    {
        if(EditorApplication.isPlaying) throw new InvalidOperationException("Restore scene references in EditMode");
        var index=JsonUtility.FromJson<ComponentIndex>("{\"items\":"+
            File.ReadAllText(Path.Combine(Reports,"component-decoding-index.json"))+"}").items;
        var objects=UnityEngine.Object.FindObjectsByType<GameObject>(FindObjectsInactive.Include)
            .ToDictionary(t=>(long)GlobalObjectId.GetGlobalObjectIdSlow(t).targetObjectId,t=>t);
        var components=UnityEngine.Object.FindObjectsByType<Component>(FindObjectsInactive.Include)
            .ToDictionary(t=>(long)GlobalObjectId.GetGlobalObjectIdSlow(t).targetObjectId,t=>t);
        var restored=new Dictionary<long,Component>();
        var report=new List<string>();
        const string materialPath="Assets/Game/ForestHealthFill.mat";
        var material=AssetDatabase.LoadAssetAtPath<Material>(materialPath);
        if(material==null)
        {
            var shader=Shader.Find("Game/ForestHealthFill");
            if(shader==null) throw new InvalidOperationException("Forest health compatibility shader not imported");
            material=new Material(shader);AssetDatabase.CreateAsset(material,materialPath);
        }
        PoolData Read(ComponentIndexEntry e) => JsonUtility.FromJson<PoolRecord>(
            File.ReadAllText(Path.Combine(Reports,"../"+e.output))).data;
        foreach(var name in new[]{"SpriteFill","Enemy_Slider","EnemyColl"})
            foreach(var e in index.Where(e=>e.type==name))
            {
                var data=Read(e);
                if(!objects.TryGetValue(data.m_GameObject.m_PathID,out var go)) continue;
                var type=typeof(Enemy).Assembly.GetType(name,true);
                var component=go.GetComponent(type) ?? go.AddComponent(type);
                restored[e.path_id]=component;
                var serialized=new SerializedObject(component);
                if(name=="SpriteFill")
                {
                    var renderer=data._sprite.m_PathID==0 ? go.GetComponent<SpriteRenderer>() : (SpriteRenderer)components[data._sprite.m_PathID];
                    if(renderer==null) throw new InvalidOperationException("Original fill has no SpriteRenderer: "+e.path_id);
                    serialized.FindProperty("_sprite").objectReferenceValue=renderer;
                    renderer.sharedMaterial=material;
                }
                else if(name=="Enemy_Slider") serialized.FindProperty("Fill").objectReferenceValue=restored[data.Fill.m_PathID];
                else serialized.FindProperty("enemyScript").objectReferenceValue=components[data.enemyScript.m_PathID];
                serialized.ApplyModifiedPropertiesWithoutUndo();
                report.Add(name+" | original document="+e.path_id+" | original game object="+data.m_GameObject.m_PathID);
            }
        foreach(var e in index.Where(e=>e.type=="Enemy"))
        {
            var data=Read(e);
            if(!objects.TryGetValue(data.m_GameObject.m_PathID,out var go)) continue;
            var enemy=go.GetComponent<Enemy>();
            if(enemy==null) continue;
            if(data.Slider.m_PathID!=0) enemy.Slider=(Enemy_Slider)restored[data.Slider.m_PathID];
            EditorUtility.SetDirty(enemy);
        }
        report.Add("Health shader is an evidence-constrained built-in pipeline substitute; source/graphics parity remains pending.");
        File.WriteAllLines(Path.Combine(Reports,"forest-leaf-reference-restoration.txt"),report);
        EditorSceneManager.MarkSceneDirty(EditorSceneManager.GetActiveScene());
        EditorSceneManager.SaveScene(EditorSceneManager.GetActiveScene());
    }

    public static void RestoreOriginalForestFollow()
    {
        if(EditorApplication.isPlaying) throw new InvalidOperationException("Restore Follow in EditMode");
        var index=JsonUtility.FromJson<ComponentIndex>(File.ReadAllText(Path.Combine(Reports,"component-decoding-index.json"))
            .Insert(0,"{\"items\":")+"}").items;
        var objects=UnityEngine.Object.FindObjectsByType<GameObject>(FindObjectsInactive.Include)
            .ToDictionary(t=>(long)GlobalObjectId.GetGlobalObjectIdSlow(t).targetObjectId,t=>t);
        var transforms=UnityEngine.Object.FindObjectsByType<Transform>(FindObjectsInactive.Include)
            .ToDictionary(t=>(long)GlobalObjectId.GetGlobalObjectIdSlow(t).targetObjectId,t=>t);
        var report=new List<string>();
        foreach(var e in index.Where(e=>e.type=="Follow"))
        {
            var data=JsonUtility.FromJson<PoolRecord>(File.ReadAllText(Path.Combine(Reports,"../"+e.output))).data;
            if(!objects.TryGetValue(data.m_GameObject.m_PathID,out var go)) continue;
            if(!transforms.TryGetValue(data.Target_trans.m_PathID,out var target))
            {report.Add("Pending external target: "+e.path_id);continue;}
            var follow=go.GetComponent<Follow>() ?? go.AddComponent<Follow>();follow.Target_trans=target;
            EditorUtility.SetDirty(follow);report.Add("Original Follow "+e.path_id+" -> original Transform "+data.Target_trans.m_PathID);
        }
        File.WriteAllLines(Path.Combine(Reports,"forest-follow-restoration.txt"),report);
        EditorSceneManager.MarkSceneDirty(EditorSceneManager.GetActiveScene());
        EditorSceneManager.SaveScene(EditorSceneManager.GetActiveScene());
    }

    public static void PrepareBatch()
    {
        OpenSettings();
        ImportPublicShaders();
        RepairOriginalTextureReferences();
        RestoreOriginalAudioContract();
        RepairSettingsSlice();
        EditorBuildSettings.scenes = EditorBuildSettings.scenes.Concat(new[] {
            new EditorBuildSettingsScene("Assets/Game/Scenes/Settings.unity",true),
            new EditorBuildSettingsScene("Assets/Game/Scenes/Forest.unity",true),
            new EditorBuildSettingsScene("Assets/Game/Scenes/Joystick.unity",true)})
            .Where(scene=>File.Exists(Path.Combine(Application.dataPath,"../"+scene.path)))
            .GroupBy(scene=>scene.path).Select(group=>group.First()).ToArray();
    }

    public static void RebuildSceneDynamicFonts()
    {
        if(EditorApplication.isPlaying) throw new InvalidOperationException("Font compatibility rebuild requires EditMode");
        var texts=UnityEngine.Object.FindObjectsByType<TMP_Text>(FindObjectsInactive.Include);
        var report=new List<string>();
        foreach(var font in texts.Select(t=>t.font).Where(f=>f!=null).Distinct())
        {
            if(font.atlasPopulationMode!=AtlasPopulationMode.Dynamic || font.sourceFontFile==null) continue;
            var unicode=new HashSet<uint>(font.characterTable.Select(c=>c.unicode));
            foreach(var text in texts.Where(t=>t.font==font))
                foreach(char c in text.text) unicode.Add(c);
            var texture=font.atlasTexture;
            var path=AssetDatabase.GetAssetPath(texture);
            var importer=AssetImporter.GetAtPath(path) as TextureImporter;
            // Locally generated CJK fallback owns a subasset atlas, not a shipped PNG.
            if(AssetDatabase.GetAssetPath(font)=="Assets/Game/Resources/StarChineseFallback.asset")
            {font.TryAddCharacters(unicode.OrderBy(x=>x).ToArray(),out uint[] fallbackMissing,true);EditorUtility.SetDirty(font);report.Add(font.name+" | local fallback subasset atlas | missing="+string.Join(",",fallbackMissing??Array.Empty<uint>()));continue;}
            if(importer==null || !path.EndsWith(".png")) throw new InvalidOperationException("Original font atlas is not the expected PNG: "+font.name);
            importer.textureType=TextureImporterType.SingleChannel;
            var textureSettings=new TextureImporterSettings();
            importer.ReadTextureSettings(textureSettings);
            textureSettings.singleChannelComponent=TextureImporterSingleChannelComponent.Alpha;
            importer.SetTextureSettings(textureSettings);
            importer.sRGBTexture=false;
            importer.isReadable=true;
            importer.textureCompression=TextureImporterCompression.Uncompressed;
            var platform=importer.GetDefaultPlatformTextureSettings();
            platform.format=TextureImporterFormat.Alpha8;
            importer.SetPlatformTextureSettings(platform);
            importer.SaveAndReimport();
            // Clear Dynamic Data on Build can leave an empty atlas with cached glyph metadata.
            // Rebuild from this package's exact original font face, sampling/padding and render mode.
            font.ClearFontAssetData(true);
            font.TryAddCharacters(unicode.OrderBy(x=>x).ToArray(),out uint[] missing,true);
            texture=font.atlasTexture;
            File.WriteAllBytes(path,texture.EncodeToPNG());
            AssetDatabase.ImportAsset(path,ImportAssetOptions.ForceSynchronousImport);
            EditorUtility.SetDirty(font);
            EditorUtility.SetDirty(font.material);
            foreach(var text in texts.Where(t=>t.font==font))
            {
                if(text.fontSharedMaterial!=null)
                {
                    text.fontSharedMaterial.SetTexture("_MainTex",font.atlasTexture);
                    EditorUtility.SetDirty(text.fontSharedMaterial);
                }
                text.ForceMeshUpdate(true,true);
            }
            report.Add(font.name+" | original source="+font.sourceFontFile.name+" | glyphs="+font.characterTable.Count+" | format="+font.atlasTexture.format+" | missing="+string.Join(",",(missing??Array.Empty<uint>()).Select(x=>x.ToString())));
        }
        AssetDatabase.SaveAssets();
        File.WriteAllLines(Path.Combine(Reports,"dynamic-font-compatibility.txt"),report);
    }

    public static void RepairOriginalTextureReferences()
    {
        var changes=new List<string>();
        foreach (var path in Directory.GetFiles("Assets/Sprite","*.asset",SearchOption.AllDirectories))
        {
            var sprite=AssetDatabase.LoadAssetAtPath<Sprite>(path);
            if(sprite==null || sprite.texture!=null) continue;
            var match=Regex.Match(File.ReadAllText(path),@"texture: \{fileID: 2800000, guid: ([0-9a-f]+)");
            if(!match.Success) continue;
            var texturePath=AssetDatabase.GUIDToAssetPath(match.Groups[1].Value);
            var importer=AssetImporter.GetAtPath(texturePath) as TextureImporter;
            if(importer==null) throw new InvalidOperationException("Missing original texture importer: "+path);
            // Sprite YAML holds the original mesh/rect/border separately. Empty Multiple
            // Sprite sheets can produce no Texture2D in this Editor; retain the source GUID.
            if(AssetDatabase.LoadAssetAtPath<Texture2D>(texturePath)==null)
            {
                importer.textureType=TextureImporterType.Default;
                importer.textureCompression=TextureImporterCompression.Uncompressed;
                importer.SaveAndReimport();
                changes.Add(texturePath);
            }
            AssetDatabase.ImportAsset(path,ImportAssetOptions.ForceSynchronousImport);
            if(AssetDatabase.LoadAssetAtPath<Sprite>(path).texture==null)
                throw new InvalidOperationException("Original sprite texture still missing: "+path);
        }
        File.WriteAllLines(Path.Combine(Reports,"sprite-texture-import-repairs.txt"),changes);
    }

    [MenuItem("Game/Preview at original portrait resolution")]
    public static void SetPortraitGameView()
    {
        var assembly=typeof(EditorWindow).Assembly;
        var sizesType=assembly.GetType("UnityEditor.GameViewSizes",true);
        var singleton=typeof(ScriptableSingleton<>).MakeGenericType(sizesType);
        var sizes=singleton.GetProperty("instance",BindingFlags.Public|BindingFlags.Static|BindingFlags.FlattenHierarchy).GetValue(null);
        var group=sizesType.GetProperty("currentGroup",BindingFlags.Public|BindingFlags.NonPublic|BindingFlags.Instance).GetValue(sizes);
        var groupType=group.GetType();
        var sizeType=assembly.GetType("UnityEditor.GameViewSize",true);
        int total=(int)groupType.GetMethod("GetTotalCount").Invoke(group,null),index=-1;
        for(int i=0;i<total;i++)
        {
            var size=groupType.GetMethod("GetGameViewSize").Invoke(group,new object[]{i});
            if((int)sizeType.GetProperty("width").GetValue(size)==1080 && (int)sizeType.GetProperty("height").GetValue(size)==1920)
            { index=i;break; }
        }
        if(index<0)
        {
            var kind=assembly.GetType("UnityEditor.GameViewSizeType",true);
            var size=Activator.CreateInstance(sizeType,BindingFlags.Public|BindingFlags.NonPublic|BindingFlags.Instance,null,
                new object[]{Enum.Parse(kind,"FixedResolution"),1080,1920,"Cat Gunner original portrait"},null);
            groupType.GetMethod("AddCustomSize").Invoke(group,new[]{size});
            index=total;
        }
        var viewType=assembly.GetType("UnityEditor.GameView",true);
        var view=EditorWindow.GetWindow(viewType);
        viewType.GetProperty("selectedSizeIndex",BindingFlags.Public|BindingFlags.NonPublic|BindingFlags.Instance).SetValue(view,index);
        view.Repaint();
    }

    [Serializable] private sealed class SoundEntryContract
    {
        public int type;
        public float volume;
        public string guid;
    }
    [Serializable] private sealed class SoundContract
    {
        public SoundEntryContract[] entries;
        public string BGM_main, BGM_contents, bgmSourceClip;
        public bool blockSameFrameDuplicate, blockCooldownDuplicate;
        public float cooldownSeconds;
    }

    public static void RestoreOriginalAudioContract()
    {
        AssetDatabase.Refresh(ImportAssetOptions.ForceSynchronousImport);
        var contract = JsonUtility.FromJson<SoundContract>(File.ReadAllText(Path.Combine(Reports,"original-sound-contract.json")));
        var sound = UnityEngine.Object.FindAnyObjectByType<Sound_manager>(FindObjectsInactive.Include);
        if (sound == null) throw new InvalidOperationException("Original Sound_manager component missing");
        AudioClip Load(string guid)
        {
            if (string.IsNullOrEmpty(guid)) return null;
            var clip = AssetDatabase.LoadAssetAtPath<AudioClip>(AssetDatabase.GUIDToAssetPath(guid));
            if (clip == null || clip.samples <= 0) throw new InvalidOperationException("Original audio import failed: " + guid);
            return clip;
        }
        var serialized = new SerializedObject(sound);
        var entries = serialized.FindProperty("sfxEntries");
        entries.arraySize = contract.entries.Length;
        for (int i=0; i<contract.entries.Length; i++)
        {
            var target = entries.GetArrayElementAtIndex(i);
            target.FindPropertyRelative("type").intValue = contract.entries[i].type;
            target.FindPropertyRelative("volume").floatValue = contract.entries[i].volume;
            target.FindPropertyRelative("clip").objectReferenceValue = Load(contract.entries[i].guid);
        }
        serialized.FindProperty("BGM_main").objectReferenceValue = Load(contract.BGM_main);
        serialized.FindProperty("BGM_contents").objectReferenceValue = Load(contract.BGM_contents);
        serialized.FindProperty("blockSameFrameDuplicate").boolValue = contract.blockSameFrameDuplicate;
        serialized.FindProperty("blockCooldownDuplicate").boolValue = contract.blockCooldownDuplicate;
        serialized.FindProperty("cooldownSeconds").floatValue = contract.cooldownSeconds;
        serialized.ApplyModifiedPropertiesWithoutUndo();
        sound.bgmSource.clip = Load(contract.bgmSourceClip);
        EditorUtility.SetDirty(sound.bgmSource);
        EditorSceneManager.MarkSceneDirty(EditorSceneManager.GetActiveScene());
        EditorSceneManager.SaveScene(EditorSceneManager.GetActiveScene());
        Debug.Log("Restored original Sound_manager catalogue: " + entries.arraySize + " entries, two BGM clips");
    }

    public static void ImportPublicShaders()
    {
        const string source = "/private/tmp/catgunner-public-tmp-shaders";
        const string destination = "Assets/Game/PublicTMPShaders";
        if (!Directory.Exists(destination)) FileUtil.CopyFileOrDirectory(source, destination);
        AssetDatabase.Refresh();
    }

    public static void RepairSettingsSlice()
    {
        var report = new List<string>();
        var scene = EditorSceneManager.GetActiveScene();
        var objects = scene.GetRootGameObjects().SelectMany(root => root.GetComponentsInChildren<Transform>(true))
            .Select(t => t.gameObject).ToArray();
        var shader = Shader.Find("TextMeshPro/Distance Field");
        if (shader == null) throw new InvalidOperationException("Official TMP shader has not imported yet");
        var repaired = new HashSet<Material>();
        foreach (var text in objects.SelectMany(go => go.GetComponents<TMP_Text>()))
        {
            if (text.font == null) { report.Add("Missing original font: " + text.name); continue; }
            foreach (var mat in new[] {text.font.material, text.fontSharedMaterial})
            {
                if (mat == null || !repaired.Add(mat)) continue;
                mat.shader = shader;
                EditorUtility.SetDirty(mat);
                report.Add("TMP public shader compatibility: " + AssetDatabase.GetAssetPath(mat));
            }
        }
        foreach (var go in objects)
        {
            int count = GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(go);
            if (count > 0)
            {
                report.Add("Working slice quarantined missing components: " + go.name + " x" + count);
                GameObjectUtility.RemoveMonoBehavioursWithMissingScript(go);
            }
        }
        foreach (var button in objects.SelectMany(go => go.GetComponents<Button>()))
        {
            for (int i = 0; i < button.onClick.GetPersistentEventCount(); i++)
            {
                var target = button.onClick.GetPersistentTarget(i);
                var method = button.onClick.GetPersistentMethodName(i);
                if (string.IsNullOrEmpty(method)) continue;
                if (target == null || target.GetType().GetMethod(method) == null)
                {
                    button.interactable = false;
                    report.Add("Pending original callback disabled: " + button.name + " -> " + method);
                }
            }
        }
        var scaler = objects.SelectMany(go => go.GetComponents<CanvasScaler>()).FirstOrDefault();
        if (scaler != null) report.Add("Original reference resolution: " + scaler.referenceResolution);
        AssetDatabase.SaveAssets();
        EditorSceneManager.MarkSceneDirty(scene);
        EditorSceneManager.SaveScene(scene);
        Directory.CreateDirectory(Reports);
        File.WriteAllLines(Path.Combine(Reports,"settings-compatibility-actions.txt"),report);
        Debug.Log("Settings compatibility actions: " + report.Count);
    }

    public static void VerifyRuntimeSettings()
    {
        if (!EditorApplication.isPlaying) throw new InvalidOperationException("PlayMode required");
        var settings = UnityEngine.Object.FindAnyObjectByType<Setting>();
        if (settings == null) throw new InvalidOperationException("Original Setting component not active");
        var log = new List<string>();
        const string key = "reconstruction.com.Chodun.CatGunner.settings.v1";
        bool hadSave = PlayerPrefs.HasKey(key);
        string save = PlayerPrefs.GetString(key);
        var buttons = UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include);
        var names = new[] {"BGM_Setting_Change","SFX_Setting_Change","Vibration_Setting_Change"};
        var before = new[] {settings.is_BGM_Mute,settings.is_SFX_Mute,settings.is_Vibration_Mute};
        try
        {
            foreach (var method in names)
            {
                var button = buttons.Single(b => Enumerable.Range(0,b.onClick.GetPersistentEventCount())
                    .Any(i => b.onClick.GetPersistentTarget(i)==settings && b.onClick.GetPersistentMethodName(i)==method));
                if (!button.interactable) throw new InvalidOperationException("Recovered button disabled: " + method);
                button.onClick.Invoke();
                AssertPresentation(settings);
                string first = PlayerPrefs.GetString(key);
                if (string.IsNullOrEmpty(first)) throw new InvalidOperationException("Local persistence did not run");
                button.onClick.Invoke();
                AssertPresentation(settings);
                if (first==PlayerPrefs.GetString(key)) throw new InvalidOperationException("Repeated toggle did not persist state change");
                log.Add("PASS original persistent Button.onClick: "+method+"; both directions, ON/OFF visibility and local persistence");
            }
            if (settings.is_BGM_Mute!=before[0] || settings.is_SFX_Mute!=before[1] || settings.is_Vibration_Mute!=before[2])
                throw new InvalidOperationException("Repeated input did not restore starting state");
            var sound = Sound_manager.instance;
            if (sound == null || sound.bgmSource == null) throw new InvalidOperationException("Original BGM source missing");
            if (sound.bgmSource.volume != (settings.is_BGM_Mute ? 0f : 1f)) throw new InvalidOperationException("Native volume expression mismatch");
            log.Add("PASS original serialized BGM AudioSource reference and native volume expression");
            log.Add("PASS repeat input returned to original runtime state");
        }
        catch (Exception error)
        {
            log.Add("FAIL "+error);
            throw;
        }
        finally
        {
            if (hadSave) PlayerPrefs.SetString(key,save); else PlayerPrefs.DeleteKey(key);
            PlayerPrefs.Save();
            File.WriteAllLines(Path.Combine(Reports,"settings-runtime-verification.txt"),log);
        }
    }

    private static void AssertPresentation(Setting s)
    {
        if (s.BGM_ON_obj.activeSelf==s.is_BGM_Mute || s.BGM_OFF_obj.activeSelf!=s.is_BGM_Mute ||
            s.SFX_ON_obj.activeSelf==s.is_SFX_Mute || s.SFX_OFF_obj.activeSelf!=s.is_SFX_Mute ||
            s.Vibration_ON_obj.activeSelf==s.is_Vibration_Mute || s.Vibration_OFF_obj.activeSelf!=s.is_Vibration_Mute)
            throw new InvalidOperationException("Original ON/OFF serialized references do not reflect switch state");
    }
}
