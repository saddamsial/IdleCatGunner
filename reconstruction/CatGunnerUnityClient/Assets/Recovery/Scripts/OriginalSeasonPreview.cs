using System;
using System.Linq;
using UnityEngine;

namespace CatGunner.Recovery
{
    // Original source controller/array order; runtime-only reattachment avoids
    // replacing the user's scene. Persistent source preview callbacks remain.
    public static class OriginalSeasonPreview
    {
        [Serializable] public sealed class Row
        {public string Path,VipPath;public string[] ItemPaths;public int SourceComponent,SourceGameObject;public int[] SourceItems;}
        [Serializable] public sealed class Data{public Row[] Rows;}
        public static void Bind(Transform canvas)
        {
            var asset=Resources.Load<TextAsset>("OriginalSeasonPreview");
            var data=asset!=null?JsonUtility.FromJson<Data>(asset.text):null;
            if(data?.Rows?.Length!=2||data.Rows.Any(r=>r.ItemPaths?.Length!=3))throw new InvalidOperationException("Original season preview references incomplete");
            foreach(var row in data.Rows)
            {
                var root=RecoveryUiAuthoring.Find(canvas,row.Path);var purchase=RecoveryUiAuthoring.Find(canvas,row.VipPath);
                var items=row.ItemPaths.Select(path=>RecoveryUiAuthoring.Find(canvas,path)?.GetComponent<Mission_Reward_Item>()).ToArray();
                if(root==null||purchase==null||items.Any(x=>x==null))throw new InvalidOperationException("Original season preview objects missing");
                var controller=root.GetComponent<NewSeason_UI>()??root.gameObject.AddComponent<NewSeason_UI>();
                controller.Bind(purchase.gameObject,items);
            }
        }
    }
}
