/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b53078, Ghidra VA 02c53078. */

undefined4 Raid_Mission_manager_State_return(long param_1,uint param_2)

{
  ulong uVar1;
  long lVar2;
  
  if (7 < param_2) {
    return 0;
  }
  Raid_Mission_manager_Refresh_Clear();
  lVar2 = *(long *)(param_1 + 0x30);
  if (lVar2 != 0) {
    if (param_2 < *(uint *)(lVar2 + 0x18)) {
      uVar1 = (ulong)param_2;
      if (*(char *)(lVar2 + uVar1 + 0x20) == '\0') {
        return 0;
      }
      lVar2 = *(long *)(param_1 + 0x38);
      if (lVar2 == 0) goto LAB_02c5311c;
      if (param_2 < *(uint *)(lVar2 + 0x18)) {
        if (*(char *)(lVar2 + uVar1 + 0x20) == '\0') {
          return 1;
        }
        lVar2 = *(long *)(param_1 + 0x40);
        if (lVar2 == 0) goto LAB_02c5311c;
        if (param_2 < *(uint *)(lVar2 + 0x18)) {
          if (*(char *)(lVar2 + uVar1 + 0x20) != '\0') {
            return 3;
          }
          return 2;
        }
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
LAB_02c5311c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

