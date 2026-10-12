/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b1da8c, Ghidra VA 02c1da8c. */

void AutoUpgrade_UI_AutoUpgrade_Disable(undefined8 param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e62670;
  if ((bRam000000000625bf38 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62670);
    bRam000000000625bf38 = 1;
  }
  **(undefined1 **)(*(long *)puVar1 + 0xb8) = 1;
  AutoUpgrade_UI_Reload(param_1);
  return;
}

