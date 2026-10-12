/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba7f50, Ghidra VA 02ca7f50. */

void Skin_manager_Skin_Info_Reload(long param_1)

{
  if (*(long *)(param_1 + 0x70) != 0) {
    Skin_Info_UI_Reload_0x6000e9b();
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

