/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7e644, Ghidra VA 02c7e644. */

void Pet_Info_UI_Show_LowerPet(long param_1)

{
  if (0 < *(int *)(param_1 + 0x60)) {
    Pet_Info_UI_Reload(param_1,*(int *)(param_1 + 0x60) + -1);
    return;
  }
  return;
}

