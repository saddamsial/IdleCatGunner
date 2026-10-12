/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8a0dc, Ghidra VA 02c8a0dc. */

undefined8 Shop_manager_Is_Core_Special_Available(undefined8 param_1,int param_2)

{
  undefined *puVar1;
  undefined8 uVar2;
  long lVar3;
  long lVar4;
  undefined8 uVar5;
  
  if ((bRam000000000625c42b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c42b = 1;
  }
  if (param_2 == 6) {
    if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Time_manager_get_Now_0x6000579(0);
    puVar1 = PTR_DAT_05e5d920;
    lVar4 = *(long *)PTR_DAT_05e5d920;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0(lVar4);
      lVar4 = *(long *)puVar1;
    }
    lVar3 = *(long *)PTR_DAT_05e597d0;
    uVar5 = *(undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x20);
  }
  else {
    if (param_2 != 5) {
      if (param_2 != 4) {
        return 1;
      }
      if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Time_manager_get_Now_0x6000579(0);
      puVar1 = PTR_DAT_05e5d920;
      lVar4 = *(long *)PTR_DAT_05e5d920;
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0(lVar4);
        lVar4 = *(long *)puVar1;
      }
      uVar5 = *(undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x10);
      if (*(int *)(*(long *)PTR_DAT_05e597d0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = DateTime_op_Subtraction_0x600063a(uVar2,uVar5,0);
      if (*(int *)(*(long *)PTR_DAT_05e5a180 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)PTR_DAT_05e5a180);
      }
      uVar5 = TimeSpan_FromHours_0x6000a7f(0x4038000000000000,0);
      goto LAB_02c8a2e4;
    }
    if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Time_manager_get_Now_0x6000579(0);
    puVar1 = PTR_DAT_05e5d920;
    lVar4 = *(long *)PTR_DAT_05e5d920;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0(lVar4);
      lVar4 = *(long *)puVar1;
    }
    lVar3 = *(long *)PTR_DAT_05e597d0;
    uVar5 = *(undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x18);
  }
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = DateTime_op_Subtraction_0x600063a(uVar2,uVar5,0);
  if (*(int *)(*(long *)PTR_DAT_05e5a180 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)PTR_DAT_05e5a180);
  }
  uVar5 = TimeSpan_FromDays_0x6000a7b(0x401c000000000000,0);
LAB_02c8a2e4:
  uVar2 = TimeSpan_op_GreaterThanOrEqual_0x6000a98(uVar2,uVar5,0);
  return uVar2;
}

