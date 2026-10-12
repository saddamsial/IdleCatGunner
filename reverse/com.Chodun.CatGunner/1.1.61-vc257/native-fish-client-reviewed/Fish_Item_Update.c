/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b60d8c, Ghidra VA 02c60d8c. */

void Fish_Item_Update(long param_1)

{
  if (((*(char *)(param_1 + 0x48) != '\0') && (*(char *)(param_1 + 0x84) == '\0')) &&
     (*(char *)(param_1 + 0x86) == '\0')) {
    Fish_Item_UpdateSwimming();
    return;
  }
  return;
}

