/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba2b54, Ghidra VA 02ca2b54. */

int StepUp__Current_Purchasable_Step(undefined8 param_1)

{
  ulong uVar1;
  int iVar2;
  
  iVar2 = 0;
  do {
    uVar1 = StepUp__Is_Purchasable(param_1,iVar2);
    if ((uVar1 & 1) != 0) {
      return iVar2;
    }
    iVar2 = iVar2 + 1;
  } while (iVar2 != 5);
  return -1;
}

