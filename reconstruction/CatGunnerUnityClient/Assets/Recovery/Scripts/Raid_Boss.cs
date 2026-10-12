using CatGunner.Recovery;
using UnityEngine;
public sealed class Raid_Boss : MonoBehaviour
{
    public Enemy enemy;
    public Animator _anim;
    public GameObject[] Skin_obj;
    public int skinNum;
    public void Spawn(OriginalAmount health,int skin)
    {
        skinNum=skin;enemy.Spawn(health,OriginalAmount.FromValue(new DecimalAmount(0)));
        for(int i=0;i<Skin_obj.Length;i++)Skin_obj[i].SetActive(i==skin);
        _anim=Skin_obj[skin].GetComponent<Animator>();gameObject.SetActive(true);
    }
    public void Reload(OriginalAmount health)=>enemy.Spawn(health,OriginalAmount.FromValue(new DecimalAmount(0)));
    public void Die_Reload()=>Raid_manager.instance.Boss_Destroyed();
    public void Game_End(){} // Native body is empty, not a death-animation callback.
}
