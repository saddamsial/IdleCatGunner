using Spine.Unity;
using UnityEngine;
// Original native skin selection and animation/facing contract; official
// Spine4.1 runtime executes the unchanged shipped skeleton timelines.
public sealed class Pet : MonoBehaviour
{
    public Rigidbody rb;
    public GameObject[] Skin_list;
    public Vector3 SeparationForce,CatAvoidanceForce,FormationOffset;
    public bool IsMoving;
    private int _skinNum;
    private SkeletonAnimation _anim;
    private string _currentAnim;
    public void Reload(int number)
    {
        _skinNum=number;
        _anim=Skin_list[number].GetComponent<SkeletonAnimation>();
        for(int i=0;i<Skin_list.Length;i++)Skin_list[i].SetActive(i==number);
        _currentAnim=string.Empty;
        SetAnimation("Idle");
    }
    public void SetAnimation(string animation)
    {
        if(_anim==null||_currentAnim==animation)return;
        _currentAnim=animation;
        _anim.AnimationName=animation;
    }
    public void SetFacing(float horizontal)
    {
        if(Mathf.Abs(horizontal)<.05f)return;
        var angles=Skin_list[_skinNum].transform.localEulerAngles;
        angles.y=horizontal>0?0:180;
        Skin_list[_skinNum].transform.localEulerAngles=angles;
    }
    public void Warp(Vector3 pos){rb.position=pos;transform.position=pos;rb.linearVelocity=Vector3.zero;IsMoving=false;}
}
