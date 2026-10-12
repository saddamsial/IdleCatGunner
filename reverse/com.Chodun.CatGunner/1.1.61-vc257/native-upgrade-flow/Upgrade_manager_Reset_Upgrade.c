/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb2ae0, Ghidra VA 02cb2ae0. */

void Upgrade_manager_Reset_Upgrade(long param_1)

{
  long lVar1;
  long lVar2;
  undefined1 auVar3 [16];
  
  lVar1 = *(long *)(param_1 + 0x20);
  if (lVar1 != 0) {
    lVar2 = 0;
    do {
      if ((int)*(uint *)(lVar1 + 0x18) <= (int)(uint)lVar2) {
        if (*(long *)(param_1 + 0x58) != 0) {
          Upgrade_list_Reload_0x6000f86();
          return;
        }
        break;
      }
      if (*(uint *)(lVar1 + 0x18) <= (uint)lVar2) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar1 = *(long *)(lVar1 + lVar2 * 8 + 0x20);
      auVar3 = ObscuredInt_op_Implicit_0x6000411(0,0);
      if (lVar1 == 0) break;
      *(undefined1 (*) [16])(lVar1 + 0x18) = auVar3;
      lVar2 = lVar2 + 1;
      lVar1 = *(long *)(param_1 + 0x20);
    } while (lVar1 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

