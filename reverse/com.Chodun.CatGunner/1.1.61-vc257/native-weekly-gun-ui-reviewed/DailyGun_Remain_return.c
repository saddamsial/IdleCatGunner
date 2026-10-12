/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8ac2c, Ghidra VA 02c8ac2c. */

undefined8 DailyGun_Remain_return(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625c3a5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c3a5 = 1;
  }
  puVar2 = PTR_DAT_05e62660;
  uStack_28 = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar1 = PTR_DAT_05e597d0;
  uVar3 = Time_manager_get_Now_0x6000579(0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  puVar2 = PTR_DAT_05e5a180;
  uStack_28 = DailyGun_WeekStart_return(uVar3);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar4 = DateTime_AddDays_0x60005fb(0x401c000000000000,&uStack_28,0);
  uVar3 = DateTime_op_Subtraction_0x600063a(uVar4,uVar3,0);
  lVar6 = *(long *)puVar2;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0(lVar6);
    lVar6 = *(long *)puVar2;
  }
  uVar5 = TimeSpan_op_LessThan_0x6000a95(uVar3,**(undefined8 **)(lVar6 + 0xb8),0);
  if ((uVar5 & 1) != 0) {
    lVar6 = *(long *)puVar2;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar2;
    }
    uVar3 = **(undefined8 **)(lVar6 + 0xb8);
  }
  return uVar3;
}

