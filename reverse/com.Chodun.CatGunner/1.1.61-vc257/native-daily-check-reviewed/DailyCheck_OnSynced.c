/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9ef30, Ghidra VA 02b9ef30. */

void DailyCheck_OnSynced(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  puVar1 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625b9f5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625b9f5 = 1;
  }
  uVar2 = *(undefined8 *)(param_1 + 0x28);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Time_manager_ClampFutureLocalDate_0x600057e(uVar2,0);
  *(undefined8 *)(param_1 + 0x28) = uVar2;
  uVar2 = Time_manager_ClampFutureLocalDate_0x600057e(*(undefined8 *)(param_1 + 0x78),0);
  *(undefined8 *)(param_1 + 0x78) = uVar2;
  DailyCheck_RefreshOrShow(param_1);
  return;
}

