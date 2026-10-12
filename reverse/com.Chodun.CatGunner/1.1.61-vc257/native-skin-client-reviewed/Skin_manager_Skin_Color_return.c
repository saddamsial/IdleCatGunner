/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba846c, Ghidra VA 02ca846c. */

undefined4 Skin_manager_Skin_Color_return(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x40);
  if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (*(uint *)(param_1 + 0x30) < *(uint *)(lVar1 + 0x18)) {
    return *(undefined4 *)(lVar1 + (long)(int)*(uint *)(param_1 + 0x30) * 0x10 + 0x20);
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

