/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6d8fc, Ghidra VA 02c6d8fc. */

undefined4 StarUpgrade_manager_Lv_return(long param_1,uint param_2)

{
  undefined4 uVar1;
  long lVar2;
  
  uVar1 = 0;
  if ((-1 < (int)param_2) && (lVar2 = *(long *)(param_1 + 0x30), lVar2 != 0)) {
    if ((int)*(uint *)(lVar2 + 0x18) <= (int)param_2) {
      return 0;
    }
    if (*(uint *)(lVar2 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper(0);
    }
    uVar1 = *(undefined4 *)(lVar2 + (ulong)param_2 * 4 + 0x20);
  }
  return uVar1;
}

