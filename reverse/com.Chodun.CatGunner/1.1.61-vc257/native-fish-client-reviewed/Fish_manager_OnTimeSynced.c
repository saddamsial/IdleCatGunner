/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5d4a0, Ghidra VA 02c5d4a0. */

void Fish_manager_OnTimeSynced(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  puVar1 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625c1f9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c1f9 = 1;
  }
  uVar2 = *(undefined8 *)(param_1 + 0x70);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Time_manager_ClampFutureLocalDate_0x600057e(uVar2,0);
  *(undefined8 *)(param_1 + 0x70) = uVar2;
  Fish_manager_OnTimeSettled(param_1);
  return;
}

