/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5d800, Ghidra VA 02c5d800. */

void Fish_manager_Start(undefined8 param_1)

{
  Fish_manager_UpdateStatTexts();
  Fish_manager_AutoMerge_UI_Reload(param_1);
  Fish_manager_TryStartAutoMerge(param_1);
  return;
}

