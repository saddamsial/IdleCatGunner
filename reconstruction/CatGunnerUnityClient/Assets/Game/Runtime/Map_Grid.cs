using UnityEngine;

public sealed class Map_Grid : MonoBehaviour
{
    public SpriteRenderer[] Border_Up, Border_Down;
    public SpriteRenderer Upper_sprite;
    public Sprite[] Border_Up_sprite_list, Border_Down_sprite_list;
    public Color[] Upper_sprite_Color_list;

    public void Reload(int stage)
    {
        Border_Up[0].sprite=Border_Up_sprite_list[stage];
        Border_Up[1].sprite=Border_Up_sprite_list[stage];
        Border_Down[0].sprite=Border_Down_sprite_list[stage];
        Border_Down[1].sprite=Border_Down_sprite_list[stage];
        Upper_sprite.color=Upper_sprite_Color_list[stage];
    }
}
