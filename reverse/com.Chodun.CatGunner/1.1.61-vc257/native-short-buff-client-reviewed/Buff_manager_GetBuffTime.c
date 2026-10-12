/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b37464, Ghidra VA 02c37464. */

undefined4 Buff_manager_GetBuffTime(long param_1,uint param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x38);
  if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (param_2 < *(uint *)(lVar1 + 0x18)) {
    return *(undefined4 *)(lVar1 + (long)(int)param_2 * 4 + 0x20);
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

