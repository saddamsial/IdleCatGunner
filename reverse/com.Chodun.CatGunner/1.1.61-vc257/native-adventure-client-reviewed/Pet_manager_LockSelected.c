/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7ce14, Ghidra VA 02c7ce14. */

void Pet_manager_LockSelected(long param_1,uint param_2,undefined4 param_3)

{
  long lVar1;
  long lVar2;
  
  if (((-1 < (int)param_2) && (lVar1 = *(long *)(param_1 + 0x48), lVar1 != 0)) &&
     ((int)param_2 < *(int *)(lVar1 + 0x18))) {
    lVar2 = *(long *)(param_1 + 0x30);
    if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(lVar2 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (*(int *)(lVar2 + (ulong)param_2 * 4 + 0x20) != -1) {
      *(undefined4 *)(lVar1 + (ulong)param_2 * 4 + 0x20) = param_3;
    }
  }
  return;
}

