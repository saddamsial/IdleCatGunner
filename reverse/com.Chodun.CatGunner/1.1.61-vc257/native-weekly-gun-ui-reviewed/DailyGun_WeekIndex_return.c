/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8b074, Ghidra VA 02c8b074. */

int DailyGun_WeekIndex_return(void)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  long lVar6;
  undefined8 uVar7;
  double dVar8;
  undefined8 uStack_28;
  
  puVar2 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625c3a7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c3a7 = 1;
  }
  puVar4 = PTR_DAT_05e62660;
  uStack_28 = 0;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar2 = PTR_DAT_05e597d0;
  uVar5 = Time_manager_get_Now_0x6000579(0);
  lVar6 = *(long *)puVar4;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0(lVar6);
  }
  puVar3 = PTR_DAT_05e5a180;
  uVar5 = DailyGun_WeekStart_return(uVar5);
  uVar7 = *(undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x20);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  uStack_28 = DateTime_op_Subtraction_0x600063a(uVar5,uVar7,0);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar3);
  }
  dVar8 = (double)TimeSpan_get_TotalDays_0x6000a72(&uStack_28,0);
  iVar1 = -0x12492492;
  if (dVar8 != INFINITY) {
    iVar1 = (int)dVar8 / 7;
  }
  return iVar1;
}

