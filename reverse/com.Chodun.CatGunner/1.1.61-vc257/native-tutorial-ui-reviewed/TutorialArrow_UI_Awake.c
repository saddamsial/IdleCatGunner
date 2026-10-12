/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bae538, Ghidra VA 02cae538. */

void TutorialArrow_UI_Awake(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  puVar1 = PTR_DAT_05e5be98;
  if ((bRam000000000625c52c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5be98);
    bRam000000000625c52c = 1;
  }
  uVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)puVar1);
  *(undefined8 *)(param_1 + 0x48) = uVar2;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x48),uVar2);
  return;
}

