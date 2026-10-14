using System;
using System.Collections.Generic;
using UnityEngine;

namespace CatGunner.Recovery
{
    /// <summary>Persistent aliases for recovered UI paths. Reparenting and renaming preserve object identity.</summary>
    [DisallowMultipleComponent]
    public sealed class RecoveryUiAuthoring : MonoBehaviour
    {
        [Serializable] public sealed class Binding { public string Path; public Transform Target; }
        [SerializeField,HideInInspector] List<Binding> bindings = new List<Binding>();
        Dictionary<string, List<Transform>> byPath;
        Dictionary<Transform, string> originalPaths;
        public bool StaticUiBaked;
        public int BindingCount => bindings.Count;
        void BuildIndex()
        {
            if (byPath != null) return;
            byPath = new Dictionary<string, List<Transform>>(StringComparer.Ordinal);
            originalPaths = new Dictionary<Transform, string>();
            foreach (var binding in bindings)
            {
                if (binding.Target == null) continue;
                if (!byPath.TryGetValue(binding.Path, out var targets)) byPath.Add(binding.Path, targets = new List<Transform>());
                if (!targets.Contains(binding.Target)) targets.Add(binding.Target);
                if (!originalPaths.ContainsKey(binding.Target)) originalPaths.Add(binding.Target, binding.Path);
            }
        }
        public Transform Resolve(Transform root, string path, int ordinal = 0)
        {
            BuildIndex();
            if (root == null || !originalPaths.TryGetValue(root, out var prefix)) return null;
            string key = string.IsNullOrEmpty(path) ? prefix : prefix + "/" + path;
            return byPath.TryGetValue(key, out var targets) && ordinal >= 0 && ordinal < targets.Count ? targets[ordinal] : null;
        }
        static readonly Dictionary<int,RecoveryUiAuthoring> sceneIndexes=new Dictionary<int,RecoveryUiAuthoring>();
        public static RecoveryUiAuthoring For(Transform root)
        {
            if (root == null) return null;
            var authoring = root.GetComponentInParent<RecoveryUiAuthoring>(true);
            if (authoring != null) return authoring;
            if(sceneIndexes.TryGetValue(root.gameObject.scene.handle,out authoring)&&authoring!=null)return authoring;
            // A moved panel can have left its original Canvas branch.
            foreach (var sceneRoot in root.gameObject.scene.GetRootGameObjects())
            {
                authoring = sceneRoot.GetComponentInChildren<RecoveryUiAuthoring>(true);
                if (authoring != null) {sceneIndexes[root.gameObject.scene.handle]=authoring;return authoring;}
            }
            return null;
        }
        public static Transform Find(Transform root, string path, int ordinal = 0)
        {
            var authoring = For(root);
            var target = authoring != null ? authoring.Resolve(root, path, ordinal) : null;
            if (target != null) return target;
            if (root == null) return null;
            if (ordinal == 0) return root.Find(path);
            int slash = path.LastIndexOf('/');
            var parent = slash >= 0 ? root.Find(path.Substring(0, slash)) : root;
            string name = slash >= 0 ? path.Substring(slash + 1) : path;
            if (parent == null) return null;
            foreach (Transform child in parent) if (child.name == name && ordinal-- == 0) return child;
            return null;
        }
#if UNITY_EDITOR
        public void CaptureAliases()
        {
            // TMP owns fallback-font render meshes; they are recreated and are not authored UI.
            bindings.RemoveAll(b=>b.Target==null||b.Target.GetComponent<TMPro.TMP_SubMeshUI>()!=null);
            foreach (var target in GetComponentsInChildren<Transform>(true))
            {
                if(target.GetComponent<TMPro.TMP_SubMeshUI>()!=null)continue;
                string path = target.name;
                for (var parent = target.parent; parent != null && target != transform; parent = parent.parent)
                { path = parent.name + "/" + path; if (parent == transform) break; }
                if (!bindings.Exists(b => b.Path == path && b.Target == target)) bindings.Add(new Binding { Path = path, Target = target });
            }
            byPath = null; originalPaths = null;
        }
#endif
    }
}
