/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b1dae0, Ghidra VA 02c1dae0. */

void AutoUpgrade_UI_AutoUpgrade_Able(undefined8 param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e62670;
  if ((bRam000000000625bf39 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62670);
    bRam000000000625bf39 = 1;
  }
  **(undefined1 **)(*(long *)puVar1 + 0xb8) = 0;
  AutoUpgrade_UI_Reload(param_1);
  return;
}

