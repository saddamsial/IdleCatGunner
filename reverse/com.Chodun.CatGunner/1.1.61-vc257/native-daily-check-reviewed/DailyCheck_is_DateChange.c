/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9f50c, Ghidra VA 02b9f50c. */

undefined8 DailyCheck_is_DateChange(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  long lVar6;
  
  puVar1 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625b9fd & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e5e518);
    bRam000000000625b9fd = 1;
  }
  puVar2 = PTR_DAT_05e5e518;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Time_manager_CanRolloverDaily_0x6000567(*(undefined8 *)puVar2,1,0);
  if ((uVar3 & 1) != 0) {
    if (*(int *)(*(long *)PTR_DAT_05e597d0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = DateTime_get_Date_0x6000610(param_1 + 0x28,0);
    lVar6 = *(long *)puVar1;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0(lVar6);
    }
    uVar5 = Time_manager_get_Today_0x600057a(0);
    uVar4 = DateTime_op_LessThan_0x600063d(uVar4,uVar5,0);
    return uVar4;
  }
  return 0;
}

