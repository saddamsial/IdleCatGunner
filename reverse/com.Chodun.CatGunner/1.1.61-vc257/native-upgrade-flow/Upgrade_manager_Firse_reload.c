/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb245c, Ghidra VA 02cb245c. */

void Upgrade_manager_Firse_reload(long param_1,long param_2)

{
  long lVar1;
  ulong uVar2;
  undefined1 auVar3 [16];
  
  uVar2 = 0;
  while (lVar1 = *(long *)(param_1 + 0x20), lVar1 != 0) {
    if (*(uint *)(lVar1 + 0x18) <= uVar2) {
LAB_02cb24d8:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (param_2 == 0) break;
    if (*(uint *)(param_2 + 0x18) <= uVar2) goto LAB_02cb24d8;
    lVar1 = *(long *)(lVar1 + uVar2 * 8 + 0x20);
    auVar3 = ObscuredInt_op_Implicit_0x6000411(*(undefined4 *)(param_2 + 0x20 + uVar2 * 4),0);
    if (lVar1 == 0) break;
    uVar2 = uVar2 + 1;
    *(undefined1 (*) [16])(lVar1 + 0x18) = auVar3;
    if (uVar2 == 3) {
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

