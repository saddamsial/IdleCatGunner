/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5458c, Ghidra VA 02c5458c. */

void Raid_Mission_manager_get_Reward_Total(long param_1)

{
  int iVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  
  lVar3 = *(long *)(param_1 + 0x20);
  if (lVar3 != 0) {
    lVar2 = 0;
    iVar1 = 0;
    while( true ) {
      if ((ulong)*(uint *)(lVar3 + 0x18) * 8 - lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper(iVar1);
      }
      lVar4 = *(long *)(lVar3 + 0x20 + lVar2);
      if (lVar4 == 0) break;
      lVar2 = lVar2 + 8;
      iVar1 = *(int *)(lVar4 + 0x18) + iVar1;
      if (lVar2 == 0x40) {
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

