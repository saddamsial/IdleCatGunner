using UnityEngine;
using CatGunner.Runtime;
public sealed partial class Cat
{
    private Vector3 _offscreenMonster;
    private bool _hasOffscreenMonster;
    public void ClampToMonsterRadius()
    {
        PenguinMovementBounds.Clamp(rb,MonsterRules.Center,PenguinMovementBounds.HuntRadius);
    }
    // Cat.HandleAutoMove mode 4, 0x2b3c414: base-centered ring, not enemy chase.
    private void HandleMonsterAutoMove()
    {
        var desired=MonsterRules.Center;
        Vector3? hint=nearObj!=null?nearObj.transform.position:(_hasOffscreenMonster?_offscreenMonster:(Vector3?)null);
        if(hint.HasValue){var offset=hint.Value-desired;offset.y=0;if(offset.sqrMagnitude>.001f)desired+=offset.normalized*14;}
        var delta=desired-transform.position;delta.y=0;
        if(delta.magnitude<1){AutoSmoothStop();if(nearObj!=null)FaceAutoDirection(nearObj.transform.position-transform.position);anim.SetBool("Walk",false);return;}
        AutoMoveAlong(delta.normalized,1);
    }
}
