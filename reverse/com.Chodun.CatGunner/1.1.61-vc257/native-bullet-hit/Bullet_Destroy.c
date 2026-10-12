/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6708c, Ghidra VA 02c6708c. */

void Bullet_Destroy(long param_1)

{
  long lVar1;
  
  if (*(char *)(param_1 + 0x68) != '\0') {
    return;
  }
  if ((*(uint *)(param_1 + 0x98) & 0xfffffffe) == 4) {
    lVar1 = Component_get_transform_0x6000c82(param_1,0);
    if (lVar1 != 0) {
      Transform_get_position_0x6000f4d(lVar1,0);
      Bullet_Explode(param_1);
      lVar1 = Component_get_transform_0x6000c82(param_1,0);
      if (lVar1 != 0) {
        Transform_get_position_0x6000f4d(lVar1,0);
        Bullet_SpawnFX(param_1);
        goto LAB_02c670f4;
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
LAB_02c670f4:
  Bullet_DieAndWait(param_1);
  return;
}

