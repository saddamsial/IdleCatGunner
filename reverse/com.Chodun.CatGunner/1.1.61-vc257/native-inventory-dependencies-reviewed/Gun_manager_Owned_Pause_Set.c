/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6802c, Ghidra VA 02c6802c. */

void Gun_manager_Owned_Pause_Set(long param_1,uint param_2,byte param_3)

{
  long lVar1;
  
  if (*(long *)(param_1 + 0x60) == 0) {
LAB_02c68060:
    Gun_manager_Pause_Array_Validate_0x6000a4a(param_1);
  }
  else {
    if (*(long *)(param_1 + 0x40) == 0) goto LAB_02c68098;
    if (*(int *)(*(long *)(param_1 + 0x60) + 0x18) != *(int *)(*(long *)(param_1 + 0x40) + 0x18))
    goto LAB_02c68060;
  }
  if (-1 < (int)param_2) {
    lVar1 = *(long *)(param_1 + 0x60);
    if (lVar1 == 0) {
LAB_02c68098:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if ((int)param_2 < *(int *)(lVar1 + 0x18)) {
      *(byte *)(lVar1 + (ulong)param_2 + 0x20) = param_3 & 1;
    }
  }
  return;
}

