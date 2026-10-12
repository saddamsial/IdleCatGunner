/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b910dc, Ghidra VA 02c910dc. */

undefined8 PlusPack_Remain_Duration(undefined4 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  ulong uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  long lVar7;
  
  puVar1 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c3f0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c3f0 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar2 = PTR_DAT_05e5a180;
  uVar4 = PlusPack_Is_Active(param_1);
  puVar3 = PTR_DAT_05e5d3c0;
  if ((uVar4 & 1) != 0) {
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    puVar1 = PTR_DAT_05e597d0;
    uVar5 = PlusPack_End_dateTime_0x6000d34(param_1);
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar3);
    }
    uVar6 = Time_manager_get_UtcNow_0x6000578(0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar5 = DateTime_op_Subtraction_0x600063a(uVar5,uVar6,0);
    lVar7 = *(long *)puVar2;
    if (*(int *)(lVar7 + 0xe4) == 0) {
      func_0x029f5bd0(lVar7);
      lVar7 = *(long *)puVar2;
    }
    uVar4 = TimeSpan_op_LessThan_0x6000a95(uVar5,**(undefined8 **)(lVar7 + 0xb8),0);
    if ((uVar4 & 1) == 0) {
      return uVar5;
    }
  }
  lVar7 = *(long *)puVar2;
  if (*(int *)(lVar7 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar7 = *(long *)puVar2;
  }
  return **(undefined8 **)(lVar7 + 0xb8);
}

