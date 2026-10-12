/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b9538c, Ghidra VA 02c9538c. */

undefined4 Shop_manager_Core_Amount_return(uint param_1)

{
  if (param_1 < 7) {
    return *(undefined4 *)(&UNK_011b0538 + (ulong)param_1 * 4);
  }
  return 0;
}

