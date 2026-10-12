/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b54944, Ghidra VA 02c54944. */

bool Raid_Mission_manager_Is_Clear(long param_1,uint param_2)

{
  bool bVar1;
  long lVar2;
  
  if (param_2 < 8) {
    Raid_Mission_manager_Refresh_Clear();
    lVar2 = *(long *)(param_1 + 0x30);
    if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(lVar2 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    bVar1 = *(char *)(lVar2 + (ulong)param_2 + 0x20) != '\0';
  }
  else {
    bVar1 = false;
  }
  return bVar1;
}

