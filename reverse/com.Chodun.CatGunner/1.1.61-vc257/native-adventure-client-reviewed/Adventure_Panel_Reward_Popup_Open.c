/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b35a7c, Ghidra VA 02c35a7c. */

void Adventure_Panel_Reward_Popup_Open(long param_1)

{
  if (*(long *)(param_1 + 0x68) != 0) {
    Adventure_Reward_popup_Reload();
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

