/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4ff4c, Ghidra VA 02c4ff4c. */

undefined8 Monster_manager_SkinSprite_return(long param_1,uint param_2)

{
  uint uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x50);
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar1 = param_2 & 1 | (*(int *)(param_1 + 0x20) % 10) * 2;
  if (uVar1 < *(uint *)(lVar2 + 0x18)) {
    return *(undefined8 *)(lVar2 + (long)(int)uVar1 * 8 + 0x20);
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

