/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba284c, Ghidra VA 02ca284c. */

void StepUp_StepUp_Start(long param_1)

{
  ulong uVar1;
  undefined8 uVar2;
  
  if ((bRam000000000625c496 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c496 = 1;
  }
  uVar1 = StepUp_get_is_Started(param_1);
  if ((uVar1 & 1) != 0) {
    return;
  }
  if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Time_manager_get_UtcNow_0x6000578(0);
  *(undefined8 *)(param_1 + 0x40) = uVar2;
  SaveSystem_Save_0x600048a(0);
  return;
}

