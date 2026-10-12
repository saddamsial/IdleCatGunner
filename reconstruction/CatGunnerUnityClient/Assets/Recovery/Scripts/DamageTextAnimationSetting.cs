using System;
using UnityEngine;
using CatGunner.Recovery;

// Original Text_Setting and prefab/font references. Mesh pooling is a local
// presentation adapter, separate from the original DamageTextManager internals.
public sealed class DamageTextAnimationSetting : MonoBehaviour
{
    public DamageTextAnimationItem[] settings;
    public Camera renderCamera;
    public int minSortingOrder;
    private void Start()
    {
        var presenter=GetComponent<RecoveryDamageTextPresenter>();
        if(presenter!=null)presenter.Initialize(this);
    }
}
[Serializable]
public sealed class DamageTextAnimationItem
{
    public string key;
    public GameObject setting;
}
