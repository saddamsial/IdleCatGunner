/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba8538, Ghidra VA 02ca8538. */

void Skin_Info_UI_Panel_Before(long param_1)

{
  if (*(int *)(param_1 + 0x20) != 0) {
    Skin_Info_UI_Reload_0x6000e9b(param_1,*(int *)(param_1 + 0x20) + -1);
    return;
  }
  return;
}

