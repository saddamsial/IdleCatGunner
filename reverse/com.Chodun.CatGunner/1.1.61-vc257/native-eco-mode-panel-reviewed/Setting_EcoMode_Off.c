/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b21688, Ghidra VA 02c21688. */

void Setting_EcoMode_Off(undefined8 param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e62670;
  if ((bRam000000000625bf63 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62670);
    bRam000000000625bf63 = 1;
  }
  if (*(char *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10) != '\0') {
    Setting_EcoMode_Change(param_1);
    return;
  }
  return;
}

