/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b08d18, Ghidra VA 02c08d18. */

int OfflineProgressSimulator_MultiTargetCount(long param_1)

{
  int iVar1;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  iVar1 = *(int *)(param_1 + 0x18);
  if (iVar1 - 4U < 3) {
    return 5;
  }
  if (iVar1 - 1U < 2) {
    return 10;
  }
  if (iVar1 == 3) {
    iVar1 = *(int *)(param_1 + 0x44);
    if (iVar1 < 2) {
      iVar1 = 1;
    }
    return iVar1;
  }
  return 1;
}

