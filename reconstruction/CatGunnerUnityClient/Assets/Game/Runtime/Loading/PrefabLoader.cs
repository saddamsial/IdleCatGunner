using System;
using System.Threading;
using Cysharp.Threading.Tasks;
using UnityEngine;

namespace CatGunner.Runtime
{
    /// <summary>Loads assets and spreads instance integration across Unity frames.</summary>
    public static class PrefabLoader
    {
        public static async UniTask<GameObject> LoadAsync(string resourcePath, Transform parent, CancellationToken token)
        {
            token.ThrowIfCancellationRequested();
            var prefab = (GameObject)await Resources.LoadAsync<GameObject>(resourcePath).WithCancellation(token);
            if (prefab == null) throw new InvalidOperationException("Prefab resource missing: " + resourcePath);
            token.ThrowIfCancellationRequested();
            var operation = UnityEngine.Object.InstantiateAsync(prefab, new InstantiateParameters { parent = parent, worldSpace = false }, token);
            // Cancelling only the await would leave Unity creating an orphan instance.
            using (token.Register(operation.Cancel))
            {
                var objects = await operation.ToUniTask();
                if (token.IsCancellationRequested || parent == null)
                {
                    if (objects != null) foreach (var item in objects) if (item != null) UnityEngine.Object.Destroy(item);
                    token.ThrowIfCancellationRequested();
                    throw new OperationCanceledException("Prefab parent was destroyed");
                }
                return objects[0];
            }
        }
    }
}
