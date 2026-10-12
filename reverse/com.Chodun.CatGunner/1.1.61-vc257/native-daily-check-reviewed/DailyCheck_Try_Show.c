/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9f24c, Ghidra VA 02b9f24c. */

void DailyCheck_Try_Show(long param_1)

{
  ulong uVar1;
  
  if ((*(char *)(param_1 + 0x38) == '\0') && (uVar1 = DailyCheck_is_DateChange(), (uVar1 & 1) != 0))
  {
    *(undefined1 *)(param_1 + 0x38) = 1;
    DailyCheck_UI_reload(param_1);
    return;
  }
  return;
}

