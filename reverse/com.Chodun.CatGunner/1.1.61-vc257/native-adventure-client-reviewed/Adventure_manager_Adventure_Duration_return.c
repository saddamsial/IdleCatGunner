/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2d050, Ghidra VA 02c2d050. */

undefined4 Adventure_manager_Adventure_Duration_return(long param_1,uint param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x68);
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

