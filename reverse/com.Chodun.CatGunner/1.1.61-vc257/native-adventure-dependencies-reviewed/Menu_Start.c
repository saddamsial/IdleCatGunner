/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b27258, Ghidra VA 02c27258. */

void Menu_Start(long param_1)

{
  Menu_Menu_Reload(param_1,*(undefined4 *)(param_1 + 0x20));
  return;
}

