/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b609e0, Ghidra VA 02c609e0. */

void Fish_Info_UI_Show_HigherFish(long param_1)

{
  if (*(int *)(param_1 + 0x70) < 0xc) {
    Fish_Info_UI_Reload(param_1,*(int *)(param_1 + 0x70) + 1);
    return;
  }
  return;
}

