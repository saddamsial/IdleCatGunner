/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2dbec, Ghidra VA 02c2dbec. */

undefined8 Adventure_manager_Map_info_return(long param_1,uint param_2,uint param_3)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x20);
  if (lVar1 != 0) {
    if (param_2 < *(uint *)(lVar1 + 0x18)) {
      lVar1 = *(long *)(lVar1 + (long)(int)param_2 * 8 + 0x20);
      if ((lVar1 == 0) || (lVar1 = *(long *)(lVar1 + 0x18), lVar1 == 0)) goto LAB_02c2dc34;
      if (param_3 < *(uint *)(lVar1 + 0x18)) {
        return *(undefined8 *)(lVar1 + (long)(int)param_3 * 8 + 0x20);
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
LAB_02c2dc34:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

