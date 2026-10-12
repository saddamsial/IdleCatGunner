/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b303fc, Ghidra VA 02c303fc. */

void Relic_DownPanel_DrawMode_Change(long param_1,undefined4 param_2)

{
  *(undefined4 *)(param_1 + 0x60) = param_2;
  Relic_DownPanel_UI_Reload();
  return;
}

