/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b90ff0, Ghidra VA 02c90ff0. */

undefined8 PlusPack_End_dateTime(uint param_1)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  undefined8 uVar4;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c3ee & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c3ee = 1;
  }
  lVar2 = *(long *)puVar1;
  uStack_28 = 0;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  puVar1 = PTR_DAT_05e597d0;
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 8);
  if (lVar2 != 0) {
    if (param_1 < *(uint *)(lVar2 + 0x18)) {
      uVar4 = *(undefined8 *)(lVar2 + (long)(int)param_1 * 8 + 0x20);
      uStack_28 = uVar4;
      if (*(int *)(*(long *)PTR_DAT_05e597d0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = DateTime_op_Equality_0x600063b(uVar4,0,0);
      uVar4 = 0;
      if ((uVar3 & 1) == 0) {
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar4 = DateTime_AddDays_0x60005fb(0x401c000000000000,&uStack_28,0);
      }
      return uVar4;
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

