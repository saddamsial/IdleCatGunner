/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b585b8, Ghidra VA 02c585b8. */

bool Raid_manager_Is_Index_Used_By_OtherSlot(long param_1,int param_2)

{
  int iVar1;
  ulong uVar2;
  uint uVar3;
  long lVar4;
  
  lVar4 = *(long *)(param_1 + 0x90);
  if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar2 = 0;
  uVar3 = (uint)*(ulong *)(lVar4 + 0x18);
  if (0 < (int)uVar3) {
    do {
      if (*(uint *)(param_1 + 0x98) != uVar2) {
        if ((*(ulong *)(lVar4 + 0x18) & 0xffffffff) == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        iVar1 = *(int *)(lVar4 + 0x20 + uVar2 * 4);
        if ((iVar1 != -1) && (iVar1 == param_2)) break;
      }
      uVar2 = uVar2 + 1;
    } while ((uVar3 & ((int)uVar3 >> 0x1f ^ 0xffffffffU)) != uVar2);
  }
  return (long)uVar2 < (long)(int)uVar3;
}

