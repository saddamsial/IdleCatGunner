/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b65548, Ghidra VA 02c65548. */

void Bullet_Mesh_Active(long param_1)

{
  long lVar1;
  long lVar2;
  
  lVar1 = *(long *)(param_1 + 0x20);
  if (lVar1 == 0) {
    return;
  }
  lVar2 = 0;
  do {
    if ((int)*(uint *)(lVar1 + 0x18) <= (int)(uint)lVar2) {
      return;
    }
    if (*(uint *)(lVar1 + 0x18) <= (uint)lVar2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar1 = *(long *)(lVar1 + lVar2 * 8 + 0x20);
    if (lVar1 == 0) break;
    ParticleSystem_Play_0x600000b(lVar1,0);
    lVar1 = *(long *)(param_1 + 0x20);
    lVar2 = lVar2 + 1;
  } while (lVar1 != 0);
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

