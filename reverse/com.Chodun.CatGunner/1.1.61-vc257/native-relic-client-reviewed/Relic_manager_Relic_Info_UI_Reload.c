/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b31f0c, Ghidra VA 02c31f0c. */

void Relic_manager_Relic_Info_UI_Reload(long param_1)

{
  if (*(long *)(param_1 + 0x38) != 0) {
    Relic_Info_UI_Reload();
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

