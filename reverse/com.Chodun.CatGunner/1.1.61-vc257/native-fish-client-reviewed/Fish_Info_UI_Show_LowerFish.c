/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b609cc, Ghidra VA 02c609cc. */

void Fish_Info_UI_Show_LowerFish(long param_1)

{
  if (0 < *(int *)(param_1 + 0x70)) {
    Fish_Info_UI_Reload(param_1,*(int *)(param_1 + 0x70) + -1);
    return;
  }
  return;
}

