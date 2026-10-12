/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b654c4, Ghidra VA 02c654c4. */

void Bullet_Mesh_Stop(long param_1)

{
  long lVar1;
  long lVar2;
  uint uVar3;
  
  lVar1 = *(long *)(param_1 + 0x20);
  if (lVar1 == 0) {
    return;
  }
  lVar2 = 4;
  do {
    uVar3 = (int)lVar2 - 4;
    if ((int)*(uint *)(lVar1 + 0x18) <= (int)uVar3) {
      return;
    }
    if (*(uint *)(lVar1 + 0x18) <= uVar3) {
LAB_02c65544:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar1 = *(long *)(lVar1 + lVar2 * 8);
    if (lVar1 == 0) break;
    ParticleSystem_Stop_0x600000e(lVar1,0);
    lVar1 = *(long *)(param_1 + 0x20);
    if (lVar1 == 0) break;
    if (*(uint *)(lVar1 + 0x18) <= uVar3) goto LAB_02c65544;
    lVar1 = *(long *)(lVar1 + lVar2 * 8);
    if (lVar1 == 0) break;
    ParticleSystem_Clear_0x6000010(lVar1,0);
    lVar1 = *(long *)(param_1 + 0x20);
    lVar2 = lVar2 + 1;
  } while (lVar1 != 0);
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

