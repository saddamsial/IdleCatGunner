using System;
using System.IO;
using System.Text;
using UnityEngine;

namespace CatGunner.Recovery
{
    // SaveSystem codec, gate, temp/main/backup sequence and fallback recovered from vc257.
    // The folder is explicitly injected: verification never reads the phone or an original user save.
    // Live CreateFromCurrentState, manager LoadData and online cloud transport are not integrated yet.
    public sealed class OriginalSaveArchive
    {
        private const string MainName="NoSaveFile.json";
        public readonly string Folder;
        public string MainPath => Path.Combine(Folder,MainName);
        public string TemporaryPath => MainPath+".tmp";
        public string BackupPath => MainPath+".bak";
        public bool IsSaveAllowed { get; private set; }
        public Action<Exception> OnReadError;
        public OriginalSaveArchive(string folder) { Folder=Path.GetFullPath(folder); }
        public void AllowSave() => IsSaveAllowed=true;
        public void DisallowSave() => IsSaveAllowed=false;
        public static string Encode(OriginalSaveData data) => Convert.ToBase64String(Encoding.UTF8.GetBytes(JsonUtility.ToJson(data)));
        public static OriginalSaveData Decode(string encoded) => JsonUtility.FromJson<OriginalSaveData>(Encoding.UTF8.GetString(Convert.FromBase64String(encoded)));
        public void Save(OriginalSaveData data)
        {
            if (!IsSaveAllowed) return;
            SaveEncoded(Encode(data));
        }
        public void SaveEncoded(string encoded)
        {
            if (!IsSaveAllowed) return;
            Directory.CreateDirectory(Folder);
            File.WriteAllText(TemporaryPath,encoded);
            if (File.Exists(MainPath))
            {
                if (File.Exists(BackupPath)) File.Delete(BackupPath);
                File.Move(MainPath,BackupPath);
            }
            File.Move(TemporaryPath,MainPath);
        }
        public OriginalSaveData Load()
        {
            Directory.CreateDirectory(Folder);
            return TryLoadFrom(MainPath) ?? TryLoadFrom(BackupPath);
        }
        public OriginalSaveData TryLoadFrom(string path)
        {
            try
            {
                if (!File.Exists(path)) return null;
                string encoded=File.ReadAllText(path);
                if (string.IsNullOrEmpty(encoded)) return null;
                string json=Encoding.UTF8.GetString(Convert.FromBase64String(encoded));
                if (string.IsNullOrEmpty(json)) return null;
                return JsonUtility.FromJson<OriginalSaveData>(json);
            }
            catch (Exception error)
            {
                // Original catch logs and returns null; expose the same failure through an injectable report sink.
                OnReadError?.Invoke(error);
                return null;
            }
        }
    }
}
