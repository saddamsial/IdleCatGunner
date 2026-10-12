/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b9077c, Ghidra VA 02c9077c. */

uint PlusPack_Is_Active(uint param_1)

{
  undefined *puVar1;
  uint uVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c3ef & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c3ef = 1;
  }
  lVar3 = *(long *)puVar1;
  uStack_28 = 0;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  puVar1 = PTR_DAT_05e597d0;
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 8);
  if (lVar3 != 0) {
    if (param_1 < *(uint *)(lVar3 + 0x18)) {
      uVar6 = *(undefined8 *)(lVar3 + (long)(int)param_1 * 8 + 0x20);
      uStack_28 = uVar6;
      if (*(int *)(*(long *)PTR_DAT_05e597d0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar4 = DateTime_op_Equality_0x600063b(uVar6,0,0);
      if ((uVar4 & 1) == 0) {
        if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar6 = Time_manager_get_UtcNow_0x6000578(0);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0(*(long *)puVar1);
        }
        uVar5 = DateTime_AddDays_0x60005fb(0x401c000000000000,&uStack_28,0);
        uVar2 = DateTime_op_LessThan_0x600063d(uVar6,uVar5,0);
      }
      else {
        uVar2 = 0;
      }
      return uVar2 & 1;
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

