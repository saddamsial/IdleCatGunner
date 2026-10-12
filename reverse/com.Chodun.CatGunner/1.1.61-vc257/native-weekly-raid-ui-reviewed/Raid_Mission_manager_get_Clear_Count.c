/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b54600, Ghidra VA 02c54600. */

void Raid_Mission_manager_get_Clear_Count(long param_1)

{
  byte *pbVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  
  Raid_Mission_manager_Refresh_Clear();
  lVar4 = *(long *)(param_1 + 0x30);
  if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  lVar3 = 0;
  iVar2 = 0;
  do {
    if ((*(ulong *)(lVar4 + 0x18) & 0xfffffff8) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper(iVar2);
    }
    pbVar1 = (byte *)(lVar4 + 0x20 + lVar3);
    lVar3 = lVar3 + 1;
    iVar2 = iVar2 + (uint)*pbVar1;
  } while (lVar3 != 8);
  return;
}

