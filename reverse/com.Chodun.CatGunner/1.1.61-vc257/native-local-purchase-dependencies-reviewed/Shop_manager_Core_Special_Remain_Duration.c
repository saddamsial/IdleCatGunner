/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8a488, Ghidra VA 02c8a488. */

undefined8 Shop_manager_Core_Special_Remain_Duration(undefined8 param_1,int param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  undefined8 uVar5;
  ulong uVar6;
  long lVar7;
  undefined8 uVar8;
  
  if ((bRam000000000625c42c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c42c = 1;
  }
  puVar3 = PTR_DAT_05e5d920;
  puVar2 = PTR_DAT_05e5a180;
  if (param_2 == 6) {
    lVar4 = *(long *)PTR_DAT_05e5d920;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar3;
    }
    lVar7 = *(long *)puVar2;
    iVar1 = *(int *)(lVar7 + 0xe4);
    uVar8 = *(undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x20);
joined_r0x02c8a67c:
    if (iVar1 == 0) {
      func_0x029f5bd0(lVar7);
    }
    uVar5 = TimeSpan_FromDays_0x6000a7b(0x401c000000000000,0);
  }
  else {
    if (param_2 == 5) {
      lVar4 = *(long *)PTR_DAT_05e5d920;
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar4 = *(long *)puVar3;
      }
      lVar7 = *(long *)puVar2;
      iVar1 = *(int *)(lVar7 + 0xe4);
      uVar8 = *(undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x18);
      goto joined_r0x02c8a67c;
    }
    if (param_2 != 4) goto LAB_02c8a620;
    lVar4 = *(long *)PTR_DAT_05e5d920;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar3;
    }
    uVar8 = *(undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x10);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar2);
    }
    uVar5 = TimeSpan_FromHours_0x6000a7f(0x4038000000000000,0);
  }
  puVar3 = PTR_DAT_05e5d3c0;
  if (*(int *)(*(long *)PTR_DAT_05e597d0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar8 = DateTime_op_Addition_0x6000638(uVar8,uVar5,0);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar3);
  }
  uVar5 = Time_manager_get_Now_0x6000579(0);
  uVar8 = DateTime_op_Subtraction_0x600063a(uVar8,uVar5,0);
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0(lVar4);
    lVar4 = *(long *)puVar2;
  }
  uVar6 = TimeSpan_op_LessThan_0x6000a95(uVar8,**(undefined8 **)(lVar4 + 0xb8),0);
  if ((uVar6 & 1) == 0) {
    return uVar8;
  }
LAB_02c8a620:
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  return **(undefined8 **)(lVar4 + 0xb8);
}

