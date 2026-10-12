/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4dd20, Ghidra VA 02c4dd20. */

undefined4 Monster_manager_MonsterColor_return(long param_1)

{
  uint uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xa8);
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar1 = *(int *)(param_1 + 0x20) % 10;
  if (uVar1 < *(uint *)(lVar2 + 0x18)) {
    return *(undefined4 *)(lVar2 + (long)(int)uVar1 * 0x10 + 0x20);
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

