/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b27368, Ghidra VA 02c27368. */

void Menu_Btn_onClick(long param_1)

{
  if (*(long *)(param_1 + 0x28) != 0) {
    Menu_Menu_Reload(*(long *)(param_1 + 0x28),*(undefined4 *)(param_1 + 0x20));
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

