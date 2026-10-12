/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b58628, Ghidra VA 02c58628. */

bool Raid_manager_Is_Index_Used_By_AnySlot(long param_1,int param_2)

{
  uint uVar1;
  int iVar2;
  long lVar3;
  uint uVar4;
  
  lVar3 = *(long *)(param_1 + 0x90);
  if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar1 = *(uint *)(lVar3 + 0x18);
  if ((int)uVar1 < 1) {
    uVar4 = 0;
  }
  else {
    uVar4 = 0;
    do {
      if (uVar1 == uVar4) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      iVar2 = *(int *)(lVar3 + (long)(int)uVar4 * 4 + 0x20);
    } while (((iVar2 == -1) || (iVar2 != param_2)) &&
            (uVar4 = uVar4 + 1, (uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) != uVar4));
  }
  return (int)uVar4 < (int)uVar1;
}

