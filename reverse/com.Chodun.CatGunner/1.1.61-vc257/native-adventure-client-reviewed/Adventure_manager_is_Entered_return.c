/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2db00, Ghidra VA 02c2db00. */

undefined1 Adventure_manager_is_Entered_return(long param_1,uint param_2,uint param_3)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x20);
  if (lVar1 != 0) {
    if (*(uint *)(lVar1 + 0x18) <= param_2) {
LAB_02c2db54:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar1 = *(long *)(lVar1 + (long)(int)param_2 * 8 + 0x20);
    if ((lVar1 != 0) && (lVar1 = *(long *)(lVar1 + 0x18), lVar1 != 0)) {
      if (*(uint *)(lVar1 + 0x18) <= param_3) goto LAB_02c2db54;
      lVar1 = *(long *)(lVar1 + (long)(int)param_3 * 8 + 0x20);
      if (lVar1 != 0) {
        return *(undefined1 *)(lVar1 + 0x10);
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

