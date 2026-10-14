using System;
using System.Threading;
using Cysharp.Threading.Tasks;
using UnityEngine;

namespace CatGunner.Runtime
{
    /// <summary>One lazily created instance; concurrent requests share one operation.</summary>
    public sealed class DeferredPrefabSlot
    {
        readonly string resourcePath;
        readonly Transform parent;
        readonly CancellationToken lifetime;
        GameObject instance;
        UniTaskCompletionSource<GameObject> pending;
        public GameObject Instance => instance;
        public bool IsLoading => pending != null;
        public DeferredPrefabSlot(string path, Transform owner, CancellationToken token)
        { resourcePath = path; parent = owner; lifetime = token; }

        public UniTask<GameObject> LoadAsync()
        {
            if (instance != null) return UniTask.FromResult(instance);
            if (pending != null) return pending.Task;
            var completion = pending = new UniTaskCompletionSource<GameObject>();
            LoadCoreAsync(completion).Forget();
            return completion.Task;
        }
        async UniTask LoadCoreAsync(UniTaskCompletionSource<GameObject> completion)
        {
            try
            {
                instance = await PrefabLoader.LoadAsync(resourcePath, parent, lifetime);
                instance.name = resourcePath.Substring(resourcePath.LastIndexOf('/') + 1);
                completion.TrySetResult(instance);
            }
            catch (OperationCanceledException) { completion.TrySetCanceled(lifetime); }
            catch (Exception error) { completion.TrySetException(error); }
            finally { pending = null; }
        }
        public void Release()
        {
            if (instance != null) UnityEngine.Object.Destroy(instance);
            instance = null;
        }
    }
}
