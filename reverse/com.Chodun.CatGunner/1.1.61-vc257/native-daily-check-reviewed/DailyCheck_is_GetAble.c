/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9f988, Ghidra VA 02b9f988. */

undefined8 DailyCheck_is_GetAble(long param_1,int param_2)

{
  undefined8 uVar1;
  
  if (*(int *)(param_1 + 0x30) == param_2) {
    uVar1 = DailyCheck_is_DateChange();
    return uVar1;
  }
  return 0;
}

