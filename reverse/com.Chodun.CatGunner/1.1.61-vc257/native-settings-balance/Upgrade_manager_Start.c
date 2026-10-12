/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb23e8, Ghidra VA 02cb23e8. */

void Upgrade_manager_Start(long param_1)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c553 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c553 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  *(undefined8 *)(param_1 + 0x50) = *(undefined8 *)(*(long *)(lVar2 + 0xb8) + 200);
  func_0x029f59f4((undefined8 *)(param_1 + 0x50));
  lVar2 = *(long *)(param_1 + 0x58);
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  lVar3 = *(long *)(lVar2 + 0x20);
  if (lVar3 != 0) {
    lVar4 = 0;
    do {
      if ((int)*(uint *)(lVar3 + 0x18) <= (int)(uint)lVar4) {
        *(undefined1 *)(lVar2 + 0x28) = 0;
        return;
      }
      if (*(uint *)(lVar3 + 0x18) <= (uint)lVar4) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(long *)(lVar3 + lVar4 * 8 + 0x20) == 0) break;
      func_0x02cb0e4c();
      lVar3 = *(long *)(lVar2 + 0x20);
      lVar4 = lVar4 + 1;
    } while (lVar3 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

