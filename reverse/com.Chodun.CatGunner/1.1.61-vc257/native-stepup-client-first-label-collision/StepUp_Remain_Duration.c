/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba28c8, Ghidra VA 02ca28c8. */

undefined8 StepUp_Remain_Duration(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  long lVar6;
  
  if ((bRam000000000625c497 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c497 = 1;
  }
  puVar1 = PTR_DAT_05e5a180;
  uVar3 = StepUp_get_is_Started(param_1);
  puVar2 = PTR_DAT_05e5d3c0;
  if ((uVar3 & 1) != 0) {
    if (*(int *)(*(long *)PTR_DAT_05e597d0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = DateTime_AddDays_0x60005fb(0x401c000000000000,param_1 + 0x40,0);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar2);
    }
    uVar5 = Time_manager_get_UtcNow_0x6000578(0);
    uVar4 = DateTime_op_Subtraction_0x600063a(uVar4,uVar5,0);
    lVar6 = *(long *)puVar1;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0(lVar6);
      lVar6 = *(long *)puVar1;
    }
    uVar3 = TimeSpan_op_LessThan_0x6000a95(uVar4,**(undefined8 **)(lVar6 + 0xb8),0);
    if ((uVar3 & 1) != 0) {
      lVar6 = *(long *)puVar1;
      if (*(int *)(lVar6 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar6 = *(long *)puVar1;
      }
      uVar4 = **(undefined8 **)(lVar6 + 0xb8);
    }
    return uVar4;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = TimeSpan_FromDays_0x6000a7b(0x401c000000000000,0);
  return uVar4;
}

