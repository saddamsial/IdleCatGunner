/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2d168, Ghidra VA 02c2d168. */

void Adventure_manager_Ticket_Refresh(long param_1)

{
  long lVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  ulong uVar5;
  long lVar6;
  long lVar7;
  long lVar8;
  undefined8 *puVar9;
  undefined8 uVar10;
  undefined8 uVar11;
  
  if ((bRam000000000625c004 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c004 = 1;
  }
  puVar2 = PTR_DAT_05e597d0;
  if (0x13 < *(int *)(param_1 + 0x58)) {
    return;
  }
  puVar9 = (undefined8 *)(param_1 + 0x60);
  uVar10 = *puVar9;
  if (*(int *)(*(long *)PTR_DAT_05e597d0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = DateTime_op_Equality_0x600063b(uVar10,0,0);
  if ((uVar5 & 1) == 0) {
    if (*(int *)(*(long *)PTR_DAT_05e5dd28 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    lVar6 = Adventure_manager_get_Ticket_Charge_Interval();
    puVar4 = PTR_DAT_05e5d3c0;
    if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e5d3c0);
    }
    uVar10 = Time_manager_get_Now_0x6000579();
    lVar8 = *(long *)puVar2;
    uVar11 = *puVar9;
    if (*(int *)(lVar8 + 0xe4) == 0) {
      func_0x029f5bd0(lVar8);
    }
    lVar8 = DateTime_op_Subtraction_0x600063a(uVar10,uVar11,0);
    puVar3 = PTR_DAT_05e5a180;
    if (*(int *)(*(long *)PTR_DAT_05e5a180 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e5a180);
    }
    uVar5 = TimeSpan_op_LessThan_0x6000a95(lVar8,lVar6,0);
    if ((uVar5 & 1) != 0) {
      return;
    }
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    lVar1 = 0;
    if (lVar6 != 0) {
      lVar1 = lVar8 / lVar6;
    }
    lVar8 = lVar1 + *(int *)(param_1 + 0x58);
    if (lVar8 < 0x14) {
      lVar7 = *(long *)puVar3;
      *(int *)(param_1 + 0x58) = (int)lVar8;
      if (*(int *)(lVar7 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar10 = DateTime_AddTicks_0x6000601(puVar9,lVar1 * lVar6,0);
      goto LAB_02c2d21c;
    }
    lVar6 = *(long *)puVar4;
    *(undefined4 *)(param_1 + 0x58) = 0x14;
  }
  else {
    lVar6 = *(long *)PTR_DAT_05e5d3c0;
  }
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar10 = Time_manager_get_Now_0x6000579();
LAB_02c2d21c:
  *puVar9 = uVar10;
  return;
}

