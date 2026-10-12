/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6809c, Ghidra VA 02c6809c. */

void Gun_manager_Selected_Pause_Set(long param_1,uint param_2,byte param_3)

{
  long lVar1;
  
  if ((*(long *)(param_1 + 0x68) == 0) ||
     ((*(long *)(param_1 + 0x28) != 0 &&
      (*(int *)(*(long *)(param_1 + 0x68) + 0x18) != *(int *)(*(long *)(param_1 + 0x28) + 0x18)))))
  {
    Gun_manager_Pause_Array_Validate_0x6000a4a(param_1);
  }
  if (-1 < (int)param_2) {
    lVar1 = *(long *)(param_1 + 0x68);
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if ((int)param_2 < *(int *)(lVar1 + 0x18)) {
      *(byte *)(lVar1 + (ulong)param_2 + 0x20) = param_3 & 1;
    }
  }
  return;
}

