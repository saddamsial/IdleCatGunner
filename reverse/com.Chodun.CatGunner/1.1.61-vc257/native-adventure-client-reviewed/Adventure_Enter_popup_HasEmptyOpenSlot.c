/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b340a4, Ghidra VA 02c340a4. */

bool Adventure_Enter_popup_HasEmptyOpenSlot(long param_1)

{
  if ((bRam000000000625c051 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62fd0);
    bRam000000000625c051 = 1;
  }
  if (*(long *)(param_1 + 200) != 0) {
    return *(int *)(*(long *)(param_1 + 200) + 0x18) < *(int *)(param_1 + 0xd0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

