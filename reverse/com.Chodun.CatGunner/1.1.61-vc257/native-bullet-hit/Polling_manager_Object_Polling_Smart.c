/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b17b80, Ghidra VA 02c17b80. */

void Polling_manager_Object_Polling_Smart(long param_1,uint param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x20);
  if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (param_2 < *(uint *)(lVar1 + 0x18)) {
    Object_struct_Object_Polling_Smart_0x60004a9(lVar1 + (long)(int)param_2 * 0x18 + 0x20);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

