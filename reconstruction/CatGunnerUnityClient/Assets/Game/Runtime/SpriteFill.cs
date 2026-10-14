using UnityEngine;

public sealed class SpriteFill : MonoBehaviour
{
    [SerializeField] private SpriteRenderer _sprite;
    public void Value_Reload(float value)
    {
        // Exact native 0x2a8274c: lazily get renderer and place amount in red.
        if(_sprite==null) _sprite=GetComponent<SpriteRenderer>();
        _sprite.color=new Color(value,1,1,1);
    }
    private void OnEnable()
    {
        // Compatibility-only shader bounds. Original compiled shader used
        // renderer red as its fill amount; its source is not in this APK.
        if(_sprite==null) _sprite=GetComponent<SpriteRenderer>();
        if(_sprite.sprite==null) return;
        var properties=new MaterialPropertyBlock();
        _sprite.GetPropertyBlock(properties);
        properties.SetFloat("_FillMinX",_sprite.sprite.bounds.min.x);
        properties.SetFloat("_FillMaxX",_sprite.sprite.bounds.max.x);
        _sprite.SetPropertyBlock(properties);
    }
}
