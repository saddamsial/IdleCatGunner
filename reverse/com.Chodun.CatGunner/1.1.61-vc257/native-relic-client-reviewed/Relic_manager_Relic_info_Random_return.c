/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b32e74, Ghidra VA 02c32e74. */

undefined8 Relic_manager_Relic_info_Random_return(long param_1)

{
  uint uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x20);
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar1 = Random_Range_0x6000ba7(0,*(undefined4 *)(lVar2 + 0x18),0);
  if (uVar1 < *(uint *)(lVar2 + 0x18)) {
    return *(undefined8 *)(lVar2 + (long)(int)uVar1 * 8 + 0x20);
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

