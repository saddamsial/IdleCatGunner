/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b32e3c, Ghidra VA 02c32e3c. */

undefined8 Relic_manager_Relic_info_return(long param_1,int param_2,int param_3)

{
  uint uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x20);
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar1 = param_2 * 5 + param_3;
  if (uVar1 < *(uint *)(lVar2 + 0x18)) {
    return *(undefined8 *)(lVar2 + (long)(int)uVar1 * 8 + 0x20);
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

