/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b67eec, Ghidra VA 02c67eec. */

bool Gun_manager_Is_Owned_Paused(long param_1,uint param_2)

{
  long lVar1;
  
  if (-1 < (int)param_2) {
    lVar1 = *(long *)(param_1 + 0x40);
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (((((int)param_2 < *(int *)(lVar1 + 0x18)) &&
         (*(int *)(lVar1 + (ulong)param_2 * 4 + 0x20) != -1)) &&
        (lVar1 = *(long *)(param_1 + 0x60), lVar1 != 0)) && ((int)param_2 < *(int *)(lVar1 + 0x18)))
    {
      return *(char *)(lVar1 + (ulong)param_2 + 0x20) != '\0';
    }
  }
  return false;
}

