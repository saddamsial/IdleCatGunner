/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8ab78, Ghidra VA 02c8ab78. */

void DailyGun_WeekStart_return(undefined8 param_1)

{
  undefined *puVar1;
  int iVar2;
  undefined8 uStack_28;
  undefined8 uStack_18;
  
  puVar1 = PTR_DAT_05e597d0;
  uStack_18 = param_1;
  if ((bRam000000000625c3a4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    bRam000000000625c3a4 = 1;
  }
  uStack_28 = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar2 = DateTime_get_DayOfWeek_0x6000614(&uStack_18,0);
  uStack_28 = DateTime_get_Date_0x6000610(&uStack_18,0);
  DateTime_AddDays_0x60005fb((double)(((iVar2 + 6) / 7) * 7 - (iVar2 + 6)),&uStack_28,0);
  return;
}

