/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6700c, Ghidra VA 02c6700c. */

void Bullet_FX_Spawn(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined8 param_4,
                    undefined4 param_5)

{
  long lVar1;
  
  lVar1 = Component_get_transform_0x6000c82(param_4,0);
  if (lVar1 != 0) {
    Transform_set_position_0x6000f4e(param_1,param_2,param_3,lVar1,0);
    Bullet_FX_Skin_Reload(param_4,param_5);
    lVar1 = Component_get_gameObject_0x6000c83(param_4,0);
    if (lVar1 != 0) {
      GameObject_SetActive_0x6000cfe(lVar1,1,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

