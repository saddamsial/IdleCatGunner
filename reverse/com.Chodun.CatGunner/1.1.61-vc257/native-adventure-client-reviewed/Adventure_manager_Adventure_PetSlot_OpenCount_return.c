/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2e9bc, Ghidra VA 02c2e9bc. */

int Adventure_manager_Adventure_PetSlot_OpenCount_return(long param_1)

{
  int iVar1;
  ulong uVar2;
  uint uVar3;
  ulong uVar4;
  long lVar5;
  int *piVar6;
  
  lVar5 = *(long *)(param_1 + 0x70);
  if (lVar5 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar3 = (uint)*(ulong *)(lVar5 + 0x18);
  if ((int)uVar3 < 1) {
    iVar1 = 0;
  }
  else {
    uVar2 = (ulong)(uVar3 & ((int)uVar3 >> 0x1f ^ 0xffffffffU));
    iVar1 = 0;
    uVar4 = *(ulong *)(lVar5 + 0x18) & 0xffffffff;
    piVar6 = (int *)(lVar5 + 0x20);
    do {
      if (uVar4 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      uVar2 = uVar2 - 1;
      uVar4 = uVar4 - 1;
      if (*piVar6 <= *(int *)(param_1 + 0x30)) {
        iVar1 = iVar1 + 1;
      }
      piVar6 = piVar6 + 1;
    } while (uVar2 != 0);
  }
  return iVar1;
}

