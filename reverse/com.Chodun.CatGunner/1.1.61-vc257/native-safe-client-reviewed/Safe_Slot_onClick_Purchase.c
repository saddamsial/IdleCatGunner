/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6cdf0, Ghidra VA 02c6cdf0. */

void Safe_Slot_onClick_Purchase(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  if ((bRam000000000625c29e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62648);
    bRam000000000625c29e = 1;
  }
  puVar1 = PTR_DAT_05e62648;
  if (*(int *)(param_1 + 0x78) == 1) {
    uVar3 = **(undefined8 **)(*(long *)PTR_DAT_05e62648 + 0xb8);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Object_op_Equality_0x6000dec(uVar3,0,0);
    if ((uVar2 & 1) == 0) {
      if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
        Safe_manager_Purchase_Slot
                  (**(long **)(*(long *)puVar1 + 0xb8),*(undefined4 *)(param_1 + 0x20));
        return;
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

