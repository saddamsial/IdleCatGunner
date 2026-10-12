/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb2acc, Ghidra VA 02cb2acc. */

void Upgrade_manager_UI_Reload(long param_1)

{
  if (*(long *)(param_1 + 0x58) != 0) {
    Upgrade_list_Reload_0x6000f86();
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

