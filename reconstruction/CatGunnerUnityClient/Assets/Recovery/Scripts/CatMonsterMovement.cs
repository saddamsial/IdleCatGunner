using UnityEngine;
using CatGunner.Recovery;
public sealed partial class Cat
{
    private Vector3 _offscreenMonster;
    private bool _hasOffscreenMonster;
    public void ClampToMonsterRadius()
    {
        var offset=transform.position-OriginalMonsterRules.Center;offset.y=0;if(offset.magnitude<14)return;
        var direction=offset.normalized;var velocity=rb.linearVelocity;float outward=Vector3.Dot(new Vector3(velocity.x,0,velocity.z),direction);
        if(outward>0)rb.linearVelocity=velocity-direction*outward;var position=OriginalMonsterRules.Center+direction*14;position.y=transform.position.y;transform.position=position;
    }
    // Cat.HandleAutoMove mode 4, 0x2b3c414: base-centered ring, not enemy chase.
    private void HandleMonsterAutoMove()
    {
        var desired=OriginalMonsterRules.Center;
        Vector3? hint=nearObj!=null?nearObj.transform.position:(_hasOffscreenMonster?_offscreenMonster:(Vector3?)null);
        if(hint.HasValue){var offset=hint.Value-desired;offset.y=0;if(offset.sqrMagnitude>.001f)desired+=offset.normalized*14;}
        var delta=desired-transform.position;delta.y=0;
        if(delta.magnitude<1){AutoSmoothStop();if(nearObj!=null)FaceAutoDirection(nearObj.transform.position-transform.position);anim.SetBool("Walk",false);return;}
        AutoMoveAlong(delta.normalized,1);
    }
}
