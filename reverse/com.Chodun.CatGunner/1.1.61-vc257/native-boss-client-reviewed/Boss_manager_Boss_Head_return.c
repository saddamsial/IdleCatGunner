/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b478a8, Ghidra VA 02c478a8. */

undefined8 Boss_manager_Boss_Head_return(long param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  long lVar4;
  
  lVar4 = *(long *)(param_1 + 0x58);
  if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar1 = *(uint *)(lVar4 + 0x18);
  iVar3 = 0;
  if (uVar1 != 0) {
    iVar3 = param_2 / (int)uVar1;
  }
  uVar2 = param_2 - iVar3 * uVar1;
  if (uVar2 < uVar1) {
    return *(undefined8 *)(lVar4 + (long)(int)uVar2 * 8 + 0x20);
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

