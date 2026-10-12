/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b44944, Ghidra VA 02c44944. */

void Cat_manager__Skin_Reload(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  long lVar5;
  
  if ((bRam000000000625c0cb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0cb = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar3 = *(long *)(param_1 + 0x20);
  if (lVar3 != 0) {
    lVar5 = 0;
    do {
      if ((int)*(uint *)(lVar3 + 0x18) <= (int)(uint)lVar5) {
        uVar4 = *(undefined8 *)(param_1 + 0x28);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar2 = Object_op_Inequality_0x6000ded(uVar4,0,0);
        if ((uVar2 & 1) == 0) {
          return;
        }
        if (*(long *)(param_1 + 0x28) != 0) {
          Cat_Skin_Reload_0x600072d(*(long *)(param_1 + 0x28),0);
          return;
        }
        break;
      }
      if (*(uint *)(lVar3 + 0x18) <= (uint)lVar5) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar3 = *(long *)(lVar3 + lVar5 * 8 + 0x20);
      if (lVar3 == 0) break;
      Cat_Skin_Reload_0x600072d(lVar3,0);
      lVar3 = *(long *)(param_1 + 0x20);
      lVar5 = lVar5 + 1;
    } while (lVar3 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

