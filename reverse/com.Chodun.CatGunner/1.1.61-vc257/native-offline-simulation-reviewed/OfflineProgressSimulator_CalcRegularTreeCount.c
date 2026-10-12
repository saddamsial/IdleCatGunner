/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b086e8, Ghidra VA 02c086e8. */

int OfflineProgressSimulator_CalcRegularTreeCount(int param_1,int param_2)

{
  int iVar1;
  
  iVar1 = param_1 * 10 + 0x1e;
  if (99 < iVar1) {
    iVar1 = 100;
  }
  if (iVar1 < 0x1f) {
    iVar1 = 0x1e;
  }
  return iVar1 + iVar1 * param_2;
}

