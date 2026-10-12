/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b31440, Ghidra VA 02c31440. */

int Relic_manager_Relic_UpgradePrice_return(int param_1)

{
  int iVar1;
  
  iVar1 = param_1 * 2 + 2;
  if (0x31 < iVar1) {
    iVar1 = 0x32;
  }
  if (iVar1 < 3) {
    iVar1 = 2;
  }
  return iVar1;
}

