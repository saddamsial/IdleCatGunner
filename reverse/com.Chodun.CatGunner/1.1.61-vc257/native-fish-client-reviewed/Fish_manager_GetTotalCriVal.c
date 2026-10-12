/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5f2ec, Ghidra VA 02c5f2ec. */

undefined4 Fish_manager_GetTotalCriVal(long param_1)

{
  if (*(char *)(param_1 + 0x88) != '\0') {
    Fish_manager_RecalculateTotals(param_1);
  }
  return *(undefined4 *)(param_1 + 0x84);
}

