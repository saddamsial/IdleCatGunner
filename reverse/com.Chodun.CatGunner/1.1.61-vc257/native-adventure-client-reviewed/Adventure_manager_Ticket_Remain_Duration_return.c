/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2d344, Ghidra VA 02c2d344. */

undefined8 Adventure_manager_Ticket_Remain_Duration_return(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  
  if ((bRam000000000625c005 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c005 = 1;
  }
  puVar2 = PTR_DAT_05e5a180;
  puVar1 = PTR_DAT_05e597d0;
  if (*(int *)(param_1 + 0x58) < 0x14) {
    uVar7 = *(undefined8 *)(param_1 + 0x60);
    if (*(int *)(*(long *)PTR_DAT_05e5dd28 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    puVar3 = PTR_DAT_05e5d3c0;
    uVar4 = Adventure_manager_get_Ticket_Charge_Interval();
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar7 = DateTime_op_Addition_0x6000638(uVar7,uVar4,0);
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar3);
    }
    uVar4 = Time_manager_get_Now_0x6000579();
    uVar7 = DateTime_op_Subtraction_0x600063a(uVar7,uVar4,0);
    lVar6 = *(long *)puVar2;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0(lVar6);
      lVar6 = *(long *)puVar2;
    }
    uVar5 = TimeSpan_op_LessThan_0x6000a95(uVar7,**(undefined8 **)(lVar6 + 0xb8),0);
    if ((uVar5 & 1) == 0) {
      return uVar7;
    }
  }
  lVar6 = *(long *)puVar2;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar6 = *(long *)puVar2;
  }
  return **(undefined8 **)(lVar6 + 0xb8);
}

