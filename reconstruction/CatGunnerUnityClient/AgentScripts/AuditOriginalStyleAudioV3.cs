        var scene = UnityEditor.SceneManagement.EditorSceneManager.GetActiveScene();
        if (EditorApplication.isPlaying || scene.path != "Assets/Game/Scenes/GameClient.unity" || scene.isDirty)
            throw new Exception("Saved working scene in EditMode required");
        var sound = scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<Sound_manager>(true)).Single();
        var entries = new SerializedObject(sound).FindProperty("sfxEntries");
        if (entries.arraySize != 17) throw new Exception("Incomplete catalogue");
        string dir = System.IO.Path.GetFullPath(System.IO.Path.Combine(Application.dataPath, "../../../art/audio/original-style-v3"));
        var manifest = Newtonsoft.Json.Linq.JObject.Parse(System.IO.File.ReadAllText(System.IO.Path.Combine(dir, "manifest.json")));
        var measurements = new System.Collections.Generic.List<object>();
        for (int i = 0; i < entries.arraySize; i++)
        {
            var entry = entries.GetArrayElementAtIndex(i);
            var type = (SfxType)entry.FindPropertyRelative("type").intValue;
            var row = ((Newtonsoft.Json.Linq.JArray)manifest["clips"]).Single(r => (string)r["type"] == type.ToString());
            var clip = (AudioClip)entry.FindPropertyRelative("clip").objectReferenceValue;
            string path = "Assets/Game/PenguinAudio/Ice_" + type + ".wav";
            if (clip == null || AssetDatabase.GetAssetPath(clip) != path) throw new Exception("Wrong clip: " + type);
            int expectedSamples = (int)Math.Round((double)row["duration"] * 44100);
            if (clip.samples != expectedSamples || clip.frequency != 44100 || clip.channels != 1)
                throw new Exception("Import frame/rate/channel mismatch: " + type);
            var data = new float[clip.samples * clip.channels];
            if (!clip.GetData(data, 0)) throw new Exception("Cannot decode: " + type);
            float peak = data.Max(v => Math.Abs(v));
            if (peak > .651f || peak < .001f) throw new Exception("Invalid imported peak: " + type + " " + peak);
            var importer = (AudioImporter)AssetImporter.GetAtPath(path);
            measurements.Add(new { type = type.ToString(), path, clip.samples, clip.frequency, clip.channels, clip.length,
                peak, volume = entry.FindPropertyRelative("volume").floatValue,
                guid = AssetDatabase.AssetPathToGUID(path), compression = importer.defaultSampleSettings.compressionFormat.ToString() });
        }
        System.IO.File.WriteAllText(System.IO.Path.Combine(dir, "unity-import-audit.json"), Newtonsoft.Json.JsonConvert.SerializeObject(new {
            scene = scene.path, playing = false, sceneDirty = scene.isDirty, clips = measurements,
            bgmMain = AssetDatabase.GetAssetPath(sound.BGM_main), bgmContents = AssetDatabase.GetAssetPath(sound.BGM_contents),
            sourceCount = scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<AudioSource>(true)).Count()
        }, Newtonsoft.Json.Formatting.Indented));
        return "17 scene references resolve to updated mono PCM clips with expected frames and safe decoded peaks";
