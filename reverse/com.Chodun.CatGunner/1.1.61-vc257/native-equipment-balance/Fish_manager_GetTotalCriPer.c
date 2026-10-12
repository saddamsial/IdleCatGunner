/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5f2c8, Ghidra VA 02c5f2c8. */

undefined4 Fish_manager_GetTotalCriPer(long param_1)

{
  if (*(char *)(param_1 + 0x88) != '\0') {
    Fish_manager_RecalculateTotals(param_1);
  }
  return *(undefined4 *)(param_1 + 0x80);
}

