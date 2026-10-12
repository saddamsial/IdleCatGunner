/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5f310, Ghidra VA 02c5f310. */

bool Fish_manager_IsInventoryFull(long param_1)

{
  if ((bRam000000000625c20c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62fe8);
    bRam000000000625c20c = 1;
  }
  if (*(long *)(param_1 + 0x90) != 0) {
    return 0x13 < *(int *)(*(long *)(param_1 + 0x90) + 0x18);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

