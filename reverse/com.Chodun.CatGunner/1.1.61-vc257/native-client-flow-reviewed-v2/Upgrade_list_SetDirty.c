/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb1c6c, Ghidra VA 02cb1c6c. */

void Upgrade_list_SetDirty(long param_1)

{
  *(undefined1 *)(param_1 + 0x28) = 1;
  return;
}

