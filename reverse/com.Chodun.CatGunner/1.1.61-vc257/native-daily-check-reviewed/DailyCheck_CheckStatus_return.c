/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9f5f0, Ghidra VA 02b9f5f0. */

uint DailyCheck_CheckStatus_return(long param_1,int param_2)

{
  uint uVar1;
  
  if (param_2 < *(int *)(param_1 + 0x30)) {
    return 2;
  }
  if (*(int *)(param_1 + 0x30) == param_2) {
    uVar1 = DailyCheck_is_DateChange();
    return uVar1 & 1;
  }
  return 0;
}

