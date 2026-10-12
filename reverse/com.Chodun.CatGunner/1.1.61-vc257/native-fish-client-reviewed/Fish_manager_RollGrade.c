/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5e7fc, Ghidra VA 02c5e7fc. */

int Fish_manager_RollGrade(long param_1,int param_2)

{
  ulong uVar1;
  long lVar2;
  uint uVar3;
  float fVar4;
  float fVar5;
  
  fVar4 = (float)Random_Range_0x6000ba6(0,0x42c80000,0);
  lVar2 = *(long *)(param_1 + 0x98);
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar3 = (uint)*(ulong *)(lVar2 + 0x18);
  if (0 < (int)uVar3) {
    fVar5 = 0.0;
    uVar1 = 0;
    do {
      if ((*(ulong *)(lVar2 + 0x18) & 0xffffffff) == uVar1) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper(param_2);
      }
      fVar5 = fVar5 + *(float *)(lVar2 + 0x20 + uVar1 * 4);
      if (fVar4 < fVar5) {
        return param_2 + (int)uVar1;
      }
      uVar1 = uVar1 + 1;
    } while ((uVar3 & ((int)uVar3 >> 0x1f ^ 0xffffffffU)) != uVar1);
  }
  return param_2;
}

