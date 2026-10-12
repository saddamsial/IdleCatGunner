/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb1464, Ghidra VA 02cb1464. */

undefined8 Upgrade_manager_Value_str_Return(undefined8 param_1,int param_2)

{
  undefined8 uVar1;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  undefined4 uStack_14;
  
  if ((bRam000000000625c561 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c561 = 1;
  }
  uStack_14 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  if (param_2 == 2) {
    if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Upgrade_manager_Money_return_0x6000f96(&uStack_40);
  }
  else {
    if (param_2 == 1) {
      if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uStack_14 = Upgrade_manager_AtkSpeed_return_0x6000f97();
      uVar1 = Int32_ToString_0x600080e(&uStack_14,0);
      return uVar1;
    }
    if (param_2 != 0) {
      return 0;
    }
    if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Upgrade_manager_Power_return_0x6000f95(&uStack_40);
  }
  uVar1 = InfVal_InfVal_change_0x60000a8(&uStack_40,0);
  return uVar1;
}

