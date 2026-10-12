/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa3ef4, Ghidra VA 02ba3ef4. */

void Mission_manager_Season_Reload(long param_1)

{
  ulong uVar1;
  
  uVar1 = Mission_manager_is_Season_Closed();
  if ((uVar1 & 1) != 0) {
    Mission_manager_Season_Reset
              (param_1,*(undefined1 *)(param_1 + 0x65),*(undefined1 *)(param_1 + 0x65));
    return;
  }
  return;
}

