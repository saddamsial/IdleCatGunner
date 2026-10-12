/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b60a18, Ghidra VA 02c60a18. */

void Fish_Item_set_IsAutoMerging(long param_1,undefined1 param_2)

{
  *(undefined1 *)(param_1 + 0x86) = param_2;
  return;
}

