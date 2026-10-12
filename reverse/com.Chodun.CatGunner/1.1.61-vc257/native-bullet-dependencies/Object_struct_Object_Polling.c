/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b17de4, Ghidra VA 02c17de4. */

undefined8 Object_struct_Object_Polling(long param_1)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  undefined8 uVar4;
  long lVar5;
  
  lVar5 = *(long *)(param_1 + 8);
  if (lVar5 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar2 = *(uint *)(param_1 + 0x10);
  uVar1 = *(uint *)(lVar5 + 0x18);
  if (uVar2 < uVar1) {
    iVar3 = 0;
    if (uVar1 != 0) {
      iVar3 = (int)(uVar2 + 1) / (int)uVar1;
    }
    uVar4 = *(undefined8 *)(lVar5 + (long)(int)uVar2 * 8 + 0x20);
    *(uint *)(param_1 + 0x10) = (uVar2 + 1) - iVar3 * uVar1;
    return uVar4;
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

